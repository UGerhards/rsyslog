.. _param-imkafka-consumergroup:
.. _imkafka.parameter.input.consumergroup:

consumerGroup
=============

.. index::
   single: imkafka; consumerGroup
   single: consumerGroup

.. summary-start

Sets the Kafka consumer group identifier (group.id) used by imkafka.

.. summary-end

This parameter applies to :doc:`../../configuration/modules/imkafka`.

:Name: consumerGroup
:Scope: input
:Type: string
:Default: input=``none``
:Required?: no
:Introduced: 8.27.0

Description
-----------
With this parameter the group.id for the consumer is set. All consumers
sharing the same group.id belong to the same group.

Input usage
-----------
.. _imkafka.parameter.input.consumergroup-usage:

.. code-block:: rsyslog

   module(load="imkafka")
   input(type="imkafka"
         topic="your-topic"
         consumerGroup="default")

See also
--------
See also :doc:`../../configuration/modules/imkafka`.
