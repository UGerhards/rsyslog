#!/bin/bash
# check that internalmsg.disablewarnings suppresses warning output
. ${srcdir:=.}/diag.sh init

WARN="rainerscript: desired random-number range [0 - 4294967296] is wider than supported limit"

run_case() {
	local mode="$1"
	local suffix="$2"
	local expect="$3"

	export RS_REDIR=">rsyslog-${suffix}.log 2>&1"
	rm -f "rsyslog-${suffix}.log" "rsyslog-${suffix}.debug.log"

	generate_conf
	add_conf '
global(internalmsg.severity="debug" internalmsg.disablewarnings="'${mode}'")
$DebugFile rsyslog-'${suffix}'.debug.log
$DebugLevel 2

template(name="outfmt" type="string" string="%$.rand%\n")
module(load="../plugins/imtcp/.libs/imtcp")
input(type="imtcp" port="0" listenPortFileName="'${RSYSLOG_DYNNAME}'.'${suffix}'.tcpflood_port")
set $.rand = random(4294967296);
action(type="omfile" file="'${RSYSLOG_OUT_LOG}'" template="outfmt")
'
	startup
	TCPFLOOD_PORT="$(cat ${RSYSLOG_DYNNAME}.${suffix}.tcpflood_port)" tcpflood -m 1
	shutdown_when_empty
	wait_shutdown

	if [ "$expect" = "present" ]; then
		if ! grep -F "$WARN" "rsyslog-${suffix}.log" > /dev/null; then
			echo "FAIL: warning not found in rsyslog-${suffix}.log"
			cat "rsyslog-${suffix}.log"
			exit 1
		fi
		if ! grep -F "$WARN" "rsyslog-${suffix}.debug.log" > /dev/null; then
			echo "FAIL: warning not found in rsyslog-${suffix}.debug.log"
			cat "rsyslog-${suffix}.debug.log"
			exit 1
		fi
	else
		if grep -F "$WARN" "rsyslog-${suffix}.log" > /dev/null; then
			echo "FAIL: warning found in rsyslog-${suffix}.log"
			cat "rsyslog-${suffix}.log"
			exit 1
		fi
		if grep -F "$WARN" "rsyslog-${suffix}.debug.log" > /dev/null; then
			echo "FAIL: warning found in rsyslog-${suffix}.debug.log"
			cat "rsyslog-${suffix}.debug.log"
			exit 1
		fi
	fi
}

run_case "on" "warnings-disabled" "absent"
run_case "off" "warnings-enabled" "present"

exit_test
