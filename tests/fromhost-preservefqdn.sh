#!/bin/bash
## fromhost-preservefqdn.sh
## Verify fromhost uses short hostname when preserveFQDN is off.
. ${srcdir:=.}/diag.sh init
require_plugin imtcp

export NUMMESSAGES=1
export QUEUE_EMPTY_CHECK_FUNC=wait_file_lines

HOSTS_ENTRY="127.0.0.1 rsyslogtest.example.com rsyslogtest"
HOSTS_BACKUP="${RSYSLOG_DYNNAME}.hosts.bak"
HOSTS_FILTERED="${RSYSLOG_DYNNAME}.hosts.filtered"
HOSTS_NEW="${RSYSLOG_DYNNAME}.hosts.new"

restore_hosts() {
    if [ -f "$HOSTS_BACKUP" ]; then
        if [ -w /etc/hosts ]; then
            cp "$HOSTS_BACKUP" /etc/hosts
        elif [ -n "$SUDO" ]; then
            $SUDO cp "$HOSTS_BACKUP" /etc/hosts
        fi
    fi
}

prepare_hosts() {
    if ! cp /etc/hosts "$HOSTS_BACKUP"; then
        echo "could not backup /etc/hosts"
        skip_test
    fi
    awk '$1 != "127.0.0.1"' "$HOSTS_BACKUP" > "$HOSTS_FILTERED"
    printf "%s\n" "$HOSTS_ENTRY" > "$HOSTS_NEW"
    cat "$HOSTS_FILTERED" >> "$HOSTS_NEW"

    if [ -w /etc/hosts ]; then
        cp "$HOSTS_NEW" /etc/hosts
    elif [ -n "$SUDO" ]; then
        $SUDO cp "$HOSTS_NEW" /etc/hosts
    else
        echo "/etc/hosts not writable and SUDO not set"
        skip_test
    fi
}

trap restore_hosts EXIT
prepare_hosts

generate_conf
add_conf '
global(preserveFQDN="off")
module(load="../plugins/imtcp/.libs/imtcp")
input(type="imtcp" port="0" listenPortFileName="'$RSYSLOG_DYNNAME'.tcpflood_port")

template(name="outfmt" type="list") {
    property(name="fromhost")
    constant(value="\n")
}

:msg, contains, "msgnum:" action(type="omfile" template="outfmt"
                                 file="'$RSYSLOG_OUT_LOG'")
'
startup

tcpflood -m $NUMMESSAGES -w "${RSYSLOG_DYNNAME}.tcpflood-port"

shutdown_when_empty
wait_shutdown

export EXPECTED="rsyslogtest"
cmp_exact
exit_test
