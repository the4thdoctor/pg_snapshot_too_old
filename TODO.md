This will be developed in stages. The following stages have been identified:

Initial Implementation
----------------------

This will create the extension controlled by the following custom parameters:

    pg_snap_old.enabled (enum) on|off
    pg_snap_old.trn_limit (bigint)  
    pg_snap_old.naptime (interval)
These can be enabled globally and will affect all transactions.
Any transaction exceeding the limit will be aborted and rolled back.

Every pg_snap_old.sleep the background worker will search for transactions, which distance in bytes, from the
current snapshot is more than than pg_snap_old.trn_limit. 

The parameter pg_snap_old.enabled activates the worker.

This extension is developed on PostgreSQL 9.4.


Improvements
------------

### Whitelisting Applications

Certain applications have a legitimate need for long running transactions. It
should be possible to whitelist them rather than aborting their transactions.

This will add the setting:

	pg_snap_old.whitelist (text)

Any application listed in pg_snap_old.whitelist is skipped by the background worker.

### Different Abort Conditions

There are other ways that transactions can be considered eligible for abortion.
They may use too much disk space. They may take too long. etc.

This will add the setting:

	pg_snap_old.condition

Which will name the condition to use. Changing it will enable a different abort
condition.

Other settings will be added to configure those abort conditions.

### ...
