.. _rainerscript-reparse:

.. meta::
   :description: Reparse the current message after updating rawmsg.
   :keywords: rainerscript, reparse, parser, rawmsg

.. summary-start

Reparse the current message so its properties are rebuilt from the updated
rawmsg.

.. summary-end

*********
reparse()
*********

Purpose
=======

reparse()

Re-runs the parser stack on the current message. The function returns ``1`` on
success and ``0`` if parsing fails.

Examples
========

Use ``reparse()`` after fixing a malformed raw message to rebuild the syslog
fields. This example updates the raw message directly before reparsing.

.. code-block:: none

   if $rawmsg contains 'bad-string' then {
     set $rawmsg = replace($rawmsg, 'bad-string', 'good-string');
     if reparse() == 0 then {
       # handle parse failures, e.g. send to a fallback file
     }
   }
