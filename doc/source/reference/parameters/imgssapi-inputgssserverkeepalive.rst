.. _param-imgssapi-inputgssserverkeepalive:
.. _imgssapi.parameter.input.inputgssserverkeepalive:

InputGSSServerKeepAlive
=======================

.. index::
   single: imgssapi; InputGSSServerKeepAlive
   single: InputGSSServerKeepAlive

.. summary-start

Enables TCP keep-alive handling for GSS-protected connections.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/imgssapi`.

:Name: InputGSSServerKeepAlive
:Scope: input
:Type: boolean
:Default: input=0
:Required?: no
:Introduced: 8.5.0

Description
-----------
.. versionadded:: 8.5.0

Enables or disables keep-alive handling for the listener.

Input usage
-----------
.. _param-imgssapi-input-inputgssserverkeepalive:
.. _imgssapi.parameter.input.inputgssserverkeepalive-usage:

.. code-block:: rsyslog

   module(load="imgssapi")
   $InputGSSServerKeepAlive on

Legacy names (for reference)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Historic names/directives for compatibility. Do not use in new configs.

.. _imgssapi.parameter.legacy.inputgssserverkeepalive:

- $InputGSSServerKeepAlive — maps to InputGSSServerKeepAlive (status: legacy)

.. index::
   single: imgssapi; $InputGSSServerKeepAlive
   single: $InputGSSServerKeepAlive

See also
--------
See also :doc:`../../configuration/modules/imgssapi`.
