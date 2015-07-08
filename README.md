pg_snapshot_too_old
===================

Extension for enabling the Snapshot Too Old error in PostgreSQL.

SYNOPSIS
--------

### Install the extension

```bash
./configure
make
sudo make install
```

### Load the extension

```sql
CREATE EXTENSION pg_snapshot_too_old;
```

### Configure the extension

#### Global configuration

Update the /etc/postgresql/9.4/main/postgresql.conf file and add the following:

```
pg_snapshot_too_old_enabled = true
pg_snapshot_too_old_transation_limit = 1000
```

#### Session local configuration

```sql
SET pg_snapshot_too_old_enabled = true;
SET pg_snapshot_too_old_transation_limit = 1000;
```

DESCRIPTION
-----------

This extension will enable the Snapshot Too Old error. This error is fired when
a transaction reaches a certain age, aborting the transaction and rolling back
any changes.

SEE ALSO
--------

...
