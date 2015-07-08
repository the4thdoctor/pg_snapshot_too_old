This will be developed in stages. The following stages have been identified:

Initial Implementation
----------------------

This will create the extension controlled by two settings:

    pg_snapshot_too_old_enabled
    pg_snapshot_too_old_transation_limit

These can be enabled globally and will affect all transactions.
Any transaction exceeding the limit will be aborted and rolled back.

Improvements
------------

### Whitelisting Applications

Certain applications have a legitimate need for long running transactions. It
should be possible to whitelist them rather than aborting their transactions.

This will add the setting:

    pg_snapshot_too_old_whitelist

Any application named on that list will be exempt from the effects this
extension.

### Different Abort Conditions

There are other ways that transactions can be considered eligible for abortion.
They may use too much disk space. They may take too long. etc.

This will add the setting:

    pg_snapshot_too_old_condition

Which will name the condition to use. Changing it will enable a different abort
condition.

Other settings will be added to configure those abort conditions.

### ...
