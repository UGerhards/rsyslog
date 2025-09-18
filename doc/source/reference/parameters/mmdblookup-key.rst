.. _param-mmdblookup-key:
.. _mmdblookup.parameter.input.key:

Key
===

.. index::
   single: mmdblookup; Key
   single: Key

.. summary-start

Identifies the message field that supplies the IP address to look up.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmdblookup`.

:Name: Key
:Scope: input
:Type: string (word)
:Default: input=none
:Required?: yes
:Introduced: 8.24.0

Description
-----------
Name of field containing IP address.

Input usage
-----------
.. _param-mmdblookup-input-key:
.. _mmdblookup.parameter.input.key-usage:

.. code-block:: rsyslog

   action(type="mmdblookup"
          key="!clientip"
          mmdbfile="/etc/rsyslog.d/GeoLite2-City.mmdb"
          fields=["!continent!code", "!location"])

See also
--------
See also :doc:`../../configuration/modules/mmdblookup`.
