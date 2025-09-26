.. _param-mmjsonparse-userawmsg:
.. _mmjsonparse.parameter.input.userawmsg:

userawmsg
=========

.. index::
   single: mmjsonparse; userawmsg
   single: userawmsg

.. summary-start

Controls whether parsing operates on the raw message or only the MSG part.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmjsonparse`.

:Name: userawmsg
:Scope: input
:Type: boolean
:Default: off
:Required?: no
:Introduced: 6.6.0

Description
-----------
Specifies if the raw message should be used for parsing (``on``) or just
the MSG part of the message (``off``).

Notes
-----
- Older documentation referred to this boolean setting as ``binary``.

Input usage
-----------
.. _mmjsonparse.parameter.input.userawmsg-usage:

.. code-block:: rsyslog

   action(type="mmjsonparse" useRawMsg="on")

See also
--------
See also :doc:`../../configuration/modules/mmjsonparse`.
