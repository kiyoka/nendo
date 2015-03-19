#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
  begin #execFunc
      def self._and_MIMARKlet_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_and_MIMARKlet_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_and_MIMARKlet_ASMARK'] = self.method( :_and_MIMARKlet_ASMARK_METHOD )
    @_and_MIMARKlet_ASMARK = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30201,__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202,__compare__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30203| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30228| 
                            if ( 
                              trampCall(___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30228)
                             ) then
                                trampCall(___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30228)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30229| 
                                      if ( 
                                        trampCall(___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30229)
                                       ) then
                                          trampCall(___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30229)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30230| 
                                                if ( 
                                                  trampCall(___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30230)
                                                 ) then
                                                    trampCall(___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30230)
                                                else
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30231| 
                                                          if ( 
                                                            trampCall(___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30231)
                                                           ) then
                                                              trampCall(___gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30231)
                                                          else
                                                            false
                                                          end
                                                      } ; ___lambda.call(
                                                            begin raise RuntimeError, 
                                                              "no expansion for" ' ' + 
                                                              _write_MIMARKto_MIMARKstring(
                                                                  trampCall( self._strip_MIMARKsyntactic_MIMARKclosures_METHOD(  'strip-syntactic-closures',
                                                                      trampCall(@_strip_MIMARKsyntactic_MIMARKclosures)                                                                    ,
                                                                  [
                                                                      __expr__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30201
                                                                  ]
                                                                               ))
                                                              )
                                                            rescue => __e 
                                                              __e.set_backtrace( [":1"] + __e.backtrace )
                                                              raise __e
                                                            end 
                                                                 )
                                                    end
                                                end
                                            } ; ___lambda.call(
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__13__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30221| 
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                        _pair_QUMARK(
                                                                          __v__13__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30221
                                                                        )
                                                                  )
                                                            )
                                                         ) then
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__14__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30222| 
                                                                  if ( 
                                                                      _not(
                                                                            _eq_QUMARK(
                                                                              false                                                                              ,
                                                                                  _pair_QUMARK(
                                                                                    __v__14__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30222
                                                                                  )
                                                                            )
                                                                      )
                                                                   ) then
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |__v__15__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30223| 
                                                                            if ( 
                                                                                _not(
                                                                                      _eq_QUMARK(
                                                                                        false                                                                                        ,
                                                                                            _pair_QUMARK(
                                                                                              __v__15__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30223
                                                                                            )
                                                                                      )
                                                                                )
                                                                             ) then
                                                                                begin #makeLet
                                                                                  ___lambda = lambda { |__v__16__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30224| 
                                                                                      begin #makeLet
                                                                                        ___lambda = lambda { |_expr| 
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |__v__17__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30225| 
                                                                                                  if ( 
                                                                                                      _not(
                                                                                                            _eq_QUMARK(
                                                                                                              false                                                                                                              ,
                                                                                                                  _null_QUMARK(
                                                                                                                    __v__17__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30225
                                                                                                                  )
                                                                                                            )
                                                                                                      )
                                                                                                   ) then
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |__v__18__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30226| 
                                                                                                            begin #makeLet
                                                                                                              ___lambda = lambda { |_rest| 
                                                                                                                  begin #makeLet
                                                                                                                    ___lambda = lambda { |__v__19__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30227| 
                                                                                                                        begin #makeLet
                                                                                                                          ___lambda = lambda { |_body| 
                                                                                                                                _cons(
                                                                                                                                      trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                                                                                          trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                                                                                        ,
                                                                                                                                      [
                                                                                                                                          :"let"
                                                                                                                                      ]
                                                                                                                                                   ))                                                                                                                                  ,
                                                                                                                                      _cons(
                                                                                                                                            _cons(
                                                                                                                                                  _cons(
                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                                                                                                            trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                                                                                                          ,
                                                                                                                                                        [
                                                                                                                                                            :"tmp"
                                                                                                                                                        ]
                                                                                                                                                                     ))                                                                                                                                                    ,
                                                                                                                                                        _cons(
                                                                                                                                                            trampCall(_expr)                                                                                                                                                          ,
                                                                                                                                                          Cell.new()
                                                                                                                                                        )
                                                                                                                                                  )                                                                                                                                              ,
                                                                                                                                              Cell.new()
                                                                                                                                            )                                                                                                                                        ,
                                                                                                                                            _cons(
                                                                                                                                                  _cons(
                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                                                                                                            trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                                                                                                          ,
                                                                                                                                                        [
                                                                                                                                                            :"and"
                                                                                                                                                        ]
                                                                                                                                                                     ))                                                                                                                                                    ,
                                                                                                                                                        _cons(
                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                                                                                                                  trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                                                                                                                ,
                                                                                                                                                              [
                                                                                                                                                                  :"tmp"
                                                                                                                                                              ]
                                                                                                                                                                           ))                                                                                                                                                          ,
                                                                                                                                                              _cons(
                                                                                                                                                                    _cons(
                                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                                                                                                                              trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                                                                                                                            ,
                                                                                                                                                                          [
                                                                                                                                                                              :"and-let*"
                                                                                                                                                                          ]
                                                                                                                                                                                       ))                                                                                                                                                                      ,
                                                                                                                                                                          _cons(
                                                                                                                                                                              trampCall(_rest)                                                                                                                                                                            ,
                                                                                                                                                                              trampCall(_body)
                                                                                                                                                                          )
                                                                                                                                                                    )                                                                                                                                                                ,
                                                                                                                                                                Cell.new()
                                                                                                                                                              )
                                                                                                                                                        )
                                                                                                                                                  )                                                                                                                                              ,
                                                                                                                                              Cell.new()
                                                                                                                                            )
                                                                                                                                      )
                                                                                                                                )
                                                                                                                          } ; ___lambda.call(
                                                                                                                              __v__19__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30227
                                                                                                                                     )
                                                                                                                        end
                                                                                                                    } ; ___lambda.call(
                                                                                                                            _cdr(
                                                                                                                              __v__13__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30221
                                                                                                                            )
                                                                                                                               )
                                                                                                                  end
                                                                                                              } ; ___lambda.call(
                                                                                                                  __v__18__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30226
                                                                                                                         )
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                                _cdr(
                                                                                                                  __v__14__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30222
                                                                                                                )
                                                                                                                   )
                                                                                                      end
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      _cdr(
                                                                                                        __v__15__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30223
                                                                                                      )
                                                                                                         )
                                                                                            end
                                                                                        } ; ___lambda.call(
                                                                                            __v__16__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30224
                                                                                                   )
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          _car(
                                                                                            __v__15__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30223
                                                                                          )
                                                                                             )
                                                                                end
                                                                            else
                                                                              false
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                _car(
                                                                                  __v__14__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30222
                                                                                )
                                                                                   )
                                                                      end
                                                                  else
                                                                    false
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _car(
                                                                        __v__13__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30221
                                                                      )
                                                                         )
                                                            end
                                                        else
                                                          false
                                                        end
                                                    } ; ___lambda.call(
                                                            _cdr(
                                                              __expr__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30201
                                                            )
                                                               )
                                                  end
                                                       )
                                          end
                                      end
                                  } ; ___lambda.call(
                                        begin #makeLet
                                          ___lambda = lambda { |__v__4__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30212| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__4__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30212
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__5__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30213| 
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                        _pair_QUMARK(
                                                                          __v__5__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30213
                                                                        )
                                                                  )
                                                            )
                                                         ) then
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__6__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30214| 
                                                                  if ( 
                                                                      _not(
                                                                            _eq_QUMARK(
                                                                              false                                                                              ,
                                                                                  _pair_QUMARK(
                                                                                    __v__6__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30214
                                                                                  )
                                                                            )
                                                                      )
                                                                   ) then
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |__v__7__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30215| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_var| 
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__v__8__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30216| 
                                                                                        if ( 
                                                                                            _not(
                                                                                                  _eq_QUMARK(
                                                                                                    false                                                                                                    ,
                                                                                                        _pair_QUMARK(
                                                                                                          __v__8__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30216
                                                                                                        )
                                                                                                  )
                                                                                            )
                                                                                         ) then
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |__v__9__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30217| 
                                                                                                  begin #makeLet
                                                                                                    ___lambda = lambda { |_expr| 
                                                                                                        begin #makeLet
                                                                                                          ___lambda = lambda { |__v__10__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30218| 
                                                                                                              if ( 
                                                                                                                  _not(
                                                                                                                        _eq_QUMARK(
                                                                                                                          false                                                                                                                          ,
                                                                                                                              _null_QUMARK(
                                                                                                                                __v__10__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30218
                                                                                                                              )
                                                                                                                        )
                                                                                                                  )
                                                                                                               ) then
                                                                                                                  begin #makeLet
                                                                                                                    ___lambda = lambda { |__v__11__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30219| 
                                                                                                                        begin #makeLet
                                                                                                                          ___lambda = lambda { |_rest| 
                                                                                                                              begin #makeLet
                                                                                                                                ___lambda = lambda { |__v__12__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30220| 
                                                                                                                                    begin #makeLet
                                                                                                                                      ___lambda = lambda { |_body| 
                                                                                                                                            _cons(
                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                                                                                                      trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                                                                                                    ,
                                                                                                                                                  [
                                                                                                                                                      :"let"
                                                                                                                                                  ]
                                                                                                                                                               ))                                                                                                                                              ,
                                                                                                                                                  _cons(
                                                                                                                                                        _cons(
                                                                                                                                                              _cons(
                                                                                                                                                                  trampCall(_var)                                                                                                                                                                ,
                                                                                                                                                                    _cons(
                                                                                                                                                                        trampCall(_expr)                                                                                                                                                                      ,
                                                                                                                                                                      Cell.new()
                                                                                                                                                                    )
                                                                                                                                                              )                                                                                                                                                          ,
                                                                                                                                                          Cell.new()
                                                                                                                                                        )                                                                                                                                                    ,
                                                                                                                                                        _cons(
                                                                                                                                                              _cons(
                                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                                                                                                                        trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                                                                                                                      ,
                                                                                                                                                                    [
                                                                                                                                                                        :"and"
                                                                                                                                                                    ]
                                                                                                                                                                                 ))                                                                                                                                                                ,
                                                                                                                                                                    _cons(
                                                                                                                                                                        trampCall(_var)                                                                                                                                                                      ,
                                                                                                                                                                          _cons(
                                                                                                                                                                                _cons(
                                                                                                                                                                                      trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                                                                                                                                          trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                                                                                                                                        ,
                                                                                                                                                                                      [
                                                                                                                                                                                          :"and-let*"
                                                                                                                                                                                      ]
                                                                                                                                                                                                   ))                                                                                                                                                                                  ,
                                                                                                                                                                                      _cons(
                                                                                                                                                                                          trampCall(_rest)                                                                                                                                                                                        ,
                                                                                                                                                                                          trampCall(_body)
                                                                                                                                                                                      )
                                                                                                                                                                                )                                                                                                                                                                            ,
                                                                                                                                                                            Cell.new()
                                                                                                                                                                          )
                                                                                                                                                                    )
                                                                                                                                                              )                                                                                                                                                          ,
                                                                                                                                                          Cell.new()
                                                                                                                                                        )
                                                                                                                                                  )
                                                                                                                                            )
                                                                                                                                      } ; ___lambda.call(
                                                                                                                                          __v__12__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30220
                                                                                                                                                 )
                                                                                                                                    end
                                                                                                                                } ; ___lambda.call(
                                                                                                                                        _cdr(
                                                                                                                                          __v__4__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30212
                                                                                                                                        )
                                                                                                                                           )
                                                                                                                              end
                                                                                                                          } ; ___lambda.call(
                                                                                                                              __v__11__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30219
                                                                                                                                     )
                                                                                                                        end
                                                                                                                    } ; ___lambda.call(
                                                                                                                            _cdr(
                                                                                                                              __v__5__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30213
                                                                                                                            )
                                                                                                                               )
                                                                                                                  end
                                                                                                              else
                                                                                                                false
                                                                                                              end
                                                                                                          } ; ___lambda.call(
                                                                                                                  _cdr(
                                                                                                                    __v__8__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30216
                                                                                                                  )
                                                                                                                     )
                                                                                                        end
                                                                                                    } ; ___lambda.call(
                                                                                                        __v__9__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30217
                                                                                                               )
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      _car(
                                                                                                        __v__8__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30216
                                                                                                      )
                                                                                                         )
                                                                                            end
                                                                                        else
                                                                                          false
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _cdr(
                                                                                              __v__6__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30214
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              } ; ___lambda.call(
                                                                                  __v__7__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30215
                                                                                         )
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                _car(
                                                                                  __v__6__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30214
                                                                                )
                                                                                   )
                                                                      end
                                                                  else
                                                                    false
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _car(
                                                                        __v__5__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30213
                                                                      )
                                                                         )
                                                            end
                                                        else
                                                          false
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__4__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30212
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                    __expr__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30201
                                                  )
                                                     )
                                        end
                                             )
                                end
                            end
                        } ; ___lambda.call(
                              begin #makeLet
                                ___lambda = lambda { |__v__1__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30209| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _pair_QUMARK(
                                                      __v__1__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30209
                                                    )
                                              )
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30210| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _null_QUMARK(
                                                                __v__2__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30210
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__3__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30211| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_body| 
                                                                _cons(
                                                                      trampCall( callProcedure(  '__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',  '_rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202',
                                                                          trampCall(__rename__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30202)                                                                        ,
                                                                      [
                                                                          :"begin"
                                                                      ]
                                                                                   ))                                                                  ,
                                                                    trampCall(_body)
                                                                )
                                                          } ; ___lambda.call(
                                                              __v__3__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30211
                                                                     )
                                                        end
                                                    } ; ___lambda.call(
                                                            _cdr(
                                                              __v__1__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30209
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _car(
                                                    __v__1__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30209
                                                  )
                                                     )
                                        end
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__44adcf5e9bc103ebc6f421698db2c9569e38c060_30201
                                        )
                                           )
                              end
                                   )
                      end
                  }
            ]
                         ))
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------
