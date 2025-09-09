.. _param-mmsequence-mode:
.. _mmsequence.parameter.action.mode:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:mode

mode
====

.. index::
   single: mmsequence; mode
   single: mode

.. summary-start

Selects the mode: random numbers, per-action counter, or shared counter.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: mode
:Scope: action
:Type: string
:Default: instance
:Required?: no
:Introduced: 7.5.6

Description
-----------
Specifies mode of the action. In ``random`` mode, the module generates
uniformly distributed integers within the range defined by
:ref:`param-mmsequence-from` and :ref:`param-mmsequence-to`.
In ``instance`` mode, which is the default, the action produces a counter
in the range [:ref:`param-mmsequence-from`, :ref:`param-mmsequence-to`).
This counter is specific to the action.
In ``key`` mode, the counter can be shared between multiple instances. The
counter is identified by a name defined with the
:ref:`param-mmsequence-key` parameter.

Action usage
------------
.. _param-mmsequence-action-mode:
.. _mmsequence.parameter.action.mode-usage:

.. code-block:: rsyslog

   action(type="mmsequence" mode="instance")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

