.. _param-mmkubernetes-srcmetadatapath:
.. _mmkubernetes.parameter.action.srcmetadatapath:

srcMetadataPath
===============

.. index::
   single: mmkubernetes; srcMetadataPath
   single: srcMetadataPath

.. summary-start

Specifies the message property containing the original filename.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/mmkubernetes`.

:Name: srcMetadataPath
:Scope: action
:Type: word
:Default: $!metadata!filename
:Required?: no
:Introduced: at least 8.x, possibly earlier

Description
-----------
When reading json-file logs, with `imfile` and `addmetadata="on"`,
this is the property where the filename is stored.

Action usage
------------
.. _param-mmkubernetes-action-srcmetadatapath:
.. _mmkubernetes.parameter.action.srcmetadatapath-usage:

.. code-block:: rsyslog

   action(type="mmkubernetes" srcMetadataPath="$!metadata!filename")

See also
--------
See also :doc:`../../configuration/modules/mmkubernetes`.
