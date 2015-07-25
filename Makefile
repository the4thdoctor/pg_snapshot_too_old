	
MODULE_big = pg_snap_old
EXTENSION = pg_snap_old
DATA = pg_snap_old--1.0.sql
MODULE = pg_snap_old
SRCDIR = src
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

 