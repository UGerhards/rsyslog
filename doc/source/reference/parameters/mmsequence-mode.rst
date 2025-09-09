.. _param-mmsequence-mode:
.. _mmsequence.parameter.module.mode:

mode
====

.. index::
   single: mmsequence; mode
   single: mode

.. summary-start

Selects the sequence generation mode: random numbers, per-action counter, or shared counter.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: mode
:Scope: module
:Type: string
:Default: module=instance
:Required?: no
:Introduced: 7.5.6

Description
-----------
Specifies mode of the action. In ``random`` mode, the module generates uniformly distributed integer numbers in a range defined by ``from`` and ``to``.

In ``instance`` mode, which is default, the action produces a counter in range [``from``, ``to``). This counter is specific to this action instance.

In ``key`` mode, the counter can be shared between multiple instances. This counter is identified by a name, which is defined with ``key`` parameter.

Module usage
------------
.. _param-mmsequence-module-mode:
.. _mmsequence.parameter.module.mode-usage:

.. code-block:: rsyslog

   action(type="mmsequence" mode="instance")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

