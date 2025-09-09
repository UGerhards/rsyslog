.. _param-mmsequence-from:
.. _mmsequence.parameter.module.from:

from
====

.. index::
   single: mmsequence; from
   single: from

.. summary-start

Sets the starting value for counters and the lower margin for random numbers.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: from
:Scope: module
:Type: integer
:Default: module=0
:Required?: no
:Introduced: 7.5.6

Description
-----------
Starting value for counters and lower margin for random generator.

Module usage
------------
.. _param-mmsequence-module-from:
.. _mmsequence.parameter.module.from-usage:

.. code-block:: rsyslog

   action(type="mmsequence" from="0")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

