.. _param-mmsequence-to:
.. _mmsequence.parameter.action.to:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:to

to
==

.. index::
   single: mmsequence; to
   single: to

.. summary-start

Sets the upper margin for sequences. The counter resets on reaching this value.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: to
:Scope: action
:Type: integer
:Default: ``INT_MAX`` (max signed integer, typically 2147483647)
:Required?: no
:Introduced: 7.5.6

Description
-----------
Upper margin for all sequences, which must be a positive integer.
This margin is not inclusive. When the next value for a counter is equal or
greater than this parameter, it resets to the :ref:`param-mmsequence-from`
value.

Action usage
------------
.. _param-mmsequence-action-to:
.. _mmsequence.parameter.action.to-usage:

.. code-block:: rsyslog

   action(type="mmsequence" to="100")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

