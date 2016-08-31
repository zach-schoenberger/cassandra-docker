create keyspace Users
  with placement_strategy = 'NetworkTopologyStrategy'
  and strategy_options = { DAL05 : 1 }
  and durable_writes = true;

-- CREATE KEYSPACE Users WITH replication = {'class': 'NetworkTopologyStrategy', 'dal05': '1'}  AND durable_writes = true;

use Users;

create column family Carts
  with column_type = 'Standard'
  and comparator = 'UTF8Type'
  and default_validation_class = 'UTF8Type'
  and key_validation_class = 'UTF8Type'
  and read_repair_chance = 0.0
  and dclocal_read_repair_chance = 0.0
  and populate_io_cache_on_flush = false
  and gc_grace = 259200
  and min_compaction_threshold = 4
  and max_compaction_threshold = 32
  and replicate_on_write = true
  and compaction_strategy = 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'
  and caching = 'NONE'
  and compression_options = {'sstable_compression' : 'org.apache.cassandra.io.compress.SnappyCompressor'};

create column family Orders
  with column_type = 'Standard'
  and comparator = 'UTF8Type'
  and default_validation_class = 'UTF8Type'
  and key_validation_class = 'UTF8Type'
  and read_repair_chance = 0.0
  and dclocal_read_repair_chance = 0.0
  and populate_io_cache_on_flush = false
  and gc_grace = 259200
  and min_compaction_threshold = 4
  and max_compaction_threshold = 32
  and replicate_on_write = true
  and compaction_strategy = 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'
  and caching = 'NONE'
  and compression_options = {'sstable_compression' : 'org.apache.cassandra.io.compress.SnappyCompressor'};

create column family Users
  with column_type = 'Standard'
  and comparator = 'UTF8Type'
  and default_validation_class = 'BytesType'
  and key_validation_class = 'BytesType'
  and read_repair_chance = 1.0
  and dclocal_read_repair_chance = 0.0
  and populate_io_cache_on_flush = false
  and gc_grace = 864000
  and min_compaction_threshold = 4
  and max_compaction_threshold = 32
  and replicate_on_write = true
  and compaction_strategy = 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy'
  and caching = 'KEYS_ONLY'
  and bloom_filter_fp_chance = 0.001
  and compaction_strategy_options = {'min_sstable_size' : '52428800'}
  and compression_options = {'chunk_length_kb' : '64', 'sstable_compression' : 'org.apache.cassandra.io.compress.LZ4Compressor'};

create column family ViewedAttributes
  with column_type = 'Standard'
  and comparator = 'UTF8Type'
  and default_validation_class = 'LongType'
  and key_validation_class = 'UTF8Type'
  and read_repair_chance = 1.0
  and dclocal_read_repair_chance = 0.0
  and populate_io_cache_on_flush = false
  and gc_grace = 864000
  and min_compaction_threshold = 4
  and max_compaction_threshold = 32
  and replicate_on_write = true
  and compaction_strategy = 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy'
  and caching = 'KEYS_ONLY'
  and bloom_filter_fp_chance = 0.001
  and compaction_strategy_options = {'min_sstable_size' : '52428800'}
  and compression_options = {'chunk_length_kb' : '64', 'sstable_compression' : 'org.apache.cassandra.io.compress.LZ4Compressor'};

create column family ViewedProducts
  with column_type = 'Standard'
  and comparator = 'LongType'
  and default_validation_class = 'UTF8Type'
  and key_validation_class = 'UTF8Type'
  and read_repair_chance = 0.0
  and dclocal_read_repair_chance = 0.0
  and populate_io_cache_on_flush = false
  and gc_grace = 259200
  and min_compaction_threshold = 4
  and max_compaction_threshold = 32
  and replicate_on_write = true
  and compaction_strategy = 'org.apache.cassandra.db.compaction.LeveledCompactionStrategy'
  and caching = 'KEYS_ONLY';
