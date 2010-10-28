#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-

require 'kyotocabinet'

db = KyotoCabinet::DB.new
# データベースを開く
unless db.open(
               'sample.kch',
               KyotoCabinet::DB::OWRITER | KyotoCabinet::DB::OCREATE)
  printf("open error: %s\n", db.error)
end

# 書きこみ
db.set( 'key1', 'value1' )
db.set( 'key2', 'value2' )
db.set( 'key3', 'value3' )

# 内容確認
db.each { |key, value|
  printf( "key=[%s] value=[%s]\n", key,value )
}

db.close
