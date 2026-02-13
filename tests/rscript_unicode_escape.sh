#!/bin/bash
# Test support for unicode escape sequences in RainerScript strings.
# added 2026-02-13 by AI agent, released under ASL 2.0
. ${srcdir:=.}/diag.sh init
generate_conf
add_conf '
template(name="outfmt" type="string" string="%$!out%\n")

if $msg contains "msgnum:" then {
	set $!out="\u0041\u0042\U00000043";
	action(type="omfile" file="'$RSYSLOG_OUT_LOG'" template="outfmt")
}
'
startup
injectmsg 0 1
shutdown_when_empty
wait_shutdown

export EXPECTED='ABC'
cmp_exact
exit_test
