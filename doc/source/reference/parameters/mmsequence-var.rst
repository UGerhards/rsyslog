.. _param-mmsequence-var:
.. _mmsequence.parameter.action.var:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:var

var
===

.. index::
   single: mmsequence; var
   single: var

.. summary-start

Specifies the variable where the generated number will be stored.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsequence`.

:Name: var
:Scope: action
:Type: string
:Default: ``$!mmsequence``
:Required?: no
:Introduced: 7.5.6

Description
-----------
Name of the variable where the number will be stored.
It must be a single word and must start with ``$``.

Action usage
------------
.. _param-mmsequence-action-var:
.. _mmsequence.parameter.action.var-usage:

.. code-block:: rsyslog

   action(type="mmsequence" var="$!seq")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

