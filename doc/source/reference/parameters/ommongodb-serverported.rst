.. _param-ommongodb-serverported:
.. _ommongodb.parameter.module.serverported:

ServerPorted
============

.. index::
   single: ommongodb; ServerPorted
   single: ServerPorted

.. summary-start

Sets a non-standard MongoDB server port number (deprecated; use ``UriStr`` instead).

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: ServerPorted
:Scope: module
:Type: word
:Default: module=27017
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Permits to select a non-standard port for the MongoDB server. The default is 0,
which means the system default port is used. There is no need to specify this
parameter unless you know the server is running on a non-standard listen port.
This parameter is deprecated and should not be used for new configurations.

Module usage
------------
.. _param-ommongodb-module-serverported:
.. _ommongodb.parameter.module.serverported-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          server="mongoserver.example.com" serverPorted="27017"
          db="syslog" collection="log" uid="user" pwd="pwd")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
