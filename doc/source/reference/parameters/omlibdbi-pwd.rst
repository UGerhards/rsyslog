.. _param-omlibdbi-pwd:
.. _omlibdbi.parameter.action.pwd:

PWD
===

.. index::
   single: omlibdbi; PWD
   single: PWD

.. summary-start

Sets the password for the database user defined via ``UID``.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/omlibdbi`.

:Name: PWD
:Scope: action
:Type: word
:Default: action=none
:Required?: yes
:Introduced: Not documented

Description
-----------
Supply the password that matches the user provided through the ``UID``
parameter so omlibdbi can authenticate to the database.

Action usage
------------
.. _param-omlibdbi-action-pwd-usage:
.. _omlibdbi.parameter.action.pwd-usage:

.. code-block:: rsyslog

   action(type="omlibdbi" UID="dbwriter" PWD="sup3rSecret")

Legacy names (for reference)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Historic names/directives for compatibility. Do not use in new configs.

.. _omlibdbi.parameter.legacy.actionlibdbipassword:

- $ActionlibdbiPassword — maps to PWD (status: legacy)

.. index::
   single: omlibdbi; $ActionlibdbiPassword
   single: $ActionlibdbiPassword

See also
--------
See also :doc:`../../configuration/modules/omlibdbi`.
