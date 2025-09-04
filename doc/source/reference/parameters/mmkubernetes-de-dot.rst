.. _param-mmkubernetes-de-dot:
.. _mmkubernetes.parameter.action.de-dot:

deDot
=====

.. index::
   single: mmkubernetes; deDot
   single: deDot

.. summary-start

Replaces dots in annotation and label keys.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmkubernetes`.

:Name: deDot
:Scope: action
:Type: boolean
:Default: on
:Required?: no
:Introduced: at least 8.x, possibly earlier

Description
-----------
When processing labels and annotations, if this parameter is set to
`"on"`, the key strings will have their `.` characters replaced with
the string specified by the :ref:`param-mmkubernetes-de-dot-separator` parameter.

Action usage
------------
.. _param-mmkubernetes-action-de-dot:
.. _mmkubernetes.parameter.action.de-dot-usage:

.. code-block:: rsyslog

   action(type="mmkubernetes" deDot="on")

See also
--------
See also :doc:`../../configuration/modules/mmkubernetes`.
