### Food database

Repository of scripts, that are published in Medium article "On indexes in RDBMS and why NOT use them.".

All scripts are made using Oracle SQL dialect.

### Structure

SQL-scripts are inside `scripts/` folder.

- `1_create.sql` - create tables, keys and indexes
- `2_insert_data.sql` - populate data for FOODS and EATERS tables
- `3_queries.sql` - queries, that are being analyzed
- `4_updated_queries.sql` - updated queries, that are made faster
- `5_remove_useless_indexes.sql` - couple of statements to remove unused indexes

### Prerequisites

You'll need Oracle XE 11g+ to run these scripts.