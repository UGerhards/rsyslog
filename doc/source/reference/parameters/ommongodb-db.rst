.. _param-ommongodb-db:
.. _ommongodb.parameter.module.db:

db
==

.. index::
   single: ommongodb; db
   single: db

.. summary-start

Selects the MongoDB database where rsyslog should store log records.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: db
:Scope: module
:Type: word
:Default: module=syslog
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Database to use.

Module usage
------------
.. _param-ommongodb-module-db:
.. _ommongodb.parameter.module.db-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091/?ssl=true"
          db="syslog" collection="log")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
