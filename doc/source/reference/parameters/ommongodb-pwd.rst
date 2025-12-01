.. _param-ommongodb-pwd:
.. _ommongodb.parameter.input.pwd:

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
:Scope: input
:Type: word
:Default: input=none
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
The user's password. This parameter is deprecated and should not be used for new
configurations.

Input usage
-----------
.. _param-ommongodb-input-pwd:
.. _ommongodb.parameter.input.pwd-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          server="mongoserver.example.com" db="syslog" collection="log"
          uid="user" pwd="pwd")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
