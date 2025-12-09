.. _param-ommongodb-uid:
.. _ommongodb.parameter.input.uid:

.. meta::
   :description: Sets the login user ID for MongoDB authentication; deprecated
                 in favor of credentials in ``UriStr``.
   :keywords: rsyslog, ommongodb, user id, mongodb action parameter

UID
===

.. index::
   single: ommongodb; UID
   single: UID

.. summary-start

Sets the login user ID for MongoDB authentication (deprecated; prefer
``UriStr`` credentials).

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: UID
:Scope: input
:Type: word
:Default: input=none
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Logon userid used to connect to server. Must have proper permissions. This
parameter is deprecated and should not be used for new configurations.

Input usage
-----------
.. _param-ommongodb-input-uid:
.. _ommongodb.parameter.input.uid-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          server="mongoserver.example.com" db="syslog" collection="log"
          uid="user" pwd="pwd")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
