.. _param-ommongodb-uristr:
.. _ommongodb.parameter.module.uristr:

UriStr
======

.. index::
   single: ommongodb; UriStr
   single: UriStr

.. summary-start

Sets the MongoDB connection string to use instead of individual server, port, and credential parameters.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: UriStr
:Scope: module
:Type: word
:Default: module=none
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
MongoDB connection string, as defined by the MongoDB String URI Format (see
https://docs.mongodb.com/manual/reference/connection-string/). If ``UriStr`` is
set, the legacy ``Server``, ``ServerPorted``, ``UID``, and ``PWD`` directives are
ignored.

Module usage
------------
.. _param-ommongodb-module-uristr:
.. _ommongodb.parameter.module.uristr-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091,vulture2:9091/?replicaset=Vulture&ssl=true"
          db="logs" collection="syslog")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
