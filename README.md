## "Dishes app" database

Repository of scripts, that are published in Medium article "On indexes in RDBMS and why NOT use them.".

All scripts are made using Oracle SQL dialect.

### Structure

SQL-scripts are inside `scripts/` folder.

- `0_6_cleanup.sql` - drop tables, triggers, sequences, i.e. prepare before and clean-up after running it all
- `1_create.sql` - create tables, keys and indexes
- `2_insert_data.sql` - populate data for FOODS and EATERS tables
- `3_queries.sql` - queries, that are being analyzed
- `4_functional_indexes.sql` - functional indexes
- `5_updated_queries.sql` - updated queries, that are faster
- `6_remove_useless_indexes.sql` - couple of statements to remove unused indexes

### Prerequisites

You'll need Oracle XE 11g+ to run these scripts.