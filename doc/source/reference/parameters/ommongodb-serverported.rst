.. _param-ommongodb-serverported:
.. _ommongodb.parameter.input.serverported:

.. meta::
   :description: Sets a non-standard MongoDB server port number; deprecated in
                 favor of ``UriStr``.
   :keywords: rsyslog, ommongodb, server port, mongodb action parameter

ServerPorted
============

.. index::
   single: ommongodb; ServerPorted
   single: ServerPorted

.. summary-start

Sets a non-standard MongoDB server port number (deprecated; use ``UriStr``
instead).

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: ServerPorted
:Scope: input
:Type: word
:Default: input=27017
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Permits to select a non-standard port for the MongoDB server. There is no need
to specify this parameter unless you know the server is running on a
non-standard listen port. This parameter is deprecated and should not be used
for new configurations.

Input usage
-----------
.. _param-ommongodb-input-serverported:
.. _ommongodb.parameter.input.serverported-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          server="mongoserver.example.com" serverPorted="27017"
          db="syslog" collection="log" uid="user" pwd="pwd")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
