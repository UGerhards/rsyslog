Number generator and counter module (mmsequence)
================================================

**Module Name:    mmsequence**

**Author:**\ Pavel Levshin <pavel@levshin.spb.ru>

**Status:**\ Non project-supported module - contact author or rsyslog
mailing list for questions

**This module is deprecated** in v8 and solely provided for backward
compatibility reasons. It was written as a work-around for missing
global variable support in v7. Global variables are available in v8,
and at some point in time this module will entirely be removed.

**Do not use this module for newly crafted config files.**
Use global variables instead.


**Available since**: 7.5.6

**Description**:

This module generates numeric sequences of different kinds. It can be
used to count messages up to a limit and to number them. It can generate
random numbers in a given range.

This module is implemented via the output module interface, so it is
called just as an action. The number generated is stored in a variable.

Configuration Parameters
------------------------

.. note::

   Parameter names are case-insensitive; camelCase is recommended for
   readability.

Action Parameters
-----------------

.. list-table::
   :widths: 30 70
   :header-rows: 1

   * - Parameter
     - Summary
   * - :ref:`param-mmsequence-mode`
     - .. include:: mmsequence/parameters.rst
        :start-after: .. mmsequence-mode-summary-start
        :end-before: .. mmsequence-mode-summary-end
   * - :ref:`param-mmsequence-from`
     - .. include:: mmsequence/parameters.rst
        :start-after: .. mmsequence-from-summary-start
        :end-before: .. mmsequence-from-summary-end
   * - :ref:`param-mmsequence-to`
     - .. include:: mmsequence/parameters.rst
        :start-after: .. mmsequence-to-summary-start
        :end-before: .. mmsequence-to-summary-end
   * - :ref:`param-mmsequence-step`
     - .. include:: mmsequence/parameters.rst
        :start-after: .. mmsequence-step-summary-start
        :end-before: .. mmsequence-step-summary-end
   * - :ref:`param-mmsequence-key`
     - .. include:: mmsequence/parameters.rst
        :start-after: .. mmsequence-key-summary-start
        :end-before: .. mmsequence-key-summary-end
   * - :ref:`param-mmsequence-var`
     - .. include:: mmsequence/parameters.rst
        :start-after: .. mmsequence-var-summary-start
        :end-before: .. mmsequence-var-summary-end

.. toctree::
   :hidden:

   mmsequence/parameters

**Sample**:

::

    # load balance
    Ruleset(
        name="logd"
        queue.workerthreads="5"
        ){

        Action(
            type="mmsequence"
            mode="instance"
            from="0"
            to="2"
            var="$.seq"
        )

        if $.seq == "0" then {
            Action(
                type="mmnormalize"
                userawmsg="on"
                rulebase="/etc/rsyslog.d/rules.rb"
            )
        } else {
            Action(
                type="mmnormalize"
                userawmsg="on"
                rulebase="/etc/rsyslog.d/rules.rb"
            )
        }

        # output logic here
    }
        # generate random numbers
        action(
            type="mmsequence"
            mode="random"
            to="100"
            var="$!rndz"
        )
        # count from 0 to 99
        action(
            type="mmsequence"
            mode="instance"
            to="100"
            var="$!cnt1"
        )
        # the same as before but the counter is global
        action(
            type="mmsequence"
            mode="key"
            key="key1"
            to="100"
            var="$!cnt2"
        )
        # count specific messages but place the counter in every message
        if $msg contains "txt" then
            action(
                type="mmsequence"
                mode="key"
                to="100"
                var="$!cnt3"
            )
        else
            action(
                type="mmsequence"
                mode="key"
                to="100"
                step="0"
                var="$!cnt3"
                key=""
            )

**Legacy Configuration Parameters**:

Note: parameter names are case-insensitive.

Not supported.

