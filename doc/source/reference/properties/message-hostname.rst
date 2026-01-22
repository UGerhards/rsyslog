.. _prop-message-hostname:
.. _properties.message.hostname:
.. _properties.alias.source:

hostname
========

.. index::
   single: properties; hostname
   single: hostname

.. summary-start

Captures the hostname transmitted within the syslog message.

.. summary-end

This property belongs to the **Message Properties** group.

:Name: hostname
:Category: Message Properties
:Type: string
:Aliases: source

Description
-----------
Hostname from the message. This is the HOSTNAME field exactly as it was
received or set by an input module. Rsyslog does not rewrite this field based
on DNS or ``preserveFQDN``. For the DNS-resolved sender name, use
:ref:`prop-message-fromhost`, which honors the ``preserveFQDN`` setting.
For the local system name, use :ref:`prop-system-myhostname`.

Usage
-----
.. _properties.message.hostname-usage:

.. code-block:: rsyslog

   template(name="example" type="list") {
       property(name="hostname")
   }

Aliases
~~~~~~~
- source — alias for hostname

See also
--------
See :doc:`../../configuration/properties` for the category overview.
