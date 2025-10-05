.. _param-imgssapi-inputgssserverrun:
.. _imgssapi.parameter.input.inputgssserverrun:

InputGSSServerRun
=================

.. index::
   single: imgssapi; InputGSSServerRun
   single: InputGSSServerRun

.. summary-start

Starts a dedicated GSSAPI syslog listener on the specified port.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/imgssapi`.

:Name: InputGSSServerRun
:Scope: input
:Type: word
:Default: input=none
:Required?: no
:Introduced: Not specified

Description
-----------
Starts a GSSAPI server on the selected port. This listener runs independently
from the TCP server provided by other modules.

Input usage
-----------
.. _param-imgssapi-input-inputgssserverrun:
.. _imgssapi.parameter.input.inputgssserverrun-usage:

.. code-block:: rsyslog

   module(load="imgssapi")
   $InputGSSServerRun 1514

Legacy names (for reference)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Historic names/directives for compatibility. Do not use in new configs.

.. _imgssapi.parameter.legacy.inputgssserverrun:

- $InputGSSServerRun — maps to InputGSSServerRun (status: legacy)

.. index::
   single: imgssapi; $InputGSSServerRun
   single: $InputGSSServerRun

See also
--------
See also :doc:`../../configuration/modules/imgssapi`.
