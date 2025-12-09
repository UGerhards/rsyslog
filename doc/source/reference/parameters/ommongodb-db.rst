.. _param-ommongodb-db:
.. _ommongodb.parameter.input.db:

.. meta::
   :description: Selects the MongoDB database where rsyslog stores log records.
   :keywords: rsyslog, ommongodb, db, mongodb action parameter

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
:Scope: input
:Type: word
:Default: input=syslog
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Database to use.

Input usage
-----------
.. _param-ommongodb-input-db:
.. _ommongodb.parameter.input.db-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091/?ssl=true"
          db="syslog" collection="log")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
