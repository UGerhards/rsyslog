.. _param-omlibdbi-driver:
.. _omlibdbi.parameter.action.driver:

Driver
======

.. index::
   single: omlibdbi; Driver
   single: Driver

.. summary-start

Selects the libdbi driver backend to use for this action.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/omlibdbi`.

:Name: Driver
:Scope: action
:Type: word
:Default: action=none
:Required?: yes
:Introduced: Not documented

Description
-----------
Set this to the driver name that matches your database backend, as
documented by libdbi-drivers. Common values include:

- ``mysql`` (:doc:`ommysql` is recommended instead)
- ``firebird`` (Firebird and InterBase)
- ``ingres``
- ``msql``
- ``Oracle``
- ``sqlite``
- ``sqlite3``
- ``freetds`` (Microsoft SQL and Sybase)
- ``pgsql`` (:doc:`ompgsql` is recommended instead)

Action usage
------------
.. _param-omlibdbi-action-driver-usage:
.. _omlibdbi.parameter.action.driver-usage:

.. code-block:: rsyslog

   action(type="omlibdbi" Driver="mysql")

Legacy names (for reference)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Historic names/directives for compatibility. Do not use in new configs.

.. _omlibdbi.parameter.legacy.actionlibdbidriver:

- $ActionLibdbiDriver — maps to Driver (status: legacy)

.. index::
   single: omlibdbi; $ActionLibdbiDriver
   single: $ActionLibdbiDriver

See also
--------
See also :doc:`../../configuration/modules/omlibdbi`.
