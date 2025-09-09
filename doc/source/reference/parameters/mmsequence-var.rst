.. _param-mmsequence-var:
.. _mmsequence.parameter.module.var:

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
:Scope: module
:Type: string
:Default: module=$!mmsequence
:Required?: no
:Introduced: 7.5.6

Description
-----------
Name of the variable where the number will be stored. Should start with ``$``.

Module usage
------------
.. _param-mmsequence-module-var:
.. _mmsequence.parameter.module.var-usage:

.. code-block:: rsyslog

   action(type="mmsequence" var="$!seq")

See also
--------
See also :doc:`../../configuration/modules/mmsequence`.

