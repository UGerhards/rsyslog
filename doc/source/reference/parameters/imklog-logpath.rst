.. _param-imklog-logpath:
.. _imklog.parameter.module.logpath:

LogPath
=======

.. index::
   single: imklog; LogPath
   single: LogPath

.. summary-start

Specifies the kernel log device or file that imklog reads.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/imklog`.

:Name: LogPath
:Scope: module
:Type: word
:Default: Linux: "/proc/kmsg"; other platforms: "/dev/klog"
:Required?: no
:Introduced: at least 5.x, possibly earlier

Description
-----------
Defines the path to the log file that is used. If this parameter is not
set a default will be used. On Linux "/proc/kmsg" and else "/dev/klog".

Module usage
------------
.. _param-imklog-module-logpath:
.. _imklog.parameter.module.logpath-usage:

.. code-block:: rsyslog

   module(load="imklog" logPath="/dev/klog")

Legacy names (for reference)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Historic names/directives for compatibility. Do not use in new configs.

.. _imklog.parameter.legacy.klogpath:

- $klogpath — maps to LogPath (status: legacy)

.. index::
   single: imklog; $klogpath
   single: $klogpath

See also
--------
See also :doc:`../../configuration/modules/imklog`.
