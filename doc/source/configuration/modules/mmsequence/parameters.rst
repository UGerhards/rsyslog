.. meta::
   :tag: module:mmsequence
   :tag: category:action

.. This file lists parameters for the deprecated mmsequence action.

Action Parameters
=================

.. _param-mmsequence-mode:
.. _mmsequence.parameter.action.mode:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:mode

mode
~~~~

.. index::
   single: mmsequence; mode
   single: mode

.. mmsequence-mode-summary-start
.. summary-start

Selects the mode: random numbers, per-action counter, or shared counter.

.. summary-end
.. mmsequence-mode-summary-end

This parameter applies to :doc:`../mmsequence`.

:Name: mode
:Scope: action
:Type: string
:Default: instance
:Required?: no
:Introduced: 7.5.6

Description
^^^^^^^^^^^
Specifies the operational mode of the action.

* **random**
  Generates uniformly distributed integers in the range
  [:ref:`param-mmsequence-from`, :ref:`param-mmsequence-to`).
* **instance** (default)
  Produces a counter in the range
  [:ref:`param-mmsequence-from`, :ref:`param-mmsequence-to`). This
  counter is specific to this action instance.
* **key**
  Produces a counter that can be shared between multiple action
  instances. The shared counter is identified by a name defined with the
  :ref:`param-mmsequence-key` parameter.

Action usage
^^^^^^^^^^^^
.. _param-mmsequence-action-mode:
.. _mmsequence.parameter.action.mode-usage:

.. code-block:: rsyslog

   action(type="mmsequence" mode="instance")


.. _param-mmsequence-from:
.. _mmsequence.parameter.action.from:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:from

from
~~~~

.. index::
   single: mmsequence; from
   single: from

.. mmsequence-from-summary-start
.. summary-start

Sets the start value for counters and the lower margin for random numbers.

.. summary-end
.. mmsequence-from-summary-end

This parameter applies to :doc:`../mmsequence`.

:Name: from
:Scope: action
:Type: integer
:Default: 0
:Required?: no
:Introduced: 7.5.6

Description
^^^^^^^^^^^
Starting value for counters and lower margin for random numbers. This value
is inclusive and must be a non-negative integer.

Action usage
^^^^^^^^^^^^
.. _param-mmsequence-action-from:
.. _mmsequence.parameter.action.from-usage:

.. code-block:: rsyslog

   action(type="mmsequence" from="0")


.. _param-mmsequence-to:
.. _mmsequence.parameter.action.to:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:to

to
~~

.. index::
   single: mmsequence; to
   single: to

.. mmsequence-to-summary-start
.. summary-start

Sets the upper margin for sequences. The counter resets on reaching this value.

.. summary-end
.. mmsequence-to-summary-end

This parameter applies to :doc:`../mmsequence`.

:Name: to
:Scope: action
:Type: integer
:Default: ``INT_MAX`` (max signed integer, typically 2147483647)
:Required?: no
:Introduced: 7.5.6

Description
^^^^^^^^^^^
Upper margin for all sequences, which must be a positive integer.
The value of ``to`` must be greater than the :ref:`param-mmsequence-from`
value. This margin is not inclusive. When the next value for a counter is
equal or greater than this parameter, it resets to the
:ref:`param-mmsequence-from` value.

Action usage
^^^^^^^^^^^^
.. _param-mmsequence-action-to:
.. _mmsequence.parameter.action.to-usage:

.. code-block:: rsyslog

   action(type="mmsequence" to="100")


.. _param-mmsequence-step:
.. _mmsequence.parameter.action.step:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:step

step
~~~~

.. index::
   single: mmsequence; step
   single: step

.. mmsequence-step-summary-start
.. summary-start

Sets counter increment; ``0`` fetches current value except in ``random`` mode.

.. summary-end
.. mmsequence-step-summary-end

This parameter applies to :doc:`../mmsequence`.

:Name: step
:Scope: action
:Type: integer
:Default: 1
:Required?: no
:Introduced: 7.5.6

Description
^^^^^^^^^^^
Specifies the increment for counters. It must be a non-negative integer.

A ``step`` of ``0`` can be used to fetch the current value of a counter
without modifying it. This is useful in ``key`` mode or to get constant
values in ``instance`` mode.

This behavior does not apply when the :ref:`mode <param-mmsequence-mode>` is
``random``.

Action usage
^^^^^^^^^^^^
.. _param-mmsequence-action-step:
.. _mmsequence.parameter.action.step-usage:

.. code-block:: rsyslog

   action(type="mmsequence" step="1")


.. _param-mmsequence-key:
.. _mmsequence.parameter.action.key:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:key

key
~~~

.. index::
   single: mmsequence; key
   single: key

.. mmsequence-key-summary-start
.. summary-start

Names the counter shared between multiple action instances.

.. summary-end
.. mmsequence-key-summary-end

This parameter applies to :doc:`../mmsequence`.

:Name: key
:Scope: action
:Type: string
:Default: ``""``
:Required?: no
:Introduced: 7.5.6

Description
^^^^^^^^^^^
Name of the global counter used in this action.
It must be a single word (a string without spaces).

Action usage
^^^^^^^^^^^^
.. _param-mmsequence-action-key:
.. _mmsequence.parameter.action.key-usage:

.. code-block:: rsyslog

   action(type="mmsequence" key="globalCounter")


.. _param-mmsequence-var:
.. _mmsequence.parameter.action.var:

.. meta::
   :tag: module:mmsequence
   :tag: parameter:var

var
~~~

.. index::
   single: mmsequence; var
   single: var

.. mmsequence-var-summary-start
.. summary-start

Specifies the variable where the generated number will be stored.

.. summary-end
.. mmsequence-var-summary-end

This parameter applies to :doc:`../mmsequence`.

:Name: var
:Scope: action
:Type: string
:Default: ``$!mmsequence``
:Required?: no
:Introduced: 7.5.6

Description
^^^^^^^^^^^
Name of the variable where the number will be stored. It must be a single
word, start with ``$``, and be at least 3 characters long.

Action usage
^^^^^^^^^^^^
.. _param-mmsequence-action-var:
.. _mmsequence.parameter.action.var-usage:

.. code-block:: rsyslog

   action(type="mmsequence" var="$!seq")

