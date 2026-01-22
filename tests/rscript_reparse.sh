#!/bin/bash
## Test reparse() to rebuild parsed fields after rawmsg edits.
## Verifies that CEE and local variables are cleared on reparse.
# This file is part of the rsyslog project, released under ASL 2.0

echo ===============================================================================
echo \[rscript_reparse.sh\]: test reparse script-function
. ${srcdir:=.}/diag.sh init
generate_conf
add_conf '
template(name="outfmt" type="string" string="%msg%|%$!foo%|%$.bar%\n")

module(load="../plugins/imptcp/.libs/imptcp")
input(type="imptcp" port="0" listenPortFileName="'$RSYSLOG_DYNNAME'.tcpflood_port")

if $rawmsg contains "bad-string" then {
  set $!foo = "old";
  set $.bar = "old";
  if reparse(replace($rawmsg, "bad-string", "good-string")) == 0 then {
    set $.reparse_failed = "1";
  }
}

action(type="omfile" file=`echo $RSYSLOG_OUT_LOG` template="outfmt")
'

printf '<13>Jan  1 00:00:00 host bad-string test\n' > $RSYSLOG_DYNNAME.input
startup
tcpflood -m 1 -I $RSYSLOG_DYNNAME.input
shutdown_when_empty
wait_shutdown
content_check "good-string test||"
exit_test
