.. _param-mmsequence-step:
.. _mmsequence.parameter.module.step:

step
====

.. index::
   single: mmsequence; step
   single: step

.. summary-start

Specifies the increment for counters; ``0`` fetches the current value without changing it.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: step
:Scope: module
:Type: integer
:Default: module=1
:Required?: no
:Introduced: 7.5.6

Description
-----------
Increment for counters. It must be a non-negative integer. If step is ``0``,
it can be used to fetch current value without modification. The latter does not
apply to ``random`` mode. This is useful in ``key`` mode or to get constant
values in ``instance`` mode.

Module usage
------------
.. _param-mmsequence-module-step:
.. _mmsequence.parameter.module.step-usage:

.. code-block:: rsyslog

   action(type="mmsequence" step="1")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

