.. _param-ommongodb-server:
.. _ommongodb.parameter.module.server:

Server
======

.. index::
   single: ommongodb; Server
   single: Server

.. summary-start

Provides the MongoDB server host name or address (deprecated in favor of ``UriStr``).

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: Server
:Scope: module
:Type: word
:Default: module=127.0.0.1
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Name or address of the MongoDB server. This parameter is deprecated and should
not be used for new configurations.

Module usage
------------
.. _param-ommongodb-module-server:
.. _ommongodb.parameter.module.server-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          server="mongoserver.example.com" db="syslog" collection="log"
          uid="user" pwd="pwd")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
