#!/bin/bash
# verify rawmsg rewrite triggers a re-parse
# add 2025-01-xx by AI, released under ASL 2.0
. ${srcdir:=.}/diag.sh init
require_plugin mmexternal
generate_conf
add_conf '
module(load="../plugins/mmexternal/.libs/mmexternal")

template(name="outfmt" type="list") {
    property(name="hostname")
    constant(value=" ")
    property(name="syslogtag")
    constant(value=" ")
    property(name="msg" position.from="2")
    constant(value="\n")
}

if $syslogtag == "tag:" then {
    action(type="mmexternal" interface.input="fulljson"
        binary="'$PYTHON' '$srcdir'/testsuites/mmexternal-rawmsg-reparse.py")

    action(type="omfile" file="'$RSYSLOG_OUT_LOG'" template="outfmt")
}
'
startup
injectmsg_literal "<34>Oct 11 22:14:15 fixme tag: original"
injectmsg_literal "<34>Oct 11 22:14:15 emptyme tag: original"
shutdown_when_empty
wait_shutdown

export EXPECTED='fixed-host tag: fixed message'
cmp_exact
exit_test
