.. _param-mmdblookup-fields:
.. _mmdblookup.parameter.input.fields:

fields
======

.. index::
   single: mmdblookup; fields
   single: fields

.. summary-start

Defines the list of database fields whose values are appended to the message.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmdblookup`.

:Name: fields
:Scope: input
:Type: array (word)
:Default: input=none
:Required?: yes
:Introduced: 8.24.0

Description
-----------
Fields that will be appended to processed message. The fields will
always be appended in the container used by mmdblookup (which may be
overridden by the "container" parameter on module load).

By default, the maxmindb field name is used for variables. This can be
overridden by specifying a custom name. Use the following syntax to
control the resulting variable name and lookup path:

* ``:customName:!path!to!field`` — specify the custom variable name
  between the leading colons and the MaxMind DB path that follows.
* Bang signs (``!``) denote path levels within the database record.

For example, to extract ``!city!names!en`` but rename it to
``cityname``, use ``:cityname:!city!names!en`` as the field value.

Input usage
-----------
.. _mmdblookup.parameter.input.fields-usage:

.. code-block:: rsyslog

   action(type="mmdblookup"
          key="!clientip"
          mmdbFile="/etc/rsyslog.d/GeoLite2-City.mmdb"
          fields=[":continent:!continent!code", ":loc:!location"])

See also
--------
See also :doc:`../../configuration/modules/mmdblookup`.
