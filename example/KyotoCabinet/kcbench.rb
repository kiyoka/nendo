#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-

require 'kyotocabinet'
include KyotoCabinet

db = DB::new

# データベースを開く
unless db.open('numbers.kch', DB::OWRITER | DB::OCREATE)
  printf("open error: %s\n", db.error)
end

# 書きこみ
(0..99999).each { |num|
  db[ num ] = num
}

p db[1000]
p db[10000]
