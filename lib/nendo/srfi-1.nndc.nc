#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
  begin #execFunc
      def self._xcons_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_xcons', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_xcons'] = self.method( :_xcons_METHOD )
    @_xcons = 
    trampCall(
          Proc.new { |_d,_a| 
                delayCall( '_cons',  'cons',
                    trampCall(@_cons)                  ,
                [
                      trampCall(_a)                    ,
                      trampCall(_d)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._make_MIMARKlist_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_make_MIMARKlist', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_make_MIMARKlist'] = self.method( :_make_MIMARKlist_METHOD )
    @_make_MIMARKlist = 
    trampCall(
          Proc.new { |_len,*__rest__| _maybe_MIMARKelt = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_elt| 
                    begin #makeLetrec
                      ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30266| 
                          ___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30266                           = 
                            Proc.new { |_i,_ans| 
                                if ( 
                                    ( 
                                      trampCall(_i)                                    <=
                                    0
                                     ) 
                                 ) then
                                      trampCall(_ans)
                                else
                                        delayCall( '___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30266',  '__gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30266',
                                            trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30266)                                          ,
                                        [
                                                ( 
                                                  trampCall(_i)                                                -
                                                1
                                                 )                                             ,
                                                _cons(
                                                    trampCall(_elt)                                                  ,
                                                    trampCall(_ans)
                                                )
                                        ]
                                                     )
                                end
                            }
                            delayCall( '___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30266',  '__gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30266',
                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30266)                              ,
                            [
                                  trampCall(_len)                                ,
                                Cell.new()
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                      if ( 
                          _null_QUMARK(
                              trampCall(_maybe_MIMARKelt)
                          )
                       ) then
                          false
                      else
                          if ( 
                              _null_QUMARK(
                                    _cdr(
                                        trampCall(_maybe_MIMARKelt)
                                    )
                              )
                           ) then
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(_maybe_MIMARKelt)
                                  ]
                                               )
                          else
                              if ( 
                              true
                               ) then
                                    begin raise RuntimeError, 
                                      "Too many arguments to MAKE-LIST" ' ' + 
                                      _write_MIMARKto_MIMARKstring(
                                          _cons(
                                              trampCall(_len)                                            ,
                                              trampCall(_maybe_MIMARKelt)
                                          )
                                      )
                                    rescue => __e 
                                      __e.set_backtrace( ["./lib/nendo/srfi-1.nnd:32"] + __e.backtrace )
                                      raise __e
                                    end 
                              else
                                  Cell.new()
                              end
                          end
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
      def self._list_MIMARKtabulate_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_list_MIMARKtabulate', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_list_MIMARKtabulate'] = self.method( :_list_MIMARKtabulate_METHOD )
    @_list_MIMARKtabulate = 
    trampCall(
          Proc.new { |_len,_proc| 
              begin #makeLetrec
                ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30267| 
                    ___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30267                     = 
                      Proc.new { |_i,_ans| 
                          if ( 
                              ( 
                                trampCall(_i)                              <
                              0
                               ) 
                           ) then
                                trampCall(_ans)
                          else
                                  delayCall( '___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30267',  '__gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30267',
                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30267)                                    ,
                                  [
                                          ( 
                                            trampCall(_i)                                          -
                                          1
                                           )                                       ,
                                          _cons(
                                                trampCall( callProcedure(  '_proc',  'proc',
                                                    trampCall(_proc)                                                  ,
                                                [
                                                      trampCall(_i)
                                                ]
                                                             ))                                            ,
                                              trampCall(_ans)
                                          )
                                  ]
                                               )
                          end
                      }
                      delayCall( '___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30267',  '__gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30267',
                          trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30267)                        ,
                      [
                              ( 
                                trampCall(_len)                              -
                              1
                               )                           ,
                          Cell.new()
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._cons_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cons_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cons_ASMARK'] = self.method( :_cons_ASMARK_METHOD )
    @_cons_ASMARK = 
    trampCall(
          Proc.new { |_first,*__rest__| _rest = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_x,_rest| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_rest)
                              )
                           ) then
                                delayCall( '_cons',  'cons',
                                    trampCall(@_cons)                                  ,
                                [
                                      trampCall(_x)                                    ,
                                        trampCall( callProcedure(  '_recur',  'recur',
                                            trampCall(_recur)                                          ,
                                        [
                                                _car(
                                                    trampCall(_rest)
                                                )                                            ,
                                                _cdr(
                                                    trampCall(_rest)
                                                )
                                        ]
                                                     ))
                                ]
                                             )
                          else
                              trampCall(_x)
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_first)                          ,
                            trampCall(_rest)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._list_MIMARKcopy_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_list_MIMARKcopy', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_list_MIMARKcopy'] = self.method( :_list_MIMARKcopy_METHOD )
    @_list_MIMARKcopy = 
    trampCall(
          Proc.new { |_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_lis)
                              )
                           ) then
                                delayCall( '_cons',  'cons',
                                    trampCall(@_cons)                                  ,
                                [
                                        _car(
                                            trampCall(_lis)
                                        )                                    ,
                                        trampCall( callProcedure(  '_recur',  'recur',
                                            trampCall(_recur)                                          ,
                                        [
                                                _cdr(
                                                    trampCall(_lis)
                                                )
                                        ]
                                                     ))
                                ]
                                             )
                          else
                              trampCall(_lis)
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._iota_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_iota', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_iota'] = self.method( :_iota_METHOD )
    @_iota = 
    trampCall(
          Proc.new { |_count,*__rest__| _args = __rest__[0] ;  
              if ( 
                  ( 
                    trampCall(_count)                  <
                  0
                   ) 
               ) then
                  begin raise RuntimeError, 
                    "Negative step count" ' ' + 
                    _write_MIMARKto_MIMARKstring(
                      trampCall(@_iota)
                    )
                  rescue => __e 
                    __e.set_backtrace( ["./lib/nendo/srfi-1.nnd:73"] + __e.backtrace )
                    raise __e
                  end 
              end
              begin #makeLet
                ___lambda = lambda { |_start,_step| 
                    begin #makeLet
                      ___lambda = lambda { |_last_MIMARKval| 
                          begin #makeLetrec
                            ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30268| 
                                ___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30268                                 = 
                                  Proc.new { |_count,_val,_ans| 
                                      if ( 
                                          ( 
                                            trampCall(_count)                                          <=
                                          0
                                           ) 
                                       ) then
                                            trampCall(_ans)
                                      else
                                              delayCall( '___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30268',  '__gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30268',
                                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30268)                                                ,
                                              [
                                                      ( 
                                                        trampCall(_count)                                                      -
                                                      1
                                                       )                                                   ,
                                                      ( 
                                                        trampCall(_val)                                                      -
                                                        trampCall(_step)
                                                       )                                                   ,
                                                      _cons(
                                                          trampCall(_val)                                                        ,
                                                          trampCall(_ans)
                                                      )
                                              ]
                                                           )
                                      end
                                  }
                                  delayCall( '___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30268',  '__gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30268',
                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30268)                                    ,
                                  [
                                        trampCall(_count)                                      ,
                                        trampCall(_last_MIMARKval)                                      ,
                                      Cell.new()
                                  ]
                                               )
                            } ; ___lambda.call(
                            nil
                                       )
                          end
                      } ; ___lambda.call(
                              ( 
                                trampCall(_start)                              +
                                  ( 
                                      ( 
                                        trampCall(_count)                                      -
                                      1
                                       )                                   *
                                    trampCall(_step)
                                   ) 
                               ) 
                                 )
                    end
                } ; ___lambda.call(
                      if ( 
                          _pair_QUMARK(
                              trampCall(_args)
                          )
                       ) then
                            delayCall( '_car',  'car',
                                trampCall(@_car)                              ,
                            [
                                  trampCall(_args)
                            ]
                                         )
                      else
                        0
                      end                    ,
                      if ( 
                        if ( 
                            _not(
                                  _eq_QUMARK(
                                    false                                    ,
                                        _pair_QUMARK(
                                            trampCall(_args)
                                        )
                                  )
                            )
                         ) then
                              _pair_QUMARK(
                                    _cdr(
                                        trampCall(_args)
                                    )
                              )
                        else
                          false
                        end
                       ) then
                            delayCall( '_cadr',  'cadr',
                                trampCall(@_cadr)                              ,
                            [
                                  trampCall(_args)
                            ]
                                         )
                      else
                        1
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
      def self._circular_MIMARKlist_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_circular_MIMARKlist', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_circular_MIMARKlist'] = self.method( :_circular_MIMARKlist_METHOD )
    @_circular_MIMARKlist = 
    trampCall(
          Proc.new { |_val1,*__rest__| _vals = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_ans| 
                      _set_MIMARKcdr_EXMARK(
                            trampCall( self._last_MIMARKpair_METHOD(  'last-pair',
                                trampCall(@_last_MIMARKpair)                              ,
                            [
                                  trampCall(_ans)
                            ]
                                         ))                        ,
                          trampCall(_ans)
                      )
                    trampCall(_ans)
                } ; ___lambda.call(
                        _cons(
                            trampCall(_val1)                          ,
                            trampCall(_vals)
                        )
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._proper_MIMARKlist_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_proper_MIMARKlist_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_proper_MIMARKlist_QUMARK'] = self.method( :_proper_MIMARKlist_QUMARK_METHOD )
    @_proper_MIMARKlist_QUMARK = 
    trampCall(
          Proc.new { |_x| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_x,_lag| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_x)
                              )
                           ) then
                              begin #makeLet
                                ___lambda = lambda { |_x| 
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_x)
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |_x,_lag| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _not(
                                                                    _eq_QUMARK(
                                                                        trampCall(_x)                                                                      ,
                                                                        trampCall(_lag)
                                                                    )
                                                              )
                                                        )
                                                  )
                                               ) then
                                                    delayCall( '_lp',  'lp',
                                                        trampCall(_lp)                                                      ,
                                                    [
                                                          trampCall(_x)                                                        ,
                                                          trampCall(_lag)
                                                    ]
                                                                 )
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                      trampCall(_x)
                                                  )                                              ,
                                                  _cdr(
                                                      trampCall(_lag)
                                                  )
                                                     )
                                        end
                                    else
                                          delayCall( '_null_QUMARK',  'null?',
                                              trampCall(@_null_QUMARK)                                            ,
                                          [
                                                trampCall(_x)
                                          ]
                                                       )
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                            trampCall(_x)
                                        )
                                           )
                              end
                          else
                                delayCall( '_null_QUMARK',  'null?',
                                    trampCall(@_null_QUMARK)                                  ,
                                [
                                      trampCall(_x)
                                ]
                                             )
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_x)                          ,
                            trampCall(_x)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._dotted_MIMARKlist_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_dotted_MIMARKlist_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_dotted_MIMARKlist_QUMARK'] = self.method( :_dotted_MIMARKlist_QUMARK_METHOD )
    @_dotted_MIMARKlist_QUMARK = 
    trampCall(
          Proc.new { |_x| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_x,_lag| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_x)
                              )
                           ) then
                              begin #makeLet
                                ___lambda = lambda { |_x| 
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_x)
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |_x,_lag| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _not(
                                                                    _eq_QUMARK(
                                                                        trampCall(_x)                                                                      ,
                                                                        trampCall(_lag)
                                                                    )
                                                              )
                                                        )
                                                  )
                                               ) then
                                                    delayCall( '_lp',  'lp',
                                                        trampCall(_lp)                                                      ,
                                                    [
                                                          trampCall(_x)                                                        ,
                                                          trampCall(_lag)
                                                    ]
                                                                 )
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                      trampCall(_x)
                                                  )                                              ,
                                                  _cdr(
                                                      trampCall(_lag)
                                                  )
                                                     )
                                        end
                                    else
                                          delayCall( '_not',  'not',
                                              trampCall(@_not)                                            ,
                                          [
                                                  _null_QUMARK(
                                                      trampCall(_x)
                                                  )
                                          ]
                                                       )
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                            trampCall(_x)
                                        )
                                           )
                              end
                          else
                                delayCall( '_not',  'not',
                                    trampCall(@_not)                                  ,
                                [
                                        _null_QUMARK(
                                            trampCall(_x)
                                        )
                                ]
                                             )
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_x)                          ,
                            trampCall(_x)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._circular_MIMARKlist_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_circular_MIMARKlist_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_circular_MIMARKlist_QUMARK'] = self.method( :_circular_MIMARKlist_QUMARK_METHOD )
    @_circular_MIMARKlist_QUMARK = 
    trampCall(
          Proc.new { |_x| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_x,_lag| 
                          if ( 
                              _not(
                                    _eq_QUMARK(
                                      false                                      ,
                                          _pair_QUMARK(
                                              trampCall(_x)
                                          )
                                    )
                              )
                           ) then
                              begin #makeLet
                                ___lambda = lambda { |_x| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _pair_QUMARK(
                                                        trampCall(_x)
                                                    )
                                              )
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |_x,_lag| 
                                              begin #makeLet
                                                ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30269| 
                                                    if ( 
                                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30269)
                                                     ) then
                                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30269)
                                                    else
                                                        begin #makeLet
                                                          ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30270| 
                                                              if ( 
                                                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30270)
                                                               ) then
                                                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30270)
                                                              else
                                                                false
                                                              end
                                                          } ; ___lambda.call(
                                                                  trampCall( callProcedure(  '_lp',  'lp',
                                                                      trampCall(_lp)                                                                    ,
                                                                  [
                                                                        trampCall(_x)                                                                      ,
                                                                        trampCall(_lag)
                                                                  ]
                                                                               ))
                                                                     )
                                                        end
                                                    end
                                                } ; ___lambda.call(
                                                        _eq_QUMARK(
                                                            trampCall(_x)                                                          ,
                                                            trampCall(_lag)
                                                        )
                                                           )
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                      trampCall(_x)
                                                  )                                              ,
                                                  _cdr(
                                                      trampCall(_lag)
                                                  )
                                                     )
                                        end
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                            trampCall(_x)
                                        )
                                           )
                              end
                          else
                            false
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_x)                          ,
                            trampCall(_x)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._list_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_list_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_list_QUMARK'] = self.method( :_list_QUMARK_METHOD )
    @_list_QUMARK = 
    trampCall(
          Proc.new { |_x| 
              if ( 
                  trampCall( self._circular_MIMARKlist_QUMARK_METHOD(  'circular-list?',
                      trampCall(@_circular_MIMARKlist_QUMARK)                    ,
                  [
                        trampCall(_x)
                  ]
                               ))
               ) then
                false
              else
                    delayCall( '_proper_MIMARKlist_QUMARK',  'proper-list?',
                        trampCall(@_proper_MIMARKlist_QUMARK)                      ,
                    [
                          trampCall(_x)
                    ]
                                 )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._not_MIMARKpair_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_not_MIMARKpair_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_not_MIMARKpair_QUMARK'] = self.method( :_not_MIMARKpair_QUMARK_METHOD )
    @_not_MIMARKpair_QUMARK = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_not',  'not',
                    trampCall(@_not)                  ,
                [
                        _pair_QUMARK(
                            trampCall(_x)
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
      def self._null_MIMARKlist_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_null_MIMARKlist_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_null_MIMARKlist_QUMARK'] = self.method( :_null_MIMARKlist_QUMARK_METHOD )
    @_null_MIMARKlist_QUMARK = 
    trampCall(
          Proc.new { |_l| 
              if ( 
                  _pair_QUMARK(
                      trampCall(_l)
                  )
               ) then
                  false
              else
                  if ( 
                      _null_QUMARK(
                          trampCall(_l)
                      )
                   ) then
                      true
                  else
                      if ( 
                      true
                       ) then
                            begin raise RuntimeError, 
                              "null-list?: argument out of domain" ' ' + 
                              _write_MIMARKto_MIMARKstring(
                                trampCall(_l)
                              )
                            rescue => __e 
                              __e.set_backtrace( ["./lib/nendo/srfi-1.nnd:192"] + __e.backtrace )
                              raise __e
                            end 
                      else
                          Cell.new()
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
      def self._list_EQMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_list_EQMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_list_EQMARK'] = self.method( :_list_EQMARK_METHOD )
    @_list_EQMARK = 
    trampCall(
          Proc.new { |__EQMARK,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30274| 
                    if ( 
                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30274)
                     ) then
                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30274)
                    else
                        begin #makeLet
                          ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30275| 
                              if ( 
                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30275)
                               ) then
                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30275)
                              else
                                false
                              end
                          } ; ___lambda.call(
                                begin #makeLetrec
                                  ___lambda = lambda { |_lp1| 
                                      _lp1                                       = 
                                        Proc.new { |_list_MIMARKa,_others| 
                                            begin #makeLet
                                              ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30276| 
                                                  if ( 
                                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30276)
                                                   ) then
                                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30276)
                                                  else
                                                      begin #makeLet
                                                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30277| 
                                                            if ( 
                                                              trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30277)
                                                             ) then
                                                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30277)
                                                            else
                                                              false
                                                            end
                                                        } ; ___lambda.call(
                                                              begin #makeLet
                                                                ___lambda = lambda { |_list_MIMARKb,_others| 
                                                                    if ( 
                                                                        _eq_QUMARK(
                                                                            trampCall(_list_MIMARKa)                                                                          ,
                                                                            trampCall(_list_MIMARKb)
                                                                        )
                                                                     ) then
                                                                          delayCall( '_lp1',  'lp1',
                                                                              trampCall(_lp1)                                                                            ,
                                                                          [
                                                                                trampCall(_list_MIMARKb)                                                                              ,
                                                                                trampCall(_others)
                                                                          ]
                                                                                       )
                                                                    else
                                                                        begin #makeLetrec
                                                                          ___lambda = lambda { |_lp2| 
                                                                              _lp2                                                                               = 
                                                                                Proc.new { |_list_MIMARKa,_list_MIMARKc| 
                                                                                    if ( 
                                                                                        trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                                                            trampCall(@_null_MIMARKlist_QUMARK)                                                                                          ,
                                                                                        [
                                                                                              trampCall(_list_MIMARKa)
                                                                                        ]
                                                                                                     ))
                                                                                     ) then
                                                                                        if ( 
                                                                                            _not(
                                                                                                  _eq_QUMARK(
                                                                                                    false                                                                                                    ,
                                                                                                        trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                                                                            trampCall(@_null_MIMARKlist_QUMARK)                                                                                                          ,
                                                                                                        [
                                                                                                              trampCall(_list_MIMARKc)
                                                                                                        ]
                                                                                                                     ))
                                                                                                  )
                                                                                            )
                                                                                         ) then
                                                                                              delayCall( '_lp1',  'lp1',
                                                                                                  trampCall(_lp1)                                                                                                ,
                                                                                              [
                                                                                                    trampCall(_list_MIMARKb)                                                                                                  ,
                                                                                                    trampCall(_others)
                                                                                              ]
                                                                                                           )
                                                                                        else
                                                                                          false
                                                                                        end
                                                                                    else
                                                                                        if ( 
                                                                                            _not(
                                                                                                  _eq_QUMARK(
                                                                                                    false                                                                                                    ,
                                                                                                        _not(
                                                                                                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                                                                                  trampCall(@_null_MIMARKlist_QUMARK)                                                                                                                ,
                                                                                                              [
                                                                                                                    trampCall(_list_MIMARKc)
                                                                                                              ]
                                                                                                                           ))
                                                                                                        )
                                                                                                  )
                                                                                            )
                                                                                         ) then
                                                                                            if ( 
                                                                                                _not(
                                                                                                      _eq_QUMARK(
                                                                                                        false                                                                                                        ,
                                                                                                            trampCall( callProcedure(  '__EQMARK',  '=',
                                                                                                                trampCall(__EQMARK)                                                                                                              ,
                                                                                                            [
                                                                                                                    _car(
                                                                                                                        trampCall(_list_MIMARKa)
                                                                                                                    )                                                                                                                ,
                                                                                                                    _car(
                                                                                                                        trampCall(_list_MIMARKc)
                                                                                                                    )
                                                                                                            ]
                                                                                                                         ))
                                                                                                      )
                                                                                                )
                                                                                             ) then
                                                                                                  delayCall( '_lp2',  'lp2',
                                                                                                      trampCall(_lp2)                                                                                                    ,
                                                                                                  [
                                                                                                          _cdr(
                                                                                                              trampCall(_list_MIMARKa)
                                                                                                          )                                                                                                      ,
                                                                                                          _cdr(
                                                                                                              trampCall(_list_MIMARKc)
                                                                                                          )
                                                                                                  ]
                                                                                                               )
                                                                                            else
                                                                                              false
                                                                                            end
                                                                                        else
                                                                                          false
                                                                                        end
                                                                                    end
                                                                                }
                                                                                delayCall( '_lp2',  'lp2',
                                                                                    trampCall(_lp2)                                                                                  ,
                                                                                [
                                                                                      trampCall(_list_MIMARKa)                                                                                    ,
                                                                                      trampCall(_list_MIMARKb)
                                                                                ]
                                                                                             )
                                                                          } ; ___lambda.call(
                                                                          nil
                                                                                     )
                                                                        end
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _car(
                                                                            trampCall(_others)
                                                                        )                                                                    ,
                                                                        _cdr(
                                                                            trampCall(_others)
                                                                        )
                                                                           )
                                                              end
                                                                   )
                                                      end
                                                  end
                                              } ; ___lambda.call(
                                                      _null_QUMARK(
                                                          trampCall(_others)
                                                      )
                                                         )
                                            end
                                        }
                                        delayCall( '_lp1',  'lp1',
                                            trampCall(_lp1)                                          ,
                                        [
                                                _car(
                                                    trampCall(_lists)
                                                )                                            ,
                                                _cdr(
                                                    trampCall(_lists)
                                                )
                                        ]
                                                     )
                                  } ; ___lambda.call(
                                  nil
                                             )
                                end
                                     )
                        end
                    end
                } ; ___lambda.call(
                        _null_QUMARK(
                            trampCall(_lists)
                        )
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._length_PLMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_length_PLMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_length_PLMARK'] = self.method( :_length_PLMARK_METHOD )
    @_length_PLMARK = 
    trampCall(
          Proc.new { |_x| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_x,_lag,_len| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_x)
                              )
                           ) then
                              begin #makeLet
                                ___lambda = lambda { |_x,_len| 
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_x)
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |_x,_lag,_len| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _not(
                                                                    _eq_QUMARK(
                                                                        trampCall(_x)                                                                      ,
                                                                        trampCall(_lag)
                                                                    )
                                                              )
                                                        )
                                                  )
                                               ) then
                                                    delayCall( '_lp',  'lp',
                                                        trampCall(_lp)                                                      ,
                                                    [
                                                          trampCall(_x)                                                        ,
                                                          trampCall(_lag)                                                        ,
                                                          trampCall(_len)
                                                    ]
                                                                 )
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                      trampCall(_x)
                                                  )                                              ,
                                                  _cdr(
                                                      trampCall(_lag)
                                                  )                                              ,
                                                  ( 
                                                    trampCall(_len)                                                  +
                                                  1
                                                   ) 
                                                     )
                                        end
                                    else
                                        trampCall(_len)
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                            trampCall(_x)
                                        )                                    ,
                                        ( 
                                          trampCall(_len)                                        +
                                        1
                                         ) 
                                           )
                              end
                          else
                              trampCall(_len)
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_x)                          ,
                            trampCall(_x)                          ,
                          0
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._zip_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_zip', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_zip'] = self.method( :_zip_METHOD )
    @_zip = 
    trampCall(
          Proc.new { |_list1,*__rest__| _more_MIMARKlists = __rest__[0] ;  
                delayCall( '_apply',  'apply',
                    trampCall(@_apply)                  ,
                [
                      trampCall(@_map)                    ,
                      trampCall(@_list)                    ,
                      trampCall(_list1)                    ,
                      trampCall(_more_MIMARKlists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._first_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_first', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_first'] = self.method( :_first_METHOD )
    @_first = 
    trampCall(
          trampCall(@_car)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._second_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_second', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_second'] = self.method( :_second_METHOD )
    @_second = 
    trampCall(
          trampCall(@_cadr)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._third_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_third', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_third'] = self.method( :_third_METHOD )
    @_third = 
    trampCall(
          trampCall(@_caddr)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._fourth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_fourth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_fourth'] = self.method( :_fourth_METHOD )
    @_fourth = 
    trampCall(
          trampCall(@_cadddr)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._fifth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_fifth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_fifth'] = self.method( :_fifth_METHOD )
    @_fifth = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        trampCall( self._cddddr_METHOD(  'cddddr',
                            trampCall(@_cddddr)                          ,
                        [
                              trampCall(_x)
                        ]
                                     ))
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._sixth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_sixth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_sixth'] = self.method( :_sixth_METHOD )
    @_sixth = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cadr',  'cadr',
                    trampCall(@_cadr)                  ,
                [
                        trampCall( self._cddddr_METHOD(  'cddddr',
                            trampCall(@_cddddr)                          ,
                        [
                              trampCall(_x)
                        ]
                                     ))
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._seventh_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_seventh', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_seventh'] = self.method( :_seventh_METHOD )
    @_seventh = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_caddr',  'caddr',
                    trampCall(@_caddr)                  ,
                [
                        trampCall( self._cddddr_METHOD(  'cddddr',
                            trampCall(@_cddddr)                          ,
                        [
                              trampCall(_x)
                        ]
                                     ))
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._eighth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_eighth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_eighth'] = self.method( :_eighth_METHOD )
    @_eighth = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cadddr',  'cadddr',
                    trampCall(@_cadddr)                  ,
                [
                        trampCall( self._cddddr_METHOD(  'cddddr',
                            trampCall(@_cddddr)                          ,
                        [
                              trampCall(_x)
                        ]
                                     ))
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._ninth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ninth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_ninth'] = self.method( :_ninth_METHOD )
    @_ninth = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        trampCall( self._cddddr_METHOD(  'cddddr',
                            trampCall(@_cddddr)                          ,
                        [
                                trampCall( self._cddddr_METHOD(  'cddddr',
                                    trampCall(@_cddddr)                                  ,
                                [
                                      trampCall(_x)
                                ]
                                             ))
                        ]
                                     ))
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._tenth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_tenth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_tenth'] = self.method( :_tenth_METHOD )
    @_tenth = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cadr',  'cadr',
                    trampCall(@_cadr)                  ,
                [
                        trampCall( self._cddddr_METHOD(  'cddddr',
                            trampCall(@_cddddr)                          ,
                        [
                                trampCall( self._cddddr_METHOD(  'cddddr',
                                    trampCall(@_cddddr)                                  ,
                                [
                                      trampCall(_x)
                                ]
                                             ))
                        ]
                                     ))
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._car_PLMARKcdr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_car_PLMARKcdr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_car_PLMARKcdr'] = self.method( :_car_PLMARKcdr_METHOD )
    @_car_PLMARKcdr = 
    trampCall(
          Proc.new { |_pair| 
                delayCall( '_values',  'values',
                    trampCall(@_values)                  ,
                [
                        _car(
                            trampCall(_pair)
                        )                    ,
                        _cdr(
                            trampCall(_pair)
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
      def self._take_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_take', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_take'] = self.method( :_take_METHOD )
    @_take = 
    trampCall(
          Proc.new { |_lis,_k| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis,_k| 
                          if ( 
                              trampCall( self._zero_QUMARK_METHOD(  'zero?',
                                  trampCall(@_zero_QUMARK)                                ,
                              [
                                    trampCall(_k)
                              ]
                                           ))
                           ) then
                            Cell.new()
                          else
                                delayCall( '_cons',  'cons',
                                    trampCall(@_cons)                                  ,
                                [
                                        _car(
                                            trampCall(_lis)
                                        )                                    ,
                                        trampCall( callProcedure(  '_recur',  'recur',
                                            trampCall(_recur)                                          ,
                                        [
                                                _cdr(
                                                    trampCall(_lis)
                                                )                                            ,
                                                ( 
                                                  trampCall(_k)                                                -
                                                1
                                                 ) 
                                        ]
                                                     ))
                                ]
                                             )
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)                          ,
                            trampCall(_k)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._drop_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_drop', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_drop'] = self.method( :_drop_METHOD )
    @_drop = 
    trampCall(
          Proc.new { |_lis,_k| 
              begin #makeLetrec
                ___lambda = lambda { |_iter| 
                    _iter                     = 
                      Proc.new { |_lis,_k| 
                          if ( 
                              trampCall( self._zero_QUMARK_METHOD(  'zero?',
                                  trampCall(@_zero_QUMARK)                                ,
                              [
                                    trampCall(_k)
                              ]
                                           ))
                           ) then
                              trampCall(_lis)
                          else
                                delayCall( '_iter',  'iter',
                                    trampCall(_iter)                                  ,
                                [
                                        _cdr(
                                            trampCall(_lis)
                                        )                                    ,
                                        ( 
                                          trampCall(_k)                                        -
                                        1
                                         ) 
                                ]
                                             )
                          end
                      }
                      delayCall( '_iter',  'iter',
                          trampCall(_iter)                        ,
                      [
                            trampCall(_lis)                          ,
                            trampCall(_k)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._take_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_take_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_take_EXMARK'] = self.method( :_take_EXMARK_METHOD )
    @_take_EXMARK = 
    trampCall(
          Proc.new { |_lis,_k| 
              if ( 
                  trampCall( self._zero_QUMARK_METHOD(  'zero?',
                      trampCall(@_zero_QUMARK)                    ,
                  [
                        trampCall(_k)
                  ]
                               ))
               ) then
                Cell.new()
              else
                  begin  #makeBegin
                        _set_MIMARKcdr_EXMARK(
                              trampCall( self._drop_METHOD(  'drop',
                                  trampCall(@_drop)                                ,
                              [
                                    trampCall(_lis)                                  ,
                                      ( 
                                        trampCall(_k)                                      -
                                      1
                                       ) 
                              ]
                                           ))                          ,
                          Cell.new()
                        )
                      trampCall(_lis)
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._take_MIMARKright_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_take_MIMARKright', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_take_MIMARKright'] = self.method( :_take_MIMARKright_METHOD )
    @_take_MIMARKright = 
    trampCall(
          Proc.new { |_lis,_k| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_lag,_lead| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_lead)
                              )
                           ) then
                                delayCall( '_lp',  'lp',
                                    trampCall(_lp)                                  ,
                                [
                                        _cdr(
                                            trampCall(_lag)
                                        )                                    ,
                                        _cdr(
                                            trampCall(_lead)
                                        )
                                ]
                                             )
                          else
                              trampCall(_lag)
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_lis)                          ,
                              trampCall( self._drop_METHOD(  'drop',
                                  trampCall(@_drop)                                ,
                              [
                                    trampCall(_lis)                                  ,
                                    trampCall(_k)
                              ]
                                           ))
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._drop_MIMARKright_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_drop_MIMARKright', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_drop_MIMARKright'] = self.method( :_drop_MIMARKright_METHOD )
    @_drop_MIMARKright = 
    trampCall(
          Proc.new { |_lis,_k| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lag,_lead| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_lead)
                              )
                           ) then
                                delayCall( '_cons',  'cons',
                                    trampCall(@_cons)                                  ,
                                [
                                        _car(
                                            trampCall(_lag)
                                        )                                    ,
                                        trampCall( callProcedure(  '_recur',  'recur',
                                            trampCall(_recur)                                          ,
                                        [
                                                _cdr(
                                                    trampCall(_lag)
                                                )                                            ,
                                                _cdr(
                                                    trampCall(_lead)
                                                )
                                        ]
                                                     ))
                                ]
                                             )
                          else
                            Cell.new()
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)                          ,
                              trampCall( self._drop_METHOD(  'drop',
                                  trampCall(@_drop)                                ,
                              [
                                    trampCall(_lis)                                  ,
                                    trampCall(_k)
                              ]
                                           ))
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._drop_MIMARKright_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_drop_MIMARKright_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_drop_MIMARKright_EXMARK'] = self.method( :_drop_MIMARKright_EXMARK_METHOD )
    @_drop_MIMARKright_EXMARK = 
    trampCall(
          Proc.new { |_lis,_k| 
              begin #makeLet
                ___lambda = lambda { |_lead| 
                    if ( 
                        _pair_QUMARK(
                            trampCall(_lead)
                        )
                     ) then
                        begin #makeLetrec
                          ___lambda = lambda { |_lp| 
                              _lp                               = 
                                Proc.new { |_lag,_lead| 
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_lead)
                                        )
                                     ) then
                                          delayCall( '_lp',  'lp',
                                              trampCall(_lp)                                            ,
                                          [
                                                  _cdr(
                                                      trampCall(_lag)
                                                  )                                              ,
                                                  _cdr(
                                                      trampCall(_lead)
                                                  )
                                          ]
                                                       )
                                    else
                                        begin  #makeBegin
                                              _set_MIMARKcdr_EXMARK(
                                                  trampCall(_lag)                                                ,
                                                Cell.new()
                                              )
                                            trampCall(_lis)
                                        end
                                    end
                                }
                                delayCall( '_lp',  'lp',
                                    trampCall(_lp)                                  ,
                                [
                                      trampCall(_lis)                                    ,
                                        _cdr(
                                            trampCall(_lead)
                                        )
                                ]
                                             )
                          } ; ___lambda.call(
                          nil
                                     )
                        end
                    else
                      Cell.new()
                    end
                } ; ___lambda.call(
                        trampCall( self._drop_METHOD(  'drop',
                            trampCall(@_drop)                          ,
                        [
                              trampCall(_lis)                            ,
                              trampCall(_k)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._split_MIMARKat_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_split_MIMARKat', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_split_MIMARKat'] = self.method( :_split_MIMARKat_METHOD )
    @_split_MIMARKat = 
    trampCall(
          Proc.new { |_x,_k| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis,_k| 
                          if ( 
                              trampCall( self._zero_QUMARK_METHOD(  'zero?',
                                  trampCall(@_zero_QUMARK)                                ,
                              [
                                    trampCall(_k)
                              ]
                                           ))
                           ) then
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                    Cell.new()                                    ,
                                      trampCall(_lis)
                                ]
                                             )
                          else
                                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                  ,
                                [
                                      Proc.new { || 
                                            trampCall( callProcedure(  '_recur',  'recur',
                                                trampCall(_recur)                                              ,
                                            [
                                                    _cdr(
                                                        trampCall(_lis)
                                                    )                                                ,
                                                    ( 
                                                      trampCall(_k)                                                    -
                                                    1
                                                     ) 
                                            ]
                                                         ))
                                      }                                    ,
                                      Proc.new { |_prefix,_suffix| 
                                            trampCall( self._values_METHOD(  'values',
                                                trampCall(@_values)                                              ,
                                            [
                                                    _cons(
                                                          _car(
                                                              trampCall(_lis)
                                                          )                                                      ,
                                                        trampCall(_prefix)
                                                    )                                                ,
                                                  trampCall(_suffix)
                                            ]
                                                         ))
                                      }
                                ]
                                             )
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_x)                          ,
                            trampCall(_k)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._split_MIMARKat_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_split_MIMARKat_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_split_MIMARKat_EXMARK'] = self.method( :_split_MIMARKat_EXMARK_METHOD )
    @_split_MIMARKat_EXMARK = 
    trampCall(
          Proc.new { |_x,_k| 
              if ( 
                  trampCall( self._zero_QUMARK_METHOD(  'zero?',
                      trampCall(@_zero_QUMARK)                    ,
                  [
                        trampCall(_k)
                  ]
                               ))
               ) then
                    delayCall( '_values',  'values',
                        trampCall(@_values)                      ,
                    [
                        Cell.new()                        ,
                          trampCall(_x)
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_prev| 
                        begin #makeLet
                          ___lambda = lambda { |_suffix| 
                                _set_MIMARKcdr_EXMARK(
                                    trampCall(_prev)                                  ,
                                  Cell.new()
                                )
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                      trampCall(_x)                                    ,
                                      trampCall(_suffix)
                                ]
                                             )
                          } ; ___lambda.call(
                                  _cdr(
                                      trampCall(_prev)
                                  )
                                     )
                        end
                    } ; ___lambda.call(
                            trampCall( self._drop_METHOD(  'drop',
                                trampCall(@_drop)                              ,
                            [
                                  trampCall(_x)                                ,
                                    ( 
                                      trampCall(_k)                                    -
                                    1
                                     ) 
                            ]
                                         ))
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._last_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_last', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_last'] = self.method( :_last_METHOD )
    @_last = 
    trampCall(
          Proc.new { |_lis| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        trampCall( self._last_MIMARKpair_METHOD(  'last-pair',
                            trampCall(@_last_MIMARKpair)                          ,
                        [
                              trampCall(_lis)
                        ]
                                     ))
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._last_MIMARKpair_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_last_MIMARKpair', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_last_MIMARKpair'] = self.method( :_last_MIMARKpair_METHOD )
    @_last_MIMARKpair = 
    trampCall(
          Proc.new { |_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_lis| 
                          begin #makeLet
                            ___lambda = lambda { |_tail| 
                                if ( 
                                    _pair_QUMARK(
                                        trampCall(_tail)
                                    )
                                 ) then
                                      delayCall( '_lp',  'lp',
                                          trampCall(_lp)                                        ,
                                      [
                                            trampCall(_tail)
                                      ]
                                                   )
                                else
                                    trampCall(_lis)
                                end
                            } ; ___lambda.call(
                                    _cdr(
                                        trampCall(_lis)
                                    )
                                       )
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unzip1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unzip1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unzip1'] = self.method( :_unzip1_METHOD )
    @_unzip1 = 
    trampCall(
          Proc.new { |_lis| 
                delayCall( '_map',  'map',
                    trampCall(@_map)                  ,
                [
                      trampCall(@_car)                    ,
                      trampCall(_lis)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unzip2_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unzip2', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unzip2'] = self.method( :_unzip2_METHOD )
    @_unzip2 = 
    trampCall(
          Proc.new { |_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)
                                ]
                                             )
                          else
                              begin #makeLet
                                ___lambda = lambda { |_elt| 
                                      delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                          trampCall(@_call_MIMARKwith_MIMARKvalues)                                        ,
                                      [
                                            Proc.new { || 
                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                      trampCall(_recur)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_lis)
                                                          )
                                                  ]
                                                               ))
                                            }                                          ,
                                            Proc.new { |_a,_b| 
                                                  trampCall( self._values_METHOD(  'values',
                                                      trampCall(@_values)                                                    ,
                                                  [
                                                          _cons(
                                                                _car(
                                                                    trampCall(_elt)
                                                                )                                                            ,
                                                              trampCall(_a)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._cadr_METHOD(  'cadr',
                                                                    trampCall(@_cadr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_b)
                                                          )
                                                  ]
                                                               ))
                                            }
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        _car(
                                            trampCall(_lis)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unzip3_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unzip3', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unzip3'] = self.method( :_unzip3_METHOD )
    @_unzip3 = 
    trampCall(
          Proc.new { |_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)
                                ]
                                             )
                          else
                              begin #makeLet
                                ___lambda = lambda { |_elt| 
                                      delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                          trampCall(@_call_MIMARKwith_MIMARKvalues)                                        ,
                                      [
                                            Proc.new { || 
                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                      trampCall(_recur)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_lis)
                                                          )
                                                  ]
                                                               ))
                                            }                                          ,
                                            Proc.new { |_a,_b,_c| 
                                                  trampCall( self._values_METHOD(  'values',
                                                      trampCall(@_values)                                                    ,
                                                  [
                                                          _cons(
                                                                _car(
                                                                    trampCall(_elt)
                                                                )                                                            ,
                                                              trampCall(_a)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._cadr_METHOD(  'cadr',
                                                                    trampCall(@_cadr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_b)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._caddr_METHOD(  'caddr',
                                                                    trampCall(@_caddr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_c)
                                                          )
                                                  ]
                                                               ))
                                            }
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        _car(
                                            trampCall(_lis)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unzip4_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unzip4', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unzip4'] = self.method( :_unzip4_METHOD )
    @_unzip4 = 
    trampCall(
          Proc.new { |_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)
                                ]
                                             )
                          else
                              begin #makeLet
                                ___lambda = lambda { |_elt| 
                                      delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                          trampCall(@_call_MIMARKwith_MIMARKvalues)                                        ,
                                      [
                                            Proc.new { || 
                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                      trampCall(_recur)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_lis)
                                                          )
                                                  ]
                                                               ))
                                            }                                          ,
                                            Proc.new { |_a,_b,_c,_d| 
                                                  trampCall( self._values_METHOD(  'values',
                                                      trampCall(@_values)                                                    ,
                                                  [
                                                          _cons(
                                                                _car(
                                                                    trampCall(_elt)
                                                                )                                                            ,
                                                              trampCall(_a)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._cadr_METHOD(  'cadr',
                                                                    trampCall(@_cadr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_b)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._caddr_METHOD(  'caddr',
                                                                    trampCall(@_caddr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_c)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._cadddr_METHOD(  'cadddr',
                                                                    trampCall(@_cadddr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_d)
                                                          )
                                                  ]
                                                               ))
                                            }
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        _car(
                                            trampCall(_lis)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unzip5_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unzip5', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unzip5'] = self.method( :_unzip5_METHOD )
    @_unzip5 = 
    trampCall(
          Proc.new { |_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)
                                ]
                                             )
                          else
                              begin #makeLet
                                ___lambda = lambda { |_elt| 
                                      delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                          trampCall(@_call_MIMARKwith_MIMARKvalues)                                        ,
                                      [
                                            Proc.new { || 
                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                      trampCall(_recur)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_lis)
                                                          )
                                                  ]
                                                               ))
                                            }                                          ,
                                            Proc.new { |_a,_b,_c,_d,_e| 
                                                  trampCall( self._values_METHOD(  'values',
                                                      trampCall(@_values)                                                    ,
                                                  [
                                                          _cons(
                                                                _car(
                                                                    trampCall(_elt)
                                                                )                                                            ,
                                                              trampCall(_a)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._cadr_METHOD(  'cadr',
                                                                    trampCall(@_cadr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_b)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._caddr_METHOD(  'caddr',
                                                                    trampCall(@_caddr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_c)
                                                          )                                                      ,
                                                          _cons(
                                                                trampCall( self._cadddr_METHOD(  'cadddr',
                                                                    trampCall(@_cadddr)                                                                  ,
                                                                [
                                                                      trampCall(_elt)
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_d)
                                                          )                                                      ,
                                                          _cons(
                                                                _car(
                                                                      trampCall( self._cddddr_METHOD(  'cddddr',
                                                                          trampCall(@_cddddr)                                                                        ,
                                                                      [
                                                                            trampCall(_elt)
                                                                      ]
                                                                                   ))
                                                                )                                                            ,
                                                              trampCall(_e)
                                                          )
                                                  ]
                                                               ))
                                            }
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        _car(
                                            trampCall(_lis)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._append_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_append_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_append_EXMARK'] = self.method( :_append_EXMARK_METHOD )
    @_append_EXMARK = 
    trampCall(
          Proc.new { |*__rest__| _lists = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_lists,_prev| 
                          if ( 
                              _not(
                                    _pair_QUMARK(
                                        trampCall(_lists)
                                    )
                              )
                           ) then
                              trampCall(_prev)
                          else
                              begin #makeLet
                                ___lambda = lambda { |_first,_rest| 
                                    if ( 
                                        _not(
                                              _pair_QUMARK(
                                                  trampCall(_first)
                                              )
                                        )
                                     ) then
                                          delayCall( '_lp',  'lp',
                                              trampCall(_lp)                                            ,
                                          [
                                                trampCall(_rest)                                              ,
                                                trampCall(_first)
                                          ]
                                                       )
                                    else
                                        begin #makeLetrec
                                          ___lambda = lambda { |_lp2| 
                                              _lp2                                               = 
                                                Proc.new { |_tail_MIMARKcons,_rest| 
                                                    if ( 
                                                        _pair_QUMARK(
                                                            trampCall(_rest)
                                                        )
                                                     ) then
                                                        begin #makeLet
                                                          ___lambda = lambda { |_next,_rest| 
                                                                _set_MIMARKcdr_EXMARK(
                                                                    trampCall(_tail_MIMARKcons)                                                                  ,
                                                                    trampCall(_next)
                                                                )
                                                                delayCall( '_lp2',  'lp2',
                                                                    trampCall(_lp2)                                                                  ,
                                                                [
                                                                      if ( 
                                                                          _pair_QUMARK(
                                                                              trampCall(_next)
                                                                          )
                                                                       ) then
                                                                            trampCall( self._last_MIMARKpair_METHOD(  'last-pair',
                                                                                trampCall(@_last_MIMARKpair)                                                                              ,
                                                                            [
                                                                                  trampCall(_next)
                                                                            ]
                                                                                         ))
                                                                      else
                                                                          trampCall(_tail_MIMARKcons)
                                                                      end                                                                    ,
                                                                      trampCall(_rest)
                                                                ]
                                                                             )
                                                          } ; ___lambda.call(
                                                                  _car(
                                                                      trampCall(_rest)
                                                                  )                                                              ,
                                                                  _cdr(
                                                                      trampCall(_rest)
                                                                  )
                                                                     )
                                                        end
                                                    else
                                                        trampCall(_first)
                                                    end
                                                }
                                                delayCall( '_lp2',  'lp2',
                                                    trampCall(_lp2)                                                  ,
                                                [
                                                        trampCall( self._last_MIMARKpair_METHOD(  'last-pair',
                                                            trampCall(@_last_MIMARKpair)                                                          ,
                                                        [
                                                              trampCall(_first)
                                                        ]
                                                                     ))                                                    ,
                                                      trampCall(_rest)
                                                ]
                                                             )
                                          } ; ___lambda.call(
                                          nil
                                                     )
                                        end
                                    end
                                } ; ___lambda.call(
                                        _car(
                                            trampCall(_lists)
                                        )                                    ,
                                        _cdr(
                                            trampCall(_lists)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_lists)                          ,
                          Cell.new()
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._append_MIMARKreverse_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_append_MIMARKreverse', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_append_MIMARKreverse'] = self.method( :_append_MIMARKreverse_METHOD )
    @_append_MIMARKreverse = 
    trampCall(
          Proc.new { |_rev_MIMARKhead,_tail| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_rev_MIMARKhead,_tail| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_rev_MIMARKhead)
                              ]
                                           ))
                           ) then
                              trampCall(_tail)
                          else
                                delayCall( '_lp',  'lp',
                                    trampCall(_lp)                                  ,
                                [
                                        _cdr(
                                            trampCall(_rev_MIMARKhead)
                                        )                                    ,
                                        _cons(
                                              _car(
                                                  trampCall(_rev_MIMARKhead)
                                              )                                          ,
                                            trampCall(_tail)
                                        )
                                ]
                                             )
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_rev_MIMARKhead)                          ,
                            trampCall(_tail)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._append_MIMARKreverse_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_append_MIMARKreverse_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_append_MIMARKreverse_EXMARK'] = self.method( :_append_MIMARKreverse_EXMARK_METHOD )
    @_append_MIMARKreverse_EXMARK = 
    trampCall(
          Proc.new { |_rev_MIMARKhead,_tail| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_rev_MIMARKhead,_tail| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_rev_MIMARKhead)
                              ]
                                           ))
                           ) then
                              trampCall(_tail)
                          else
                              begin #makeLet
                                ___lambda = lambda { |_next_MIMARKrev| 
                                      _set_MIMARKcdr_EXMARK(
                                          trampCall(_rev_MIMARKhead)                                        ,
                                          trampCall(_tail)
                                      )
                                      delayCall( '_lp',  'lp',
                                          trampCall(_lp)                                        ,
                                      [
                                            trampCall(_next_MIMARKrev)                                          ,
                                            trampCall(_rev_MIMARKhead)
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        _cdr(
                                            trampCall(_rev_MIMARKhead)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_rev_MIMARKhead)                          ,
                            trampCall(_tail)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._concatenate_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_concatenate', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_concatenate'] = self.method( :_concatenate_METHOD )
    @_concatenate = 
    trampCall(
          Proc.new { |_lists| 
                delayCall( '_reduce_MIMARKright',  'reduce-right',
                    trampCall(@_reduce_MIMARKright)                  ,
                [
                      trampCall(@_append)                    ,
                    Cell.new()                    ,
                      trampCall(_lists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._concatenate_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_concatenate_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_concatenate_EXMARK'] = self.method( :_concatenate_EXMARK_METHOD )
    @_concatenate_EXMARK = 
    trampCall(
          Proc.new { |_lists| 
                delayCall( '_reduce_MIMARKright',  'reduce-right',
                    trampCall(@_reduce_MIMARKright)                  ,
                [
                      trampCall(@_append_EXMARK)                    ,
                    Cell.new()                    ,
                      trampCall(_lists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKcdrs_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKcdrs', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKcdrs'] = self.method( :__PAMARKcdrs_METHOD )
    @__PAMARKcdrs = 
    trampCall(
          Proc.new { |_lists| 
              begin #makeLet
                ___lambda = lambda { |_abort| 
                    if ( 
                      trampCall(_abort)
                     ) then
                      Cell.new()
                    else
                        begin #makeLetrec
                          ___lambda = lambda { |_recur| 
                              _recur                               = 
                                Proc.new { |_lists| 
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_lists)
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |_lis| 
                                              if ( 
                                                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                      trampCall(@_null_MIMARKlist_QUMARK)                                                    ,
                                                  [
                                                        trampCall(_lis)
                                                  ]
                                                               ))
                                               ) then
                                                Cell.new()
                                              else
                                                    delayCall( '_cons',  'cons',
                                                        trampCall(@_cons)                                                      ,
                                                    [
                                                            _cdr(
                                                                trampCall(_lis)
                                                            )                                                        ,
                                                            trampCall( callProcedure(  '_recur',  'recur',
                                                                trampCall(_recur)                                                              ,
                                                            [
                                                                    _cdr(
                                                                        trampCall(_lists)
                                                                    )
                                                            ]
                                                                         ))
                                                    ]
                                                                 )
                                              end
                                          } ; ___lambda.call(
                                                  _car(
                                                      trampCall(_lists)
                                                  )
                                                     )
                                        end
                                    else
                                      Cell.new()
                                    end
                                }
                                delayCall( '_recur',  'recur',
                                    trampCall(_recur)                                  ,
                                [
                                      trampCall(_lists)
                                ]
                                             )
                          } ; ___lambda.call(
                          nil
                                     )
                        end
                    end
                } ; ___lambda.call(
                        trampCall( self._find_METHOD(  'find',
                            trampCall(@_find)                          ,
                        [
                              Proc.new { |_lis| 
                                    trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                        trampCall(@_null_MIMARKlist_QUMARK)                                      ,
                                    [
                                          trampCall(_lis)
                                    ]
                                                 ))
                              }                            ,
                              trampCall(_lists)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKcars_PLMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKcars_PLMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKcars_PLMARK'] = self.method( :__PAMARKcars_PLMARK_METHOD )
    @__PAMARKcars_PLMARK = 
    trampCall(
          Proc.new { |_lists,_last_MIMARKelt| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lists| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_lists)
                              )
                           ) then
                                delayCall( '_cons',  'cons',
                                    trampCall(@_cons)                                  ,
                                [
                                        trampCall( self._caar_METHOD(  'caar',
                                            trampCall(@_caar)                                          ,
                                        [
                                              trampCall(_lists)
                                        ]
                                                     ))                                    ,
                                        trampCall( callProcedure(  '_recur',  'recur',
                                            trampCall(_recur)                                          ,
                                        [
                                                _cdr(
                                                    trampCall(_lists)
                                                )
                                        ]
                                                     ))
                                ]
                                             )
                          else
                                delayCall( '_list',  'list',
                                    trampCall(@_list)                                  ,
                                [
                                      trampCall(_last_MIMARKelt)
                                ]
                                             )
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lists)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKcars_PLMARKcdrs_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKcars_PLMARKcdrs', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKcars_PLMARKcdrs'] = self.method( :__PAMARKcars_PLMARKcdrs_METHOD )
    @__PAMARKcars_PLMARKcdrs = 
    trampCall(
          Proc.new { |_lists| 
              begin #makeLet
                ___lambda = lambda { |_abort| 
                    if ( 
                      trampCall(_abort)
                     ) then
                          delayCall( '_values',  'values',
                              trampCall(@_values)                            ,
                          [
                              Cell.new()                              ,
                              Cell.new()
                          ]
                                       )
                    else
                        begin #makeLetrec
                          ___lambda = lambda { |_recur| 
                              _recur                               = 
                                Proc.new { |_lists| 
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_lists)
                                        )
                                     ) then
                                          delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                              trampCall(@_call_MIMARKwith_MIMARKvalues)                                            ,
                                          [
                                                Proc.new { || 
                                                      trampCall( self._car_PLMARKcdr_METHOD(  'car+cdr',
                                                          trampCall(@_car_PLMARKcdr)                                                        ,
                                                      [
                                                            trampCall(_lists)
                                                      ]
                                                                   ))
                                                }                                              ,
                                                Proc.new { |_list,_other_MIMARKlists| 
                                                    if ( 
                                                        trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                            trampCall(@_null_MIMARKlist_QUMARK)                                                          ,
                                                        [
                                                              trampCall(_list)
                                                        ]
                                                                     ))
                                                     ) then
                                                          trampCall( self._values_METHOD(  'values',
                                                              trampCall(@_values)                                                            ,
                                                          [
                                                              Cell.new()                                                              ,
                                                              Cell.new()
                                                          ]
                                                                       ))
                                                    else
                                                          trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                              trampCall(@_call_MIMARKwith_MIMARKvalues)                                                            ,
                                                          [
                                                                Proc.new { || 
                                                                      trampCall( self._car_PLMARKcdr_METHOD(  'car+cdr',
                                                                          trampCall(@_car_PLMARKcdr)                                                                        ,
                                                                      [
                                                                            trampCall(_list)
                                                                      ]
                                                                                   ))
                                                                }                                                              ,
                                                                Proc.new { |_a,_d| 
                                                                      trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                                          trampCall(@_call_MIMARKwith_MIMARKvalues)                                                                        ,
                                                                      [
                                                                            Proc.new { || 
                                                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                                                      trampCall(_recur)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_other_MIMARKlists)
                                                                                  ]
                                                                                               ))
                                                                            }                                                                          ,
                                                                            Proc.new { |_cars,_cdrs| 
                                                                                  trampCall( self._values_METHOD(  'values',
                                                                                      trampCall(@_values)                                                                                    ,
                                                                                  [
                                                                                          _cons(
                                                                                              trampCall(_a)                                                                                            ,
                                                                                              trampCall(_cars)
                                                                                          )                                                                                      ,
                                                                                          _cons(
                                                                                              trampCall(_d)                                                                                            ,
                                                                                              trampCall(_cdrs)
                                                                                          )
                                                                                  ]
                                                                                               ))
                                                                            }
                                                                      ]
                                                                                   ))
                                                                }
                                                          ]
                                                                       ))
                                                    end
                                                }
                                          ]
                                                       )
                                    else
                                          delayCall( '_values',  'values',
                                              trampCall(@_values)                                            ,
                                          [
                                              Cell.new()                                              ,
                                              Cell.new()
                                          ]
                                                       )
                                    end
                                }
                                delayCall( '_recur',  'recur',
                                    trampCall(_recur)                                  ,
                                [
                                      trampCall(_lists)
                                ]
                                             )
                          } ; ___lambda.call(
                          nil
                                     )
                        end
                    end
                } ; ___lambda.call(
                        trampCall( self._find_METHOD(  'find',
                            trampCall(@_find)                          ,
                        [
                              Proc.new { |_lis| 
                                    trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                        trampCall(@_null_MIMARKlist_QUMARK)                                      ,
                                    [
                                          trampCall(_lis)
                                    ]
                                                 ))
                              }                            ,
                              trampCall(_lists)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKcars_PLMARKcdrs_PLMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKcars_PLMARKcdrs_PLMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKcars_PLMARKcdrs_PLMARK'] = self.method( :__PAMARKcars_PLMARKcdrs_PLMARK_METHOD )
    @__PAMARKcars_PLMARKcdrs_PLMARK = 
    trampCall(
          Proc.new { |_lists,_cars_MIMARKfinal| 
              begin #makeLet
                ___lambda = lambda { |_abort| 
                    if ( 
                      trampCall(_abort)
                     ) then
                          delayCall( '_values',  'values',
                              trampCall(@_values)                            ,
                          [
                              Cell.new()                              ,
                              Cell.new()
                          ]
                                       )
                    else
                        begin #makeLetrec
                          ___lambda = lambda { |_recur| 
                              _recur                               = 
                                Proc.new { |_lists| 
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_lists)
                                        )
                                     ) then
                                          delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                              trampCall(@_call_MIMARKwith_MIMARKvalues)                                            ,
                                          [
                                                Proc.new { || 
                                                      trampCall( self._car_PLMARKcdr_METHOD(  'car+cdr',
                                                          trampCall(@_car_PLMARKcdr)                                                        ,
                                                      [
                                                            trampCall(_lists)
                                                      ]
                                                                   ))
                                                }                                              ,
                                                Proc.new { |_list,_other_MIMARKlists| 
                                                    if ( 
                                                        trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                            trampCall(@_null_MIMARKlist_QUMARK)                                                          ,
                                                        [
                                                              trampCall(_list)
                                                        ]
                                                                     ))
                                                     ) then
                                                          trampCall( self._values_METHOD(  'values',
                                                              trampCall(@_values)                                                            ,
                                                          [
                                                              Cell.new()                                                              ,
                                                              Cell.new()
                                                          ]
                                                                       ))
                                                    else
                                                          trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                              trampCall(@_call_MIMARKwith_MIMARKvalues)                                                            ,
                                                          [
                                                                Proc.new { || 
                                                                      trampCall( self._car_PLMARKcdr_METHOD(  'car+cdr',
                                                                          trampCall(@_car_PLMARKcdr)                                                                        ,
                                                                      [
                                                                            trampCall(_list)
                                                                      ]
                                                                                   ))
                                                                }                                                              ,
                                                                Proc.new { |_a,_d| 
                                                                      trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                                          trampCall(@_call_MIMARKwith_MIMARKvalues)                                                                        ,
                                                                      [
                                                                            Proc.new { || 
                                                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                                                      trampCall(_recur)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_other_MIMARKlists)
                                                                                  ]
                                                                                               ))
                                                                            }                                                                          ,
                                                                            Proc.new { |_cars,_cdrs| 
                                                                                  trampCall( self._values_METHOD(  'values',
                                                                                      trampCall(@_values)                                                                                    ,
                                                                                  [
                                                                                          _cons(
                                                                                              trampCall(_a)                                                                                            ,
                                                                                              trampCall(_cars)
                                                                                          )                                                                                      ,
                                                                                          _cons(
                                                                                              trampCall(_d)                                                                                            ,
                                                                                              trampCall(_cdrs)
                                                                                          )
                                                                                  ]
                                                                                               ))
                                                                            }
                                                                      ]
                                                                                   ))
                                                                }
                                                          ]
                                                                       ))
                                                    end
                                                }
                                          ]
                                                       )
                                    else
                                          delayCall( '_values',  'values',
                                              trampCall(@_values)                                            ,
                                          [
                                                  trampCall( self._list_METHOD(  'list',
                                                      trampCall(@_list)                                                    ,
                                                  [
                                                        trampCall(_cars_MIMARKfinal)
                                                  ]
                                                               ))                                              ,
                                              Cell.new()
                                          ]
                                                       )
                                    end
                                }
                                delayCall( '_recur',  'recur',
                                    trampCall(_recur)                                  ,
                                [
                                      trampCall(_lists)
                                ]
                                             )
                          } ; ___lambda.call(
                          nil
                                     )
                        end
                    end
                } ; ___lambda.call(
                        trampCall( self._find_METHOD(  'find',
                            trampCall(@_find)                          ,
                        [
                              Proc.new { |_lis| 
                                    trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                        trampCall(@_null_MIMARKlist_QUMARK)                                      ,
                                    [
                                          trampCall(_lis)
                                    ]
                                                 ))
                              }                            ,
                              trampCall(_lists)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKcars_PLMARKcdrs_SLMARKno_MIMARKtest_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKcars_PLMARKcdrs_SLMARKno_MIMARKtest', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKcars_PLMARKcdrs_SLMARKno_MIMARKtest'] = self.method( :__PAMARKcars_PLMARKcdrs_SLMARKno_MIMARKtest_METHOD )
    @__PAMARKcars_PLMARKcdrs_SLMARKno_MIMARKtest = 
    trampCall(
          Proc.new { |_lists| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lists| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_lists)
                              )
                           ) then
                                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                  ,
                                [
                                      Proc.new { || 
                                            trampCall( self._car_PLMARKcdr_METHOD(  'car+cdr',
                                                trampCall(@_car_PLMARKcdr)                                              ,
                                            [
                                                  trampCall(_lists)
                                            ]
                                                         ))
                                      }                                    ,
                                      Proc.new { |_list,_other_MIMARKlists| 
                                            trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                trampCall(@_call_MIMARKwith_MIMARKvalues)                                              ,
                                            [
                                                  Proc.new { || 
                                                        trampCall( self._car_PLMARKcdr_METHOD(  'car+cdr',
                                                            trampCall(@_car_PLMARKcdr)                                                          ,
                                                        [
                                                              trampCall(_list)
                                                        ]
                                                                     ))
                                                  }                                                ,
                                                  Proc.new { |_a,_d| 
                                                        trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                            trampCall(@_call_MIMARKwith_MIMARKvalues)                                                          ,
                                                        [
                                                              Proc.new { || 
                                                                    trampCall( callProcedure(  '_recur',  'recur',
                                                                        trampCall(_recur)                                                                      ,
                                                                    [
                                                                          trampCall(_other_MIMARKlists)
                                                                    ]
                                                                                 ))
                                                              }                                                            ,
                                                              Proc.new { |_cars,_cdrs| 
                                                                    trampCall( self._values_METHOD(  'values',
                                                                        trampCall(@_values)                                                                      ,
                                                                    [
                                                                            _cons(
                                                                                trampCall(_a)                                                                              ,
                                                                                trampCall(_cars)
                                                                            )                                                                        ,
                                                                            _cons(
                                                                                trampCall(_d)                                                                              ,
                                                                                trampCall(_cdrs)
                                                                            )
                                                                    ]
                                                                                 ))
                                                              }
                                                        ]
                                                                     ))
                                                  }
                                            ]
                                                         ))
                                      }
                                ]
                                             )
                          else
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                    Cell.new()                                    ,
                                    Cell.new()
                                ]
                                             )
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lists)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._count_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_count', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_count'] = self.method( :_count_METHOD )
    @_count = 
    trampCall(
          Proc.new { |_pred,_list1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_list1,_lists,_i| 
                              if ( 
                                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                      trampCall(@_null_MIMARKlist_QUMARK)                                    ,
                                  [
                                        trampCall(_list1)
                                  ]
                                               ))
                               ) then
                                  trampCall(_i)
                              else
                                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                        trampCall(@_call_MIMARKwith_MIMARKvalues)                                      ,
                                    [
                                          Proc.new { || 
                                                trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                                    trampCall(@__PAMARKcars_PLMARKcdrs)                                                  ,
                                                [
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                          }                                        ,
                                          Proc.new { |_as,_ds| 
                                              if ( 
                                                  _null_QUMARK(
                                                      trampCall(_as)
                                                  )
                                               ) then
                                                  trampCall(_i)
                                              else
                                                    trampCall( callProcedure(  '_lp',  'lp',
                                                        trampCall(_lp)                                                      ,
                                                    [
                                                            _cdr(
                                                                trampCall(_list1)
                                                            )                                                        ,
                                                          trampCall(_ds)                                                        ,
                                                          if ( 
                                                              trampCall( self._apply_METHOD(  'apply',
                                                                  trampCall(@_apply)                                                                ,
                                                              [
                                                                    trampCall(_pred)                                                                  ,
                                                                      _car(
                                                                          trampCall(_list1)
                                                                      )                                                                  ,
                                                                    trampCall(_as)
                                                              ]
                                                                           ))
                                                           ) then
                                                                ( 
                                                                  trampCall(_i)                                                                +
                                                                1
                                                                 ) 
                                                          else
                                                              trampCall(_i)
                                                          end
                                                    ]
                                                                 ))
                                              end
                                          }
                                    ]
                                                 )
                              end
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                trampCall(_list1)                              ,
                                trampCall(_lists)                              ,
                              0
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lis,_i| 
                              if ( 
                                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                      trampCall(@_null_MIMARKlist_QUMARK)                                    ,
                                  [
                                        trampCall(_lis)
                                  ]
                                               ))
                               ) then
                                  trampCall(_i)
                              else
                                    delayCall( '_lp',  'lp',
                                        trampCall(_lp)                                      ,
                                    [
                                            _cdr(
                                                trampCall(_lis)
                                            )                                        ,
                                          if ( 
                                              trampCall( callProcedure(  '_pred',  'pred',
                                                  trampCall(_pred)                                                ,
                                              [
                                                      _car(
                                                          trampCall(_lis)
                                                      )
                                              ]
                                                           ))
                                           ) then
                                                ( 
                                                  trampCall(_i)                                                +
                                                1
                                                 ) 
                                          else
                                              trampCall(_i)
                                          end
                                    ]
                                                 )
                              end
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                trampCall(_list1)                              ,
                              0
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unfold_MIMARKright_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unfold_MIMARKright', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unfold_MIMARKright'] = self.method( :_unfold_MIMARKright_METHOD )
    @_unfold_MIMARKright = 
    trampCall(
          Proc.new { |_p,_f,_g,_seed,*__rest__| _maybe_MIMARKtail = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_seed,_ans| 
                          if ( 
                              trampCall( callProcedure(  '_p',  'p',
                                  trampCall(_p)                                ,
                              [
                                    trampCall(_seed)
                              ]
                                           ))
                           ) then
                              trampCall(_ans)
                          else
                                delayCall( '_lp',  'lp',
                                    trampCall(_lp)                                  ,
                                [
                                        trampCall( callProcedure(  '_g',  'g',
                                            trampCall(_g)                                          ,
                                        [
                                              trampCall(_seed)
                                        ]
                                                     ))                                    ,
                                        _cons(
                                              trampCall( callProcedure(  '_f',  'f',
                                                  trampCall(_f)                                                ,
                                              [
                                                    trampCall(_seed)
                                              ]
                                                           ))                                          ,
                                            trampCall(_ans)
                                        )
                                ]
                                             )
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_seed)                          ,
                            begin #makeLet
                              ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30278| 
                                  if ( 
                                      _null_QUMARK(
                                          trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30278)
                                      )
                                   ) then
                                    Cell.new()
                                  else
                                        _car(
                                            trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30278)
                                        )
                                  end
                              } ; ___lambda.call(
                                    trampCall(_maybe_MIMARKtail)
                                         )
                            end
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unfold_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unfold', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unfold'] = self.method( :_unfold_METHOD )
    @_unfold = 
    trampCall(
          Proc.new { |_p,_f,_g,_seed,*__rest__| _maybe_MIMARKtail_MIMARKgen = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_maybe_MIMARKtail_MIMARKgen)
                  )
               ) then
                  begin #makeLet
                    ___lambda = lambda { |_tail_MIMARKgen| 
                        if ( 
                            _pair_QUMARK(
                                  _cdr(
                                      trampCall(_maybe_MIMARKtail_MIMARKgen)
                                  )
                            )
                         ) then
                              delayCall( '_apply',  'apply',
                                  trampCall(@_apply)                                ,
                              [
                                    trampCall(@_error)                                  ,
                                  "Too many arguments"                                  ,
                                    trampCall(@_unfold)                                  ,
                                    trampCall(_p)                                  ,
                                    trampCall(_f)                                  ,
                                    trampCall(_g)                                  ,
                                    trampCall(_seed)                                  ,
                                    trampCall(_maybe_MIMARKtail_MIMARKgen)
                              ]
                                           )
                        else
                            begin #makeLetrec
                              ___lambda = lambda { |_recur| 
                                  _recur                                   = 
                                    Proc.new { |_seed| 
                                        if ( 
                                            trampCall( callProcedure(  '_p',  'p',
                                                trampCall(_p)                                              ,
                                            [
                                                  trampCall(_seed)
                                            ]
                                                         ))
                                         ) then
                                              delayCall( '_tail_MIMARKgen',  'tail-gen',
                                                  trampCall(_tail_MIMARKgen)                                                ,
                                              [
                                                    trampCall(_seed)
                                              ]
                                                           )
                                        else
                                              delayCall( '_cons',  'cons',
                                                  trampCall(@_cons)                                                ,
                                              [
                                                      trampCall( callProcedure(  '_f',  'f',
                                                          trampCall(_f)                                                        ,
                                                      [
                                                            trampCall(_seed)
                                                      ]
                                                                   ))                                                  ,
                                                      trampCall( callProcedure(  '_recur',  'recur',
                                                          trampCall(_recur)                                                        ,
                                                      [
                                                              trampCall( callProcedure(  '_g',  'g',
                                                                  trampCall(_g)                                                                ,
                                                              [
                                                                    trampCall(_seed)
                                                              ]
                                                                           ))
                                                      ]
                                                                   ))
                                              ]
                                                           )
                                        end
                                    }
                                    delayCall( '_recur',  'recur',
                                        trampCall(_recur)                                      ,
                                    [
                                          trampCall(_seed)
                                    ]
                                                 )
                              } ; ___lambda.call(
                              nil
                                         )
                            end
                        end
                    } ; ___lambda.call(
                            _car(
                                trampCall(_maybe_MIMARKtail_MIMARKgen)
                            )
                               )
                  end
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_seed| 
                              if ( 
                                  trampCall( callProcedure(  '_p',  'p',
                                      trampCall(_p)                                    ,
                                  [
                                        trampCall(_seed)
                                  ]
                                               ))
                               ) then
                                Cell.new()
                              else
                                    delayCall( '_cons',  'cons',
                                        trampCall(@_cons)                                      ,
                                    [
                                            trampCall( callProcedure(  '_f',  'f',
                                                trampCall(_f)                                              ,
                                            [
                                                  trampCall(_seed)
                                            ]
                                                         ))                                        ,
                                            trampCall( callProcedure(  '_recur',  'recur',
                                                trampCall(_recur)                                              ,
                                            [
                                                    trampCall( callProcedure(  '_g',  'g',
                                                        trampCall(_g)                                                      ,
                                                    [
                                                          trampCall(_seed)
                                                    ]
                                                                 ))
                                            ]
                                                         ))
                                    ]
                                                 )
                              end
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                trampCall(_seed)
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._fold_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_fold', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_fold'] = self.method( :_fold_METHOD )
    @_fold = 
    trampCall(
          Proc.new { |_kons,_knil,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lists,_ans| 
                                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                  ,
                                [
                                      Proc.new { || 
                                            trampCall( self.__PAMARKcars_PLMARKcdrs_PLMARK_METHOD(  '%cars+cdrs+',
                                                trampCall(@__PAMARKcars_PLMARKcdrs_PLMARK)                                              ,
                                            [
                                                  trampCall(_lists)                                                ,
                                                  trampCall(_ans)
                                            ]
                                                         ))
                                      }                                    ,
                                      Proc.new { |_cars_PLMARKans,_cdrs| 
                                          if ( 
                                              _null_QUMARK(
                                                  trampCall(_cars_PLMARKans)
                                              )
                                           ) then
                                              trampCall(_ans)
                                          else
                                                trampCall( callProcedure(  '_lp',  'lp',
                                                    trampCall(_lp)                                                  ,
                                                [
                                                      trampCall(_cdrs)                                                    ,
                                                        trampCall( self._apply_METHOD(  'apply',
                                                            trampCall(@_apply)                                                          ,
                                                        [
                                                              trampCall(_kons)                                                            ,
                                                              trampCall(_cars_PLMARKans)
                                                        ]
                                                                     ))
                                                ]
                                                             ))
                                          end
                                      }
                                ]
                                             )
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )                              ,
                                trampCall(_knil)
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                    delayCall( '__PAMARKfold',  '%fold',
                        trampCall(@__PAMARKfold)                      ,
                    [
                          trampCall(_kons)                        ,
                          trampCall(_knil)                        ,
                          trampCall(_lis1)
                    ]
                                 )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._fold_MIMARKright_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_fold_MIMARKright', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_fold_MIMARKright'] = self.method( :_fold_MIMARKright_METHOD )
    @_fold_MIMARKright = 
    trampCall(
          Proc.new { |_kons,_knil,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_lists| 
                              begin #makeLet
                                ___lambda = lambda { |_cdrs| 
                                    if ( 
                                        _null_QUMARK(
                                            trampCall(_cdrs)
                                        )
                                     ) then
                                        trampCall(_knil)
                                    else
                                          delayCall( '_apply',  'apply',
                                              trampCall(@_apply)                                            ,
                                          [
                                                trampCall(_kons)                                              ,
                                                  trampCall( self.__PAMARKcars_PLMARK_METHOD(  '%cars+',
                                                      trampCall(@__PAMARKcars_PLMARK)                                                    ,
                                                  [
                                                        trampCall(_lists)                                                      ,
                                                          trampCall( callProcedure(  '_recur',  'recur',
                                                              trampCall(_recur)                                                            ,
                                                          [
                                                                trampCall(_cdrs)
                                                          ]
                                                                       ))
                                                  ]
                                                               ))
                                          ]
                                                       )
                                    end
                                } ; ___lambda.call(
                                        trampCall( self.__PAMARKcdrs_METHOD(  '%cdrs',
                                            trampCall(@__PAMARKcdrs)                                          ,
                                        [
                                              trampCall(_lists)
                                        ]
                                                     ))
                                           )
                              end
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_lis| 
                              if ( 
                                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                      trampCall(@_null_MIMARKlist_QUMARK)                                    ,
                                  [
                                        trampCall(_lis)
                                  ]
                                               ))
                               ) then
                                  trampCall(_knil)
                              else
                                  begin #makeLet
                                    ___lambda = lambda { |_head| 
                                          delayCall( '_kons',  'kons',
                                              trampCall(_kons)                                            ,
                                          [
                                                trampCall(_head)                                              ,
                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                      trampCall(_recur)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_lis)
                                                          )
                                                  ]
                                                               ))
                                          ]
                                                       )
                                    } ; ___lambda.call(
                                            _car(
                                                trampCall(_lis)
                                            )
                                               )
                                  end
                              end
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                trampCall(_lis1)
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._pair_MIMARKfold_MIMARKright_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_pair_MIMARKfold_MIMARKright', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_pair_MIMARKfold_MIMARKright'] = self.method( :_pair_MIMARKfold_MIMARKright_METHOD )
    @_pair_MIMARKfold_MIMARKright = 
    trampCall(
          Proc.new { |_f,_zero,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_lists| 
                              begin #makeLet
                                ___lambda = lambda { |_cdrs| 
                                    if ( 
                                        _null_QUMARK(
                                            trampCall(_cdrs)
                                        )
                                     ) then
                                        trampCall(_zero)
                                    else
                                          delayCall( '_apply',  'apply',
                                              trampCall(@_apply)                                            ,
                                          [
                                                trampCall(_f)                                              ,
                                                  trampCall( self._append_EXMARK_METHOD(  'append!',
                                                      trampCall(@_append_EXMARK)                                                    ,
                                                  [
                                                        trampCall(_lists)                                                      ,
                                                          trampCall( self._list_METHOD(  'list',
                                                              trampCall(@_list)                                                            ,
                                                          [
                                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                                      trampCall(_recur)                                                                    ,
                                                                  [
                                                                        trampCall(_cdrs)
                                                                  ]
                                                                               ))
                                                          ]
                                                                       ))
                                                  ]
                                                               ))
                                          ]
                                                       )
                                    end
                                } ; ___lambda.call(
                                        trampCall( self.__PAMARKcdrs_METHOD(  '%cdrs',
                                            trampCall(@__PAMARKcdrs)                                          ,
                                        [
                                              trampCall(_lists)
                                        ]
                                                     ))
                                           )
                              end
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_lis| 
                              if ( 
                                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                      trampCall(@_null_MIMARKlist_QUMARK)                                    ,
                                  [
                                        trampCall(_lis)
                                  ]
                                               ))
                               ) then
                                  trampCall(_zero)
                              else
                                    delayCall( '_f',  'f',
                                        trampCall(_f)                                      ,
                                    [
                                          trampCall(_lis)                                        ,
                                            trampCall( callProcedure(  '_recur',  'recur',
                                                trampCall(_recur)                                              ,
                                            [
                                                    _cdr(
                                                        trampCall(_lis)
                                                    )
                                            ]
                                                         ))
                                    ]
                                                 )
                              end
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                trampCall(_lis1)
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._pair_MIMARKfold_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_pair_MIMARKfold', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_pair_MIMARKfold'] = self.method( :_pair_MIMARKfold_METHOD )
    @_pair_MIMARKfold = 
    trampCall(
          Proc.new { |_f,_zero,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lists,_ans| 
                              begin #makeLet
                                ___lambda = lambda { |_tails| 
                                    if ( 
                                        _null_QUMARK(
                                            trampCall(_tails)
                                        )
                                     ) then
                                        trampCall(_ans)
                                    else
                                          delayCall( '_lp',  'lp',
                                              trampCall(_lp)                                            ,
                                          [
                                                trampCall(_tails)                                              ,
                                                  trampCall( self._apply_METHOD(  'apply',
                                                      trampCall(@_apply)                                                    ,
                                                  [
                                                        trampCall(_f)                                                      ,
                                                          trampCall( self._append_EXMARK_METHOD(  'append!',
                                                              trampCall(@_append_EXMARK)                                                            ,
                                                          [
                                                                trampCall(_lists)                                                              ,
                                                                  trampCall( self._list_METHOD(  'list',
                                                                      trampCall(@_list)                                                                    ,
                                                                  [
                                                                        trampCall(_ans)
                                                                  ]
                                                                               ))
                                                          ]
                                                                       ))
                                                  ]
                                                               ))
                                          ]
                                                       )
                                    end
                                } ; ___lambda.call(
                                        trampCall( self.__PAMARKcdrs_METHOD(  '%cdrs',
                                            trampCall(@__PAMARKcdrs)                                          ,
                                        [
                                              trampCall(_lists)
                                        ]
                                                     ))
                                           )
                              end
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )                              ,
                                trampCall(_zero)
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lis,_ans| 
                              if ( 
                                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                      trampCall(@_null_MIMARKlist_QUMARK)                                    ,
                                  [
                                        trampCall(_lis)
                                  ]
                                               ))
                               ) then
                                  trampCall(_ans)
                              else
                                  begin #makeLet
                                    ___lambda = lambda { |_tail| 
                                          delayCall( '_lp',  'lp',
                                              trampCall(_lp)                                            ,
                                          [
                                                trampCall(_tail)                                              ,
                                                  trampCall( callProcedure(  '_f',  'f',
                                                      trampCall(_f)                                                    ,
                                                  [
                                                        trampCall(_lis)                                                      ,
                                                        trampCall(_ans)
                                                  ]
                                                               ))
                                          ]
                                                       )
                                    } ; ___lambda.call(
                                            _cdr(
                                                trampCall(_lis)
                                            )
                                               )
                                  end
                              end
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                trampCall(_lis1)                              ,
                                trampCall(_zero)
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._reduce_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_reduce', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_reduce'] = self.method( :_reduce_METHOD )
    @_reduce = 
    trampCall(
          Proc.new { |_f,_ridentity,_lis| 
              if ( 
                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                      trampCall(@_null_MIMARKlist_QUMARK)                    ,
                  [
                        trampCall(_lis)
                  ]
                               ))
               ) then
                  trampCall(_ridentity)
              else
                    delayCall( '_fold',  'fold',
                        trampCall(@_fold)                      ,
                    [
                          trampCall(_f)                        ,
                            _car(
                                trampCall(_lis)
                            )                        ,
                            _cdr(
                                trampCall(_lis)
                            )
                    ]
                                 )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._reduce_MIMARKright_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_reduce_MIMARKright', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_reduce_MIMARKright'] = self.method( :_reduce_MIMARKright_METHOD )
    @_reduce_MIMARKright = 
    trampCall(
          Proc.new { |_f,_ridentity,_lis| 
              if ( 
                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                      trampCall(@_null_MIMARKlist_QUMARK)                    ,
                  [
                        trampCall(_lis)
                  ]
                               ))
               ) then
                  trampCall(_ridentity)
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_head,_lis| 
                              if ( 
                                  _pair_QUMARK(
                                      trampCall(_lis)
                                  )
                               ) then
                                    delayCall( '_f',  'f',
                                        trampCall(_f)                                      ,
                                    [
                                          trampCall(_head)                                        ,
                                            trampCall( callProcedure(  '_recur',  'recur',
                                                trampCall(_recur)                                              ,
                                            [
                                                    _car(
                                                        trampCall(_lis)
                                                    )                                                ,
                                                    _cdr(
                                                        trampCall(_lis)
                                                    )
                                            ]
                                                         ))
                                    ]
                                                 )
                              else
                                  trampCall(_head)
                              end
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                  _car(
                                      trampCall(_lis)
                                  )                              ,
                                  _cdr(
                                      trampCall(_lis)
                                  )
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._append_MIMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_append_MIMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_append_MIMARKmap'] = self.method( :_append_MIMARKmap_METHOD )
    @_append_MIMARKmap = 
    trampCall(
          Proc.new { |_f,_lis1,*__rest__| _lists = __rest__[0] ;  
                delayCall( '_really_MIMARKappend_MIMARKmap',  'really-append-map',
                    trampCall(@_really_MIMARKappend_MIMARKmap)                  ,
                [
                      trampCall(@_append_MIMARKmap)                    ,
                      trampCall(@_append)                    ,
                      trampCall(_f)                    ,
                      trampCall(_lis1)                    ,
                      trampCall(_lists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._append_MIMARKmap_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_append_MIMARKmap_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_append_MIMARKmap_EXMARK'] = self.method( :_append_MIMARKmap_EXMARK_METHOD )
    @_append_MIMARKmap_EXMARK = 
    trampCall(
          Proc.new { |_f,_lis1,*__rest__| _lists = __rest__[0] ;  
                delayCall( '_really_MIMARKappend_MIMARKmap',  'really-append-map',
                    trampCall(@_really_MIMARKappend_MIMARKmap)                  ,
                [
                      trampCall(@_append_MIMARKmap_EXMARK)                    ,
                      trampCall(@_append_EXMARK)                    ,
                      trampCall(_f)                    ,
                      trampCall(_lis1)                    ,
                      trampCall(_lists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._really_MIMARKappend_MIMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_really_MIMARKappend_MIMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_really_MIMARKappend_MIMARKmap'] = self.method( :_really_MIMARKappend_MIMARKmap_METHOD )
    @_really_MIMARKappend_MIMARKmap = 
    trampCall(
          Proc.new { |_who,_appender,_f,_lis1,_lists| 
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                        trampCall(@_call_MIMARKwith_MIMARKvalues)                      ,
                    [
                          Proc.new { || 
                                trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                    trampCall(@__PAMARKcars_PLMARKcdrs)                                  ,
                                [
                                        _cons(
                                            trampCall(_lis1)                                          ,
                                            trampCall(_lists)
                                        )
                                ]
                                             ))
                          }                        ,
                          Proc.new { |_cars,_cdrs| 
                              if ( 
                                  _null_QUMARK(
                                      trampCall(_cars)
                                  )
                               ) then
                                Cell.new()
                              else
                                  begin #makeLetrec
                                    ___lambda = lambda { |_recur| 
                                        _recur                                         = 
                                          Proc.new { |_cars,_cdrs| 
                                              begin #makeLet
                                                ___lambda = lambda { |_vals| 
                                                      trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                          trampCall(@_call_MIMARKwith_MIMARKvalues)                                                        ,
                                                      [
                                                            Proc.new { || 
                                                                  trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                                                      trampCall(@__PAMARKcars_PLMARKcdrs)                                                                    ,
                                                                  [
                                                                        trampCall(_cdrs)
                                                                  ]
                                                                               ))
                                                            }                                                          ,
                                                            Proc.new { |_cars2,_cdrs2| 
                                                                if ( 
                                                                    _null_QUMARK(
                                                                        trampCall(_cars2)
                                                                    )
                                                                 ) then
                                                                    trampCall(_vals)
                                                                else
                                                                      trampCall( callProcedure(  '_appender',  'appender',
                                                                          trampCall(_appender)                                                                        ,
                                                                      [
                                                                            trampCall(_vals)                                                                          ,
                                                                              trampCall( callProcedure(  '_recur',  'recur',
                                                                                  trampCall(_recur)                                                                                ,
                                                                              [
                                                                                    trampCall(_cars2)                                                                                  ,
                                                                                    trampCall(_cdrs2)
                                                                              ]
                                                                                           ))
                                                                      ]
                                                                                   ))
                                                                end
                                                            }
                                                      ]
                                                                   ))
                                                } ; ___lambda.call(
                                                        trampCall( self._apply_METHOD(  'apply',
                                                            trampCall(@_apply)                                                          ,
                                                        [
                                                              trampCall(_f)                                                            ,
                                                              trampCall(_cars)
                                                        ]
                                                                     ))
                                                           )
                                              end
                                          }
                                          trampCall( callProcedure(  '_recur',  'recur',
                                              trampCall(_recur)                                            ,
                                          [
                                                trampCall(_cars)                                              ,
                                                trampCall(_cdrs)
                                          ]
                                                       ))
                                    } ; ___lambda.call(
                                    nil
                                               )
                                  end
                              end
                          }
                    ]
                                 )
              else
                  if ( 
                      trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                          trampCall(@_null_MIMARKlist_QUMARK)                        ,
                      [
                            trampCall(_lis1)
                      ]
                                   ))
                   ) then
                    Cell.new()
                  else
                      begin #makeLetrec
                        ___lambda = lambda { |_recur| 
                            _recur                             = 
                              Proc.new { |_elt,_rest| 
                                  begin #makeLet
                                    ___lambda = lambda { |_vals| 
                                        if ( 
                                            trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                trampCall(@_null_MIMARKlist_QUMARK)                                              ,
                                            [
                                                  trampCall(_rest)
                                            ]
                                                         ))
                                         ) then
                                            trampCall(_vals)
                                        else
                                              delayCall( '_appender',  'appender',
                                                  trampCall(_appender)                                                ,
                                              [
                                                    trampCall(_vals)                                                  ,
                                                      trampCall( callProcedure(  '_recur',  'recur',
                                                          trampCall(_recur)                                                        ,
                                                      [
                                                              _car(
                                                                  trampCall(_rest)
                                                              )                                                          ,
                                                              _cdr(
                                                                  trampCall(_rest)
                                                              )
                                                      ]
                                                                   ))
                                              ]
                                                           )
                                        end
                                    } ; ___lambda.call(
                                            trampCall( callProcedure(  '_f',  'f',
                                                trampCall(_f)                                              ,
                                            [
                                                  trampCall(_elt)
                                            ]
                                                         ))
                                               )
                                  end
                              }
                              delayCall( '_recur',  'recur',
                                  trampCall(_recur)                                ,
                              [
                                      _car(
                                          trampCall(_lis1)
                                      )                                  ,
                                      _cdr(
                                          trampCall(_lis1)
                                      )
                              ]
                                           )
                        } ; ___lambda.call(
                        nil
                                   )
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
      def self._pair_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_pair_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_pair_MIMARKfor_MIMARKeach'] = self.method( :_pair_MIMARKfor_MIMARKeach_METHOD )
    @_pair_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lists| 
                              begin #makeLet
                                ___lambda = lambda { |_tails| 
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_tails)
                                        )
                                     ) then
                                        begin  #makeBegin
                                              trampCall( self._apply_METHOD(  'apply',
                                                  trampCall(@_apply)                                                ,
                                              [
                                                    trampCall(_proc)                                                  ,
                                                    trampCall(_lists)
                                              ]
                                                           ))
                                              delayCall( '_lp',  'lp',
                                                  trampCall(_lp)                                                ,
                                              [
                                                    trampCall(_tails)
                                              ]
                                                           )
                                        end
                                    end
                                } ; ___lambda.call(
                                        trampCall( self.__PAMARKcdrs_METHOD(  '%cdrs',
                                            trampCall(@__PAMARKcdrs)                                          ,
                                        [
                                              trampCall(_lists)
                                        ]
                                                     ))
                                           )
                              end
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lis| 
                              if ( 
                                  _not(
                                        trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                            trampCall(@_null_MIMARKlist_QUMARK)                                          ,
                                        [
                                              trampCall(_lis)
                                        ]
                                                     ))
                                  )
                               ) then
                                  begin #makeLet
                                    ___lambda = lambda { |_tail| 
                                          trampCall( callProcedure(  '_proc',  'proc',
                                              trampCall(_proc)                                            ,
                                          [
                                                trampCall(_lis)
                                          ]
                                                       ))
                                          delayCall( '_lp',  'lp',
                                              trampCall(_lp)                                            ,
                                          [
                                                trampCall(_tail)
                                          ]
                                                       )
                                    } ; ___lambda.call(
                                            _cdr(
                                                trampCall(_lis)
                                            )
                                               )
                                  end
                              end
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                trampCall(_lis1)
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._map_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_map_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_map_EXMARK'] = self.method( :_map_EXMARK_METHOD )
    @_map_EXMARK = 
    trampCall(
          Proc.new { |_f,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lis1,_lists| 
                              if ( 
                                  _not(
                                        trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                            trampCall(@_null_MIMARKlist_QUMARK)                                          ,
                                        [
                                              trampCall(_lis1)
                                        ]
                                                     ))
                                  )
                               ) then
                                    trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                        trampCall(@_call_MIMARKwith_MIMARKvalues)                                      ,
                                    [
                                          Proc.new { || 
                                                trampCall( self.__PAMARKcars_PLMARKcdrs_SLMARKno_MIMARKtest_METHOD(  '%cars+cdrs/no-test',
                                                    trampCall(@__PAMARKcars_PLMARKcdrs_SLMARKno_MIMARKtest)                                                  ,
                                                [
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                          }                                        ,
                                          Proc.new { |_heads,_tails| 
                                                _set_MIMARKcar_EXMARK(
                                                    trampCall(_lis1)                                                  ,
                                                      trampCall( self._apply_METHOD(  'apply',
                                                          trampCall(@_apply)                                                        ,
                                                      [
                                                            trampCall(_f)                                                          ,
                                                              _car(
                                                                  trampCall(_lis1)
                                                              )                                                          ,
                                                            trampCall(_heads)
                                                      ]
                                                                   ))
                                                )
                                                trampCall( callProcedure(  '_lp',  'lp',
                                                    trampCall(_lp)                                                  ,
                                                [
                                                        _cdr(
                                                            trampCall(_lis1)
                                                        )                                                    ,
                                                      trampCall(_tails)
                                                ]
                                                             ))
                                          }
                                    ]
                                                 ))
                              end
                          }
                          trampCall( callProcedure(  '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                trampCall(_lis1)                              ,
                                trampCall(_lists)
                          ]
                                       ))
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                    trampCall( self._pair_MIMARKfor_MIMARKeach_METHOD(  'pair-for-each',
                        trampCall(@_pair_MIMARKfor_MIMARKeach)                      ,
                    [
                          Proc.new { |_pair| 
                                _set_MIMARKcar_EXMARK(
                                    trampCall(_pair)                                  ,
                                      trampCall( callProcedure(  '_f',  'f',
                                          trampCall(_f)                                        ,
                                      [
                                              _car(
                                                  trampCall(_pair)
                                              )
                                      ]
                                                   ))
                                )
                          }                        ,
                          trampCall(_lis1)
                    ]
                                 ))
              end
              trampCall(_lis1)
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._filter_MIMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_filter_MIMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_filter_MIMARKmap'] = self.method( :_filter_MIMARKmap_METHOD )
    @_filter_MIMARKmap = 
    trampCall(
          Proc.new { |_f,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_lists| 
                                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                  ,
                                [
                                      Proc.new { || 
                                            trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                                trampCall(@__PAMARKcars_PLMARKcdrs)                                              ,
                                            [
                                                  trampCall(_lists)
                                            ]
                                                         ))
                                      }                                    ,
                                      Proc.new { |_cars,_cdrs| 
                                          if ( 
                                              _pair_QUMARK(
                                                  trampCall(_cars)
                                              )
                                           ) then
                                              if ( 
                                                begin #execFunc
                                                    def self.___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30280_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30280', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                                    @global_lisp_binding['___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30280'] = self.method( :___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30280_METHOD )
                                                  @___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30280 = 
                                                  trampCall(
                                                          trampCall( self._apply_METHOD(  'apply',
                                                              trampCall(@_apply)                                                            ,
                                                          [
                                                                trampCall(_f)                                                              ,
                                                                trampCall(_cars)
                                                          ]
                                                                       ))
                                                  )
                                                end
                                               ) then
                                                  trampCall( callProcedure( nil, 'anonymouse', 
                                                      Proc.new { |_x| 
                                                            _cons(
                                                                trampCall(_x)                                                              ,
                                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                                      trampCall(_recur)                                                                    ,
                                                                  [
                                                                        trampCall(_cdrs)
                                                                  ]
                                                                               ))
                                                            )
                                                      }                                                    ,
                                                  [
                                                        trampCall(@___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30280)
                                                  ]
                                                            ))
                                              else
                                                  if ( 
                                                  true
                                                   ) then
                                                          trampCall( callProcedure(  '_recur',  'recur',
                                                              trampCall(_recur)                                                            ,
                                                          [
                                                                trampCall(_cdrs)
                                                          ]
                                                                       ))
                                                  else
                                                      Cell.new()
                                                  end
                                              end
                                          else
                                            Cell.new()
                                          end
                                      }
                                ]
                                             )
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                    delayCall( '__PAMARKfilter_MIMARKmap',  '%filter-map',
                        trampCall(@__PAMARKfilter_MIMARKmap)                      ,
                    [
                          trampCall(_f)                        ,
                          trampCall(_lis1)
                    ]
                                 )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._map_MIMARKin_MIMARKorder_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_map_MIMARKin_MIMARKorder', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_map_MIMARKin_MIMARKorder'] = self.method( :_map_MIMARKin_MIMARKorder_METHOD )
    @_map_MIMARKin_MIMARKorder = 
    trampCall(
          Proc.new { |_f,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_lists| 
                                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                  ,
                                [
                                      Proc.new { || 
                                            trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                                trampCall(@__PAMARKcars_PLMARKcdrs)                                              ,
                                            [
                                                  trampCall(_lists)
                                            ]
                                                         ))
                                      }                                    ,
                                      Proc.new { |_cars,_cdrs| 
                                          if ( 
                                              _pair_QUMARK(
                                                  trampCall(_cars)
                                              )
                                           ) then
                                              begin #makeLet
                                                ___lambda = lambda { |_x| 
                                                      _cons(
                                                          trampCall(_x)                                                        ,
                                                            trampCall( callProcedure(  '_recur',  'recur',
                                                                trampCall(_recur)                                                              ,
                                                            [
                                                                  trampCall(_cdrs)
                                                            ]
                                                                         ))
                                                      )
                                                } ; ___lambda.call(
                                                        trampCall( self._apply_METHOD(  'apply',
                                                            trampCall(@_apply)                                                          ,
                                                        [
                                                              trampCall(_f)                                                            ,
                                                              trampCall(_cars)
                                                        ]
                                                                     ))
                                                           )
                                              end
                                          else
                                            Cell.new()
                                          end
                                      }
                                ]
                                             )
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                    delayCall( '__PAMARKmap',  '%map',
                        trampCall(@__PAMARKmap)                      ,
                    [
                          trampCall(_f)                        ,
                          trampCall(_lis1)
                    ]
                                 )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._for_MIMARKeach_MIMARKin_MIMARKorder_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_for_MIMARKeach_MIMARKin_MIMARKorder', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_for_MIMARKeach_MIMARKin_MIMARKorder'] = self.method( :_for_MIMARKeach_MIMARKin_MIMARKorder_METHOD )
    @_for_MIMARKeach_MIMARKin_MIMARKorder = 
    trampCall(
          Proc.new { |_f,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_recur| 
                        _recur                         = 
                          Proc.new { |_lists| 
                                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                  ,
                                [
                                      Proc.new { || 
                                            trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                                trampCall(@__PAMARKcars_PLMARKcdrs)                                              ,
                                            [
                                                  trampCall(_lists)
                                            ]
                                                         ))
                                      }                                    ,
                                      Proc.new { |_cars,_cdrs| 
                                          if ( 
                                              _pair_QUMARK(
                                                  trampCall(_cars)
                                              )
                                           ) then
                                              begin #makeLet
                                                ___lambda = lambda { |_x| 
                                                      _cons(
                                                          trampCall(_x)                                                        ,
                                                            trampCall( callProcedure(  '_recur',  'recur',
                                                                trampCall(_recur)                                                              ,
                                                            [
                                                                  trampCall(_cdrs)
                                                            ]
                                                                         ))
                                                      )
                                                } ; ___lambda.call(
                                                        trampCall( self._apply_METHOD(  'apply',
                                                            trampCall(@_apply)                                                          ,
                                                        [
                                                              trampCall(_f)                                                            ,
                                                              trampCall(_cars)
                                                        ]
                                                                     ))
                                                           )
                                              end
                                          else
                                            Cell.new()
                                          end
                                      }
                                ]
                                             )
                          }
                          delayCall( '_recur',  'recur',
                              trampCall(_recur)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                    delayCall( '__PAMARKfor_MIMARKeach',  '%for-each',
                        trampCall(@__PAMARKfor_MIMARKeach)                      ,
                    [
                          trampCall(_f)                        ,
                          trampCall(_lis1)
                    ]
                                 )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._map_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_map', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_map'] = self.method( :_map_METHOD )
    @_map = 
    trampCall(
          trampCall(@_map_MIMARKin_MIMARKorder)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._for_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_for_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_for_MIMARKeach'] = self.method( :_for_MIMARKeach_METHOD )
    @_for_MIMARKeach = 
    trampCall(
          trampCall(@_for_MIMARKeach_MIMARKin_MIMARKorder)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._filter_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_filter', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_filter'] = self.method( :_filter_METHOD )
    @_filter = 
    trampCall(
          trampCall(@__PAMARKfilter)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._filter_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_filter_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_filter_EXMARK'] = self.method( :_filter_EXMARK_METHOD )
    @_filter_EXMARK = 
    trampCall(
          Proc.new { |_pred,_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_ans| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_ans)
                              ]
                                           ))
                           ) then
                                trampCall(_ans)
                          else
                              if ( 
                                  _not(
                                        trampCall( callProcedure(  '_pred',  'pred',
                                            trampCall(_pred)                                          ,
                                        [
                                                _car(
                                                    trampCall(_ans)
                                                )
                                        ]
                                                     ))
                                  )
                               ) then
                                      delayCall( '_lp',  'lp',
                                          trampCall(_lp)                                        ,
                                      [
                                              _cdr(
                                                  trampCall(_ans)
                                              )
                                      ]
                                                   )
                              else
                                  if ( 
                                  true
                                   ) then
                                        begin #makeLetrec
                                          ___lambda = lambda { |_scan_MIMARKin,_scan_MIMARKout| 
                                              _scan_MIMARKin                                               = 
                                                Proc.new { |_prev,_lis| 
                                                    if ( 
                                                        _pair_QUMARK(
                                                            trampCall(_lis)
                                                        )
                                                     ) then
                                                        if ( 
                                                            trampCall( callProcedure(  '_pred',  'pred',
                                                                trampCall(_pred)                                                              ,
                                                            [
                                                                    _car(
                                                                        trampCall(_lis)
                                                                    )
                                                            ]
                                                                         ))
                                                         ) then
                                                              delayCall( '_scan_MIMARKin',  'scan-in',
                                                                  trampCall(_scan_MIMARKin)                                                                ,
                                                              [
                                                                    trampCall(_lis)                                                                  ,
                                                                      _cdr(
                                                                          trampCall(_lis)
                                                                      )
                                                              ]
                                                                           )
                                                        else
                                                              delayCall( '_scan_MIMARKout',  'scan-out',
                                                                  trampCall(_scan_MIMARKout)                                                                ,
                                                              [
                                                                    trampCall(_prev)                                                                  ,
                                                                      _cdr(
                                                                          trampCall(_lis)
                                                                      )
                                                              ]
                                                                           )
                                                        end
                                                    end
                                                }
                                              _scan_MIMARKout                                               = 
                                                Proc.new { |_prev,_lis| 
                                                    begin #makeLetrec
                                                      ___lambda = lambda { |_lp| 
                                                          _lp                                                           = 
                                                            Proc.new { |_lis| 
                                                                if ( 
                                                                    _pair_QUMARK(
                                                                        trampCall(_lis)
                                                                    )
                                                                 ) then
                                                                    if ( 
                                                                        trampCall( callProcedure(  '_pred',  'pred',
                                                                            trampCall(_pred)                                                                          ,
                                                                        [
                                                                                _car(
                                                                                    trampCall(_lis)
                                                                                )
                                                                        ]
                                                                                     ))
                                                                     ) then
                                                                        begin  #makeBegin
                                                                              _set_MIMARKcdr_EXMARK(
                                                                                  trampCall(_prev)                                                                                ,
                                                                                  trampCall(_lis)
                                                                              )
                                                                              delayCall( '_scan_MIMARKin',  'scan-in',
                                                                                  trampCall(_scan_MIMARKin)                                                                                ,
                                                                              [
                                                                                    trampCall(_lis)                                                                                  ,
                                                                                      _cdr(
                                                                                          trampCall(_lis)
                                                                                      )
                                                                              ]
                                                                                           )
                                                                        end
                                                                    else
                                                                          delayCall( '_lp',  'lp',
                                                                              trampCall(_lp)                                                                            ,
                                                                          [
                                                                                  _cdr(
                                                                                      trampCall(_lis)
                                                                                  )
                                                                          ]
                                                                                       )
                                                                    end
                                                                else
                                                                      delayCall( '_set_MIMARKcdr_EXMARK',  'set-cdr!',
                                                                          trampCall(@_set_MIMARKcdr_EXMARK)                                                                        ,
                                                                      [
                                                                            trampCall(_prev)                                                                          ,
                                                                            trampCall(_lis)
                                                                      ]
                                                                                   )
                                                                end
                                                            }
                                                            delayCall( '_lp',  'lp',
                                                                trampCall(_lp)                                                              ,
                                                            [
                                                                  trampCall(_lis)
                                                            ]
                                                                         )
                                                      } ; ___lambda.call(
                                                      nil
                                                                 )
                                                    end
                                                }
                                                trampCall( callProcedure(  '_scan_MIMARKin',  'scan-in',
                                                    trampCall(_scan_MIMARKin)                                                  ,
                                                [
                                                      trampCall(_ans)                                                    ,
                                                        _cdr(
                                                            trampCall(_ans)
                                                        )
                                                ]
                                                             ))
                                              trampCall(_ans)
                                          } ; ___lambda.call(
                                          nil,nil
                                                     )
                                        end
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._partition_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_partition', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_partition'] = self.method( :_partition_METHOD )
    @_partition = 
    trampCall(
          Proc.new { |_pred,_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                      trampCall(_lis)                                    ,
                                      trampCall(_lis)
                                ]
                                             )
                          else
                              begin #makeLet
                                ___lambda = lambda { |_elt,_tail| 
                                      delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                          trampCall(@_call_MIMARKwith_MIMARKvalues)                                        ,
                                      [
                                            Proc.new { || 
                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                      trampCall(_recur)                                                    ,
                                                  [
                                                        trampCall(_tail)
                                                  ]
                                                               ))
                                            }                                          ,
                                            Proc.new { |_in,_out| 
                                                if ( 
                                                    trampCall( callProcedure(  '_pred',  'pred',
                                                        trampCall(_pred)                                                      ,
                                                    [
                                                          trampCall(_elt)
                                                    ]
                                                                 ))
                                                 ) then
                                                      trampCall( self._values_METHOD(  'values',
                                                          trampCall(@_values)                                                        ,
                                                      [
                                                            if ( 
                                                                _pair_QUMARK(
                                                                    trampCall(_out)
                                                                )
                                                             ) then
                                                                  _cons(
                                                                      trampCall(_elt)                                                                    ,
                                                                      trampCall(_in)
                                                                  )
                                                            else
                                                                trampCall(_lis)
                                                            end                                                          ,
                                                            trampCall(_out)
                                                      ]
                                                                   ))
                                                else
                                                      trampCall( self._values_METHOD(  'values',
                                                          trampCall(@_values)                                                        ,
                                                      [
                                                            trampCall(_in)                                                          ,
                                                            if ( 
                                                                _pair_QUMARK(
                                                                    trampCall(_in)
                                                                )
                                                             ) then
                                                                  _cons(
                                                                      trampCall(_elt)                                                                    ,
                                                                      trampCall(_out)
                                                                  )
                                                            else
                                                                trampCall(_lis)
                                                            end
                                                      ]
                                                                   ))
                                                end
                                            }
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        _car(
                                            trampCall(_lis)
                                        )                                    ,
                                        _cdr(
                                            trampCall(_lis)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._partition_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_partition_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_partition_EXMARK'] = self.method( :_partition_EXMARK_METHOD )
    @_partition_EXMARK = 
    trampCall(
          Proc.new { |_pred,_lis| 
              if ( 
                  trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                      trampCall(@_null_MIMARKlist_QUMARK)                    ,
                  [
                        trampCall(_lis)
                  ]
                               ))
               ) then
                    delayCall( '_values',  'values',
                        trampCall(@_values)                      ,
                    [
                          trampCall(_lis)                        ,
                          trampCall(_lis)
                    ]
                                 )
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_scan_MIMARKin,_scan_MIMARKout| 
                        _scan_MIMARKin                         = 
                          Proc.new { |_in_MIMARKprev,_out_MIMARKprev,_lis| 
                              begin #makeLetrec
                                ___lambda = lambda { |_lp| 
                                    _lp                                     = 
                                      Proc.new { |_in_MIMARKprev,_lis| 
                                          if ( 
                                              _pair_QUMARK(
                                                  trampCall(_lis)
                                              )
                                           ) then
                                              if ( 
                                                  trampCall( callProcedure(  '_pred',  'pred',
                                                      trampCall(_pred)                                                    ,
                                                  [
                                                          _car(
                                                              trampCall(_lis)
                                                          )
                                                  ]
                                                               ))
                                               ) then
                                                    delayCall( '_lp',  'lp',
                                                        trampCall(_lp)                                                      ,
                                                    [
                                                          trampCall(_lis)                                                        ,
                                                            _cdr(
                                                                trampCall(_lis)
                                                            )
                                                    ]
                                                                 )
                                              else
                                                  begin  #makeBegin
                                                        _set_MIMARKcdr_EXMARK(
                                                            trampCall(_out_MIMARKprev)                                                          ,
                                                            trampCall(_lis)
                                                        )
                                                        delayCall( '_scan_MIMARKout',  'scan-out',
                                                            trampCall(_scan_MIMARKout)                                                          ,
                                                        [
                                                              trampCall(_in_MIMARKprev)                                                            ,
                                                              trampCall(_lis)                                                            ,
                                                                _cdr(
                                                                    trampCall(_lis)
                                                                )
                                                        ]
                                                                     )
                                                  end
                                              end
                                          else
                                                delayCall( '_set_MIMARKcdr_EXMARK',  'set-cdr!',
                                                    trampCall(@_set_MIMARKcdr_EXMARK)                                                  ,
                                                [
                                                      trampCall(_out_MIMARKprev)                                                    ,
                                                      trampCall(_lis)
                                                ]
                                                             )
                                          end
                                      }
                                      delayCall( '_lp',  'lp',
                                          trampCall(_lp)                                        ,
                                      [
                                            trampCall(_in_MIMARKprev)                                          ,
                                            trampCall(_lis)
                                      ]
                                                   )
                                } ; ___lambda.call(
                                nil
                                           )
                              end
                          }
                        _scan_MIMARKout                         = 
                          Proc.new { |_in_MIMARKprev,_out_MIMARKprev,_lis| 
                              begin #makeLetrec
                                ___lambda = lambda { |_lp| 
                                    _lp                                     = 
                                      Proc.new { |_out_MIMARKprev,_lis| 
                                          if ( 
                                              _pair_QUMARK(
                                                  trampCall(_lis)
                                              )
                                           ) then
                                              if ( 
                                                  trampCall( callProcedure(  '_pred',  'pred',
                                                      trampCall(_pred)                                                    ,
                                                  [
                                                          _car(
                                                              trampCall(_lis)
                                                          )
                                                  ]
                                                               ))
                                               ) then
                                                  begin  #makeBegin
                                                        _set_MIMARKcdr_EXMARK(
                                                            trampCall(_in_MIMARKprev)                                                          ,
                                                            trampCall(_lis)
                                                        )
                                                        delayCall( '_scan_MIMARKin',  'scan-in',
                                                            trampCall(_scan_MIMARKin)                                                          ,
                                                        [
                                                              trampCall(_lis)                                                            ,
                                                              trampCall(_out_MIMARKprev)                                                            ,
                                                                _cdr(
                                                                    trampCall(_lis)
                                                                )
                                                        ]
                                                                     )
                                                  end
                                              else
                                                    delayCall( '_lp',  'lp',
                                                        trampCall(_lp)                                                      ,
                                                    [
                                                          trampCall(_lis)                                                        ,
                                                            _cdr(
                                                                trampCall(_lis)
                                                            )
                                                    ]
                                                                 )
                                              end
                                          else
                                                delayCall( '_set_MIMARKcdr_EXMARK',  'set-cdr!',
                                                    trampCall(@_set_MIMARKcdr_EXMARK)                                                  ,
                                                [
                                                      trampCall(_in_MIMARKprev)                                                    ,
                                                      trampCall(_lis)
                                                ]
                                                             )
                                          end
                                      }
                                      delayCall( '_lp',  'lp',
                                          trampCall(_lp)                                        ,
                                      [
                                            trampCall(_out_MIMARKprev)                                          ,
                                            trampCall(_lis)
                                      ]
                                                   )
                                } ; ___lambda.call(
                                nil
                                           )
                              end
                          }
                        if ( 
                            trampCall( callProcedure(  '_pred',  'pred',
                                trampCall(_pred)                              ,
                            [
                                    _car(
                                        trampCall(_lis)
                                    )
                            ]
                                         ))
                         ) then
                            begin #makeLetrec
                              ___lambda = lambda { |_lp| 
                                  _lp                                   = 
                                    Proc.new { |_prev_MIMARKl,_l| 
                                        if ( 
                                            _not(
                                                  _pair_QUMARK(
                                                      trampCall(_l)
                                                  )
                                            )
                                         ) then
                                                delayCall( '_values',  'values',
                                                    trampCall(@_values)                                                  ,
                                                [
                                                      trampCall(_lis)                                                    ,
                                                      trampCall(_l)
                                                ]
                                                             )
                                        else
                                            if ( 
                                                trampCall( callProcedure(  '_pred',  'pred',
                                                    trampCall(_pred)                                                  ,
                                                [
                                                        _car(
                                                            trampCall(_l)
                                                        )
                                                ]
                                                             ))
                                             ) then
                                                    delayCall( '_lp',  'lp',
                                                        trampCall(_lp)                                                      ,
                                                    [
                                                          trampCall(_l)                                                        ,
                                                            _cdr(
                                                                trampCall(_l)
                                                            )
                                                    ]
                                                                 )
                                            else
                                                if ( 
                                                true
                                                 ) then
                                                    begin  #makeBegin
                                                          trampCall( callProcedure(  '_scan_MIMARKout',  'scan-out',
                                                              trampCall(_scan_MIMARKout)                                                            ,
                                                          [
                                                                trampCall(_prev_MIMARKl)                                                              ,
                                                                trampCall(_l)                                                              ,
                                                                  _cdr(
                                                                      trampCall(_l)
                                                                  )
                                                          ]
                                                                       ))
                                                          delayCall( '_values',  'values',
                                                              trampCall(@_values)                                                            ,
                                                          [
                                                                trampCall(_lis)                                                              ,
                                                                trampCall(_l)
                                                          ]
                                                                       )
                                                    end
                                                else
                                                    Cell.new()
                                                end
                                            end
                                        end
                                    }
                                    delayCall( '_lp',  'lp',
                                        trampCall(_lp)                                      ,
                                    [
                                          trampCall(_lis)                                        ,
                                            _cdr(
                                                trampCall(_lis)
                                            )
                                    ]
                                                 )
                              } ; ___lambda.call(
                              nil
                                         )
                            end
                        else
                            begin #makeLetrec
                              ___lambda = lambda { |_lp| 
                                  _lp                                   = 
                                    Proc.new { |_prev_MIMARKl,_l| 
                                        if ( 
                                            _not(
                                                  _pair_QUMARK(
                                                      trampCall(_l)
                                                  )
                                            )
                                         ) then
                                                delayCall( '_values',  'values',
                                                    trampCall(@_values)                                                  ,
                                                [
                                                      trampCall(_l)                                                    ,
                                                      trampCall(_lis)
                                                ]
                                                             )
                                        else
                                            if ( 
                                                trampCall( callProcedure(  '_pred',  'pred',
                                                    trampCall(_pred)                                                  ,
                                                [
                                                        _car(
                                                            trampCall(_l)
                                                        )
                                                ]
                                                             ))
                                             ) then
                                                begin  #makeBegin
                                                      trampCall( callProcedure(  '_scan_MIMARKin',  'scan-in',
                                                          trampCall(_scan_MIMARKin)                                                        ,
                                                      [
                                                            trampCall(_l)                                                          ,
                                                            trampCall(_prev_MIMARKl)                                                          ,
                                                              _cdr(
                                                                  trampCall(_l)
                                                              )
                                                      ]
                                                                   ))
                                                      delayCall( '_values',  'values',
                                                          trampCall(@_values)                                                        ,
                                                      [
                                                            trampCall(_l)                                                          ,
                                                            trampCall(_lis)
                                                      ]
                                                                   )
                                                end
                                            else
                                                if ( 
                                                true
                                                 ) then
                                                        delayCall( '_lp',  'lp',
                                                            trampCall(_lp)                                                          ,
                                                        [
                                                              trampCall(_l)                                                            ,
                                                                _cdr(
                                                                    trampCall(_l)
                                                                )
                                                        ]
                                                                     )
                                                else
                                                    Cell.new()
                                                end
                                            end
                                        end
                                    }
                                    delayCall( '_lp',  'lp',
                                        trampCall(_lp)                                      ,
                                    [
                                          trampCall(_lis)                                        ,
                                            _cdr(
                                                trampCall(_lis)
                                            )
                                    ]
                                                 )
                              } ; ___lambda.call(
                              nil
                                         )
                            end
                        end
                    } ; ___lambda.call(
                    nil,nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._remove_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_remove', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_remove'] = self.method( :_remove_METHOD )
    @_remove = 
    trampCall(
          Proc.new { |_pred,_l| 
                delayCall( '_filter',  'filter',
                    trampCall(@_filter)                  ,
                [
                      Proc.new { |_x| 
                            _not(
                                  trampCall( callProcedure(  '_pred',  'pred',
                                      trampCall(_pred)                                    ,
                                  [
                                        trampCall(_x)
                                  ]
                                               ))
                            )
                      }                    ,
                      trampCall(_l)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._remove_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_remove_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_remove_EXMARK'] = self.method( :_remove_EXMARK_METHOD )
    @_remove_EXMARK = 
    trampCall(
          Proc.new { |_pred,_l| 
                delayCall( '_filter_EXMARK',  'filter!',
                    trampCall(@_filter_EXMARK)                  ,
                [
                      Proc.new { |_x| 
                            _not(
                                  trampCall( callProcedure(  '_pred',  'pred',
                                      trampCall(_pred)                                    ,
                                  [
                                        trampCall(_x)
                                  ]
                                               ))
                            )
                      }                    ,
                      trampCall(_l)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._delete_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_delete', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_delete'] = self.method( :_delete_METHOD )
    @_delete = 
    trampCall(
          Proc.new { |_x,_lis,*__rest__| _maybe_MIMARK_EQMARK = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__EQMARK| 
                      delayCall( '_filter',  'filter',
                          trampCall(@_filter)                        ,
                      [
                            Proc.new { |_y| 
                                  _not(
                                        trampCall( callProcedure(  '__EQMARK',  '=',
                                            trampCall(__EQMARK)                                          ,
                                        [
                                              trampCall(_x)                                            ,
                                              trampCall(_y)
                                        ]
                                                     ))
                                  )
                            }                          ,
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30290| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30290)
                                )
                             ) then
                                trampCall(@_equal_QUMARK)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30290)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_maybe_MIMARK_EQMARK)
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
      def self._delete_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_delete_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_delete_EXMARK'] = self.method( :_delete_EXMARK_METHOD )
    @_delete_EXMARK = 
    trampCall(
          Proc.new { |_x,_lis,*__rest__| _maybe_MIMARK_EQMARK = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__EQMARK| 
                      delayCall( '_filter_EXMARK',  'filter!',
                          trampCall(@_filter_EXMARK)                        ,
                      [
                            Proc.new { |_y| 
                                  _not(
                                        trampCall( callProcedure(  '__EQMARK',  '=',
                                            trampCall(__EQMARK)                                          ,
                                        [
                                              trampCall(_x)                                            ,
                                              trampCall(_y)
                                        ]
                                                     ))
                                  )
                            }                          ,
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30291| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30291)
                                )
                             ) then
                                trampCall(@_equal_QUMARK)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30291)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_maybe_MIMARK_EQMARK)
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
      def self._member_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_member', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_member'] = self.method( :_member_METHOD )
    @_member = 
    trampCall(
          Proc.new { |_x,_lis,*__rest__| _maybe_MIMARK_EQMARK = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__EQMARK| 
                      delayCall( '_find_MIMARKtail',  'find-tail',
                          trampCall(@_find_MIMARKtail)                        ,
                      [
                            Proc.new { |_y| 
                                  trampCall( callProcedure(  '__EQMARK',  '=',
                                      trampCall(__EQMARK)                                    ,
                                  [
                                        trampCall(_x)                                      ,
                                        trampCall(_y)
                                  ]
                                               ))
                            }                          ,
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30292| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30292)
                                )
                             ) then
                                trampCall(@_equal_QUMARK)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30292)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_maybe_MIMARK_EQMARK)
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
      def self._delete_MIMARKduplicates_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_delete_MIMARKduplicates', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_delete_MIMARKduplicates'] = self.method( :_delete_MIMARKduplicates_METHOD )
    @_delete_MIMARKduplicates = 
    trampCall(
          Proc.new { |_lis,*__rest__| _maybe_MIMARK_EQMARK = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_elt_EQMARK| 
                    begin #makeLetrec
                      ___lambda = lambda { |_recur| 
                          _recur                           = 
                            Proc.new { |_lis| 
                                if ( 
                                    trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                        trampCall(@_null_MIMARKlist_QUMARK)                                      ,
                                    [
                                          trampCall(_lis)
                                    ]
                                                 ))
                                 ) then
                                    trampCall(_lis)
                                else
                                    begin #makeLet
                                      ___lambda = lambda { |_x| 
                                          begin #makeLet
                                            ___lambda = lambda { |_tail| 
                                                begin #makeLet
                                                  ___lambda = lambda { |_new_MIMARKtail| 
                                                      if ( 
                                                          _eq_QUMARK(
                                                              trampCall(_tail)                                                            ,
                                                              trampCall(_new_MIMARKtail)
                                                          )
                                                       ) then
                                                          trampCall(_lis)
                                                      else
                                                            delayCall( '_cons',  'cons',
                                                                trampCall(@_cons)                                                              ,
                                                            [
                                                                  trampCall(_x)                                                                ,
                                                                  trampCall(_new_MIMARKtail)
                                                            ]
                                                                         )
                                                      end
                                                  } ; ___lambda.call(
                                                          trampCall( callProcedure(  '_recur',  'recur',
                                                              trampCall(_recur)                                                            ,
                                                          [
                                                                  trampCall( self._delete_METHOD(  'delete',
                                                                      trampCall(@_delete)                                                                    ,
                                                                  [
                                                                        trampCall(_x)                                                                      ,
                                                                        trampCall(_tail)                                                                      ,
                                                                        trampCall(_elt_EQMARK)
                                                                  ]
                                                                               ))
                                                          ]
                                                                       ))
                                                             )
                                                end
                                            } ; ___lambda.call(
                                                    _cdr(
                                                        trampCall(_lis)
                                                    )
                                                       )
                                          end
                                      } ; ___lambda.call(
                                              _car(
                                                  trampCall(_lis)
                                              )
                                                 )
                                    end
                                end
                            }
                            delayCall( '_recur',  'recur',
                                trampCall(_recur)                              ,
                            [
                                  trampCall(_lis)
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30293| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30293)
                                )
                             ) then
                                trampCall(@_equal_QUMARK)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30293)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_maybe_MIMARK_EQMARK)
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
      def self._delete_MIMARKduplicates_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_delete_MIMARKduplicates_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_delete_MIMARKduplicates_EXMARK'] = self.method( :_delete_MIMARKduplicates_EXMARK_METHOD )
    @_delete_MIMARKduplicates_EXMARK = 
    trampCall(
          Proc.new { |_lis,*__rest__| _maybe_MIMARK_EQMARK = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_elt_EQMARK| 
                    begin #makeLetrec
                      ___lambda = lambda { |_recur| 
                          _recur                           = 
                            Proc.new { |_lis| 
                                if ( 
                                    trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                        trampCall(@_null_MIMARKlist_QUMARK)                                      ,
                                    [
                                          trampCall(_lis)
                                    ]
                                                 ))
                                 ) then
                                    trampCall(_lis)
                                else
                                    begin #makeLet
                                      ___lambda = lambda { |_x| 
                                          begin #makeLet
                                            ___lambda = lambda { |_tail| 
                                                begin #makeLet
                                                  ___lambda = lambda { |_new_MIMARKtail| 
                                                      if ( 
                                                          _eq_QUMARK(
                                                              trampCall(_tail)                                                            ,
                                                              trampCall(_new_MIMARKtail)
                                                          )
                                                       ) then
                                                          trampCall(_lis)
                                                      else
                                                          begin  #makeBegin
                                                                _set_MIMARKcar_EXMARK(
                                                                    trampCall(_lis)                                                                  ,
                                                                    trampCall(_x)
                                                                )
                                                                _set_MIMARKcdr_EXMARK(
                                                                    trampCall(_lis)                                                                  ,
                                                                    trampCall(_new_MIMARKtail)
                                                                )
                                                              trampCall(_lis)
                                                          end
                                                      end
                                                  } ; ___lambda.call(
                                                          trampCall( callProcedure(  '_recur',  'recur',
                                                              trampCall(_recur)                                                            ,
                                                          [
                                                                  trampCall( self._delete_EXMARK_METHOD(  'delete!',
                                                                      trampCall(@_delete_EXMARK)                                                                    ,
                                                                  [
                                                                        trampCall(_x)                                                                      ,
                                                                        trampCall(_tail)                                                                      ,
                                                                        trampCall(_elt_EQMARK)
                                                                  ]
                                                                               ))
                                                          ]
                                                                       ))
                                                             )
                                                end
                                            } ; ___lambda.call(
                                                    _cdr(
                                                        trampCall(_lis)
                                                    )
                                                       )
                                          end
                                      } ; ___lambda.call(
                                              _car(
                                                  trampCall(_lis)
                                              )
                                                 )
                                    end
                                end
                            }
                            delayCall( '_recur',  'recur',
                                trampCall(_recur)                              ,
                            [
                                  trampCall(_lis)
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30294| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30294)
                                )
                             ) then
                                trampCall(@_equal_QUMARK)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30294)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_maybe_MIMARK_EQMARK)
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
      def self._assoc_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_assoc', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_assoc'] = self.method( :_assoc_METHOD )
    @_assoc = 
    trampCall(
          Proc.new { |_x,_lis,*__rest__| _maybe_MIMARK_EQMARK = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__EQMARK| 
                      delayCall( '_find',  'find',
                          trampCall(@_find)                        ,
                      [
                            Proc.new { |_entry| 
                                  trampCall( callProcedure(  '__EQMARK',  '=',
                                      trampCall(__EQMARK)                                    ,
                                  [
                                        trampCall(_x)                                      ,
                                          _car(
                                              trampCall(_entry)
                                          )
                                  ]
                                               ))
                            }                          ,
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30295| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30295)
                                )
                             ) then
                                trampCall(@_equal_QUMARK)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30295)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_maybe_MIMARK_EQMARK)
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
      def self._alist_MIMARKcons_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_alist_MIMARKcons', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_alist_MIMARKcons'] = self.method( :_alist_MIMARKcons_METHOD )
    @_alist_MIMARKcons = 
    trampCall(
          Proc.new { |_key,_datum,_alist| 
                delayCall( '_cons',  'cons',
                    trampCall(@_cons)                  ,
                [
                        _cons(
                            trampCall(_key)                          ,
                            trampCall(_datum)
                        )                    ,
                      trampCall(_alist)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._alist_MIMARKcopy_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_alist_MIMARKcopy', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_alist_MIMARKcopy'] = self.method( :_alist_MIMARKcopy_METHOD )
    @_alist_MIMARKcopy = 
    trampCall(
          Proc.new { |_alist| 
                delayCall( '_map',  'map',
                    trampCall(@_map)                  ,
                [
                      Proc.new { |_elt| 
                            _cons(
                                  _car(
                                      trampCall(_elt)
                                  )                              ,
                                  _cdr(
                                      trampCall(_elt)
                                  )
                            )
                      }                    ,
                      trampCall(_alist)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._alist_MIMARKdelete_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_alist_MIMARKdelete', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_alist_MIMARKdelete'] = self.method( :_alist_MIMARKdelete_METHOD )
    @_alist_MIMARKdelete = 
    trampCall(
          Proc.new { |_key,_alist,*__rest__| _maybe_MIMARK_EQMARK = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__EQMARK| 
                      delayCall( '_filter',  'filter',
                          trampCall(@_filter)                        ,
                      [
                            Proc.new { |_elt| 
                                  _not(
                                        trampCall( callProcedure(  '__EQMARK',  '=',
                                            trampCall(__EQMARK)                                          ,
                                        [
                                              trampCall(_key)                                            ,
                                                _car(
                                                    trampCall(_elt)
                                                )
                                        ]
                                                     ))
                                  )
                            }                          ,
                            trampCall(_alist)
                      ]
                                   )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30296| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30296)
                                )
                             ) then
                                trampCall(@_equal_QUMARK)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30296)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_maybe_MIMARK_EQMARK)
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
      def self._alist_MIMARKdelete_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_alist_MIMARKdelete_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_alist_MIMARKdelete_EXMARK'] = self.method( :_alist_MIMARKdelete_EXMARK_METHOD )
    @_alist_MIMARKdelete_EXMARK = 
    trampCall(
          Proc.new { |_key,_alist,*__rest__| _maybe_MIMARK_EQMARK = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__EQMARK| 
                      delayCall( '_filter_EXMARK',  'filter!',
                          trampCall(@_filter_EXMARK)                        ,
                      [
                            Proc.new { |_elt| 
                                  _not(
                                        trampCall( callProcedure(  '__EQMARK',  '=',
                                            trampCall(__EQMARK)                                          ,
                                        [
                                              trampCall(_key)                                            ,
                                                _car(
                                                    trampCall(_elt)
                                                )
                                        ]
                                                     ))
                                  )
                            }                          ,
                            trampCall(_alist)
                      ]
                                   )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30297| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30297)
                                )
                             ) then
                                trampCall(@_equal_QUMARK)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30297)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_maybe_MIMARK_EQMARK)
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
      def self._find_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_find', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_find'] = self.method( :_find_METHOD )
    @_find = 
    trampCall(
          Proc.new { |_pred,_list| 
              if ( 
                begin #execFunc
                    def self.___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30299_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30299', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                    @global_lisp_binding['___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30299'] = self.method( :___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30299_METHOD )
                  @___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30299 = 
                  trampCall(
                          trampCall( self._find_MIMARKtail_METHOD(  'find-tail',
                              trampCall(@_find_MIMARKtail)                            ,
                          [
                                trampCall(_pred)                              ,
                                trampCall(_list)
                          ]
                                       ))
                  )
                end
               ) then
                    delayCall( '_car',  'car',
                        trampCall(@_car)                      ,
                    [
                          trampCall(@___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30299)
                    ]
                                 )
              else
                  if ( 
                  true
                   ) then
                      false
                  else
                      Cell.new()
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._find_MIMARKtail_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_find_MIMARKtail', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_find_MIMARKtail'] = self.method( :_find_MIMARKtail_METHOD )
    @_find_MIMARKtail = 
    trampCall(
          Proc.new { |_pred,_list| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_list| 
                          if ( 
                              _not(
                                    _eq_QUMARK(
                                      false                                      ,
                                          _not(
                                                trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                    trampCall(@_null_MIMARKlist_QUMARK)                                                  ,
                                                [
                                                      trampCall(_list)
                                                ]
                                                             ))
                                          )
                                    )
                              )
                           ) then
                              if ( 
                                  trampCall( callProcedure(  '_pred',  'pred',
                                      trampCall(_pred)                                    ,
                                  [
                                          _car(
                                              trampCall(_list)
                                          )
                                  ]
                                               ))
                               ) then
                                  trampCall(_list)
                              else
                                    delayCall( '_lp',  'lp',
                                        trampCall(_lp)                                      ,
                                    [
                                            _cdr(
                                                trampCall(_list)
                                            )
                                    ]
                                                 )
                              end
                          else
                            false
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_list)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._take_MIMARKwhile_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_take_MIMARKwhile', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_take_MIMARKwhile'] = self.method( :_take_MIMARKwhile_METHOD )
    @_take_MIMARKwhile = 
    trampCall(
          Proc.new { |_pred,_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                            Cell.new()
                          else
                              begin #makeLet
                                ___lambda = lambda { |_x| 
                                    if ( 
                                        trampCall( callProcedure(  '_pred',  'pred',
                                            trampCall(_pred)                                          ,
                                        [
                                              trampCall(_x)
                                        ]
                                                     ))
                                     ) then
                                          delayCall( '_cons',  'cons',
                                              trampCall(@_cons)                                            ,
                                          [
                                                trampCall(_x)                                              ,
                                                  trampCall( callProcedure(  '_recur',  'recur',
                                                      trampCall(_recur)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_lis)
                                                          )
                                                  ]
                                                               ))
                                          ]
                                                       )
                                    else
                                      Cell.new()
                                    end
                                } ; ___lambda.call(
                                        _car(
                                            trampCall(_lis)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._drop_MIMARKwhile_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_drop_MIMARKwhile', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_drop_MIMARKwhile'] = self.method( :_drop_MIMARKwhile_METHOD )
    @_drop_MIMARKwhile = 
    trampCall(
          Proc.new { |_pred,_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_lis| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                            Cell.new()
                          else
                              if ( 
                                  trampCall( callProcedure(  '_pred',  'pred',
                                      trampCall(_pred)                                    ,
                                  [
                                          _car(
                                              trampCall(_lis)
                                          )
                                  ]
                                               ))
                               ) then
                                    delayCall( '_lp',  'lp',
                                        trampCall(_lp)                                      ,
                                    [
                                            _cdr(
                                                trampCall(_lis)
                                            )
                                    ]
                                                 )
                              else
                                  trampCall(_lis)
                              end
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._take_MIMARKwhile_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_take_MIMARKwhile_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_take_MIMARKwhile_EXMARK'] = self.method( :_take_MIMARKwhile_EXMARK_METHOD )
    @_take_MIMARKwhile_EXMARK = 
    trampCall(
          Proc.new { |_pred,_lis| 
              if ( 
                begin #makeLet
                  ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30300| 
                      if ( 
                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30300)
                       ) then
                          trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30300)
                      else
                          begin #makeLet
                            ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30301| 
                                if ( 
                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30301)
                                 ) then
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30301)
                                else
                                  false
                                end
                            } ; ___lambda.call(
                                    _not(
                                          trampCall( callProcedure(  '_pred',  'pred',
                                              trampCall(_pred)                                            ,
                                          [
                                                  _car(
                                                      trampCall(_lis)
                                                  )
                                          ]
                                                       ))
                                    )
                                       )
                          end
                      end
                  } ; ___lambda.call(
                          trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                              trampCall(@_null_MIMARKlist_QUMARK)                            ,
                          [
                                trampCall(_lis)
                          ]
                                       ))
                             )
                end
               ) then
                Cell.new()
              else
                  begin  #makeBegin
                      begin #makeLetrec
                        ___lambda = lambda { |_lp| 
                            _lp                             = 
                              Proc.new { |_prev,_rest| 
                                  if ( 
                                      _pair_QUMARK(
                                          trampCall(_rest)
                                      )
                                   ) then
                                      begin #makeLet
                                        ___lambda = lambda { |_x| 
                                            if ( 
                                                trampCall( callProcedure(  '_pred',  'pred',
                                                    trampCall(_pred)                                                  ,
                                                [
                                                      trampCall(_x)
                                                ]
                                                             ))
                                             ) then
                                                  trampCall( callProcedure(  '_lp',  'lp',
                                                      trampCall(_lp)                                                    ,
                                                  [
                                                        trampCall(_rest)                                                      ,
                                                          _cdr(
                                                              trampCall(_rest)
                                                          )
                                                  ]
                                                               ))
                                            else
                                                  _set_MIMARKcdr_EXMARK(
                                                      trampCall(_prev)                                                    ,
                                                    Cell.new()
                                                  )
                                            end
                                        } ; ___lambda.call(
                                                _car(
                                                    trampCall(_rest)
                                                )
                                                   )
                                      end
                                  end
                              }
                              trampCall( callProcedure(  '_lp',  'lp',
                                  trampCall(_lp)                                ,
                              [
                                    trampCall(_lis)                                  ,
                                      _cdr(
                                          trampCall(_lis)
                                      )
                              ]
                                           ))
                        } ; ___lambda.call(
                        nil
                                   )
                      end
                      trampCall(_lis)
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._span_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_span', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_span'] = self.method( :_span_METHOD )
    @_span = 
    trampCall(
          Proc.new { |_pred,_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_recur| 
                    _recur                     = 
                      Proc.new { |_lis| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                                delayCall( '_values',  'values',
                                    trampCall(@_values)                                  ,
                                [
                                    Cell.new()                                    ,
                                    Cell.new()
                                ]
                                             )
                          else
                              begin #makeLet
                                ___lambda = lambda { |_x| 
                                    if ( 
                                        trampCall( callProcedure(  '_pred',  'pred',
                                            trampCall(_pred)                                          ,
                                        [
                                              trampCall(_x)
                                        ]
                                                     ))
                                     ) then
                                          delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                              trampCall(@_call_MIMARKwith_MIMARKvalues)                                            ,
                                          [
                                                Proc.new { || 
                                                      trampCall( callProcedure(  '_recur',  'recur',
                                                          trampCall(_recur)                                                        ,
                                                      [
                                                              _cdr(
                                                                  trampCall(_lis)
                                                              )
                                                      ]
                                                                   ))
                                                }                                              ,
                                                Proc.new { |_prefix,_suffix| 
                                                      trampCall( self._values_METHOD(  'values',
                                                          trampCall(@_values)                                                        ,
                                                      [
                                                              _cons(
                                                                  trampCall(_x)                                                                ,
                                                                  trampCall(_prefix)
                                                              )                                                          ,
                                                            trampCall(_suffix)
                                                      ]
                                                                   ))
                                                }
                                          ]
                                                       )
                                    else
                                          delayCall( '_values',  'values',
                                              trampCall(@_values)                                            ,
                                          [
                                              Cell.new()                                              ,
                                                trampCall(_lis)
                                          ]
                                                       )
                                    end
                                } ; ___lambda.call(
                                        _car(
                                            trampCall(_lis)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_recur',  'recur',
                          trampCall(_recur)                        ,
                      [
                            trampCall(_lis)
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._span_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_span_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_span_EXMARK'] = self.method( :_span_EXMARK_METHOD )
    @_span_EXMARK = 
    trampCall(
          Proc.new { |_pred,_lis| 
              if ( 
                begin #makeLet
                  ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30302| 
                      if ( 
                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30302)
                       ) then
                          trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30302)
                      else
                          begin #makeLet
                            ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30303| 
                                if ( 
                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30303)
                                 ) then
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30303)
                                else
                                  false
                                end
                            } ; ___lambda.call(
                                    _not(
                                          trampCall( callProcedure(  '_pred',  'pred',
                                              trampCall(_pred)                                            ,
                                          [
                                                  _car(
                                                      trampCall(_lis)
                                                  )
                                          ]
                                                       ))
                                    )
                                       )
                          end
                      end
                  } ; ___lambda.call(
                          trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                              trampCall(@_null_MIMARKlist_QUMARK)                            ,
                          [
                                trampCall(_lis)
                          ]
                                       ))
                             )
                end
               ) then
                    delayCall( '_values',  'values',
                        trampCall(@_values)                      ,
                    [
                        Cell.new()                        ,
                          trampCall(_lis)
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_suffix| 
                          delayCall( '_values',  'values',
                              trampCall(@_values)                            ,
                          [
                                trampCall(_lis)                              ,
                                trampCall(_suffix)
                          ]
                                       )
                    } ; ___lambda.call(
                          begin #makeLetrec
                            ___lambda = lambda { |_lp| 
                                _lp                                 = 
                                  Proc.new { |_prev,_rest| 
                                      if ( 
                                          trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                              trampCall(@_null_MIMARKlist_QUMARK)                                            ,
                                          [
                                                trampCall(_rest)
                                          ]
                                                       ))
                                       ) then
                                          trampCall(_rest)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |_x| 
                                                if ( 
                                                    trampCall( callProcedure(  '_pred',  'pred',
                                                        trampCall(_pred)                                                      ,
                                                    [
                                                          trampCall(_x)
                                                    ]
                                                                 ))
                                                 ) then
                                                      delayCall( '_lp',  'lp',
                                                          trampCall(_lp)                                                        ,
                                                      [
                                                            trampCall(_rest)                                                          ,
                                                              _cdr(
                                                                  trampCall(_rest)
                                                              )
                                                      ]
                                                                   )
                                                else
                                                    begin  #makeBegin
                                                          _set_MIMARKcdr_EXMARK(
                                                              trampCall(_prev)                                                            ,
                                                            Cell.new()
                                                          )
                                                        trampCall(_rest)
                                                    end
                                                end
                                            } ; ___lambda.call(
                                                    _car(
                                                        trampCall(_rest)
                                                    )
                                                       )
                                          end
                                      end
                                  }
                                  delayCall( '_lp',  'lp',
                                      trampCall(_lp)                                    ,
                                  [
                                        trampCall(_lis)                                      ,
                                          _cdr(
                                              trampCall(_lis)
                                          )
                                  ]
                                               )
                            } ; ___lambda.call(
                            nil
                                       )
                          end
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._break_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_break', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_break'] = self.method( :_break_METHOD )
    @_break = 
    trampCall(
          Proc.new { |_pred,_lis| 
                delayCall( '_span',  'span',
                    trampCall(@_span)                  ,
                [
                      Proc.new { |_x| 
                            _not(
                                  trampCall( callProcedure(  '_pred',  'pred',
                                      trampCall(_pred)                                    ,
                                  [
                                        trampCall(_x)
                                  ]
                                               ))
                            )
                      }                    ,
                      trampCall(_lis)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._break_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_break_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_break_EXMARK'] = self.method( :_break_EXMARK_METHOD )
    @_break_EXMARK = 
    trampCall(
          Proc.new { |_pred,_lis| 
                delayCall( '_span_EXMARK',  'span!',
                    trampCall(@_span_EXMARK)                  ,
                [
                      Proc.new { |_x| 
                            _not(
                                  trampCall( callProcedure(  '_pred',  'pred',
                                      trampCall(_pred)                                    ,
                                  [
                                        trampCall(_x)
                                  ]
                                               ))
                            )
                      }                    ,
                      trampCall(_lis)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._any_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_any', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_any'] = self.method( :_any_METHOD )
    @_any = 
    trampCall(
          Proc.new { |_pred,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                        trampCall(@_call_MIMARKwith_MIMARKvalues)                      ,
                    [
                          Proc.new { || 
                                trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                    trampCall(@__PAMARKcars_PLMARKcdrs)                                  ,
                                [
                                        _cons(
                                            trampCall(_lis1)                                          ,
                                            trampCall(_lists)
                                        )
                                ]
                                             ))
                          }                        ,
                          Proc.new { |_heads,_tails| 
                              if ( 
                                  _not(
                                        _eq_QUMARK(
                                          false                                          ,
                                              _pair_QUMARK(
                                                  trampCall(_heads)
                                              )
                                        )
                                  )
                               ) then
                                  begin #makeLetrec
                                    ___lambda = lambda { |_lp| 
                                        _lp                                         = 
                                          Proc.new { |_heads,_tails| 
                                                trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                                  ,
                                                [
                                                      Proc.new { || 
                                                            trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                                                trampCall(@__PAMARKcars_PLMARKcdrs)                                                              ,
                                                            [
                                                                  trampCall(_tails)
                                                            ]
                                                                         ))
                                                      }                                                    ,
                                                      Proc.new { |_next_MIMARKheads,_next_MIMARKtails| 
                                                          if ( 
                                                              _pair_QUMARK(
                                                                  trampCall(_next_MIMARKheads)
                                                              )
                                                           ) then
                                                              begin #makeLet
                                                                ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30306| 
                                                                    if ( 
                                                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30306)
                                                                     ) then
                                                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30306)
                                                                    else
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30307| 
                                                                              if ( 
                                                                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30307)
                                                                               ) then
                                                                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30307)
                                                                              else
                                                                                false
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  trampCall( callProcedure(  '_lp',  'lp',
                                                                                      trampCall(_lp)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_next_MIMARKheads)                                                                                      ,
                                                                                        trampCall(_next_MIMARKtails)
                                                                                  ]
                                                                                               ))
                                                                                     )
                                                                        end
                                                                    end
                                                                } ; ___lambda.call(
                                                                        trampCall( self._apply_METHOD(  'apply',
                                                                            trampCall(@_apply)                                                                          ,
                                                                        [
                                                                              trampCall(_pred)                                                                            ,
                                                                              trampCall(_heads)
                                                                        ]
                                                                                     ))
                                                                           )
                                                              end
                                                          else
                                                                trampCall( self._apply_METHOD(  'apply',
                                                                    trampCall(@_apply)                                                                  ,
                                                                [
                                                                      trampCall(_pred)                                                                    ,
                                                                      trampCall(_heads)
                                                                ]
                                                                             ))
                                                          end
                                                      }
                                                ]
                                                             ))
                                          }
                                          trampCall( callProcedure(  '_lp',  'lp',
                                              trampCall(_lp)                                            ,
                                          [
                                                trampCall(_heads)                                              ,
                                                trampCall(_tails)
                                          ]
                                                       ))
                                    } ; ___lambda.call(
                                    nil
                                               )
                                  end
                              else
                                false
                              end
                          }
                    ]
                                 )
              else
                  if ( 
                      _not(
                            _eq_QUMARK(
                              false                              ,
                                  _not(
                                        trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                            trampCall(@_null_MIMARKlist_QUMARK)                                          ,
                                        [
                                              trampCall(_lis1)
                                        ]
                                                     ))
                                  )
                            )
                      )
                   ) then
                      begin #makeLetrec
                        ___lambda = lambda { |_lp| 
                            _lp                             = 
                              Proc.new { |_head,_tail| 
                                  if ( 
                                      trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                          trampCall(@_null_MIMARKlist_QUMARK)                                        ,
                                      [
                                            trampCall(_tail)
                                      ]
                                                   ))
                                   ) then
                                        delayCall( '_pred',  'pred',
                                            trampCall(_pred)                                          ,
                                        [
                                              trampCall(_head)
                                        ]
                                                     )
                                  else
                                      begin #makeLet
                                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30304| 
                                            if ( 
                                              trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30304)
                                             ) then
                                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30304)
                                            else
                                                begin #makeLet
                                                  ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30305| 
                                                      if ( 
                                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30305)
                                                       ) then
                                                          trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30305)
                                                      else
                                                        false
                                                      end
                                                  } ; ___lambda.call(
                                                          trampCall( callProcedure(  '_lp',  'lp',
                                                              trampCall(_lp)                                                            ,
                                                          [
                                                                  _car(
                                                                      trampCall(_tail)
                                                                  )                                                              ,
                                                                  _cdr(
                                                                      trampCall(_tail)
                                                                  )
                                                          ]
                                                                       ))
                                                             )
                                                end
                                            end
                                        } ; ___lambda.call(
                                                trampCall( callProcedure(  '_pred',  'pred',
                                                    trampCall(_pred)                                                  ,
                                                [
                                                      trampCall(_head)
                                                ]
                                                             ))
                                                   )
                                      end
                                  end
                              }
                              delayCall( '_lp',  'lp',
                                  trampCall(_lp)                                ,
                              [
                                      _car(
                                          trampCall(_lis1)
                                      )                                  ,
                                      _cdr(
                                          trampCall(_lis1)
                                      )
                              ]
                                           )
                        } ; ___lambda.call(
                        nil
                                   )
                      end
                  else
                    false
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._every_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_every', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_every'] = self.method( :_every_METHOD )
    @_every = 
    trampCall(
          Proc.new { |_pred,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                        trampCall(@_call_MIMARKwith_MIMARKvalues)                      ,
                    [
                          Proc.new { || 
                                trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                    trampCall(@__PAMARKcars_PLMARKcdrs)                                  ,
                                [
                                        _cons(
                                            trampCall(_lis1)                                          ,
                                            trampCall(_lists)
                                        )
                                ]
                                             ))
                          }                        ,
                          Proc.new { |_heads,_tails| 
                              begin #makeLet
                                ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30310| 
                                    if ( 
                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30310)
                                     ) then
                                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30310)
                                    else
                                        begin #makeLet
                                          ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30311| 
                                              if ( 
                                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30311)
                                               ) then
                                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30311)
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                begin #makeLetrec
                                                  ___lambda = lambda { |_lp| 
                                                      _lp                                                       = 
                                                        Proc.new { |_heads,_tails| 
                                                              trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                                                  trampCall(@_call_MIMARKwith_MIMARKvalues)                                                                ,
                                                              [
                                                                    Proc.new { || 
                                                                          trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                                                              trampCall(@__PAMARKcars_PLMARKcdrs)                                                                            ,
                                                                          [
                                                                                trampCall(_tails)
                                                                          ]
                                                                                       ))
                                                                    }                                                                  ,
                                                                    Proc.new { |_next_MIMARKheads,_next_MIMARKtails| 
                                                                        if ( 
                                                                            _pair_QUMARK(
                                                                                trampCall(_next_MIMARKheads)
                                                                            )
                                                                         ) then
                                                                            if ( 
                                                                                _not(
                                                                                      _eq_QUMARK(
                                                                                        false                                                                                        ,
                                                                                            trampCall( self._apply_METHOD(  'apply',
                                                                                                trampCall(@_apply)                                                                                              ,
                                                                                            [
                                                                                                  trampCall(_pred)                                                                                                ,
                                                                                                  trampCall(_heads)
                                                                                            ]
                                                                                                         ))
                                                                                      )
                                                                                )
                                                                             ) then
                                                                                  trampCall( callProcedure(  '_lp',  'lp',
                                                                                      trampCall(_lp)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_next_MIMARKheads)                                                                                      ,
                                                                                        trampCall(_next_MIMARKtails)
                                                                                  ]
                                                                                               ))
                                                                            else
                                                                              false
                                                                            end
                                                                        else
                                                                              trampCall( self._apply_METHOD(  'apply',
                                                                                  trampCall(@_apply)                                                                                ,
                                                                              [
                                                                                    trampCall(_pred)                                                                                  ,
                                                                                    trampCall(_heads)
                                                                              ]
                                                                                           ))
                                                                        end
                                                                    }
                                                              ]
                                                                           ))
                                                        }
                                                        trampCall( callProcedure(  '_lp',  'lp',
                                                            trampCall(_lp)                                                          ,
                                                        [
                                                              trampCall(_heads)                                                            ,
                                                              trampCall(_tails)
                                                        ]
                                                                     ))
                                                  } ; ___lambda.call(
                                                  nil
                                                             )
                                                end
                                                     )
                                        end
                                    end
                                } ; ___lambda.call(
                                        _not(
                                              _pair_QUMARK(
                                                  trampCall(_heads)
                                              )
                                        )
                                           )
                              end
                          }
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30308| 
                        if ( 
                          trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30308)
                         ) then
                            trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30308)
                        else
                            begin #makeLet
                              ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30309| 
                                  if ( 
                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30309)
                                   ) then
                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30309)
                                  else
                                    false
                                  end
                              } ; ___lambda.call(
                                    begin #makeLetrec
                                      ___lambda = lambda { |_lp| 
                                          _lp                                           = 
                                            Proc.new { |_head,_tail| 
                                                if ( 
                                                    trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                        trampCall(@_null_MIMARKlist_QUMARK)                                                      ,
                                                    [
                                                          trampCall(_tail)
                                                    ]
                                                                 ))
                                                 ) then
                                                      delayCall( '_pred',  'pred',
                                                          trampCall(_pred)                                                        ,
                                                      [
                                                            trampCall(_head)
                                                      ]
                                                                   )
                                                else
                                                    if ( 
                                                        _not(
                                                              _eq_QUMARK(
                                                                false                                                                ,
                                                                    trampCall( callProcedure(  '_pred',  'pred',
                                                                        trampCall(_pred)                                                                      ,
                                                                    [
                                                                          trampCall(_head)
                                                                    ]
                                                                                 ))
                                                              )
                                                        )
                                                     ) then
                                                          delayCall( '_lp',  'lp',
                                                              trampCall(_lp)                                                            ,
                                                          [
                                                                  _car(
                                                                      trampCall(_tail)
                                                                  )                                                              ,
                                                                  _cdr(
                                                                      trampCall(_tail)
                                                                  )
                                                          ]
                                                                       )
                                                    else
                                                      false
                                                    end
                                                end
                                            }
                                            delayCall( '_lp',  'lp',
                                                trampCall(_lp)                                              ,
                                            [
                                                    _car(
                                                        trampCall(_lis1)
                                                    )                                                ,
                                                    _cdr(
                                                        trampCall(_lis1)
                                                    )
                                            ]
                                                         )
                                      } ; ___lambda.call(
                                      nil
                                                 )
                                    end
                                         )
                            end
                        end
                    } ; ___lambda.call(
                            trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                trampCall(@_null_MIMARKlist_QUMARK)                              ,
                            [
                                  trampCall(_lis1)
                            ]
                                         ))
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._list_MIMARKindex_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_list_MIMARKindex', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_list_MIMARKindex'] = self.method( :_list_MIMARKindex_METHOD )
    @_list_MIMARKindex = 
    trampCall(
          Proc.new { |_pred,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  _pair_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lists,_n| 
                                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                  ,
                                [
                                      Proc.new { || 
                                            trampCall( self.__PAMARKcars_PLMARKcdrs_METHOD(  '%cars+cdrs',
                                                trampCall(@__PAMARKcars_PLMARKcdrs)                                              ,
                                            [
                                                  trampCall(_lists)
                                            ]
                                                         ))
                                      }                                    ,
                                      Proc.new { |_heads,_tails| 
                                          if ( 
                                              _not(
                                                    _eq_QUMARK(
                                                      false                                                      ,
                                                          _pair_QUMARK(
                                                              trampCall(_heads)
                                                          )
                                                    )
                                              )
                                           ) then
                                              if ( 
                                                  trampCall( self._apply_METHOD(  'apply',
                                                      trampCall(@_apply)                                                    ,
                                                  [
                                                        trampCall(_pred)                                                      ,
                                                        trampCall(_heads)
                                                  ]
                                                               ))
                                               ) then
                                                  trampCall(_n)
                                              else
                                                    trampCall( callProcedure(  '_lp',  'lp',
                                                        trampCall(_lp)                                                      ,
                                                    [
                                                          trampCall(_tails)                                                        ,
                                                            ( 
                                                              trampCall(_n)                                                            +
                                                            1
                                                             ) 
                                                    ]
                                                                 ))
                                              end
                                          else
                                            false
                                          end
                                      }
                                ]
                                             )
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                  _cons(
                                      trampCall(_lis1)                                    ,
                                      trampCall(_lists)
                                  )                              ,
                              0
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              else
                  begin #makeLetrec
                    ___lambda = lambda { |_lp| 
                        _lp                         = 
                          Proc.new { |_lis,_n| 
                              if ( 
                                  _not(
                                        _eq_QUMARK(
                                          false                                          ,
                                              _not(
                                                    trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                                        trampCall(@_null_MIMARKlist_QUMARK)                                                      ,
                                                    [
                                                          trampCall(_lis)
                                                    ]
                                                                 ))
                                              )
                                        )
                                  )
                               ) then
                                  if ( 
                                      trampCall( callProcedure(  '_pred',  'pred',
                                          trampCall(_pred)                                        ,
                                      [
                                              _car(
                                                  trampCall(_lis)
                                              )
                                      ]
                                                   ))
                                   ) then
                                      trampCall(_n)
                                  else
                                        delayCall( '_lp',  'lp',
                                            trampCall(_lp)                                          ,
                                        [
                                                _cdr(
                                                    trampCall(_lis)
                                                )                                            ,
                                                ( 
                                                  trampCall(_n)                                                +
                                                1
                                                 ) 
                                        ]
                                                     )
                                  end
                              else
                                false
                              end
                          }
                          delayCall( '_lp',  'lp',
                              trampCall(_lp)                            ,
                          [
                                trampCall(_lis1)                              ,
                              0
                          ]
                                       )
                    } ; ___lambda.call(
                    nil
                               )
                  end
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._reverse_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_reverse_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_reverse_EXMARK'] = self.method( :_reverse_EXMARK_METHOD )
    @_reverse_EXMARK = 
    trampCall(
          Proc.new { |_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_lp| 
                    _lp                     = 
                      Proc.new { |_lis,_ans| 
                          if ( 
                              trampCall( self._null_MIMARKlist_QUMARK_METHOD(  'null-list?',
                                  trampCall(@_null_MIMARKlist_QUMARK)                                ,
                              [
                                    trampCall(_lis)
                              ]
                                           ))
                           ) then
                              trampCall(_ans)
                          else
                              begin #makeLet
                                ___lambda = lambda { |_tail| 
                                      _set_MIMARKcdr_EXMARK(
                                          trampCall(_lis)                                        ,
                                          trampCall(_ans)
                                      )
                                      delayCall( '_lp',  'lp',
                                          trampCall(_lp)                                        ,
                                      [
                                            trampCall(_tail)                                          ,
                                            trampCall(_lis)
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        _cdr(
                                            trampCall(_lis)
                                        )
                                           )
                              end
                          end
                      }
                      delayCall( '_lp',  'lp',
                          trampCall(_lp)                        ,
                      [
                            trampCall(_lis)                          ,
                          Cell.new()
                      ]
                                   )
                } ; ___lambda.call(
                nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKlset2_LTMARK_EQMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKlset2_LTMARK_EQMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKlset2_LTMARK_EQMARK'] = self.method( :__PAMARKlset2_LTMARK_EQMARK_METHOD )
    @__PAMARKlset2_LTMARK_EQMARK = 
    trampCall(
          Proc.new { |__EQMARK,_lis1,_lis2| 
                delayCall( '_every',  'every',
                    trampCall(@_every)                  ,
                [
                      Proc.new { |_x| 
                            trampCall( self._member_METHOD(  'member',
                                trampCall(@_member)                              ,
                            [
                                  trampCall(_x)                                ,
                                  trampCall(_lis2)                                ,
                                  trampCall(__EQMARK)
                            ]
                                         ))
                      }                    ,
                      trampCall(_lis1)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_LTMARK_EQMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_LTMARK_EQMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_LTMARK_EQMARK'] = self.method( :_lset_LTMARK_EQMARK_METHOD )
    @_lset_LTMARK_EQMARK = 
    trampCall(
          Proc.new { |__EQMARK,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30312| 
                    if ( 
                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30312)
                     ) then
                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30312)
                    else
                        begin #makeLet
                          ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30313| 
                              if ( 
                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30313)
                               ) then
                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30313)
                              else
                                false
                              end
                          } ; ___lambda.call(
                                begin #makeLetrec
                                  ___lambda = lambda { |_lp| 
                                      _lp                                       = 
                                        Proc.new { |_s1,_rest| 
                                            begin #makeLet
                                              ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30314| 
                                                  if ( 
                                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30314)
                                                   ) then
                                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30314)
                                                  else
                                                      begin #makeLet
                                                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30315| 
                                                            if ( 
                                                              trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30315)
                                                             ) then
                                                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30315)
                                                            else
                                                              false
                                                            end
                                                        } ; ___lambda.call(
                                                              begin #makeLet
                                                                ___lambda = lambda { |_s2,_rest| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30316| 
                                                                                        if ( 
                                                                                          trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30316)
                                                                                         ) then
                                                                                            trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30316)
                                                                                        else
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30317| 
                                                                                                  if ( 
                                                                                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30317)
                                                                                                   ) then
                                                                                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30317)
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      trampCall( self.__PAMARKlset2_LTMARK_EQMARK_METHOD(  '%lset2<=',
                                                                                                          trampCall(@__PAMARKlset2_LTMARK_EQMARK)                                                                                                        ,
                                                                                                      [
                                                                                                            trampCall(__EQMARK)                                                                                                          ,
                                                                                                            trampCall(_s1)                                                                                                          ,
                                                                                                            trampCall(_s2)
                                                                                                      ]
                                                                                                                   ))
                                                                                                         )
                                                                                            end
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _eq_QUMARK(
                                                                                                trampCall(_s2)                                                                                              ,
                                                                                                trampCall(_s1)
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              )
                                                                        )
                                                                     ) then
                                                                          delayCall( '_lp',  'lp',
                                                                              trampCall(_lp)                                                                            ,
                                                                          [
                                                                                trampCall(_s2)                                                                              ,
                                                                                trampCall(_rest)
                                                                          ]
                                                                                       )
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _car(
                                                                            trampCall(_rest)
                                                                        )                                                                    ,
                                                                        _cdr(
                                                                            trampCall(_rest)
                                                                        )
                                                                           )
                                                              end
                                                                   )
                                                      end
                                                  end
                                              } ; ___lambda.call(
                                                      _not(
                                                            _pair_QUMARK(
                                                                trampCall(_rest)
                                                            )
                                                      )
                                                         )
                                            end
                                        }
                                        delayCall( '_lp',  'lp',
                                            trampCall(_lp)                                          ,
                                        [
                                                _car(
                                                    trampCall(_lists)
                                                )                                            ,
                                                _cdr(
                                                    trampCall(_lists)
                                                )
                                        ]
                                                     )
                                  } ; ___lambda.call(
                                  nil
                                             )
                                end
                                     )
                        end
                    end
                } ; ___lambda.call(
                        _not(
                              _pair_QUMARK(
                                  trampCall(_lists)
                              )
                        )
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_EQMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_EQMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_EQMARK'] = self.method( :_lset_EQMARK_METHOD )
    @_lset_EQMARK = 
    trampCall(
          Proc.new { |__EQMARK,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30318| 
                    if ( 
                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30318)
                     ) then
                        trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30318)
                    else
                        begin #makeLet
                          ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30319| 
                              if ( 
                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30319)
                               ) then
                                  trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30319)
                              else
                                false
                              end
                          } ; ___lambda.call(
                                begin #makeLetrec
                                  ___lambda = lambda { |_lp| 
                                      _lp                                       = 
                                        Proc.new { |_s1,_rest| 
                                            begin #makeLet
                                              ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30320| 
                                                  if ( 
                                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30320)
                                                   ) then
                                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30320)
                                                  else
                                                      begin #makeLet
                                                        ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30321| 
                                                            if ( 
                                                              trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30321)
                                                             ) then
                                                                trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30321)
                                                            else
                                                              false
                                                            end
                                                        } ; ___lambda.call(
                                                              begin #makeLet
                                                                ___lambda = lambda { |_s2,_rest| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30322| 
                                                                                        if ( 
                                                                                          trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30322)
                                                                                         ) then
                                                                                            trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30322)
                                                                                        else
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30323| 
                                                                                                  if ( 
                                                                                                    trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30323)
                                                                                                   ) then
                                                                                                      trampCall(___gensym__3a6fb51a4afc9a00b624538ff0c698aecda43d9c_30323)
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                    if ( 
                                                                                                        _not(
                                                                                                              _eq_QUMARK(
                                                                                                                false                                                                                                                ,
                                                                                                                    trampCall( self.__PAMARKlset2_LTMARK_EQMARK_METHOD(  '%lset2<=',
                                                                                                                        trampCall(@__PAMARKlset2_LTMARK_EQMARK)                                                                                                                      ,
                                                                                                                    [
                                                                                                                          trampCall(__EQMARK)                                                                                                                        ,
                                                                                                                          trampCall(_s1)                                                                                                                        ,
                                                                                                                          trampCall(_s2)
                                                                                                                    ]
                                                                                                                                 ))
                                                                                                              )
                                                                                                        )
                                                                                                     ) then
                                                                                                          trampCall( self.__PAMARKlset2_LTMARK_EQMARK_METHOD(  '%lset2<=',
                                                                                                              trampCall(@__PAMARKlset2_LTMARK_EQMARK)                                                                                                            ,
                                                                                                          [
                                                                                                                trampCall(__EQMARK)                                                                                                              ,
                                                                                                                trampCall(_s2)                                                                                                              ,
                                                                                                                trampCall(_s1)
                                                                                                          ]
                                                                                                                       ))
                                                                                                    else
                                                                                                      false
                                                                                                    end
                                                                                                         )
                                                                                            end
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _eq_QUMARK(
                                                                                                trampCall(_s1)                                                                                              ,
                                                                                                trampCall(_s2)
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              )
                                                                        )
                                                                     ) then
                                                                          delayCall( '_lp',  'lp',
                                                                              trampCall(_lp)                                                                            ,
                                                                          [
                                                                                trampCall(_s2)                                                                              ,
                                                                                trampCall(_rest)
                                                                          ]
                                                                                       )
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _car(
                                                                            trampCall(_rest)
                                                                        )                                                                    ,
                                                                        _cdr(
                                                                            trampCall(_rest)
                                                                        )
                                                                           )
                                                              end
                                                                   )
                                                      end
                                                  end
                                              } ; ___lambda.call(
                                                      _not(
                                                            _pair_QUMARK(
                                                                trampCall(_rest)
                                                            )
                                                      )
                                                         )
                                            end
                                        }
                                        delayCall( '_lp',  'lp',
                                            trampCall(_lp)                                          ,
                                        [
                                                _car(
                                                    trampCall(_lists)
                                                )                                            ,
                                                _cdr(
                                                    trampCall(_lists)
                                                )
                                        ]
                                                     )
                                  } ; ___lambda.call(
                                  nil
                                             )
                                end
                                     )
                        end
                    end
                } ; ___lambda.call(
                        _not(
                              _pair_QUMARK(
                                  trampCall(_lists)
                              )
                        )
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKadjoin_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKadjoin', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKadjoin'] = self.method( :_lset_MIMARKadjoin_METHOD )
    @_lset_MIMARKadjoin = 
    trampCall(
          Proc.new { |__EQMARK,_lis,*__rest__| _elts = __rest__[0] ;  
                delayCall( '_fold',  'fold',
                    trampCall(@_fold)                  ,
                [
                      Proc.new { |_elt,_ans| 
                          if ( 
                              trampCall( self._member_METHOD(  'member',
                                  trampCall(@_member)                                ,
                              [
                                    trampCall(_elt)                                  ,
                                    trampCall(_ans)                                  ,
                                    trampCall(__EQMARK)
                              ]
                                           ))
                           ) then
                              trampCall(_ans)
                          else
                                _cons(
                                    trampCall(_elt)                                  ,
                                    trampCall(_ans)
                                )
                          end
                      }                    ,
                      trampCall(_lis)                    ,
                      trampCall(_elts)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKunion_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKunion', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKunion'] = self.method( :_lset_MIMARKunion_METHOD )
    @_lset_MIMARKunion = 
    trampCall(
          Proc.new { |__EQMARK,*__rest__| _lists = __rest__[0] ;  
                delayCall( '_reduce',  'reduce',
                    trampCall(@_reduce)                  ,
                [
                      Proc.new { |_lis,_ans| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lis)
                              )
                           ) then
                                trampCall(_ans)
                          else
                              if ( 
                                  _null_QUMARK(
                                      trampCall(_ans)
                                  )
                               ) then
                                    trampCall(_lis)
                              else
                                  if ( 
                                      _eq_QUMARK(
                                          trampCall(_lis)                                        ,
                                          trampCall(_ans)
                                      )
                                   ) then
                                        trampCall(_ans)
                                  else
                                      if ( 
                                      true
                                       ) then
                                              trampCall( self._fold_METHOD(  'fold',
                                                  trampCall(@_fold)                                                ,
                                              [
                                                    Proc.new { |_elt,_ans| 
                                                        if ( 
                                                            trampCall( self._any_METHOD(  'any',
                                                                trampCall(@_any)                                                              ,
                                                            [
                                                                  Proc.new { |_x| 
                                                                        trampCall( callProcedure(  '__EQMARK',  '=',
                                                                            trampCall(__EQMARK)                                                                          ,
                                                                        [
                                                                              trampCall(_x)                                                                            ,
                                                                              trampCall(_elt)
                                                                        ]
                                                                                     ))
                                                                  }                                                                ,
                                                                  trampCall(_ans)
                                                            ]
                                                                         ))
                                                         ) then
                                                            trampCall(_ans)
                                                        else
                                                              _cons(
                                                                  trampCall(_elt)                                                                ,
                                                                  trampCall(_ans)
                                                              )
                                                        end
                                                    }                                                  ,
                                                    trampCall(_ans)                                                  ,
                                                    trampCall(_lis)
                                              ]
                                                           ))
                                      else
                                          Cell.new()
                                      end
                                  end
                              end
                          end
                      }                    ,
                    Cell.new()                    ,
                      trampCall(_lists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKunion_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKunion_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKunion_EXMARK'] = self.method( :_lset_MIMARKunion_EXMARK_METHOD )
    @_lset_MIMARKunion_EXMARK = 
    trampCall(
          Proc.new { |__EQMARK,*__rest__| _lists = __rest__[0] ;  
                delayCall( '_reduce',  'reduce',
                    trampCall(@_reduce)                  ,
                [
                      Proc.new { |_lis,_ans| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lis)
                              )
                           ) then
                                trampCall(_ans)
                          else
                              if ( 
                                  _null_QUMARK(
                                      trampCall(_ans)
                                  )
                               ) then
                                    trampCall(_lis)
                              else
                                  if ( 
                                      _eq_QUMARK(
                                          trampCall(_lis)                                        ,
                                          trampCall(_ans)
                                      )
                                   ) then
                                        trampCall(_ans)
                                  else
                                      if ( 
                                      true
                                       ) then
                                              trampCall( self._pair_MIMARKfold_METHOD(  'pair-fold',
                                                  trampCall(@_pair_MIMARKfold)                                                ,
                                              [
                                                    Proc.new { |_pair,_ans| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_elt| 
                                                              if ( 
                                                                  trampCall( self._any_METHOD(  'any',
                                                                      trampCall(@_any)                                                                    ,
                                                                  [
                                                                        Proc.new { |_x| 
                                                                              trampCall( callProcedure(  '__EQMARK',  '=',
                                                                                  trampCall(__EQMARK)                                                                                ,
                                                                              [
                                                                                    trampCall(_x)                                                                                  ,
                                                                                    trampCall(_elt)
                                                                              ]
                                                                                           ))
                                                                        }                                                                      ,
                                                                        trampCall(_ans)
                                                                  ]
                                                                               ))
                                                               ) then
                                                                  trampCall(_ans)
                                                              else
                                                                  begin  #makeBegin
                                                                        _set_MIMARKcdr_EXMARK(
                                                                            trampCall(_pair)                                                                          ,
                                                                            trampCall(_ans)
                                                                        )
                                                                      trampCall(_pair)
                                                                  end
                                                              end
                                                          } ; ___lambda.call(
                                                                  _car(
                                                                      trampCall(_pair)
                                                                  )
                                                                     )
                                                        end
                                                    }                                                  ,
                                                    trampCall(_ans)                                                  ,
                                                    trampCall(_lis)
                                              ]
                                                           ))
                                      else
                                          Cell.new()
                                      end
                                  end
                              end
                          end
                      }                    ,
                    Cell.new()                    ,
                      trampCall(_lists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKintersection_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKintersection', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKintersection'] = self.method( :_lset_MIMARKintersection_METHOD )
    @_lset_MIMARKintersection = 
    trampCall(
          Proc.new { |__EQMARK,_lis1,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_lists| 
                    if ( 
                        trampCall( self._any_METHOD(  'any',
                            trampCall(@_any)                          ,
                        [
                              trampCall(@_null_MIMARKlist_QUMARK)                            ,
                              trampCall(_lists)
                        ]
                                     ))
                     ) then
                        Cell.new()
                    else
                        if ( 
                            _null_QUMARK(
                                trampCall(_lists)
                            )
                         ) then
                              trampCall(_lis1)
                        else
                            if ( 
                            true
                             ) then
                                    delayCall( '_filter',  'filter',
                                        trampCall(@_filter)                                      ,
                                    [
                                          Proc.new { |_x| 
                                                trampCall( self._every_METHOD(  'every',
                                                    trampCall(@_every)                                                  ,
                                                [
                                                      Proc.new { |_lis| 
                                                            trampCall( self._member_METHOD(  'member',
                                                                trampCall(@_member)                                                              ,
                                                            [
                                                                  trampCall(_x)                                                                ,
                                                                  trampCall(_lis)                                                                ,
                                                                  trampCall(__EQMARK)
                                                            ]
                                                                         ))
                                                      }                                                    ,
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                          }                                        ,
                                          trampCall(_lis1)
                                    ]
                                                 )
                            else
                                Cell.new()
                            end
                        end
                    end
                } ; ___lambda.call(
                        trampCall( self._delete_METHOD(  'delete',
                            trampCall(@_delete)                          ,
                        [
                              trampCall(_lis1)                            ,
                              trampCall(_lists)                            ,
                              trampCall(@_eq_QUMARK)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKintersection_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKintersection_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKintersection_EXMARK'] = self.method( :_lset_MIMARKintersection_EXMARK_METHOD )
    @_lset_MIMARKintersection_EXMARK = 
    trampCall(
          Proc.new { |__EQMARK,_lis1,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_lists| 
                    if ( 
                        trampCall( self._any_METHOD(  'any',
                            trampCall(@_any)                          ,
                        [
                              trampCall(@_null_MIMARKlist_QUMARK)                            ,
                              trampCall(_lists)
                        ]
                                     ))
                     ) then
                        Cell.new()
                    else
                        if ( 
                            _null_QUMARK(
                                trampCall(_lists)
                            )
                         ) then
                              trampCall(_lis1)
                        else
                            if ( 
                            true
                             ) then
                                    delayCall( '_filter_EXMARK',  'filter!',
                                        trampCall(@_filter_EXMARK)                                      ,
                                    [
                                          Proc.new { |_x| 
                                                trampCall( self._every_METHOD(  'every',
                                                    trampCall(@_every)                                                  ,
                                                [
                                                      Proc.new { |_lis| 
                                                            trampCall( self._member_METHOD(  'member',
                                                                trampCall(@_member)                                                              ,
                                                            [
                                                                  trampCall(_x)                                                                ,
                                                                  trampCall(_lis)                                                                ,
                                                                  trampCall(__EQMARK)
                                                            ]
                                                                         ))
                                                      }                                                    ,
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                          }                                        ,
                                          trampCall(_lis1)
                                    ]
                                                 )
                            else
                                Cell.new()
                            end
                        end
                    end
                } ; ___lambda.call(
                        trampCall( self._delete_METHOD(  'delete',
                            trampCall(@_delete)                          ,
                        [
                              trampCall(_lis1)                            ,
                              trampCall(_lists)                            ,
                              trampCall(@_eq_QUMARK)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKdifference_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKdifference', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKdifference'] = self.method( :_lset_MIMARKdifference_METHOD )
    @_lset_MIMARKdifference = 
    trampCall(
          Proc.new { |__EQMARK,_lis1,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_lists| 
                    if ( 
                        _null_QUMARK(
                            trampCall(_lists)
                        )
                     ) then
                          trampCall(_lis1)
                    else
                        if ( 
                            trampCall( self._memq_METHOD(  'memq',
                                trampCall(@_memq)                              ,
                            [
                                  trampCall(_lis1)                                ,
                                  trampCall(_lists)
                            ]
                                         ))
                         ) then
                            Cell.new()
                        else
                            if ( 
                            true
                             ) then
                                    delayCall( '_filter',  'filter',
                                        trampCall(@_filter)                                      ,
                                    [
                                          Proc.new { |_x| 
                                                trampCall( self._every_METHOD(  'every',
                                                    trampCall(@_every)                                                  ,
                                                [
                                                      Proc.new { |_lis| 
                                                            _not(
                                                                  trampCall( self._member_METHOD(  'member',
                                                                      trampCall(@_member)                                                                    ,
                                                                  [
                                                                        trampCall(_x)                                                                      ,
                                                                        trampCall(_lis)                                                                      ,
                                                                        trampCall(__EQMARK)
                                                                  ]
                                                                               ))
                                                            )
                                                      }                                                    ,
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                          }                                        ,
                                          trampCall(_lis1)
                                    ]
                                                 )
                            else
                                Cell.new()
                            end
                        end
                    end
                } ; ___lambda.call(
                        trampCall( self._filter_METHOD(  'filter',
                            trampCall(@_filter)                          ,
                        [
                              trampCall(@_pair_QUMARK)                            ,
                              trampCall(_lists)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKdifference_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKdifference_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKdifference_EXMARK'] = self.method( :_lset_MIMARKdifference_EXMARK_METHOD )
    @_lset_MIMARKdifference_EXMARK = 
    trampCall(
          Proc.new { |__EQMARK,_lis1,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_lists| 
                    if ( 
                        _null_QUMARK(
                            trampCall(_lists)
                        )
                     ) then
                          trampCall(_lis1)
                    else
                        if ( 
                            trampCall( self._memq_METHOD(  'memq',
                                trampCall(@_memq)                              ,
                            [
                                  trampCall(_lis1)                                ,
                                  trampCall(_lists)
                            ]
                                         ))
                         ) then
                            Cell.new()
                        else
                            if ( 
                            true
                             ) then
                                    delayCall( '_filter_EXMARK',  'filter!',
                                        trampCall(@_filter_EXMARK)                                      ,
                                    [
                                          Proc.new { |_x| 
                                                trampCall( self._every_METHOD(  'every',
                                                    trampCall(@_every)                                                  ,
                                                [
                                                      Proc.new { |_lis| 
                                                            _not(
                                                                  trampCall( self._member_METHOD(  'member',
                                                                      trampCall(@_member)                                                                    ,
                                                                  [
                                                                        trampCall(_x)                                                                      ,
                                                                        trampCall(_lis)                                                                      ,
                                                                        trampCall(__EQMARK)
                                                                  ]
                                                                               ))
                                                            )
                                                      }                                                    ,
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                          }                                        ,
                                          trampCall(_lis1)
                                    ]
                                                 )
                            else
                                Cell.new()
                            end
                        end
                    end
                } ; ___lambda.call(
                        trampCall( self._filter_METHOD(  'filter',
                            trampCall(@_filter)                          ,
                        [
                              trampCall(@_pair_QUMARK)                            ,
                              trampCall(_lists)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKxor_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKxor', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKxor'] = self.method( :_lset_MIMARKxor_METHOD )
    @_lset_MIMARKxor = 
    trampCall(
          Proc.new { |__EQMARK,*__rest__| _lists = __rest__[0] ;  
                delayCall( '_reduce',  'reduce',
                    trampCall(@_reduce)                  ,
                [
                      Proc.new { |_b,_a| 
                            trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                trampCall(@_call_MIMARKwith_MIMARKvalues)                              ,
                            [
                                  Proc.new { || 
                                        trampCall( self._lset_MIMARKdiff_PLMARKintersection_METHOD(  'lset-diff+intersection',
                                            trampCall(@_lset_MIMARKdiff_PLMARKintersection)                                          ,
                                        [
                                              trampCall(__EQMARK)                                            ,
                                              trampCall(_a)                                            ,
                                              trampCall(_b)
                                        ]
                                                     ))
                                  }                                ,
                                  Proc.new { |_a_MIMARKb,_a_MIMARKint_MIMARKb| 
                                      if ( 
                                          _null_QUMARK(
                                              trampCall(_a_MIMARKb)
                                          )
                                       ) then
                                              trampCall( self._lset_MIMARKdifference_METHOD(  'lset-difference',
                                                  trampCall(@_lset_MIMARKdifference)                                                ,
                                              [
                                                    trampCall(__EQMARK)                                                  ,
                                                    trampCall(_b)                                                  ,
                                                    trampCall(_a)
                                              ]
                                                           ))
                                      else
                                          if ( 
                                              _null_QUMARK(
                                                  trampCall(_a_MIMARKint_MIMARKb)
                                              )
                                           ) then
                                                  trampCall( self._append_METHOD(  'append',
                                                      trampCall(@_append)                                                    ,
                                                  [
                                                        trampCall(_b)                                                      ,
                                                        trampCall(_a)
                                                  ]
                                                               ))
                                          else
                                              if ( 
                                              true
                                               ) then
                                                      trampCall( self._fold_METHOD(  'fold',
                                                          trampCall(@_fold)                                                        ,
                                                      [
                                                            Proc.new { |_xb,_ans| 
                                                                if ( 
                                                                    trampCall( self._member_METHOD(  'member',
                                                                        trampCall(@_member)                                                                      ,
                                                                    [
                                                                          trampCall(_xb)                                                                        ,
                                                                          trampCall(_a_MIMARKint_MIMARKb)                                                                        ,
                                                                          trampCall(__EQMARK)
                                                                    ]
                                                                                 ))
                                                                 ) then
                                                                    trampCall(_ans)
                                                                else
                                                                      _cons(
                                                                          trampCall(_xb)                                                                        ,
                                                                          trampCall(_ans)
                                                                      )
                                                                end
                                                            }                                                          ,
                                                            trampCall(_a_MIMARKb)                                                          ,
                                                            trampCall(_b)
                                                      ]
                                                                   ))
                                              else
                                                  Cell.new()
                                              end
                                          end
                                      end
                                  }
                            ]
                                         ))
                      }                    ,
                    Cell.new()                    ,
                      trampCall(_lists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKxor_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKxor_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKxor_EXMARK'] = self.method( :_lset_MIMARKxor_EXMARK_METHOD )
    @_lset_MIMARKxor_EXMARK = 
    trampCall(
          Proc.new { |__EQMARK,*__rest__| _lists = __rest__[0] ;  
                delayCall( '_reduce',  'reduce',
                    trampCall(@_reduce)                  ,
                [
                      Proc.new { |_b,_a| 
                            trampCall( self._call_MIMARKwith_MIMARKvalues_METHOD(  'call-with-values',
                                trampCall(@_call_MIMARKwith_MIMARKvalues)                              ,
                            [
                                  Proc.new { || 
                                        trampCall( self._lset_MIMARKdiff_PLMARKintersection_EXMARK_METHOD(  'lset-diff+intersection!',
                                            trampCall(@_lset_MIMARKdiff_PLMARKintersection_EXMARK)                                          ,
                                        [
                                              trampCall(__EQMARK)                                            ,
                                              trampCall(_a)                                            ,
                                              trampCall(_b)
                                        ]
                                                     ))
                                  }                                ,
                                  Proc.new { |_a_MIMARKb,_a_MIMARKint_MIMARKb| 
                                      if ( 
                                          _null_QUMARK(
                                              trampCall(_a_MIMARKb)
                                          )
                                       ) then
                                              trampCall( self._lset_MIMARKdifference_EXMARK_METHOD(  'lset-difference!',
                                                  trampCall(@_lset_MIMARKdifference_EXMARK)                                                ,
                                              [
                                                    trampCall(__EQMARK)                                                  ,
                                                    trampCall(_b)                                                  ,
                                                    trampCall(_a)
                                              ]
                                                           ))
                                      else
                                          if ( 
                                              _null_QUMARK(
                                                  trampCall(_a_MIMARKint_MIMARKb)
                                              )
                                           ) then
                                                  trampCall( self._append_EXMARK_METHOD(  'append!',
                                                      trampCall(@_append_EXMARK)                                                    ,
                                                  [
                                                        trampCall(_b)                                                      ,
                                                        trampCall(_a)
                                                  ]
                                                               ))
                                          else
                                              if ( 
                                              true
                                               ) then
                                                      trampCall( self._pair_MIMARKfold_METHOD(  'pair-fold',
                                                          trampCall(@_pair_MIMARKfold)                                                        ,
                                                      [
                                                            Proc.new { |_b_MIMARKpair,_ans| 
                                                                if ( 
                                                                    trampCall( self._member_METHOD(  'member',
                                                                        trampCall(@_member)                                                                      ,
                                                                    [
                                                                            _car(
                                                                                trampCall(_b_MIMARKpair)
                                                                            )                                                                        ,
                                                                          trampCall(_a_MIMARKint_MIMARKb)                                                                        ,
                                                                          trampCall(__EQMARK)
                                                                    ]
                                                                                 ))
                                                                 ) then
                                                                    trampCall(_ans)
                                                                else
                                                                    begin  #makeBegin
                                                                          _set_MIMARKcdr_EXMARK(
                                                                              trampCall(_b_MIMARKpair)                                                                            ,
                                                                              trampCall(_ans)
                                                                          )
                                                                        trampCall(_b_MIMARKpair)
                                                                    end
                                                                end
                                                            }                                                          ,
                                                            trampCall(_a_MIMARKb)                                                          ,
                                                            trampCall(_b)
                                                      ]
                                                                   ))
                                              else
                                                  Cell.new()
                                              end
                                          end
                                      end
                                  }
                            ]
                                         ))
                      }                    ,
                    Cell.new()                    ,
                      trampCall(_lists)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._lset_MIMARKdiff_PLMARKintersection_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKdiff_PLMARKintersection', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKdiff_PLMARKintersection'] = self.method( :_lset_MIMARKdiff_PLMARKintersection_METHOD )
    @_lset_MIMARKdiff_PLMARKintersection = 
    trampCall(
          Proc.new { |__EQMARK,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  trampCall( self._every_METHOD(  'every',
                      trampCall(@_every)                    ,
                  [
                        trampCall(@_null_MIMARKlist_QUMARK)                      ,
                        trampCall(_lists)
                  ]
                               ))
               ) then
                      delayCall( '_values',  'values',
                          trampCall(@_values)                        ,
                      [
                            trampCall(_lis1)                          ,
                          Cell.new()
                      ]
                                   )
              else
                  if ( 
                      trampCall( self._memq_METHOD(  'memq',
                          trampCall(@_memq)                        ,
                      [
                            trampCall(_lis1)                          ,
                            trampCall(_lists)
                      ]
                                   ))
                   ) then
                          delayCall( '_values',  'values',
                              trampCall(@_values)                            ,
                          [
                              Cell.new()                              ,
                                trampCall(_lis1)
                          ]
                                       )
                  else
                      if ( 
                      true
                       ) then
                              delayCall( '_partition',  'partition',
                                  trampCall(@_partition)                                ,
                              [
                                    Proc.new { |_elt| 
                                          _not(
                                                trampCall( self._any_METHOD(  'any',
                                                    trampCall(@_any)                                                  ,
                                                [
                                                      Proc.new { |_lis| 
                                                            trampCall( self._member_METHOD(  'member',
                                                                trampCall(@_member)                                                              ,
                                                            [
                                                                  trampCall(_elt)                                                                ,
                                                                  trampCall(_lis)                                                                ,
                                                                  trampCall(__EQMARK)
                                                            ]
                                                                         ))
                                                      }                                                    ,
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                          )
                                    }                                  ,
                                    trampCall(_lis1)
                              ]
                                           )
                      else
                          Cell.new()
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
      def self._lset_MIMARKdiff_PLMARKintersection_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lset_MIMARKdiff_PLMARKintersection_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lset_MIMARKdiff_PLMARKintersection_EXMARK'] = self.method( :_lset_MIMARKdiff_PLMARKintersection_EXMARK_METHOD )
    @_lset_MIMARKdiff_PLMARKintersection_EXMARK = 
    trampCall(
          Proc.new { |__EQMARK,_lis1,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  trampCall( self._every_METHOD(  'every',
                      trampCall(@_every)                    ,
                  [
                        trampCall(@_null_MIMARKlist_QUMARK)                      ,
                        trampCall(_lists)
                  ]
                               ))
               ) then
                      delayCall( '_values',  'values',
                          trampCall(@_values)                        ,
                      [
                            trampCall(_lis1)                          ,
                          Cell.new()
                      ]
                                   )
              else
                  if ( 
                      trampCall( self._memq_METHOD(  'memq',
                          trampCall(@_memq)                        ,
                      [
                            trampCall(_lis1)                          ,
                            trampCall(_lists)
                      ]
                                   ))
                   ) then
                          delayCall( '_values',  'values',
                              trampCall(@_values)                            ,
                          [
                              Cell.new()                              ,
                                trampCall(_lis1)
                          ]
                                       )
                  else
                      if ( 
                      true
                       ) then
                              delayCall( '_partition_EXMARK',  'partition!',
                                  trampCall(@_partition_EXMARK)                                ,
                              [
                                    Proc.new { |_elt| 
                                          _not(
                                                trampCall( self._any_METHOD(  'any',
                                                    trampCall(@_any)                                                  ,
                                                [
                                                      Proc.new { |_lis| 
                                                            trampCall( self._member_METHOD(  'member',
                                                                trampCall(@_member)                                                              ,
                                                            [
                                                                  trampCall(_elt)                                                                ,
                                                                  trampCall(_lis)                                                                ,
                                                                  trampCall(__EQMARK)
                                                            ]
                                                                         ))
                                                      }                                                    ,
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                          )
                                    }                                  ,
                                    trampCall(_lis1)
                              ]
                                           )
                      else
                          Cell.new()
                      end
                  end
              end
          }
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------