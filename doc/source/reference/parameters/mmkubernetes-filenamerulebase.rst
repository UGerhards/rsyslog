.. _param-mmkubernetes-filenamerulebase:
.. _mmkubernetes.parameter.action.filenamerulebase:

fileNameRuleBase
================

.. index::
   single: mmkubernetes; fileNameRuleBase
   single: fileNameRuleBase

.. summary-start

Specifies the rulebase file used to match json-file log filenames.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmkubernetes`.

:Name: fileNameRuleBase
:Scope: action
:Type: word
:Default: /etc/rsyslog.d/k8s_filename.rulebase
:Required?: no
:Introduced: at least 8.x, possibly earlier

Description
-----------
When processing json-file logs, this is the rulebase used to match the filename
and extract metadata.  For the actual rules, see
:ref:`param-mmkubernetes-filenamerules`.

Action usage
------------
.. _param-mmkubernetes-action-filenamerulebase:
.. _mmkubernetes.parameter.action.filenamerulebase-usage:

.. code-block:: rsyslog

   action(type="mmkubernetes" fileNameRuleBase="/etc/rsyslog.d/k8s_filename.rulebase")

See also
--------
See also :doc:`../../configuration/modules/mmkubernetes`.
