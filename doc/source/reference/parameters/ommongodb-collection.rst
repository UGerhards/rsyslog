.. _param-ommongodb-collection:
.. _ommongodb.parameter.module.collection:

Collection
==========

.. index::
   single: ommongodb; Collection
   single: Collection

.. summary-start

Specifies the MongoDB collection within the selected database for log entries.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: Collection
:Scope: module
:Type: word
:Default: module=log
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Collection to use.

Module usage
------------
.. _param-ommongodb-module-collection:
.. _ommongodb.parameter.module.collection-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091/?ssl=true"
          db="syslog" collection="log")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
