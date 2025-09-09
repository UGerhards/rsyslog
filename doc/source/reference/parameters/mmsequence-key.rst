.. _param-mmsequence-key:
.. _mmsequence.parameter.module.key:

key
===

.. index::
   single: mmsequence; key
   single: key

.. summary-start

Names the global counter shared between multiple action instances.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: key
:Scope: module
:Type: string
:Default: module=
:Required?: no
:Introduced: 7.5.6

Description
-----------
Name of the global counter which is used in this action.

Module usage
------------
.. _param-mmsequence-module-key:
.. _mmsequence.parameter.module.key-usage:

.. code-block:: rsyslog

   action(type="mmsequence" key="globalCounter")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

