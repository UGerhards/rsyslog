.. _param-mmsequence-key:
.. _mmsequence.parameter.action.key:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:key

key
===

.. index::
   single: mmsequence; key
   single: key

.. summary-start

Names the counter shared between multiple action instances.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: key
:Scope: action
:Type: string
:Default: none
:Required?: no
:Introduced: 7.5.6

Description
-----------
Name of the global counter used in this action.
It must be a single word (a string without spaces).

Action usage
------------
.. _param-mmsequence-action-key:
.. _mmsequence.parameter.action.key-usage:

.. code-block:: rsyslog

   action(type="mmsequence" key="globalCounter")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

