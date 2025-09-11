.. _param-mmsnmptrapd-severitymapping:
.. _mmsnmptrapd.parameter.module.severitymapping:

severityMapping
===============

.. index::
   single: mmsnmptrapd; severityMapping
   single: severityMapping

.. summary-start

Defines severity string to numeric code mappings.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmsnmptrapd`.

:Name: severityMapping
:Scope: module
:Type: string
:Default: module=none
:Required?: no
:Introduced: at least 5.8.1, possibly earlier

Description
-----------
This specifies the severity mapping table. It needs to be specified as a list.
Note that due to the current config system **no whitespace** is supported inside
the list, so be sure not to use any whitespace inside it. The list is
constructed of Severity-Name/Severity-Value pairs, delimited by comma.
Severity-Name is a case-sensitive string, e.g. ``warning`` and an associated
numerical value (e.g. 4). Possible values are in the range 0..7 and are defined
in `RFC5424, table 2 <https://datatracker.ietf.org/doc/html/rfc5424#section-6.2.1>`_.
The given sample would be specified as ``warning/4``. If multiple instances of
mmsnmptrapd are configured, each module instance uses the most recently defined
severityMapping that appears before its own
``module()`` statement.

Module usage
------------
.. _param-mmsnmptrapd-module-severitymapping:
.. _mmsnmptrapd.parameter.module.severitymapping-usage:

.. code-block:: rsyslog

   module(load="mmsnmptrapd" severityMapping="warning/4,error/3")

Legacy names (for reference)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Historic names/directives for compatibility. Do not use in new configs.

.. _mmsnmptrapd.parameter.legacy.mmsnmptrapdseveritymapping:

- $mmsnmptrapdSeverityMapping — maps to severityMapping (status: legacy)

.. index::
   single: mmsnmptrapd; $mmsnmptrapdSeverityMapping
   single: $mmsnmptrapdSeverityMapping

See also
--------
See also :doc:`../../configuration/modules/mmsnmptrapd`.
