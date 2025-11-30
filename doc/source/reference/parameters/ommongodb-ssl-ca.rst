.. _param-ommongodb-ssl-ca:
.. _ommongodb.parameter.module.ssl-ca:

SSL_Ca
======

.. index::
   single: ommongodb; SSL_Ca
   single: SSL_Ca

.. summary-start

Provides the absolute path to the trusted X.509 CA certificate that signed the MongoDB server certificate.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: SSL_Ca
:Scope: module
:Type: word
:Default: module=none
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
Absolute path to the trusted X509 CA certificate that signed the mongoDB server
certificate. This is optional.

Module usage
------------
.. _param-ommongodb-module-ssl-ca:
.. _ommongodb.parameter.module.ssl-ca-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091/?ssl=true"
          sslCa="/var/db/mongodb/ca.pem"
          db="logs" collection="syslog")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
