#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
    delayCall( '_require',  'require',
        trampCall(@_require)      ,
    [
        "json"
    ]
                 )
 )
#--------------------

trampCall( 
    delayCall( '_load',  'load',
        trampCall(@_load)      ,
    [
        "util/list"
    ]
                 )
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist'] = self.method( :__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist_METHOD )
    @__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist = 
    trampCall(
          Proc.new { |_obj| 
              if ( 
                  _null_QUMARK(
                      trampCall(_obj)
                  )
               ) then
                    trampCall(_obj)
              else
                  if ( 
                      trampCall( self._vector_QUMARK_METHOD(  'vector?',
                          trampCall(@_vector_QUMARK)                        ,
                      [
                            trampCall(_obj)
                      ]
                                   ))
                   ) then
                          delayCall( '_list_MIMARK_GTMARKvector',  'list->vector',
                              trampCall(@_list_MIMARK_GTMARKvector)                            ,
                          [
                                  trampCall( self._map_METHOD(  'map',
                                      trampCall(@_map)                                    ,
                                  [
                                        Proc.new { |_x| 
                                              trampCall( self.__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist_METHOD(  '%json:hash-table->alist',
                                                  trampCall(@__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist)                                                ,
                                              [
                                                    trampCall(_x)
                                              ]
                                                           ))
                                        }                                      ,
                                          trampCall( self._vector_MIMARK_GTMARKlist_METHOD(  'vector->list',
                                              trampCall(@_vector_MIMARK_GTMARKlist)                                            ,
                                          [
                                                trampCall(_obj)
                                          ]
                                                       ))
                                  ]
                                               ))
                          ]
                                       )
                  else
                      if ( 
                          trampCall( self._hash_MIMARKtable_QUMARK_METHOD(  'hash-table?',
                              trampCall(@_hash_MIMARKtable_QUMARK)                            ,
                          [
                                trampCall(_obj)
                          ]
                                       ))
                       ) then
                              delayCall( '_map',  'map',
                                  trampCall(@_map)                                ,
                              [
                                    Proc.new { |_entry| 
                                          _cons(
                                                _car(
                                                    trampCall(_entry)
                                                )                                            ,
                                                trampCall( self.__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist_METHOD(  '%json:hash-table->alist',
                                                    trampCall(@__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist)                                                  ,
                                                [
                                                        _cdr(
                                                            trampCall(_entry)
                                                        )
                                                ]
                                                             ))
                                          )
                                    }                                  ,
                                      trampCall( self._hash_MIMARKtable_MIMARK_GTMARKalist_METHOD(  'hash-table->alist',
                                          trampCall(@_hash_MIMARKtable_MIMARK_GTMARKalist)                                        ,
                                      [
                                            trampCall(_obj)
                                      ]
                                                   ))
                              ]
                                           )
                      else
                          if ( 
                          true
                           ) then
                                trampCall(_obj)
                          else
                              Cell.new()
                          end
                      end
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable'] = self.method( :__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD )
    @__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable = 
    trampCall(
          Proc.new { |_obj| 
              if ( 
                  _null_QUMARK(
                      trampCall(_obj)
                  )
               ) then
                      delayCall( '_make_MIMARKhash_MIMARKtable',  'make-hash-table',
                          trampCall(@_make_MIMARKhash_MIMARKtable)                        ,
                      [
                      ]
                                   )
              else
                  if ( 
                      trampCall( self._vector_QUMARK_METHOD(  'vector?',
                          trampCall(@_vector_QUMARK)                        ,
                      [
                            trampCall(_obj)
                      ]
                                   ))
                   ) then
                          delayCall( '_list_MIMARK_GTMARKvector',  'list->vector',
                              trampCall(@_list_MIMARK_GTMARKvector)                            ,
                          [
                                  trampCall( self._map_METHOD(  'map',
                                      trampCall(@_map)                                    ,
                                  [
                                        Proc.new { |_x| 
                                              trampCall( self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD(  '%json:alist->hash-table',
                                                  trampCall(@__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable)                                                ,
                                              [
                                                    trampCall(_x)
                                              ]
                                                           ))
                                        }                                      ,
                                          trampCall( self._vector_MIMARK_GTMARKlist_METHOD(  'vector->list',
                                              trampCall(@_vector_MIMARK_GTMARKlist)                                            ,
                                          [
                                                trampCall(_obj)
                                          ]
                                                       ))
                                  ]
                                               ))
                          ]
                                       )
                  else
                      if ( 
                          _pair_QUMARK(
                              trampCall(_obj)
                          )
                       ) then
                              delayCall( '_alist_MIMARK_GTMARKhash_MIMARKtable',  'alist->hash-table',
                                  trampCall(@_alist_MIMARK_GTMARKhash_MIMARKtable)                                ,
                              [
                                      trampCall( self._map_METHOD(  'map',
                                          trampCall(@_map)                                        ,
                                      [
                                            Proc.new { |_entry| 
                                                  _cons(
                                                        _car(
                                                            trampCall(_entry)
                                                        )                                                    ,
                                                        trampCall( self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD(  '%json:alist->hash-table',
                                                            trampCall(@__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable)                                                          ,
                                                        [
                                                                _cdr(
                                                                    trampCall(_entry)
                                                                )
                                                        ]
                                                                     ))
                                                  )
                                            }                                          ,
                                            trampCall(_obj)
                                      ]
                                                   ))
                              ]
                                           )
                      else
                          if ( 
                          true
                           ) then
                                trampCall(_obj)
                          else
                              Cell.new()
                          end
                      end
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._parse_MIMARKjson_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_parse_MIMARKjson_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_parse_MIMARKjson_MIMARKstring'] = self.method( :_parse_MIMARKjson_MIMARKstring_METHOD )
    @_parse_MIMARKjson_MIMARKstring = 
    trampCall(
          Proc.new { |_str| 
                delayCall( '__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist',  '%json:hash-table->alist',
                    trampCall(@__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist)                  ,
                [
                      trampCall(JSON).parse(
                            trampCall(_str)
                        )
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._parse_MIMARKjson_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_parse_MIMARKjson', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_parse_MIMARKjson'] = self.method( :_parse_MIMARKjson_METHOD )
    @_parse_MIMARKjson = 
    trampCall(
          Proc.new { |*__rest__| _io = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__| 
                    begin #makeLet
                      ___lambda = lambda { |_str| 
                            delayCall( '_parse_MIMARKjson_MIMARKstring',  'parse-json-string',
                                trampCall(@_parse_MIMARKjson_MIMARKstring)                              ,
                            [
                                  trampCall(_str)
                            ]
                                         )
                      } ; ___lambda.call(
                            trampCall(__).read(
                              )
                                 )
                    end
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90188| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90188)
                                )
                             ) then
                                trampCall(STDIN)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90188)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_io)
                                   )
                      end
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._construct_MIMARKjson_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_construct_MIMARKjson_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_construct_MIMARKjson_MIMARKstring'] = self.method( :_construct_MIMARKjson_MIMARKstring_METHOD )
    @_construct_MIMARKjson_MIMARKstring = 
    trampCall(
          Proc.new { |_obj| 
              trampCall(JSON).dump(
                      trampCall( self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD(  '%json:alist->hash-table',
                          trampCall(@__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable)                        ,
                      [
                            trampCall(_obj)
                      ]
                                   ))
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._construct_MIMARKjson_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_construct_MIMARKjson', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_construct_MIMARKjson'] = self.method( :_construct_MIMARKjson_METHOD )
    @_construct_MIMARKjson = 
    trampCall(
          Proc.new { |_obj,*__rest__| _io = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__| 
                    trampCall(__).print(
                            trampCall( self._construct_MIMARKjson_MIMARKstring_METHOD(  'construct-json-string',
                                trampCall(@_construct_MIMARKjson_MIMARKstring)                              ,
                            [
                                  trampCall(_obj)
                            ]
                                         ))
                      )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90189| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90189)
                                )
                             ) then
                                trampCall(STDOUT)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90189)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_io)
                                   )
                      end
                           )
              end
          }
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------
