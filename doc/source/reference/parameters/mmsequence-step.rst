.. _param-mmsequence-step:
.. _mmsequence.parameter.action.step:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:step

step
====

.. index::
   single: mmsequence; step
   single: step

.. summary-start

Specifies the counter increment; a value of ``0`` fetches the current value.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: step
:Scope: action
:Type: integer
:Default: 1
:Required?: no
:Introduced: 7.5.6

Description
-----------
Increment for counters. It must be a non-negative integer. If step is ``0``,
it can fetch the current value without modification. The latter does not apply
to ``random`` :ref:`mode <param-mmsequence-mode>`. This is useful in ``key``
:ref:`mode <param-mmsequence-mode>` or to get constant values in ``instance``
:ref:`mode <param-mmsequence-mode>`.

Action usage
------------
.. _param-mmsequence-action-step:
.. _mmsequence.parameter.action.step-usage:

.. code-block:: rsyslog

   action(type="mmsequence" step="1")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

