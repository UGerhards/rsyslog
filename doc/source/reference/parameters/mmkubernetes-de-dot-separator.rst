.. _param-mmkubernetes-de-dot-separator:
.. _mmkubernetes.parameter.action.de-dot-separator:

deDotSeparator
===============

.. index::
   single: mmkubernetes; deDotSeparator
   single: deDotSeparator

.. summary-start

Defines the string used to replace dots when ``deDot`` is enabled.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmkubernetes`.

:Name: deDotSeparator
:Scope: action
:Type: word
:Default: _
:Required?: no
:Introduced: at least 8.x, possibly earlier

Description
-----------
When processing labels and annotations, if the :ref:`param-mmkubernetes-de-dot` parameter is
set to `"on"`, the key strings will have their `.` characters replaced
with the string specified by the string value of this parameter.

Action usage
------------
.. _param-mmkubernetes-action-de-dot-separator:
.. _mmkubernetes.parameter.action.de-dot-separator-usage:

.. code-block:: rsyslog

   action(type="mmkubernetes" deDotSeparator="_")

See also
--------
See also :doc:`../../configuration/modules/mmkubernetes`.
