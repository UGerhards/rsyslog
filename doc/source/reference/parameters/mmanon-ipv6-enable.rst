.. _param-mmanon-ipv6-enable:
.. _mmanon.parameter.input.ipv6-enable:

ipv6.enable
===========

.. index::
   single: mmanon; ipv6.enable
   single: ipv6.enable

.. summary-start

Enables or disables IPv6 address anonymization for the mmanon action.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmanon`.

:Name: ipv6.enable
:Scope: input
:Type: boolean
:Default: input=on
:Required?: no
:Introduced: 7.3.7

Description
-----------
Allows to enable or disable the anonymization of IPv6 addresses.

Input usage
-----------
.. _param-mmanon-input-ipv6-enable:
.. _mmanon.parameter.input.ipv6-enable-usage:

.. code-block:: rsyslog

   module(load="mmanon")
   action(type="mmanon" ipv6.enable="off")

See also
--------
See also :doc:`../../configuration/modules/mmanon`.
