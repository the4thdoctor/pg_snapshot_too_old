MODULES = pg_snapshot_too_old
EXTENSION = pg_snapshot_too_old

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
