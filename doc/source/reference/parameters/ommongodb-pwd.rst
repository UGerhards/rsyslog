.. _param-ommongodb-pwd:
.. _ommongodb.parameter.module.pwd:

PWD
===

.. index::
   single: ommongodb; PWD
   single: PWD

.. summary-start

Provides the password for MongoDB authentication (deprecated; prefer credentials in ``UriStr``).

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: PWD
:Scope: module
:Type: word
:Default: module=none
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
The user's password. This parameter is deprecated and should not be used for new
configurations.

Module usage
------------
.. _param-ommongodb-module-pwd:
.. _ommongodb.parameter.module.pwd-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          server="mongoserver.example.com" db="syslog" collection="log"
          uid="user" pwd="pwd")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
