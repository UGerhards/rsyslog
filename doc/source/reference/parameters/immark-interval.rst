.. _param-immark-interval:
.. _immark.parameter.module.interval:

Interval
========

.. index::
   single: immark; Interval
   single: Interval

.. summary-start

Sets how often immark injects a mark message into the log stream, in seconds.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/immark`.

:Name: Interval
:Scope: module
:Type: integer (seconds)
:Default: module=1200 (seconds)
:Required?: no
:Introduced: 3.0.0

.. seealso::

   The Action Parameter ``action.writeAllMarkMessages`` in :doc:`../../configuration/actions`.

Module usage
------------
.. _immark.parameter.module.interval-usage:

.. code-block:: rsyslog

   module(load="immark" interval="1200")

Legacy names (for reference)
----------------------------
Historic names/directives for compatibility. Do not use in new configs.

.. _immark.parameter.legacy.markmessageperiod:

- $MarkMessagePeriod — maps to Interval (status: legacy)

.. index::
   single: immark; $MarkMessagePeriod
   single: $MarkMessagePeriod

See also
--------
See also :doc:`../../configuration/modules/immark`.
