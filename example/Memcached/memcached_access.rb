#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-

require 'memcache'

db = MemCache.new('localhost:21201') # port is memcachedb's default

db['nihongo'] = "日本語"
db['日本語']  = 'nihongo'

alpha_list = "abcdefghijklmnopqrstuvwxyz".split( // )
alpha_list.each { |alpha|
  db[ alpha ] = alpha + "日本語混在メッセージ" + alpha
}

(alpha_list + ['nihongo','日本語']).each { |key|
  printf( "key=%s, value=%s\n", key, db[key] )
}
