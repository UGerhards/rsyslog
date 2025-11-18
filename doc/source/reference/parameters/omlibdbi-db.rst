.. _param-omlibdbi-db:
.. _omlibdbi.parameter.action.db:

DB
==

.. index::
   single: omlibdbi; DB
   single: DB

.. summary-start

Names the database schema that omlibdbi writes to.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/omlibdbi`.

:Name: DB
:Scope: action
:Type: word
:Default: action=none
:Required?: yes
:Introduced: Not documented

Description
-----------
Set this to the database instance that should receive the syslog events.
It must exist on the selected server and accept the credentials supplied
via ``UID`` and ``PWD``.

Action usage
------------
.. _param-omlibdbi-action-db-usage:
.. _omlibdbi.parameter.action.db-usage:

.. code-block:: rsyslog

   action(type="omlibdbi" DB="syslog" Server="db.example.net")

Legacy names (for reference)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Historic names/directives for compatibility. Do not use in new configs.

.. _omlibdbi.parameter.legacy.actionlibdbidbname:

- $ActionlibdbiDBName — maps to DB (status: legacy)

.. index::
   single: omlibdbi; $ActionlibdbiDBName
   single: $ActionlibdbiDBName

See also
--------
See also :doc:`../../configuration/modules/omlibdbi`.
