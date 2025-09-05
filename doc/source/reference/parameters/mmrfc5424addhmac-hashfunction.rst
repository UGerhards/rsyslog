.. _param-mmrfc5424addhmac-hashfunction:
.. _mmrfc5424addhmac.parameter.action.hashfunction:

hashfunction
============

.. index::
   single: mmrfc5424addhmac; hashfunction
   single: hashfunction

.. summary-start

Specifies the OpenSSL hash algorithm used for the HMAC.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmrfc5424addhmac`.

:Name: hashfunction
:Scope: action
:Type: string
:Default: none
:Required?: yes
:Introduced: 7.5.6

Description
-----------
An OpenSSL hash function name for the function to be used. This is passed on to
OpenSSL, so see the OpenSSL list of supported function names.

Action usage
------------
.. _param-mmrfc5424addhmac-action-hashfunction:
.. _mmrfc5424addhmac.parameter.action.hashfunction-usage:

.. code-block:: rsyslog

   action(type="mmrfc5424addhmac" hashFunction="sha1")

See also
--------
See also :doc:`../../configuration/modules/mmrfc5424addhmac`.

