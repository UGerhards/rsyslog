.. _param-ommongodb-ssl-cert:
.. _ommongodb.parameter.module.ssl-cert:

SSL_Cert
========

.. index::
   single: ommongodb; SSL_Cert
   single: SSL_Cert

.. summary-start

Specifies the absolute path to the X.509 client certificate for TLS authentication.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: SSL_Cert
:Scope: module
:Type: word
:Default: module=none
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Absolute path to the X509 certificate you want to use for TLS client
authentication. This is optional.

Module usage
------------
.. _param-ommongodb-module-ssl-cert:
.. _ommongodb.parameter.module.ssl-cert-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091/?ssl=true"
          sslCert="/var/db/mongodb/mongod.pem"
          db="logs" collection="syslog")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
