.. _ref-ommongodb:

********************************
ommongodb: MongoDB Output Module
********************************

===========================  ===========================================================================
**Module Name:**             **ommongodb**
**Author:**                  `Rainer Gerhards <https://rainer.gerhards.net/>`_ <rgerhards@adiscon.com>
===========================  ===========================================================================


Purpose
=======

This module provides native support for logging to MongoDB.


Configuration Parameters
========================

.. note::

   Parameter names are case-insensitive; camelCase is recommended for readability.


Action Parameters
-----------------

.. list-table::
   :widths: 30 70
   :header-rows: 1

   * - Parameter
     - Summary
   * - :ref:`param-ommongodb-uristr`
     - .. include:: ../../reference/parameters/ommongodb-uristr.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-ssl-cert`
     - .. include:: ../../reference/parameters/ommongodb-ssl-cert.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-ssl-ca`
     - .. include:: ../../reference/parameters/ommongodb-ssl-ca.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-db`
     - .. include:: ../../reference/parameters/ommongodb-db.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-collection`
     - .. include:: ../../reference/parameters/ommongodb-collection.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-allowed-error-codes`
     - .. include:: ../../reference/parameters/ommongodb-allowed-error-codes.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-template`
     - .. include:: ../../reference/parameters/ommongodb-template.rst
        :start-after: .. summary-start
        :end-before: .. summary-end


Examples
========


Write to Database
-----------------

The following sample writes all syslog messages to the database "syslog"
and into the collection "log" on mongoserver.example.com. The server is
being accessed under the account of "user" with password "pwd". Please note
that this syntax is deprecated by the "uristr" directive, as shown below.

.. code-block:: none

   module(load="ommongodb")
   action(type="ommongodb"
          server="mongoserver.example.com" db="syslog" collection="log"
          uid="user" pwd="pwd")


Write to mongoDB server with TLS and client authentication
----------------------------------------------------------

Another sample that uses the new "uristr" directives to connect to a TLS mongoDB server with TLS and client authentication.

.. code-block:: none

   module(load="ommongodb")
   action(type="ommongodb"
         uristr="mongodb://vulture:9091,vulture2:9091/?replicaset=Vulture&ssl=true"
         ssl_cert="/var/db/mongodb/mongod.pem"
         ssl_ca="/var/db/mongodb/ca.pem"
         db="logs" collection="syslog")


Deprecated Parameters
=====================

.. note::

   While these parameters are still accepted, they should no longer be used for newly created configurations.


Action Parameters
-----------------

.. list-table::
   :widths: 30 70
   :header-rows: 1

   * - Parameter
     - Summary
   * - :ref:`param-ommongodb-server`
     - .. include:: ../../reference/parameters/ommongodb-server.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-serverported`
     - .. include:: ../../reference/parameters/ommongodb-serverported.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-uid`
     - .. include:: ../../reference/parameters/ommongodb-uid.rst
        :start-after: .. summary-start
        :end-before: .. summary-end
   * - :ref:`param-ommongodb-pwd`
     - .. include:: ../../reference/parameters/ommongodb-pwd.rst
        :start-after: .. summary-start
        :end-before: .. summary-end


.. toctree::
   :hidden:

   ../../reference/parameters/ommongodb-uristr
   ../../reference/parameters/ommongodb-ssl-cert
   ../../reference/parameters/ommongodb-ssl-ca
   ../../reference/parameters/ommongodb-db
   ../../reference/parameters/ommongodb-collection
   ../../reference/parameters/ommongodb-allowed-error-codes
   ../../reference/parameters/ommongodb-template
   ../../reference/parameters/ommongodb-server
   ../../reference/parameters/ommongodb-serverported
   ../../reference/parameters/ommongodb-uid
   ../../reference/parameters/ommongodb-pwd
