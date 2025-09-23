.. _param-mmanon-embeddedipv4-anonmode:
.. _mmanon.parameter.module.embeddedipv4-anonmode:

embeddedipv4.anonmode
=====================

.. index::
   single: mmanon; embeddedipv4.anonmode
   single: embeddedipv4.anonmode

.. summary-start

Defines how IPv6 addresses with embedded IPv4 parts are anonymized.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmanon`.

:Name: embeddedipv4.anonmode
:Scope: module
:Type: string
:Default: module=zero
:Required?: no
:Introduced: 7.3.7

Description
-----------
This defines the mode, in which IPv6 addresses will be anonymized. There exist the "random", "random-consistent", and "zero" modes.

The modes "random" and "random-consistent" are very similar, in that they both anonymize ip-addresses by randomizing the last bits (any number) of a given address. However, while "random" mode assigns a new random ip-address for every address in a message, "random-consistent" will assign the same randomized address to every instance of the same original address.

The default "zero" mode will do full anonymization of any number of bits and it will also normalize the address, so that no information about the original IP address is available.

Also note that an anonymized IPv6 address will be normalized, meaning there will be no abbreviations, leading zeros will **not** be displayed, and capital letters in the hex numerals will be lowercase.

Module usage
------------
.. _param-mmanon-module-embeddedipv4-anonmode:
.. _mmanon.parameter.module.embeddedipv4-anonmode-usage:

.. code-block:: rsyslog

   module(load="mmanon")
   action(type="mmanon" embeddedipv4.anonmode="random")

See also
--------
See also :doc:`../../configuration/modules/mmanon`.
