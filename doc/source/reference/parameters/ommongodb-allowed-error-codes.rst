.. _param-ommongodb-allowed-error-codes:
.. _ommongodb.parameter.input.allowed-error-codes:

Allowed_Error_Codes
===================

.. index::
   single: ommongodb; Allowed_Error_Codes
   single: Allowed_Error_Codes

.. summary-start

Lists MongoDB error codes that ommongodb should ignore instead of treating as failures.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/ommongodb`.

:Name: Allowed_Error_Codes
:Scope: input
:Type: array
:Default: input=no
:Required?: no
:Introduced: at least 7.x, possibly earlier

Description
-----------
The list of error codes returned by MongoDB you want ommongodb to ignore. Use the
following format: ``allowedErrorCodes=["11000","47"]``.

Input usage
-----------
.. _param-ommongodb-input-allowed-error-codes:
.. _ommongodb.parameter.input.allowed-error-codes-usage:

.. code-block:: rsyslog

   module(load="ommongodb")
   action(type="ommongodb"
          uriStr="mongodb://vulture:9091/?ssl=true"
          allowedErrorCodes=["11000", "47"]
          db="syslog" collection="log")

See also
--------
See also :doc:`../../configuration/modules/ommongodb`.
