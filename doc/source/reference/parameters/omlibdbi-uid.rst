.. _param-omlibdbi-uid:
.. _omlibdbi.parameter.action.uid:

UID
===

.. index::
   single: omlibdbi; UID
   single: UID

.. summary-start

Defines the user name that omlibdbi uses when authenticating to the database.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/omlibdbi`.

:Name: UID
:Scope: action
:Type: word
:Default: action=none
:Required?: yes
:Introduced: Not documented

Description
-----------
Provide the account that has permission to write into the target
database. Combine this with ``PWD`` to supply the password.

Action usage
------------
.. _param-omlibdbi-action-uid-usage:
.. _omlibdbi.parameter.action.uid-usage:

.. code-block:: rsyslog

   action(type="omlibdbi" uid="dbwriter" pwd="secret")

Legacy names (for reference)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Historic names/directives for compatibility. Do not use in new configs.

.. _omlibdbi.parameter.legacy.actionlibdbiusername:

- $ActionLibdbiUserName — maps to UID (status: legacy)

.. index::
   single: omlibdbi; $ActionLibdbiUserName
   single: $ActionLibdbiUserName

See also
--------
See also :doc:`../../configuration/modules/omlibdbi`.
