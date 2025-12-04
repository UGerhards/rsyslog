.. _param-ommongodb-uristr:
.. _ommongodb.parameter.input.uristr:

.. meta::
   :description: Sets the MongoDB connection string to replace separate server,
                 port, and credential parameters.
   :keywords: rsyslog, ommongodb, UriStr, mongodb action parameter

UriStr
======

.. index::
   single: ommongodb; UriStr
   single: UriStr

.. summary-start

Sets the MongoDB connection string to use instead of individual server, port,
and credential parameters.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: UriStr
:Scope: input
:Type: word
:Default: input=none
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
MongoDB connection string, as defined by the `MongoDB String URI Format
<https://docs.mongodb.com/manual/reference/connection-string/>`_. If ``UriStr``
is set, the legacy ``Server``, ``ServerPorted``, ``UID``, and ``PWD``
directives are ignored.

Input usage
-----------
.. _param-ommongodb-input-uristr:
.. _ommongodb.parameter.input.uristr-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://v1:9091,v2:9091/?replicaset=Vulture&ssl=true"
          db="logs" collection="syslog")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
