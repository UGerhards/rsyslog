.. _param-mmsequence-to:
.. _mmsequence.parameter.module.to:

to
==

.. index::
   single: mmsequence; to
   single: to

.. summary-start

Sets the upper margin for sequences; the counter resets when reaching or exceeding this value.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: to
:Scope: module
:Type: integer
:Default: module=INT_MAX
:Required?: no
:Introduced: 7.5.6

Description
-----------
Upper margin for all sequences. Note that this margin is not inclusive. When next value for a counter is equal or greater than this parameter, the counter resets to the starting value.

Module usage
------------
.. _param-mmsequence-module-to:
.. _mmsequence.parameter.module.to-usage:

.. code-block:: rsyslog

   action(type="mmsequence" to="100")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

