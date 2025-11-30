.. _param-ommongodb-template:
.. _ommongodb.parameter.module.template:

Template
========

.. index::
   single: ommongodb; Template
   single: Template

.. summary-start

Selects the rsyslog template used when formatting log records for MongoDB insertion.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: Template
:Scope: module
:Type: word
:Default: module=OMSR_TPL_AS_MSG
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Template to use when submitting messages.

Note rsyslog contains a canned default template to write to the MongoDB. It will
be used automatically if no other template is specified to be used. This template
is:

.. code-block:: none

   template(name="BSON" type="string" string="{\"sys\" : \"%hostname%\", \
   \"time\" : \"%timereported:::rfc3339%\", \"time_rcvd\" : \
   \"%timegenerated:::rfc3339%\", \"msg\" : \"%msg%\", \
   \"syslog_fac\" : \"%syslogfacility%\", \"syslog_server\" : \
   \"%syslogseverity%\", \"syslog_tag\" : \"%syslogtag%\", \
   \"procid\" : \"%programname%\", \"pid\" : \"%procid%\", \
   \"level\" : \"%syslogpriority-text:uppercase%\"}")

This creates the BSON document needed for MongoDB if no template is specified.
The default schema is aligned to CEE and project lumberjack. As such, the field
names are standard lumberjack field names, and **not** `rsyslog property names
<property_replacer.html>`_. When specifying templates, be sure to use rsyslog
property names as given in the table. If you would like to use lumberjack-based
field names inside MongoDB (which probably is useful depending on the use case),
you need to select fields names based on the lumberjack schema. If you just want
to use a subset of the fields, but with lumberjack names, you can look up the
mapping in the default template. For example, the lumberjack field "level"
contains the rsyslog property "syslogpriority-text" rendered in uppercase.

Module usage
------------
.. _param-ommongodb-module-template:
.. _ommongodb.parameter.module.template-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091/?ssl=true"
          template="BSON"
          db="syslog" collection="log")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
