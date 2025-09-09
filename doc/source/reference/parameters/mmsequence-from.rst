.. _param-mmsequence-from:
.. _mmsequence.parameter.action.from:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:from

from
====

.. index::
   single: mmsequence; from
   single: from

.. summary-start

Sets the start value for counters and the lower margin for random numbers.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: from
:Scope: action
:Type: integer
:Default: 0
:Required?: no
:Introduced: 7.5.6

Description
-----------
Starting value for counters and lower margin for random numbers. This value
is inclusive and must be a non-negative integer.

Action usage
------------
.. _param-mmsequence-action-from:
.. _mmsequence.parameter.action.from-usage:

.. code-block:: rsyslog

   action(type="mmsequence" from="0")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

