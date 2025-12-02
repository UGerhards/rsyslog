.. _param-ommongodb-ssl-cert:
.. _ommongodb.parameter.input.ssl-cert:

.. meta::
   :description: Specifies the absolute path to the X.509 client certificate
                 used for TLS authentication.
   :keywords: rsyslog, ommongodb, ssl cert, mongodb action parameter

SSL_Cert
========

.. index::
   single: ommongodb; SSL_Cert
   single: SSL_Cert

.. summary-start

Specifies the absolute path to the X.509 client certificate for TLS
authentication.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: SSL_Cert
:Scope: input
:Type: word
:Default: input=none
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Absolute path to the X509 certificate you want to use for TLS client
authentication. This is optional.

Input usage
-----------
.. _param-ommongodb-input-ssl-cert:
.. _ommongodb.parameter.input.ssl-cert-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091/?ssl=true"
          sslCert="/var/db/mongodb/mongod.pem"
          db="logs" collection="syslog")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
