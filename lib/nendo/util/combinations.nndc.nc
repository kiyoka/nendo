#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
    delayCall( '_load',  'load',
        trampCall(@_load)      ,
    [
        "srfi-1"
    ]
                 )
 )
#--------------------

trampCall( 
    delayCall( '_load',  'load',
        trampCall(@_load)      ,
    [
        "srfi-26"
    ]
                 )
 )
#--------------------

trampCall( 
    delayCall( '_load',  'load',
        trampCall(@_load)      ,
    [
        "util/match"
    ]
                 )
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._but_MIMARKkth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_but_MIMARKkth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_but_MIMARKkth'] = self.method( :_but_MIMARKkth_METHOD )
    @_but_MIMARKkth = 
    trampCall(
          Proc.new { |_lis,_k| 
              begin #makeLet
                ___lambda = lambda { |___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91432| 
                    if ( 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91438| 
                            if ( 
                              trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91438)
                             ) then
                                trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91438)
                            else
                              false
                            end
                        } ; ___lambda.call(
                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                    trampCall(@_eqv_QUMARK)                                  ,
                                [
                                    0                                    ,
                                      trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91432)
                                ]
                                             ))
                                   )
                      end
                     ) then
                            delayCall( '_cdr',  'cdr',
                                trampCall(@_cdr)                              ,
                            [
                                  trampCall(_lis)
                            ]
                                         )
                    else
                        if ( 
                          begin #makeLet
                            ___lambda = lambda { |___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91439| 
                                if ( 
                                  trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91439)
                                 ) then
                                    trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91439)
                                else
                                  false
                                end
                            } ; ___lambda.call(
                                    trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                        trampCall(@_eqv_QUMARK)                                      ,
                                    [
                                        1                                        ,
                                          trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91432)
                                    ]
                                                 ))
                                       )
                          end
                         ) then
                                delayCall( '_cons',  'cons',
                                    trampCall(@_cons)                                  ,
                                [
                                        _car(
                                            trampCall(_lis)
                                        )                                    ,
                                        trampCall( self._cddr_METHOD(  'cddr',
                                            trampCall(@_cddr)                                          ,
                                        [
                                              trampCall(_lis)
                                        ]
                                                     ))
                                ]
                                             )
                        else
                            if ( 
                              begin #makeLet
                                ___lambda = lambda { |___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91440| 
                                    if ( 
                                      trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91440)
                                     ) then
                                        trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91440)
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                            trampCall(@_eqv_QUMARK)                                          ,
                                        [
                                            2                                            ,
                                              trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91432)
                                        ]
                                                     ))
                                           )
                              end
                             ) then
                                    delayCall( '_list_ASMARK',  'list*',
                                        trampCall(@_list_ASMARK)                                      ,
                                    [
                                            _car(
                                                trampCall(_lis)
                                            )                                        ,
                                            trampCall( self._cadr_METHOD(  'cadr',
                                                trampCall(@_cadr)                                              ,
                                            [
                                                  trampCall(_lis)
                                            ]
                                                         ))                                        ,
                                            trampCall( self._cdddr_METHOD(  'cdddr',
                                                trampCall(@_cdddr)                                              ,
                                            [
                                                  trampCall(_lis)
                                            ]
                                                         ))
                                    ]
                                                 )
                            else
                                if ( 
                                  begin #makeLet
                                    ___lambda = lambda { |___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91441| 
                                        if ( 
                                          trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91441)
                                         ) then
                                            trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91441)
                                        else
                                          false
                                        end
                                    } ; ___lambda.call(
                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                trampCall(@_eqv_QUMARK)                                              ,
                                            [
                                                3                                                ,
                                                  trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91432)
                                            ]
                                                         ))
                                               )
                                  end
                                 ) then
                                        delayCall( '_list_ASMARK',  'list*',
                                            trampCall(@_list_ASMARK)                                          ,
                                        [
                                                _car(
                                                    trampCall(_lis)
                                                )                                            ,
                                                trampCall( self._cadr_METHOD(  'cadr',
                                                    trampCall(@_cadr)                                                  ,
                                                [
                                                      trampCall(_lis)
                                                ]
                                                             ))                                            ,
                                                trampCall( self._caddr_METHOD(  'caddr',
                                                    trampCall(@_caddr)                                                  ,
                                                [
                                                      trampCall(_lis)
                                                ]
                                                             ))                                            ,
                                                trampCall( self._cddddr_METHOD(  'cddddr',
                                                    trampCall(@_cddddr)                                                  ,
                                                [
                                                      trampCall(_lis)
                                                ]
                                                             ))
                                        ]
                                                     )
                                else
                                    if ( 
                                    true
                                     ) then
                                            delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                                trampCall(@_call_MIMARKwith_MIMARKvalues)                                              ,
                                            [
                                                  Proc.new { || 
                                                        trampCall( self._split_MIMARKat_METHOD(  'split-at',
                                                            trampCall(@_split_MIMARKat)                                                          ,
                                                        [
                                                              trampCall(_lis)                                                            ,
                                                              trampCall(_k)
                                                        ]
                                                                     ))
                                                  }                                                ,
                                                  Proc.new { |_head,_tail| 
                                                        trampCall( self._append_EXMARK_METHOD(  'append!',
                                                            trampCall(@_append_EXMARK)                                                          ,
                                                        [
                                                              trampCall(_head)                                                            ,
                                                                _cdr(
                                                                    trampCall(_tail)
                                                                )
                                                        ]
                                                                     ))
                                                  }
                                            ]
                                                         )
                                    else
                                        Cell.new()
                                    end
                                end
                            end
                        end
                    end
                } ; ___lambda.call(
                      trampCall(_k)
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._permutations_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_permutations', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_permutations'] = self.method( :_permutations_METHOD )
    @_permutations = 
    trampCall(
          Proc.new { |_set| 
              begin #makeLet
                ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91442| 
                    if ( 
                        _null_QUMARK(
                            trampCall(_set)
                        )
                     ) then
                            delayCall( '_list',  'list',
                                trampCall(@_list)                              ,
                            [
                                Cell.new()
                            ]
                                         )
                    else
                          delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91442',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91442',
                              trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91442)                            ,
                          [
                          ]
                                       )
                    end
                } ; ___lambda.call(
                      Proc.new { || 
                          begin #makeLet
                            ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91443| 
                                if ( 
                                  if ( 
                                      _not(
                                            _eq_QUMARK(
                                              false                                              ,
                                                  _pair_QUMARK(
                                                      trampCall(_set)
                                                  )
                                            )
                                      )
                                   ) then
                                        _null_QUMARK(
                                              _cdr(
                                                  trampCall(_set)
                                              )
                                        )
                                  else
                                    false
                                  end
                                 ) then
                                    begin #makeLet
                                      ___lambda = lambda { |__w__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91445| 
                                            begin #makeLet
                                              ___lambda = lambda { |_a| 
                                                      delayCall( '_list',  'list',
                                                          trampCall(@_list)                                                        ,
                                                      [
                                                            trampCall(_set)
                                                      ]
                                                                   )
                                              } ; ___lambda.call(
                                                  __w__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91445
                                                         )
                                            end
                                      } ; ___lambda.call(
                                              _car(
                                                  trampCall(_set)
                                              )
                                                 )
                                    end
                                else
                                      delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91443',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91443',
                                          trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91443)                                        ,
                                      [
                                      ]
                                                   )
                                end
                            } ; ___lambda.call(
                                  Proc.new { || 
                                      begin #makeLet
                                        ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91444| 
                                              if ( 
                                                  _pair_QUMARK(
                                                      trampCall(_set)
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91514,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91515| 
                                                          begin #makeLet
                                                            ___lambda = lambda { |_a| 
                                                                if ( 
                                                                  if ( 
                                                                      _not(
                                                                            _eq_QUMARK(
                                                                              false                                                                              ,
                                                                                  _pair_QUMARK(
                                                                                    __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91515
                                                                                  )
                                                                            )
                                                                      )
                                                                   ) then
                                                                        _null_QUMARK(
                                                                              _cdr(
                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91515
                                                                              )
                                                                        )
                                                                  else
                                                                    false
                                                                  end
                                                                 ) then
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91644| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_b| 
                                                                                      delayCall( '_cons',  'cons',
                                                                                          trampCall(@_cons)                                                                                        ,
                                                                                      [
                                                                                            trampCall(_set)                                                                                          ,
                                                                                              _cons(
                                                                                                    _cons(
                                                                                                        trampCall(_b)                                                                                                      ,
                                                                                                          _cons(
                                                                                                              trampCall(_a)                                                                                                            ,
                                                                                                            Cell.new()
                                                                                                          )
                                                                                                    )                                                                                                ,
                                                                                                Cell.new()
                                                                                              )
                                                                                      ]
                                                                                                   )
                                                                              } ; ___lambda.call(
                                                                                  __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91644
                                                                                         )
                                                                            end
                                                                      } ; ___lambda.call(
                                                                              _car(
                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91515
                                                                              )
                                                                                 )
                                                                    end
                                                                else
                                                                      delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91444',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91444',
                                                                          trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91444)                                                                        ,
                                                                      [
                                                                      ]
                                                                                   )
                                                                end
                                                            } ; ___lambda.call(
                                                                __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91514
                                                                       )
                                                          end
                                                    } ; ___lambda.call(
                                                            _car(
                                                                trampCall(_set)
                                                            )                                                        ,
                                                            _cdr(
                                                                trampCall(_set)
                                                            )
                                                               )
                                                  end
                                              else
                                                    delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91444',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91444',
                                                        trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91444)                                                      ,
                                                    [
                                                    ]
                                                                 )
                                              end
                                        } ; ___lambda.call(
                                              Proc.new { || 
                                                  begin #makeLet
                                                    ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446| 
                                                          if ( 
                                                              _pair_QUMARK(
                                                                  trampCall(_set)
                                                              )
                                                           ) then
                                                              begin #makeLet
                                                                ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91552,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91553| 
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |_a| 
                                                                              if ( 
                                                                                  _pair_QUMARK(
                                                                                    __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91553
                                                                                  )
                                                                               ) then
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91711,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91712| 
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |_b| 
                                                                                                if ( 
                                                                                                  if ( 
                                                                                                      _not(
                                                                                                            _eq_QUMARK(
                                                                                                              false                                                                                                              ,
                                                                                                                  _pair_QUMARK(
                                                                                                                    __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91712
                                                                                                                  )
                                                                                                            )
                                                                                                      )
                                                                                                   ) then
                                                                                                        _null_QUMARK(
                                                                                                              _cdr(
                                                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91712
                                                                                                              )
                                                                                                        )
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                                 ) then
                                                                                                    begin #makeLet
                                                                                                      ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91743| 
                                                                                                            begin #makeLet
                                                                                                              ___lambda = lambda { |_c| 
                                                                                                                      delayCall( '_cons',  'cons',
                                                                                                                          trampCall(@_cons)                                                                                                                        ,
                                                                                                                      [
                                                                                                                            trampCall(_set)                                                                                                                          ,
                                                                                                                              _cons(
                                                                                                                                    _cons(
                                                                                                                                        trampCall(_a)                                                                                                                                      ,
                                                                                                                                          _cons(
                                                                                                                                              trampCall(_c)                                                                                                                                            ,
                                                                                                                                                _cons(
                                                                                                                                                    trampCall(_b)                                                                                                                                                  ,
                                                                                                                                                  Cell.new()
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    )                                                                                                                                ,
                                                                                                                                    _cons(
                                                                                                                                          _cons(
                                                                                                                                              trampCall(_b)                                                                                                                                            ,
                                                                                                                                                _cons(
                                                                                                                                                    trampCall(_a)                                                                                                                                                  ,
                                                                                                                                                      _cons(
                                                                                                                                                          trampCall(_c)                                                                                                                                                        ,
                                                                                                                                                        Cell.new()
                                                                                                                                                      )
                                                                                                                                                )
                                                                                                                                          )                                                                                                                                      ,
                                                                                                                                          _cons(
                                                                                                                                                _cons(
                                                                                                                                                    trampCall(_b)                                                                                                                                                  ,
                                                                                                                                                      _cons(
                                                                                                                                                          trampCall(_c)                                                                                                                                                        ,
                                                                                                                                                            _cons(
                                                                                                                                                                trampCall(_a)                                                                                                                                                              ,
                                                                                                                                                              Cell.new()
                                                                                                                                                            )
                                                                                                                                                      )
                                                                                                                                                )                                                                                                                                            ,
                                                                                                                                                _cons(
                                                                                                                                                      _cons(
                                                                                                                                                          trampCall(_c)                                                                                                                                                        ,
                                                                                                                                                            _cons(
                                                                                                                                                                trampCall(_a)                                                                                                                                                              ,
                                                                                                                                                                  _cons(
                                                                                                                                                                      trampCall(_b)                                                                                                                                                                    ,
                                                                                                                                                                    Cell.new()
                                                                                                                                                                  )
                                                                                                                                                            )
                                                                                                                                                      )                                                                                                                                                  ,
                                                                                                                                                      _cons(
                                                                                                                                                            _cons(
                                                                                                                                                                trampCall(_c)                                                                                                                                                              ,
                                                                                                                                                                  _cons(
                                                                                                                                                                      trampCall(_b)                                                                                                                                                                    ,
                                                                                                                                                                        _cons(
                                                                                                                                                                            trampCall(_a)                                                                                                                                                                          ,
                                                                                                                                                                          Cell.new()
                                                                                                                                                                        )
                                                                                                                                                                  )
                                                                                                                                                            )                                                                                                                                                        ,
                                                                                                                                                        Cell.new()
                                                                                                                                                      )
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    )
                                                                                                                              )
                                                                                                                      ]
                                                                                                                                   )
                                                                                                              } ; ___lambda.call(
                                                                                                                  __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91743
                                                                                                                         )
                                                                                                            end
                                                                                                      } ; ___lambda.call(
                                                                                                              _car(
                                                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91712
                                                                                                              )
                                                                                                                 )
                                                                                                    end
                                                                                                else
                                                                                                      delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446',
                                                                                                          trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446)                                                                                                        ,
                                                                                                      [
                                                                                                      ]
                                                                                                                   )
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91711
                                                                                                       )
                                                                                          end
                                                                                    } ; ___lambda.call(
                                                                                            _car(
                                                                                              __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91553
                                                                                            )                                                                                        ,
                                                                                            _cdr(
                                                                                              __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91553
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              else
                                                                                    delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446',
                                                                                        trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446)                                                                                      ,
                                                                                    [
                                                                                    ]
                                                                                                 )
                                                                              end
                                                                        } ; ___lambda.call(
                                                                            __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91552
                                                                                   )
                                                                      end
                                                                } ; ___lambda.call(
                                                                        _car(
                                                                            trampCall(_set)
                                                                        )                                                                    ,
                                                                        _cdr(
                                                                            trampCall(_set)
                                                                        )
                                                                           )
                                                              end
                                                          else
                                                                delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446',
                                                                    trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91446)                                                                  ,
                                                                [
                                                                ]
                                                                             )
                                                          end
                                                    } ; ___lambda.call(
                                                          Proc.new { || 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91513| 
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |_else| 
                                                                                delayCall( '_append_MIMARKmap',  'append-map',
                                                                                    trampCall(@_append_MIMARKmap)                                                                                  ,
                                                                                [
                                                                                      Proc.new { |_ind,_head| 
                                                                                            trampCall( self._map_METHOD(  'map',
                                                                                                trampCall(@_map)                                                                                              ,
                                                                                            [
                                                                                                  Proc.new { |_rest| 
                                                                                                        _cons(
                                                                                                            trampCall(_head)                                                                                                          ,
                                                                                                            trampCall(_rest)
                                                                                                        )
                                                                                                  }                                                                                                ,
                                                                                                    trampCall( self._permutations_METHOD(  'permutations',
                                                                                                        trampCall(@_permutations)                                                                                                      ,
                                                                                                    [
                                                                                                            trampCall( self._but_MIMARKkth_METHOD(  'but-kth',
                                                                                                                trampCall(@_but_MIMARKkth)                                                                                                              ,
                                                                                                            [
                                                                                                                  trampCall(_set)                                                                                                                ,
                                                                                                                  trampCall(_ind)
                                                                                                            ]
                                                                                                                         ))
                                                                                                    ]
                                                                                                                 ))
                                                                                            ]
                                                                                                         ))
                                                                                      }                                                                                    ,
                                                                                        trampCall( self._iota_METHOD(  'iota',
                                                                                            trampCall(@_iota)                                                                                          ,
                                                                                        [
                                                                                                _length(
                                                                                                    trampCall(_set)
                                                                                                )
                                                                                        ]
                                                                                                     ))                                                                                    ,
                                                                                      trampCall(_set)
                                                                                ]
                                                                                             )
                                                                        } ; ___lambda.call(
                                                                              trampCall(_set)
                                                                                   )
                                                                      end
                                                                } ; ___lambda.call(
                                                                      Proc.new { || 
                                                                          begin raise RuntimeError, 
                                                                          "Error: match: no matching pattern"
                                                                          rescue => __e 
                                                                            __e.set_backtrace( [":1"] + __e.backtrace )
                                                                            raise __e
                                                                          end 
                                                                      }
                                                                           )
                                                              end
                                                          }
                                                               )
                                                  end
                                              }
                                                   )
                                      end
                                  }
                                       )
                          end
                      }
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._permutations_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_permutations_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_permutations_ASMARK'] = self.method( :_permutations_ASMARK_METHOD )
    @_permutations_ASMARK = 
    trampCall(
          Proc.new { |_set,*__rest__| ___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91774 = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_eq| 
                    if ( 
                        ( 
                        0                        <
                            _length(
                                trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91774)
                            )
                         ) 
                     ) then
                          begin #execFunc
                            
                            _eq = 
                            trampCall(
                                    trampCall( self._nth_METHOD(  'nth',
                                        trampCall(@_nth)                                      ,
                                    [
                                        0                                        ,
                                          trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91774)
                                    ]
                                                 ))
                            )
                          end
                    end
                    begin #execFunc
                        def self._rec_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rec', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                        @global_lisp_binding['_rec'] = self.method( :_rec_METHOD )
                      @_rec = 
                      trampCall(
                            Proc.new { |_set| 
                                begin #makeLet
                                  ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91775| 
                                      if ( 
                                          _null_QUMARK(
                                              trampCall(_set)
                                          )
                                       ) then
                                              trampCall( self._list_METHOD(  'list',
                                                  trampCall(@_list)                                                ,
                                              [
                                                  Cell.new()
                                              ]
                                                           ))
                                      else
                                            trampCall( callProcedure(  '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91775',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91775',
                                                trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91775)                                              ,
                                            [
                                            ]
                                                         ))
                                      end
                                  } ; ___lambda.call(
                                        Proc.new { || 
                                            begin #makeLet
                                              ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91776| 
                                                  if ( 
                                                    if ( 
                                                        _not(
                                                              _eq_QUMARK(
                                                                false                                                                ,
                                                                    _pair_QUMARK(
                                                                        trampCall(_set)
                                                                    )
                                                              )
                                                        )
                                                     ) then
                                                          _null_QUMARK(
                                                                _cdr(
                                                                    trampCall(_set)
                                                                )
                                                          )
                                                    else
                                                      false
                                                    end
                                                   ) then
                                                      begin #makeLet
                                                        ___lambda = lambda { |__w__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91778| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |_a| 
                                                                        trampCall( self._list_METHOD(  'list',
                                                                            trampCall(@_list)                                                                          ,
                                                                        [
                                                                              trampCall(_set)
                                                                        ]
                                                                                     ))
                                                                } ; ___lambda.call(
                                                                    __w__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91778
                                                                           )
                                                              end
                                                        } ; ___lambda.call(
                                                                _car(
                                                                    trampCall(_set)
                                                                )
                                                                   )
                                                      end
                                                  else
                                                        trampCall( callProcedure(  '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91776',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91776',
                                                            trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91776)                                                          ,
                                                        [
                                                        ]
                                                                     ))
                                                  end
                                              } ; ___lambda.call(
                                                    Proc.new { || 
                                                        begin #makeLet
                                                          ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91777| 
                                                                if ( 
                                                                    _pair_QUMARK(
                                                                        trampCall(_set)
                                                                    )
                                                                 ) then
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91846,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91847| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_a| 
                                                                                  if ( 
                                                                                    if ( 
                                                                                        _not(
                                                                                              _eq_QUMARK(
                                                                                                false                                                                                                ,
                                                                                                    _pair_QUMARK(
                                                                                                      __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91847
                                                                                                    )
                                                                                              )
                                                                                        )
                                                                                     ) then
                                                                                          _null_QUMARK(
                                                                                                _cdr(
                                                                                                  __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91847
                                                                                                )
                                                                                          )
                                                                                    else
                                                                                      false
                                                                                    end
                                                                                   ) then
                                                                                      begin #makeLet
                                                                                        ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91911| 
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |_b| 
                                                                                                      if ( 
                                                                                                          trampCall( callProcedure(  '_eq',  'eq',
                                                                                                              trampCall(_eq)                                                                                                            ,
                                                                                                          [
                                                                                                                trampCall(_a)                                                                                                              ,
                                                                                                                trampCall(_b)
                                                                                                          ]
                                                                                                                       ))
                                                                                                       ) then
                                                                                                            trampCall( self._list_METHOD(  'list',
                                                                                                                trampCall(@_list)                                                                                                              ,
                                                                                                            [
                                                                                                                  trampCall(_set)
                                                                                                            ]
                                                                                                                         ))
                                                                                                      else
                                                                                                            _cons(
                                                                                                                trampCall(_set)                                                                                                              ,
                                                                                                                  _cons(
                                                                                                                        _cons(
                                                                                                                            trampCall(_b)                                                                                                                          ,
                                                                                                                              _cons(
                                                                                                                                  trampCall(_a)                                                                                                                                ,
                                                                                                                                Cell.new()
                                                                                                                              )
                                                                                                                        )                                                                                                                    ,
                                                                                                                    Cell.new()
                                                                                                                  )
                                                                                                            )
                                                                                                      end
                                                                                                } ; ___lambda.call(
                                                                                                    __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91911
                                                                                                           )
                                                                                              end
                                                                                        } ; ___lambda.call(
                                                                                                _car(
                                                                                                  __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91847
                                                                                                )
                                                                                                   )
                                                                                      end
                                                                                  else
                                                                                        trampCall( callProcedure(  '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91777',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91777',
                                                                                            trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91777)                                                                                          ,
                                                                                        [
                                                                                        ]
                                                                                                     ))
                                                                                  end
                                                                              } ; ___lambda.call(
                                                                                  __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_91846
                                                                                         )
                                                                            end
                                                                      } ; ___lambda.call(
                                                                              _car(
                                                                                  trampCall(_set)
                                                                              )                                                                          ,
                                                                              _cdr(
                                                                                  trampCall(_set)
                                                                              )
                                                                                 )
                                                                    end
                                                                else
                                                                      trampCall( callProcedure(  '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91777',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91777',
                                                                          trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91777)                                                                        ,
                                                                      [
                                                                      ]
                                                                                   ))
                                                                end
                                                          } ; ___lambda.call(
                                                                Proc.new { || 
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91779| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_else| 
                                                                                    begin #makeLetrec
                                                                                      ___lambda = lambda { |_loop| 
                                                                                          _loop                                                                                           = 
                                                                                            Proc.new { |_i,_seen,_p,_r| 
                                                                                                if ( 
                                                                                                    _null_QUMARK(
                                                                                                        trampCall(_p)
                                                                                                    )
                                                                                                 ) then
                                                                                                        trampCall( self._reverse_EXMARK_METHOD(  'reverse!',
                                                                                                            trampCall(@_reverse_EXMARK)                                                                                                          ,
                                                                                                        [
                                                                                                              trampCall(_r)
                                                                                                        ]
                                                                                                                     ))
                                                                                                else
                                                                                                    if ( 
                                                                                                        trampCall( self._member_METHOD(  'member',
                                                                                                            trampCall(@_member)                                                                                                          ,
                                                                                                        [
                                                                                                                _car(
                                                                                                                    trampCall(_p)
                                                                                                                )                                                                                                            ,
                                                                                                              trampCall(_seen)                                                                                                            ,
                                                                                                              trampCall(_eq)
                                                                                                        ]
                                                                                                                     ))
                                                                                                     ) then
                                                                                                            trampCall( callProcedure(  '_loop',  'loop',
                                                                                                                trampCall(_loop)                                                                                                              ,
                                                                                                            [
                                                                                                                    ( 
                                                                                                                      trampCall(_i)                                                                                                                    +
                                                                                                                    1
                                                                                                                     )                                                                                                                 ,
                                                                                                                  trampCall(_seen)                                                                                                                ,
                                                                                                                    _cdr(
                                                                                                                        trampCall(_p)
                                                                                                                    )                                                                                                                ,
                                                                                                                  trampCall(_r)
                                                                                                            ]
                                                                                                                         ))
                                                                                                    else
                                                                                                        if ( 
                                                                                                        true
                                                                                                         ) then
                                                                                                                trampCall( callProcedure(  '_loop',  'loop',
                                                                                                                    trampCall(_loop)                                                                                                                  ,
                                                                                                                [
                                                                                                                        ( 
                                                                                                                          trampCall(_i)                                                                                                                        +
                                                                                                                        1
                                                                                                                         )                                                                                                                     ,
                                                                                                                        _cons(
                                                                                                                              _car(
                                                                                                                                  trampCall(_p)
                                                                                                                              )                                                                                                                          ,
                                                                                                                            trampCall(_seen)
                                                                                                                        )                                                                                                                    ,
                                                                                                                        _cdr(
                                                                                                                            trampCall(_p)
                                                                                                                        )                                                                                                                    ,
                                                                                                                        trampCall( self._fold_METHOD(  'fold',
                                                                                                                            trampCall(@_fold)                                                                                                                          ,
                                                                                                                        [
                                                                                                                              Proc.new { |_subperm,_r| 
                                                                                                                                    trampCall( self._acons_METHOD(  'acons',
                                                                                                                                        trampCall(@_acons)                                                                                                                                      ,
                                                                                                                                    [
                                                                                                                                            _car(
                                                                                                                                                trampCall(_p)
                                                                                                                                            )                                                                                                                                        ,
                                                                                                                                          trampCall(_subperm)                                                                                                                                        ,
                                                                                                                                          trampCall(_r)
                                                                                                                                    ]
                                                                                                                                                 ))
                                                                                                                              }                                                                                                                            ,
                                                                                                                              trampCall(_r)                                                                                                                            ,
                                                                                                                                trampCall( self._rec_METHOD(  'rec',
                                                                                                                                    trampCall(@_rec)                                                                                                                                  ,
                                                                                                                                [
                                                                                                                                        trampCall( self._but_MIMARKkth_METHOD(  'but-kth',
                                                                                                                                            trampCall(@_but_MIMARKkth)                                                                                                                                          ,
                                                                                                                                        [
                                                                                                                                              trampCall(_set)                                                                                                                                            ,
                                                                                                                                              trampCall(_i)
                                                                                                                                        ]
                                                                                                                                                     ))
                                                                                                                                ]
                                                                                                                                             ))
                                                                                                                        ]
                                                                                                                                     ))
                                                                                                                ]
                                                                                                                             ))
                                                                                                        else
                                                                                                            Cell.new()
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            }
                                                                                            trampCall( callProcedure(  '_loop',  'loop',
                                                                                                trampCall(_loop)                                                                                              ,
                                                                                            [
                                                                                                0                                                                                                ,
                                                                                                Cell.new()                                                                                                ,
                                                                                                  trampCall(_set)                                                                                                ,
                                                                                                Cell.new()
                                                                                            ]
                                                                                                         ))
                                                                                      } ; ___lambda.call(
                                                                                      nil
                                                                                                 )
                                                                                    end
                                                                              } ; ___lambda.call(
                                                                                    trampCall(_set)
                                                                                         )
                                                                            end
                                                                      } ; ___lambda.call(
                                                                            Proc.new { || 
                                                                                begin raise RuntimeError, 
                                                                                "Error: match: no matching pattern"
                                                                                rescue => __e 
                                                                                  __e.set_backtrace( [":1"] + __e.backtrace )
                                                                                  raise __e
                                                                                end 
                                                                            }
                                                                                 )
                                                                    end
                                                                }
                                                                     )
                                                        end
                                                    }
                                                         )
                                            end
                                        }
                                             )
                                end
                            }
                      )
                    end
                      delayCall( '_rec',  'rec',
                          trampCall(@_rec)                        ,
                      [
                            trampCall(_set)
                      ]
                                   )
                } ; ___lambda.call(
                      trampCall(@_eqv_QUMARK)
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._p_SLMARKeach3_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_p_SLMARKeach3', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_p_SLMARKeach3'] = self.method( :_p_SLMARKeach3_METHOD )
    @_p_SLMARKeach3 = 
    trampCall(
          Proc.new { |_proc,_x1,_x2,_x3| 
                trampCall( callProcedure(  '_proc',  'proc',
                    trampCall(_proc)                  ,
                [
                        _cons(
                            trampCall(_x1)                          ,
                              _cons(
                                  trampCall(_x2)                                ,
                                    _cons(
                                        trampCall(_x3)                                      ,
                                      Cell.new()
                                    )
                              )
                        )
                ]
                             ))
                trampCall( callProcedure(  '_proc',  'proc',
                    trampCall(_proc)                  ,
                [
                        _cons(
                            trampCall(_x1)                          ,
                              _cons(
                                  trampCall(_x3)                                ,
                                    _cons(
                                        trampCall(_x2)                                      ,
                                      Cell.new()
                                    )
                              )
                        )
                ]
                             ))
                trampCall( callProcedure(  '_proc',  'proc',
                    trampCall(_proc)                  ,
                [
                        _cons(
                            trampCall(_x2)                          ,
                              _cons(
                                  trampCall(_x1)                                ,
                                    _cons(
                                        trampCall(_x3)                                      ,
                                      Cell.new()
                                    )
                              )
                        )
                ]
                             ))
                trampCall( callProcedure(  '_proc',  'proc',
                    trampCall(_proc)                  ,
                [
                        _cons(
                            trampCall(_x2)                          ,
                              _cons(
                                  trampCall(_x3)                                ,
                                    _cons(
                                        trampCall(_x1)                                      ,
                                      Cell.new()
                                    )
                              )
                        )
                ]
                             ))
                trampCall( callProcedure(  '_proc',  'proc',
                    trampCall(_proc)                  ,
                [
                        _cons(
                            trampCall(_x3)                          ,
                              _cons(
                                  trampCall(_x1)                                ,
                                    _cons(
                                        trampCall(_x2)                                      ,
                                      Cell.new()
                                    )
                              )
                        )
                ]
                             ))
                delayCall( '_proc',  'proc',
                    trampCall(_proc)                  ,
                [
                        _cons(
                            trampCall(_x3)                          ,
                              _cons(
                                  trampCall(_x2)                                ,
                                    _cons(
                                        trampCall(_x1)                                      ,
                                      Cell.new()
                                    )
                              )
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
      def self._p_SLMARKeach4_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_p_SLMARKeach4', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_p_SLMARKeach4'] = self.method( :_p_SLMARKeach4_METHOD )
    @_p_SLMARKeach4 = 
    trampCall(
          Proc.new { |_proc,_x1,_x2,_x3,_x4| 
                trampCall( self._p_SLMARKeach3_METHOD(  'p/each3',
                    trampCall(@_p_SLMARKeach3)                  ,
                [
                      Proc.new { |_xs| 
                            trampCall( callProcedure(  '_proc',  'proc',
                                trampCall(_proc)                              ,
                            [
                                    _cons(
                                        trampCall(_x1)                                      ,
                                        trampCall(_xs)
                                    )
                            ]
                                         ))
                      }                    ,
                      trampCall(_x2)                    ,
                      trampCall(_x3)                    ,
                      trampCall(_x4)
                ]
                             ))
                trampCall( self._p_SLMARKeach3_METHOD(  'p/each3',
                    trampCall(@_p_SLMARKeach3)                  ,
                [
                      Proc.new { |_xs| 
                            trampCall( callProcedure(  '_proc',  'proc',
                                trampCall(_proc)                              ,
                            [
                                    _cons(
                                        trampCall(_x2)                                      ,
                                        trampCall(_xs)
                                    )
                            ]
                                         ))
                      }                    ,
                      trampCall(_x1)                    ,
                      trampCall(_x3)                    ,
                      trampCall(_x4)
                ]
                             ))
                trampCall( self._p_SLMARKeach3_METHOD(  'p/each3',
                    trampCall(@_p_SLMARKeach3)                  ,
                [
                      Proc.new { |_xs| 
                            trampCall( callProcedure(  '_proc',  'proc',
                                trampCall(_proc)                              ,
                            [
                                    _cons(
                                        trampCall(_x3)                                      ,
                                        trampCall(_xs)
                                    )
                            ]
                                         ))
                      }                    ,
                      trampCall(_x1)                    ,
                      trampCall(_x2)                    ,
                      trampCall(_x4)
                ]
                             ))
                delayCall( '_p_SLMARKeach3',  'p/each3',
                    trampCall(@_p_SLMARKeach3)                  ,
                [
                      Proc.new { |_xs| 
                            trampCall( callProcedure(  '_proc',  'proc',
                                trampCall(_proc)                              ,
                            [
                                    _cons(
                                        trampCall(_x4)                                      ,
                                        trampCall(_xs)
                                    )
                            ]
                                         ))
                      }                    ,
                      trampCall(_x1)                    ,
                      trampCall(_x2)                    ,
                      trampCall(_x3)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._p_SLMARKeach_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_p_SLMARKeach_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_p_SLMARKeach_ASMARK'] = self.method( :_p_SLMARKeach_ASMARK_METHOD )
    @_p_SLMARKeach_ASMARK = 
    trampCall(
          Proc.new { |_proc,_len,_xs| 
              if ( 
                  __EQMARK(
                      trampCall(_len)                    ,
                    4
                  )
               ) then
                    delayCall( '_apply',  'apply',
                        trampCall(@_apply)                      ,
                    [
                          trampCall(@_p_SLMARKeach4)                        ,
                          trampCall(_proc)                        ,
                          trampCall(_xs)
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_len1| 
                          delayCall( '_for_MIMARKeach',  'for-each',
                              trampCall(@_for_MIMARKeach)                            ,
                          [
                                Proc.new { |_ind,_elt| 
                                      trampCall( self._p_SLMARKeach_ASMARK_METHOD(  'p/each*',
                                          trampCall(@_p_SLMARKeach_ASMARK)                                        ,
                                      [
                                            Proc.new { |_subperm| 
                                                  trampCall( callProcedure(  '_proc',  'proc',
                                                      trampCall(_proc)                                                    ,
                                                  [
                                                          _cons(
                                                              trampCall(_elt)                                                            ,
                                                              trampCall(_subperm)
                                                          )
                                                  ]
                                                               ))
                                            }                                          ,
                                            trampCall(_len1)                                          ,
                                              trampCall( self._but_MIMARKkth_METHOD(  'but-kth',
                                                  trampCall(@_but_MIMARKkth)                                                ,
                                              [
                                                    trampCall(_xs)                                                  ,
                                                    trampCall(_ind)
                                              ]
                                                           ))
                                      ]
                                                   ))
                                }                              ,
                                  trampCall( self._iota_METHOD(  'iota',
                                      trampCall(@_iota)                                    ,
                                  [
                                          _length(
                                              trampCall(_xs)
                                          )
                                  ]
                                               ))                              ,
                                trampCall(_xs)
                          ]
                                       )
                    } ; ___lambda.call(
                            ( 
                              trampCall(_len)                            -
                            1
                             ) 
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
      def self._permutations_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_permutations_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_permutations_MIMARKfor_MIMARKeach'] = self.method( :_permutations_MIMARKfor_MIMARKeach_METHOD )
    @_permutations_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_set| 
              begin #makeLet
                ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91942| 
                    if ( 
                        _null_QUMARK(
                            trampCall(_set)
                        )
                     ) then
                        nil
                    else
                          delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91942',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91942',
                              trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91942)                            ,
                          [
                          ]
                                       )
                    end
                } ; ___lambda.call(
                      Proc.new { || 
                          begin #makeLet
                            ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91943| 
                                if ( 
                                  if ( 
                                      _not(
                                            _eq_QUMARK(
                                              false                                              ,
                                                  _pair_QUMARK(
                                                      trampCall(_set)
                                                  )
                                            )
                                      )
                                   ) then
                                        _null_QUMARK(
                                              _cdr(
                                                  trampCall(_set)
                                              )
                                        )
                                  else
                                    false
                                  end
                                 ) then
                                    begin #makeLet
                                      ___lambda = lambda { |__w__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91945| 
                                            begin #makeLet
                                              ___lambda = lambda { |_x| 
                                                      delayCall( '_proc',  'proc',
                                                          trampCall(_proc)                                                        ,
                                                      [
                                                            trampCall(_set)
                                                      ]
                                                                   )
                                              } ; ___lambda.call(
                                                  __w__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91945
                                                         )
                                            end
                                      } ; ___lambda.call(
                                              _car(
                                                  trampCall(_set)
                                              )
                                                 )
                                    end
                                else
                                      delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91943',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91943',
                                          trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91943)                                        ,
                                      [
                                      ]
                                                   )
                                end
                            } ; ___lambda.call(
                                  Proc.new { || 
                                      begin #makeLet
                                        ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91944| 
                                              if ( 
                                                  _pair_QUMARK(
                                                      trampCall(_set)
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92014,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92015| 
                                                          begin #makeLet
                                                            ___lambda = lambda { |_x1| 
                                                                if ( 
                                                                  if ( 
                                                                      _not(
                                                                            _eq_QUMARK(
                                                                              false                                                                              ,
                                                                                  _pair_QUMARK(
                                                                                    __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92015
                                                                                  )
                                                                            )
                                                                      )
                                                                   ) then
                                                                        _null_QUMARK(
                                                                              _cdr(
                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92015
                                                                              )
                                                                        )
                                                                  else
                                                                    false
                                                                  end
                                                                 ) then
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92158| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_x2| 
                                                                                  begin  #makeBegin
                                                                                        trampCall( callProcedure(  '_proc',  'proc',
                                                                                            trampCall(_proc)                                                                                          ,
                                                                                        [
                                                                                                _cons(
                                                                                                    trampCall(_x1)                                                                                                  ,
                                                                                                      _cons(
                                                                                                          trampCall(_x2)                                                                                                        ,
                                                                                                        Cell.new()
                                                                                                      )
                                                                                                )
                                                                                        ]
                                                                                                     ))
                                                                                        delayCall( '_proc',  'proc',
                                                                                            trampCall(_proc)                                                                                          ,
                                                                                        [
                                                                                                _cons(
                                                                                                    trampCall(_x2)                                                                                                  ,
                                                                                                      _cons(
                                                                                                          trampCall(_x1)                                                                                                        ,
                                                                                                        Cell.new()
                                                                                                      )
                                                                                                )
                                                                                        ]
                                                                                                     )
                                                                                  end
                                                                              } ; ___lambda.call(
                                                                                  __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92158
                                                                                         )
                                                                            end
                                                                      } ; ___lambda.call(
                                                                              _car(
                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92015
                                                                              )
                                                                                 )
                                                                    end
                                                                else
                                                                      delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91944',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91944',
                                                                          trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91944)                                                                        ,
                                                                      [
                                                                      ]
                                                                                   )
                                                                end
                                                            } ; ___lambda.call(
                                                                __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92014
                                                                       )
                                                          end
                                                    } ; ___lambda.call(
                                                            _car(
                                                                trampCall(_set)
                                                            )                                                        ,
                                                            _cdr(
                                                                trampCall(_set)
                                                            )
                                                               )
                                                  end
                                              else
                                                    delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91944',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91944',
                                                        trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91944)                                                      ,
                                                    [
                                                    ]
                                                                 )
                                              end
                                        } ; ___lambda.call(
                                              Proc.new { || 
                                                  begin #makeLet
                                                    ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946| 
                                                          if ( 
                                                              _pair_QUMARK(
                                                                  trampCall(_set)
                                                              )
                                                           ) then
                                                              begin #makeLet
                                                                ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92053,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92054| 
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |_x1| 
                                                                              if ( 
                                                                                  _pair_QUMARK(
                                                                                    __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92054
                                                                                  )
                                                                               ) then
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92280,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92281| 
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |_x2| 
                                                                                                if ( 
                                                                                                  if ( 
                                                                                                      _not(
                                                                                                            _eq_QUMARK(
                                                                                                              false                                                                                                              ,
                                                                                                                  _pair_QUMARK(
                                                                                                                    __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92281
                                                                                                                  )
                                                                                                            )
                                                                                                      )
                                                                                                   ) then
                                                                                                        _null_QUMARK(
                                                                                                              _cdr(
                                                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92281
                                                                                                              )
                                                                                                        )
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                                 ) then
                                                                                                    begin #makeLet
                                                                                                      ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92380| 
                                                                                                            begin #makeLet
                                                                                                              ___lambda = lambda { |_x3| 
                                                                                                                      delayCall( '_p_SLMARKeach3',  'p/each3',
                                                                                                                          trampCall(@_p_SLMARKeach3)                                                                                                                        ,
                                                                                                                      [
                                                                                                                            trampCall(_proc)                                                                                                                          ,
                                                                                                                            trampCall(_x1)                                                                                                                          ,
                                                                                                                            trampCall(_x2)                                                                                                                          ,
                                                                                                                            trampCall(_x3)
                                                                                                                      ]
                                                                                                                                   )
                                                                                                              } ; ___lambda.call(
                                                                                                                  __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92380
                                                                                                                         )
                                                                                                            end
                                                                                                      } ; ___lambda.call(
                                                                                                              _car(
                                                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92281
                                                                                                              )
                                                                                                                 )
                                                                                                    end
                                                                                                else
                                                                                                      delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946',
                                                                                                          trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946)                                                                                                        ,
                                                                                                      [
                                                                                                      ]
                                                                                                                   )
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92280
                                                                                                       )
                                                                                          end
                                                                                    } ; ___lambda.call(
                                                                                            _car(
                                                                                              __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92054
                                                                                            )                                                                                        ,
                                                                                            _cdr(
                                                                                              __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92054
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              else
                                                                                    delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946',
                                                                                        trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946)                                                                                      ,
                                                                                    [
                                                                                    ]
                                                                                                 )
                                                                              end
                                                                        } ; ___lambda.call(
                                                                            __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92053
                                                                                   )
                                                                      end
                                                                } ; ___lambda.call(
                                                                        _car(
                                                                            trampCall(_set)
                                                                        )                                                                    ,
                                                                        _cdr(
                                                                            trampCall(_set)
                                                                        )
                                                                           )
                                                              end
                                                          else
                                                                delayCall( '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946',
                                                                    trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_91946)                                                                  ,
                                                                [
                                                                ]
                                                                             )
                                                          end
                                                    } ; ___lambda.call(
                                                          Proc.new { || 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013| 
                                                                      if ( 
                                                                          _pair_QUMARK(
                                                                              trampCall(_set)
                                                                          )
                                                                       ) then
                                                                          begin #makeLet
                                                                            ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92121,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92122| 
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |_x1| 
                                                                                          if ( 
                                                                                              _pair_QUMARK(
                                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92122
                                                                                              )
                                                                                           ) then
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92318,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92319| 
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |_x2| 
                                                                                                              if ( 
                                                                                                                  _pair_QUMARK(
                                                                                                                    __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92319
                                                                                                                  )
                                                                                                               ) then
                                                                                                                  begin #makeLet
                                                                                                                    ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92447,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92448| 
                                                                                                                          begin #makeLet
                                                                                                                            ___lambda = lambda { |_x3| 
                                                                                                                                if ( 
                                                                                                                                  if ( 
                                                                                                                                      _not(
                                                                                                                                            _eq_QUMARK(
                                                                                                                                              false                                                                                                                                              ,
                                                                                                                                                  _pair_QUMARK(
                                                                                                                                                    __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92448
                                                                                                                                                  )
                                                                                                                                            )
                                                                                                                                      )
                                                                                                                                   ) then
                                                                                                                                        _null_QUMARK(
                                                                                                                                              _cdr(
                                                                                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92448
                                                                                                                                              )
                                                                                                                                        )
                                                                                                                                  else
                                                                                                                                    false
                                                                                                                                  end
                                                                                                                                 ) then
                                                                                                                                    begin #makeLet
                                                                                                                                      ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92479| 
                                                                                                                                            begin #makeLet
                                                                                                                                              ___lambda = lambda { |_x4| 
                                                                                                                                                      delayCall( '_p_SLMARKeach4',  'p/each4',
                                                                                                                                                          trampCall(@_p_SLMARKeach4)                                                                                                                                                        ,
                                                                                                                                                      [
                                                                                                                                                            trampCall(_proc)                                                                                                                                                          ,
                                                                                                                                                            trampCall(_x1)                                                                                                                                                          ,
                                                                                                                                                            trampCall(_x2)                                                                                                                                                          ,
                                                                                                                                                            trampCall(_x3)                                                                                                                                                          ,
                                                                                                                                                            trampCall(_x4)
                                                                                                                                                      ]
                                                                                                                                                                   )
                                                                                                                                              } ; ___lambda.call(
                                                                                                                                                  __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92479
                                                                                                                                                         )
                                                                                                                                            end
                                                                                                                                      } ; ___lambda.call(
                                                                                                                                              _car(
                                                                                                                                                __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92448
                                                                                                                                              )
                                                                                                                                                 )
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                      delayCall( '__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013',  '_failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013',
                                                                                                                                          trampCall(__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013)                                                                                                                                        ,
                                                                                                                                      [
                                                                                                                                      ]
                                                                                                                                                   )
                                                                                                                                end
                                                                                                                            } ; ___lambda.call(
                                                                                                                                __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92447
                                                                                                                                       )
                                                                                                                          end
                                                                                                                    } ; ___lambda.call(
                                                                                                                            _car(
                                                                                                                              __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92319
                                                                                                                            )                                                                                                                        ,
                                                                                                                            _cdr(
                                                                                                                              __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92319
                                                                                                                            )
                                                                                                                               )
                                                                                                                  end
                                                                                                              else
                                                                                                                    delayCall( '__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013',  '_failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013',
                                                                                                                        trampCall(__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013)                                                                                                                      ,
                                                                                                                    [
                                                                                                                    ]
                                                                                                                                 )
                                                                                                              end
                                                                                                        } ; ___lambda.call(
                                                                                                            __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92318
                                                                                                                   )
                                                                                                      end
                                                                                                } ; ___lambda.call(
                                                                                                        _car(
                                                                                                          __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92122
                                                                                                        )                                                                                                    ,
                                                                                                        _cdr(
                                                                                                          __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92122
                                                                                                        )
                                                                                                           )
                                                                                              end
                                                                                          else
                                                                                                delayCall( '__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013',  '_failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013',
                                                                                                    trampCall(__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013)                                                                                                  ,
                                                                                                [
                                                                                                ]
                                                                                                             )
                                                                                          end
                                                                                    } ; ___lambda.call(
                                                                                        __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92121
                                                                                               )
                                                                                  end
                                                                            } ; ___lambda.call(
                                                                                    _car(
                                                                                        trampCall(_set)
                                                                                    )                                                                                ,
                                                                                    _cdr(
                                                                                        trampCall(_set)
                                                                                    )
                                                                                       )
                                                                          end
                                                                      else
                                                                            delayCall( '__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013',  '_failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013',
                                                                                trampCall(__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92013)                                                                              ,
                                                                            [
                                                                            ]
                                                                                         )
                                                                      end
                                                                } ; ___lambda.call(
                                                                      Proc.new { || 
                                                                          begin #makeLet
                                                                            ___lambda = lambda { |__failure__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92052| 
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |_else| 
                                                                                            delayCall( '_p_SLMARKeach_ASMARK',  'p/each*',
                                                                                                trampCall(@_p_SLMARKeach_ASMARK)                                                                                              ,
                                                                                            [
                                                                                                  trampCall(_proc)                                                                                                ,
                                                                                                    _length(
                                                                                                        trampCall(_set)
                                                                                                    )                                                                                                ,
                                                                                                  trampCall(_set)
                                                                                            ]
                                                                                                         )
                                                                                    } ; ___lambda.call(
                                                                                          trampCall(_set)
                                                                                               )
                                                                                  end
                                                                            } ; ___lambda.call(
                                                                                  Proc.new { || 
                                                                                      begin raise RuntimeError, 
                                                                                      "Error: match: no matching pattern"
                                                                                      rescue => __e 
                                                                                        __e.set_backtrace( [":1"] + __e.backtrace )
                                                                                        raise __e
                                                                                      end 
                                                                                  }
                                                                                       )
                                                                          end
                                                                      }
                                                                           )
                                                              end
                                                          }
                                                               )
                                                  end
                                              }
                                                   )
                                      end
                                  }
                                       )
                          end
                      }
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._permutations_ASMARK_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_permutations_ASMARK_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_permutations_ASMARK_MIMARKfor_MIMARKeach'] = self.method( :_permutations_ASMARK_MIMARKfor_MIMARKeach_METHOD )
    @_permutations_ASMARK_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_set,*__rest__| ___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92510 = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_eq| 
                    if ( 
                        ( 
                        0                        <
                            _length(
                                trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92510)
                            )
                         ) 
                     ) then
                          begin #execFunc
                            
                            _eq = 
                            trampCall(
                                    trampCall( self._nth_METHOD(  'nth',
                                        trampCall(@_nth)                                      ,
                                    [
                                        0                                        ,
                                          trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92510)
                                    ]
                                                 ))
                            )
                          end
                    end
                    begin #execFunc
                        def self._rec_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rec', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                        @global_lisp_binding['_rec'] = self.method( :_rec_METHOD )
                      @_rec = 
                      trampCall(
                            Proc.new { |_proc,_set| 
                                begin #makeLet
                                  ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92511| 
                                      if ( 
                                          _null_QUMARK(
                                              trampCall(_set)
                                          )
                                       ) then
                                          nil
                                      else
                                            trampCall( callProcedure(  '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92511',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92511',
                                                trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92511)                                              ,
                                            [
                                            ]
                                                         ))
                                      end
                                  } ; ___lambda.call(
                                        Proc.new { || 
                                            begin #makeLet
                                              ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92512| 
                                                  if ( 
                                                    if ( 
                                                        _not(
                                                              _eq_QUMARK(
                                                                false                                                                ,
                                                                    _pair_QUMARK(
                                                                        trampCall(_set)
                                                                    )
                                                              )
                                                        )
                                                     ) then
                                                          _null_QUMARK(
                                                                _cdr(
                                                                    trampCall(_set)
                                                                )
                                                          )
                                                    else
                                                      false
                                                    end
                                                   ) then
                                                      begin #makeLet
                                                        ___lambda = lambda { |__w__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92514| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |_a| 
                                                                        trampCall( callProcedure(  '_proc',  'proc',
                                                                            trampCall(_proc)                                                                          ,
                                                                        [
                                                                              trampCall(_set)
                                                                        ]
                                                                                     ))
                                                                } ; ___lambda.call(
                                                                    __w__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92514
                                                                           )
                                                              end
                                                        } ; ___lambda.call(
                                                                _car(
                                                                    trampCall(_set)
                                                                )
                                                                   )
                                                      end
                                                  else
                                                        trampCall( callProcedure(  '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92512',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92512',
                                                            trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92512)                                                          ,
                                                        [
                                                        ]
                                                                     ))
                                                  end
                                              } ; ___lambda.call(
                                                    Proc.new { || 
                                                        begin #makeLet
                                                          ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92513| 
                                                                if ( 
                                                                    _pair_QUMARK(
                                                                        trampCall(_set)
                                                                    )
                                                                 ) then
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92582,__x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92583| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_a| 
                                                                                  if ( 
                                                                                    if ( 
                                                                                        _not(
                                                                                              _eq_QUMARK(
                                                                                                false                                                                                                ,
                                                                                                    _pair_QUMARK(
                                                                                                      __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92583
                                                                                                    )
                                                                                              )
                                                                                        )
                                                                                     ) then
                                                                                          _null_QUMARK(
                                                                                                _cdr(
                                                                                                  __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92583
                                                                                                )
                                                                                          )
                                                                                    else
                                                                                      false
                                                                                    end
                                                                                   ) then
                                                                                      begin #makeLet
                                                                                        ___lambda = lambda { |__w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92647| 
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |_b| 
                                                                                                      if ( 
                                                                                                          trampCall( callProcedure(  '_eq',  'eq',
                                                                                                              trampCall(_eq)                                                                                                            ,
                                                                                                          [
                                                                                                                trampCall(_a)                                                                                                              ,
                                                                                                                trampCall(_b)
                                                                                                          ]
                                                                                                                       ))
                                                                                                       ) then
                                                                                                              trampCall( callProcedure(  '_proc',  'proc',
                                                                                                                  trampCall(_proc)                                                                                                                ,
                                                                                                              [
                                                                                                                    trampCall(_set)
                                                                                                              ]
                                                                                                                           ))
                                                                                                      else
                                                                                                          if ( 
                                                                                                          true
                                                                                                           ) then
                                                                                                              begin  #makeBegin
                                                                                                                    trampCall( callProcedure(  '_proc',  'proc',
                                                                                                                        trampCall(_proc)                                                                                                                      ,
                                                                                                                    [
                                                                                                                          trampCall(_set)
                                                                                                                    ]
                                                                                                                                 ))
                                                                                                                    trampCall( callProcedure(  '_proc',  'proc',
                                                                                                                        trampCall(_proc)                                                                                                                      ,
                                                                                                                    [
                                                                                                                            _cons(
                                                                                                                                trampCall(_b)                                                                                                                              ,
                                                                                                                                  _cons(
                                                                                                                                      trampCall(_a)                                                                                                                                    ,
                                                                                                                                    Cell.new()
                                                                                                                                  )
                                                                                                                            )
                                                                                                                    ]
                                                                                                                                 ))
                                                                                                              end
                                                                                                          else
                                                                                                              Cell.new()
                                                                                                          end
                                                                                                      end
                                                                                                } ; ___lambda.call(
                                                                                                    __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92647
                                                                                                           )
                                                                                              end
                                                                                        } ; ___lambda.call(
                                                                                                _car(
                                                                                                  __x__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92583
                                                                                                )
                                                                                                   )
                                                                                      end
                                                                                  else
                                                                                        trampCall( callProcedure(  '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92513',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92513',
                                                                                            trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92513)                                                                                          ,
                                                                                        [
                                                                                        ]
                                                                                                     ))
                                                                                  end
                                                                              } ; ___lambda.call(
                                                                                  __w__gensym__16b2635cc60d2744f1ec64942b9115d129949ee3_92582
                                                                                         )
                                                                            end
                                                                      } ; ___lambda.call(
                                                                              _car(
                                                                                  trampCall(_set)
                                                                              )                                                                          ,
                                                                              _cdr(
                                                                                  trampCall(_set)
                                                                              )
                                                                                 )
                                                                    end
                                                                else
                                                                      trampCall( callProcedure(  '__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92513',  '_failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92513',
                                                                          trampCall(__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92513)                                                                        ,
                                                                      [
                                                                      ]
                                                                                   ))
                                                                end
                                                          } ; ___lambda.call(
                                                                Proc.new { || 
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |__failure__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92515| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_else| 
                                                                                    begin #makeLetrec
                                                                                      ___lambda = lambda { |_loop| 
                                                                                          _loop                                                                                           = 
                                                                                            Proc.new { |_i,_seen,_p| 
                                                                                                if ( 
                                                                                                    _null_QUMARK(
                                                                                                        trampCall(_p)
                                                                                                    )
                                                                                                 ) then
                                                                                                    true
                                                                                                else
                                                                                                    if ( 
                                                                                                        trampCall( self._member_METHOD(  'member',
                                                                                                            trampCall(@_member)                                                                                                          ,
                                                                                                        [
                                                                                                                _car(
                                                                                                                    trampCall(_p)
                                                                                                                )                                                                                                            ,
                                                                                                              trampCall(_seen)                                                                                                            ,
                                                                                                              trampCall(_eq)
                                                                                                        ]
                                                                                                                     ))
                                                                                                     ) then
                                                                                                            trampCall( callProcedure(  '_loop',  'loop',
                                                                                                                trampCall(_loop)                                                                                                              ,
                                                                                                            [
                                                                                                                    ( 
                                                                                                                      trampCall(_i)                                                                                                                    +
                                                                                                                    1
                                                                                                                     )                                                                                                                 ,
                                                                                                                  trampCall(_seen)                                                                                                                ,
                                                                                                                    _cdr(
                                                                                                                        trampCall(_p)
                                                                                                                    )
                                                                                                            ]
                                                                                                                         ))
                                                                                                    else
                                                                                                        if ( 
                                                                                                        true
                                                                                                         ) then
                                                                                                            begin  #makeBegin
                                                                                                                  trampCall( self._rec_METHOD(  'rec',
                                                                                                                      trampCall(@_rec)                                                                                                                    ,
                                                                                                                  [
                                                                                                                        Proc.new { |_subperm| 
                                                                                                                              trampCall( callProcedure(  '_proc',  'proc',
                                                                                                                                  trampCall(_proc)                                                                                                                                ,
                                                                                                                              [
                                                                                                                                      _cons(
                                                                                                                                            _car(
                                                                                                                                                trampCall(_p)
                                                                                                                                            )                                                                                                                                        ,
                                                                                                                                          trampCall(_subperm)
                                                                                                                                      )
                                                                                                                              ]
                                                                                                                                           ))
                                                                                                                        }                                                                                                                      ,
                                                                                                                          trampCall( self._but_MIMARKkth_METHOD(  'but-kth',
                                                                                                                              trampCall(@_but_MIMARKkth)                                                                                                                            ,
                                                                                                                          [
                                                                                                                                trampCall(_set)                                                                                                                              ,
                                                                                                                                trampCall(_i)
                                                                                                                          ]
                                                                                                                                       ))
                                                                                                                  ]
                                                                                                                               ))
                                                                                                                  trampCall( callProcedure(  '_loop',  'loop',
                                                                                                                      trampCall(_loop)                                                                                                                    ,
                                                                                                                  [
                                                                                                                          ( 
                                                                                                                            trampCall(_i)                                                                                                                          +
                                                                                                                          1
                                                                                                                           )                                                                                                                       ,
                                                                                                                          _cons(
                                                                                                                                _car(
                                                                                                                                    trampCall(_p)
                                                                                                                                )                                                                                                                            ,
                                                                                                                              trampCall(_seen)
                                                                                                                          )                                                                                                                      ,
                                                                                                                          _cdr(
                                                                                                                              trampCall(_p)
                                                                                                                          )
                                                                                                                  ]
                                                                                                                               ))
                                                                                                            end
                                                                                                        else
                                                                                                            Cell.new()
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            }
                                                                                            trampCall( callProcedure(  '_loop',  'loop',
                                                                                                trampCall(_loop)                                                                                              ,
                                                                                            [
                                                                                                0                                                                                                ,
                                                                                                Cell.new()                                                                                                ,
                                                                                                  trampCall(_set)
                                                                                            ]
                                                                                                         ))
                                                                                      } ; ___lambda.call(
                                                                                      nil
                                                                                                 )
                                                                                    end
                                                                              } ; ___lambda.call(
                                                                                    trampCall(_set)
                                                                                         )
                                                                            end
                                                                      } ; ___lambda.call(
                                                                            Proc.new { || 
                                                                                begin raise RuntimeError, 
                                                                                "Error: match: no matching pattern"
                                                                                rescue => __e 
                                                                                  __e.set_backtrace( [":1"] + __e.backtrace )
                                                                                  raise __e
                                                                                end 
                                                                            }
                                                                                 )
                                                                    end
                                                                }
                                                                     )
                                                        end
                                                    }
                                                         )
                                            end
                                        }
                                             )
                                end
                            }
                      )
                    end
                      delayCall( '_rec',  'rec',
                          trampCall(@_rec)                        ,
                      [
                            trampCall(_proc)                          ,
                            trampCall(_set)
                      ]
                                   )
                } ; ___lambda.call(
                      trampCall(@_eqv_QUMARK)
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._combinations_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_combinations', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_combinations'] = self.method( :_combinations_METHOD )
    @_combinations = 
    trampCall(
          Proc.new { |_set,_n| 
              if ( 
                  _not(
                        trampCall( self._positive_QUMARK_METHOD(  'positive?',
                            trampCall(@_positive_QUMARK)                          ,
                        [
                              trampCall(_n)
                        ]
                                     ))
                  )
               ) then
                    delayCall( '_list',  'list',
                        trampCall(@_list)                      ,
                    [
                        Cell.new()
                    ]
                                 )
              else
                    delayCall( '_pair_MIMARKfold_MIMARKright',  'pair-fold-right',
                        trampCall(@_pair_MIMARKfold_MIMARKright)                      ,
                    [
                          Proc.new { |_pr,_acc| 
                                trampCall( self._fold_MIMARKright_METHOD(  'fold-right',
                                    trampCall(@_fold_MIMARKright)                                  ,
                                [
                                      begin #makeLet
                                        ___lambda = lambda { |__tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92680| 
                                            Proc.new { |__tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92681,__tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92682| 
                                                  trampCall( self._acons_METHOD(  'acons',
                                                      trampCall(@_acons)                                                    ,
                                                  [
                                                      __tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92680                                                      ,
                                                      __tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92681                                                      ,
                                                      __tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92682
                                                  ]
                                                               ))
                                            }
                                        } ; ___lambda.call(
                                                _car(
                                                    trampCall(_pr)
                                                )
                                                   )
                                      end                                    ,
                                      trampCall(_acc)                                    ,
                                        trampCall( self._combinations_METHOD(  'combinations',
                                            trampCall(@_combinations)                                          ,
                                        [
                                                _cdr(
                                                    trampCall(_pr)
                                                )                                            ,
                                                ( 
                                                  trampCall(_n)                                                -
                                                1
                                                 ) 
                                        ]
                                                     ))
                                ]
                                             ))
                          }                        ,
                        Cell.new()                        ,
                          trampCall(_set)
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
      def self._combinations_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_combinations_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_combinations_ASMARK'] = self.method( :_combinations_ASMARK_METHOD )
    @_combinations_ASMARK = 
    trampCall(
          Proc.new { |_set,_n,*__rest__| ___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92683 = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_eq| 
                    if ( 
                        ( 
                        0                        <
                            _length(
                                trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92683)
                            )
                         ) 
                     ) then
                          begin #execFunc
                            
                            _eq = 
                            trampCall(
                                    trampCall( self._nth_METHOD(  'nth',
                                        trampCall(@_nth)                                      ,
                                    [
                                        0                                        ,
                                          trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92683)
                                    ]
                                                 ))
                            )
                          end
                    end
                    begin #execFunc
                        def self._rec_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rec', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                        @global_lisp_binding['_rec'] = self.method( :_rec_METHOD )
                      @_rec = 
                      trampCall(
                            Proc.new { |_set,_n| 
                                if ( 
                                    _not(
                                          trampCall( self._positive_QUMARK_METHOD(  'positive?',
                                              trampCall(@_positive_QUMARK)                                            ,
                                          [
                                                trampCall(_n)
                                          ]
                                                       ))
                                    )
                                 ) then
                                      trampCall( self._list_METHOD(  'list',
                                          trampCall(@_list)                                        ,
                                      [
                                          Cell.new()
                                      ]
                                                   ))
                                else
                                    begin #makeLetrec
                                      ___lambda = lambda { |_loop| 
                                          _loop                                           = 
                                            Proc.new { |_p,_seen,_r| 
                                                if ( 
                                                    _null_QUMARK(
                                                        trampCall(_p)
                                                    )
                                                 ) then
                                                        trampCall( self._reverse_EXMARK_METHOD(  'reverse!',
                                                            trampCall(@_reverse_EXMARK)                                                          ,
                                                        [
                                                              trampCall(_r)
                                                        ]
                                                                     ))
                                                else
                                                    if ( 
                                                        trampCall( self._member_METHOD(  'member',
                                                            trampCall(@_member)                                                          ,
                                                        [
                                                                _car(
                                                                    trampCall(_p)
                                                                )                                                            ,
                                                              trampCall(_seen)                                                            ,
                                                              trampCall(_eq)
                                                        ]
                                                                     ))
                                                     ) then
                                                            trampCall( callProcedure(  '_loop',  'loop',
                                                                trampCall(_loop)                                                              ,
                                                            [
                                                                    _cdr(
                                                                        trampCall(_p)
                                                                    )                                                                ,
                                                                  trampCall(_seen)                                                                ,
                                                                  trampCall(_r)
                                                            ]
                                                                         ))
                                                    else
                                                        if ( 
                                                        true
                                                         ) then
                                                                trampCall( callProcedure(  '_loop',  'loop',
                                                                    trampCall(_loop)                                                                  ,
                                                                [
                                                                        _cdr(
                                                                            trampCall(_p)
                                                                        )                                                                    ,
                                                                        _cons(
                                                                              _car(
                                                                                  trampCall(_p)
                                                                              )                                                                          ,
                                                                            trampCall(_seen)
                                                                        )                                                                    ,
                                                                        trampCall( self._fold_METHOD(  'fold',
                                                                            trampCall(@_fold)                                                                          ,
                                                                        [
                                                                              begin #makeLet
                                                                                ___lambda = lambda { |__tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92687| 
                                                                                    Proc.new { |__tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92688,__tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92689| 
                                                                                          trampCall( self._acons_METHOD(  'acons',
                                                                                              trampCall(@_acons)                                                                                            ,
                                                                                          [
                                                                                              __tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92687                                                                                              ,
                                                                                              __tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92688                                                                                              ,
                                                                                              __tmp__gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92689
                                                                                          ]
                                                                                                       ))
                                                                                    }
                                                                                } ; ___lambda.call(
                                                                                        _car(
                                                                                            trampCall(_p)
                                                                                        )
                                                                                           )
                                                                              end                                                                            ,
                                                                              trampCall(_r)                                                                            ,
                                                                                trampCall( self._rec_METHOD(  'rec',
                                                                                    trampCall(@_rec)                                                                                  ,
                                                                                [
                                                                                        trampCall( self._lset_MIMARKdifference_METHOD(  'lset-difference',
                                                                                            trampCall(@_lset_MIMARKdifference)                                                                                          ,
                                                                                        [
                                                                                              trampCall(_eq)                                                                                            ,
                                                                                                _cdr(
                                                                                                    trampCall(_p)
                                                                                                )                                                                                            ,
                                                                                              trampCall(_seen)
                                                                                        ]
                                                                                                     ))                                                                                    ,
                                                                                        ( 
                                                                                          trampCall(_n)                                                                                        -
                                                                                        1
                                                                                         ) 
                                                                                ]
                                                                                             ))
                                                                        ]
                                                                                     ))
                                                                ]
                                                                             ))
                                                        else
                                                            Cell.new()
                                                        end
                                                    end
                                                end
                                            }
                                            trampCall( callProcedure(  '_loop',  'loop',
                                                trampCall(_loop)                                              ,
                                            [
                                                  trampCall(_set)                                                ,
                                                Cell.new()                                                ,
                                                Cell.new()
                                            ]
                                                         ))
                                      } ; ___lambda.call(
                                      nil
                                                 )
                                    end
                                end
                            }
                      )
                    end
                      delayCall( '_rec',  'rec',
                          trampCall(@_rec)                        ,
                      [
                            trampCall(_set)                          ,
                            trampCall(_n)
                      ]
                                   )
                } ; ___lambda.call(
                      trampCall(@_eqv_QUMARK)
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._combinations_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_combinations_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_combinations_MIMARKfor_MIMARKeach'] = self.method( :_combinations_MIMARKfor_MIMARKeach_METHOD )
    @_combinations_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_set,_n| 
              if ( 
                  _not(
                        trampCall( self._positive_QUMARK_METHOD(  'positive?',
                            trampCall(@_positive_QUMARK)                          ,
                        [
                              trampCall(_n)
                        ]
                                     ))
                  )
               ) then
                    delayCall( '_proc',  'proc',
                        trampCall(_proc)                      ,
                    [
                        Cell.new()
                    ]
                                 )
              else
                    delayCall( '_pair_MIMARKfor_MIMARKeach',  'pair-for-each',
                        trampCall(@_pair_MIMARKfor_MIMARKeach)                      ,
                    [
                          Proc.new { |_pr| 
                                trampCall( self._combinations_MIMARKfor_MIMARKeach_METHOD(  'combinations-for-each',
                                    trampCall(@_combinations_MIMARKfor_MIMARKeach)                                  ,
                                [
                                      Proc.new { |_sub_MIMARKcomb| 
                                            trampCall( callProcedure(  '_proc',  'proc',
                                                trampCall(_proc)                                              ,
                                            [
                                                    _cons(
                                                          _car(
                                                              trampCall(_pr)
                                                          )                                                      ,
                                                        trampCall(_sub_MIMARKcomb)
                                                    )
                                            ]
                                                         ))
                                      }                                    ,
                                        _cdr(
                                            trampCall(_pr)
                                        )                                    ,
                                        ( 
                                          trampCall(_n)                                        -
                                        1
                                         ) 
                                ]
                                             ))
                          }                        ,
                          trampCall(_set)
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
      def self._combinations_ASMARK_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_combinations_ASMARK_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_combinations_ASMARK_MIMARKfor_MIMARKeach'] = self.method( :_combinations_ASMARK_MIMARKfor_MIMARKeach_METHOD )
    @_combinations_ASMARK_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_set,_n,*__rest__| ___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92690 = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_eq| 
                    if ( 
                        ( 
                        0                        <
                            _length(
                                trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92690)
                            )
                         ) 
                     ) then
                          begin #execFunc
                            
                            _eq = 
                            trampCall(
                                    trampCall( self._nth_METHOD(  'nth',
                                        trampCall(@_nth)                                      ,
                                    [
                                        0                                        ,
                                          trampCall(___gensym__ca91fccd5e2306e077fe7a803815453f419fa80d_92690)
                                    ]
                                                 ))
                            )
                          end
                    end
                    begin #execFunc
                        def self._rec_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rec', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                        @global_lisp_binding['_rec'] = self.method( :_rec_METHOD )
                      @_rec = 
                      trampCall(
                            Proc.new { |_proc,_set,_n| 
                                if ( 
                                    _not(
                                          trampCall( self._positive_QUMARK_METHOD(  'positive?',
                                              trampCall(@_positive_QUMARK)                                            ,
                                          [
                                                trampCall(_n)
                                          ]
                                                       ))
                                    )
                                 ) then
                                      trampCall( callProcedure(  '_proc',  'proc',
                                          trampCall(_proc)                                        ,
                                      [
                                          Cell.new()
                                      ]
                                                   ))
                                else
                                    begin #makeLetrec
                                      ___lambda = lambda { |_loop| 
                                          _loop                                           = 
                                            Proc.new { |_p,_seen| 
                                                if ( 
                                                    _null_QUMARK(
                                                        trampCall(_p)
                                                    )
                                                 ) then
                                                    true
                                                else
                                                    if ( 
                                                        trampCall( self._member_METHOD(  'member',
                                                            trampCall(@_member)                                                          ,
                                                        [
                                                                _car(
                                                                    trampCall(_p)
                                                                )                                                            ,
                                                              trampCall(_seen)                                                            ,
                                                              trampCall(_eq)
                                                        ]
                                                                     ))
                                                     ) then
                                                            trampCall( callProcedure(  '_loop',  'loop',
                                                                trampCall(_loop)                                                              ,
                                                            [
                                                                    _cdr(
                                                                        trampCall(_p)
                                                                    )                                                                ,
                                                                  trampCall(_seen)
                                                            ]
                                                                         ))
                                                    else
                                                        if ( 
                                                        true
                                                         ) then
                                                            begin  #makeBegin
                                                                  trampCall( self._rec_METHOD(  'rec',
                                                                      trampCall(@_rec)                                                                    ,
                                                                  [
                                                                        Proc.new { |_sub_MIMARKcomb| 
                                                                              trampCall( callProcedure(  '_proc',  'proc',
                                                                                  trampCall(_proc)                                                                                ,
                                                                              [
                                                                                      _cons(
                                                                                            _car(
                                                                                                trampCall(_p)
                                                                                            )                                                                                        ,
                                                                                          trampCall(_sub_MIMARKcomb)
                                                                                      )
                                                                              ]
                                                                                           ))
                                                                        }                                                                      ,
                                                                          trampCall( self._lset_MIMARKdifference_METHOD(  'lset-difference',
                                                                              trampCall(@_lset_MIMARKdifference)                                                                            ,
                                                                          [
                                                                                trampCall(_eq)                                                                              ,
                                                                                  _cdr(
                                                                                      trampCall(_p)
                                                                                  )                                                                              ,
                                                                                trampCall(_seen)
                                                                          ]
                                                                                       ))                                                                      ,
                                                                          ( 
                                                                            trampCall(_n)                                                                          -
                                                                          1
                                                                           ) 
                                                                  ]
                                                                               ))
                                                                  trampCall( callProcedure(  '_loop',  'loop',
                                                                      trampCall(_loop)                                                                    ,
                                                                  [
                                                                          _cdr(
                                                                              trampCall(_p)
                                                                          )                                                                      ,
                                                                          _cons(
                                                                                _car(
                                                                                    trampCall(_p)
                                                                                )                                                                            ,
                                                                              trampCall(_seen)
                                                                          )
                                                                  ]
                                                                               ))
                                                            end
                                                        else
                                                            Cell.new()
                                                        end
                                                    end
                                                end
                                            }
                                            trampCall( callProcedure(  '_loop',  'loop',
                                                trampCall(_loop)                                              ,
                                            [
                                                  trampCall(_set)                                                ,
                                                Cell.new()
                                            ]
                                                         ))
                                      } ; ___lambda.call(
                                      nil
                                                 )
                                    end
                                end
                            }
                      )
                    end
                      delayCall( '_rec',  'rec',
                          trampCall(@_rec)                        ,
                      [
                            trampCall(_proc)                          ,
                            trampCall(_set)                          ,
                            trampCall(_n)
                      ]
                                   )
                } ; ___lambda.call(
                      trampCall(@_eqv_QUMARK)
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._power_MIMARKset_MIMARKbinary_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_power_MIMARKset_MIMARKbinary', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_power_MIMARKset_MIMARKbinary'] = self.method( :_power_MIMARKset_MIMARKbinary_METHOD )
    @_power_MIMARKset_MIMARKbinary = 
    trampCall(
          Proc.new { |_set| 
              if ( 
                  _null_QUMARK(
                      trampCall(_set)
                  )
               ) then
                    delayCall( '_list',  'list',
                        trampCall(@_list)                      ,
                    [
                        Cell.new()
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_x,_rest| 
                          delayCall( '_append',  'append',
                              trampCall(@_append)                            ,
                          [
                                trampCall(_rest)                              ,
                                  trampCall( self._map_METHOD(  'map',
                                      trampCall(@_map)                                    ,
                                  [
                                        Proc.new { |_s| 
                                              _cons(
                                                  trampCall(_x)                                                ,
                                                  trampCall(_s)
                                              )
                                        }                                      ,
                                        trampCall(_rest)
                                  ]
                                               ))
                          ]
                                       )
                    } ; ___lambda.call(
                            _car(
                                trampCall(_set)
                            )                        ,
                            trampCall( self._power_MIMARKset_MIMARKbinary_METHOD(  'power-set-binary',
                                trampCall(@_power_MIMARKset_MIMARKbinary)                              ,
                            [
                                    _cdr(
                                        trampCall(_set)
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
      def self._power_MIMARKset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_power_MIMARKset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_power_MIMARKset'] = self.method( :_power_MIMARKset_METHOD )
    @_power_MIMARKset = 
    trampCall(
          Proc.new { |_set| 
              begin #makeLet
                ___lambda = lambda { |_size| 
                    begin #makeLetrec
                      ___lambda = lambda { |_loop| 
                          _loop                           = 
                            Proc.new { |_i| 
                                if ( 
                                    ( 
                                      trampCall(_i)                                    >
                                      trampCall(_size)
                                     ) 
                                 ) then
                                  Cell.new()
                                else
                                      delayCall( '_append_EXMARK',  'append!',
                                          trampCall(@_append_EXMARK)                                        ,
                                      [
                                              trampCall( self._combinations_METHOD(  'combinations',
                                                  trampCall(@_combinations)                                                ,
                                              [
                                                    trampCall(_set)                                                  ,
                                                    trampCall(_i)
                                              ]
                                                           ))                                          ,
                                              trampCall( callProcedure(  '_loop',  'loop',
                                                  trampCall(_loop)                                                ,
                                              [
                                                      ( 
                                                        trampCall(_i)                                                      +
                                                      1
                                                       ) 
                                              ]
                                                           ))
                                      ]
                                                   )
                                end
                            }
                            delayCall( '_loop',  'loop',
                                trampCall(_loop)                              ,
                            [
                                0
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                        _length(
                            trampCall(_set)
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
      def self._power_MIMARKset_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_power_MIMARKset_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_power_MIMARKset_MIMARKfor_MIMARKeach'] = self.method( :_power_MIMARKset_MIMARKfor_MIMARKeach_METHOD )
    @_power_MIMARKset_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_set| 
              begin #makeLet
                ___lambda = lambda { |_size| 
                    begin #makeLetrec
                      ___lambda = lambda { |_loop| 
                          _loop                           = 
                            Proc.new { |_i| 
                                if ( 
                                    ( 
                                      trampCall(_i)                                    >
                                      trampCall(_size)
                                     ) 
                                 ) then
                                  Cell.new()
                                else
                                    begin  #makeBegin
                                          trampCall( self._combinations_MIMARKfor_MIMARKeach_METHOD(  'combinations-for-each',
                                              trampCall(@_combinations_MIMARKfor_MIMARKeach)                                            ,
                                          [
                                                trampCall(_proc)                                              ,
                                                trampCall(_set)                                              ,
                                                trampCall(_i)
                                          ]
                                                       ))
                                          delayCall( '_loop',  'loop',
                                              trampCall(_loop)                                            ,
                                          [
                                                  ( 
                                                    trampCall(_i)                                                  +
                                                  1
                                                   ) 
                                          ]
                                                       )
                                    end
                                end
                            }
                            delayCall( '_loop',  'loop',
                                trampCall(_loop)                              ,
                            [
                                0
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                        _length(
                            trampCall(_set)
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
      def self._power_MIMARKset_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_power_MIMARKset_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_power_MIMARKset_ASMARK'] = self.method( :_power_MIMARKset_ASMARK_METHOD )
    @_power_MIMARKset_ASMARK = 
    trampCall(
          Proc.new { |_set,*__rest__| _maybe_MIMARKeq = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_size| 
                    begin #makeLetrec
                      ___lambda = lambda { |_loop| 
                          _loop                           = 
                            Proc.new { |_i| 
                                if ( 
                                    ( 
                                      trampCall(_i)                                    >
                                      trampCall(_size)
                                     ) 
                                 ) then
                                  Cell.new()
                                else
                                      delayCall( '_append_EXMARK',  'append!',
                                          trampCall(@_append_EXMARK)                                        ,
                                      [
                                              trampCall( self._apply_METHOD(  'apply',
                                                  trampCall(@_apply)                                                ,
                                              [
                                                    trampCall(@_combinations_ASMARK)                                                  ,
                                                    trampCall(_set)                                                  ,
                                                    trampCall(_i)                                                  ,
                                                    trampCall(_maybe_MIMARKeq)
                                              ]
                                                           ))                                          ,
                                              trampCall( callProcedure(  '_loop',  'loop',
                                                  trampCall(_loop)                                                ,
                                              [
                                                      ( 
                                                        trampCall(_i)                                                      +
                                                      1
                                                       ) 
                                              ]
                                                           ))
                                      ]
                                                   )
                                end
                            }
                            delayCall( '_loop',  'loop',
                                trampCall(_loop)                              ,
                            [
                                0
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                        _length(
                            trampCall(_set)
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
      def self._power_MIMARKset_ASMARK_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_power_MIMARKset_ASMARK_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_power_MIMARKset_ASMARK_MIMARKfor_MIMARKeach'] = self.method( :_power_MIMARKset_ASMARK_MIMARKfor_MIMARKeach_METHOD )
    @_power_MIMARKset_ASMARK_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_set,*__rest__| _maybe_MIMARKeq = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_size| 
                    begin #makeLetrec
                      ___lambda = lambda { |_loop| 
                          _loop                           = 
                            Proc.new { |_i| 
                                if ( 
                                    ( 
                                      trampCall(_i)                                    >
                                      trampCall(_size)
                                     ) 
                                 ) then
                                  Cell.new()
                                else
                                    begin  #makeBegin
                                          trampCall( self._apply_METHOD(  'apply',
                                              trampCall(@_apply)                                            ,
                                          [
                                                trampCall(@_combinations_ASMARK_MIMARKfor_MIMARKeach)                                              ,
                                                trampCall(_proc)                                              ,
                                                trampCall(_set)                                              ,
                                                trampCall(_i)                                              ,
                                                trampCall(_maybe_MIMARKeq)
                                          ]
                                                       ))
                                          delayCall( '_loop',  'loop',
                                              trampCall(_loop)                                            ,
                                          [
                                                  ( 
                                                    trampCall(_i)                                                  +
                                                  1
                                                   ) 
                                          ]
                                                       )
                                    end
                                end
                            }
                            delayCall( '_loop',  'loop',
                                trampCall(_loop)                              ,
                            [
                                0
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                        _length(
                            trampCall(_set)
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
      def self._cartesian_MIMARKproduct_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cartesian_MIMARKproduct', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cartesian_MIMARKproduct'] = self.method( :_cartesian_MIMARKproduct_METHOD )
    @_cartesian_MIMARKproduct = 
    trampCall(
          Proc.new { |_lol| 
              if ( 
                  _null_QUMARK(
                      trampCall(_lol)
                  )
               ) then
                    delayCall( '_list',  'list',
                        trampCall(@_list)                      ,
                    [
                        Cell.new()
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_l,_rest| 
                          delayCall( '_append_MIMARKmap_EXMARK',  'append-map!',
                              trampCall(@_append_MIMARKmap_EXMARK)                            ,
                          [
                                Proc.new { |_x| 
                                      trampCall( self._map_METHOD(  'map',
                                          trampCall(@_map)                                        ,
                                      [
                                            Proc.new { |_sub_MIMARKprod| 
                                                  _cons(
                                                      trampCall(_x)                                                    ,
                                                      trampCall(_sub_MIMARKprod)
                                                  )
                                            }                                          ,
                                            trampCall(_rest)
                                      ]
                                                   ))
                                }                              ,
                                trampCall(_l)
                          ]
                                       )
                    } ; ___lambda.call(
                            _car(
                                trampCall(_lol)
                            )                        ,
                            trampCall( self._cartesian_MIMARKproduct_METHOD(  'cartesian-product',
                                trampCall(@_cartesian_MIMARKproduct)                              ,
                            [
                                    _cdr(
                                        trampCall(_lol)
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
      def self._cartesian_MIMARKproduct_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cartesian_MIMARKproduct_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cartesian_MIMARKproduct_MIMARKfor_MIMARKeach'] = self.method( :_cartesian_MIMARKproduct_MIMARKfor_MIMARKeach_METHOD )
    @_cartesian_MIMARKproduct_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_lol| 
              if ( 
                  _null_QUMARK(
                      trampCall(_lol)
                  )
               ) then
                    delayCall( '_proc',  'proc',
                        trampCall(_proc)                      ,
                    [
                        Cell.new()
                    ]
                                 )
              else
                    delayCall( '_for_MIMARKeach',  'for-each',
                        trampCall(@_for_MIMARKeach)                      ,
                    [
                          Proc.new { |_x| 
                                trampCall( self._cartesian_MIMARKproduct_MIMARKfor_MIMARKeach_METHOD(  'cartesian-product-for-each',
                                    trampCall(@_cartesian_MIMARKproduct_MIMARKfor_MIMARKeach)                                  ,
                                [
                                      Proc.new { |_sub_MIMARKprod| 
                                            trampCall( callProcedure(  '_proc',  'proc',
                                                trampCall(_proc)                                              ,
                                            [
                                                    _cons(
                                                        trampCall(_x)                                                      ,
                                                        trampCall(_sub_MIMARKprod)
                                                    )
                                            ]
                                                         ))
                                      }                                    ,
                                        _cdr(
                                            trampCall(_lol)
                                        )
                                ]
                                             ))
                          }                        ,
                            _car(
                                trampCall(_lol)
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
      def self._cartesian_MIMARKproduct_MIMARKright_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cartesian_MIMARKproduct_MIMARKright', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cartesian_MIMARKproduct_MIMARKright'] = self.method( :_cartesian_MIMARKproduct_MIMARKright_METHOD )
    @_cartesian_MIMARKproduct_MIMARKright = 
    trampCall(
          Proc.new { |_lol| 
              if ( 
                  _null_QUMARK(
                      trampCall(_lol)
                  )
               ) then
                    delayCall( '_list',  'list',
                        trampCall(@_list)                      ,
                    [
                        Cell.new()
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_l,_rest| 
                          delayCall( '_append_MIMARKmap_EXMARK',  'append-map!',
                              trampCall(@_append_MIMARKmap_EXMARK)                            ,
                          [
                                Proc.new { |_sub_MIMARKprod| 
                                      trampCall( self._map_METHOD(  'map',
                                          trampCall(@_map)                                        ,
                                      [
                                            Proc.new { |_x| 
                                                  _cons(
                                                      trampCall(_x)                                                    ,
                                                      trampCall(_sub_MIMARKprod)
                                                  )
                                            }                                          ,
                                            trampCall(_l)
                                      ]
                                                   ))
                                }                              ,
                                trampCall(_rest)
                          ]
                                       )
                    } ; ___lambda.call(
                            _car(
                                trampCall(_lol)
                            )                        ,
                            trampCall( self._cartesian_MIMARKproduct_METHOD(  'cartesian-product',
                                trampCall(@_cartesian_MIMARKproduct)                              ,
                            [
                                    _cdr(
                                        trampCall(_lol)
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
      def self._cartesian_MIMARKproduct_MIMARKright_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cartesian_MIMARKproduct_MIMARKright_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cartesian_MIMARKproduct_MIMARKright_MIMARKfor_MIMARKeach'] = self.method( :_cartesian_MIMARKproduct_MIMARKright_MIMARKfor_MIMARKeach_METHOD )
    @_cartesian_MIMARKproduct_MIMARKright_MIMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_lol| 
              if ( 
                  _null_QUMARK(
                      trampCall(_lol)
                  )
               ) then
                    delayCall( '_proc',  'proc',
                        trampCall(_proc)                      ,
                    [
                        Cell.new()
                    ]
                                 )
              else
                    delayCall( '_cartesian_MIMARKproduct_MIMARKright_MIMARKfor_MIMARKeach',  'cartesian-product-right-for-each',
                        trampCall(@_cartesian_MIMARKproduct_MIMARKright_MIMARKfor_MIMARKeach)                      ,
                    [
                          Proc.new { |_sub_MIMARKprod| 
                                trampCall( self._for_MIMARKeach_METHOD(  'for-each',
                                    trampCall(@_for_MIMARKeach)                                  ,
                                [
                                      Proc.new { |_x| 
                                            trampCall( callProcedure(  '_proc',  'proc',
                                                trampCall(_proc)                                              ,
                                            [
                                                    _cons(
                                                        trampCall(_x)                                                      ,
                                                        trampCall(_sub_MIMARKprod)
                                                    )
                                            ]
                                                         ))
                                      }                                    ,
                                        _car(
                                            trampCall(_lol)
                                        )
                                ]
                                             ))
                          }                        ,
                            _cdr(
                                trampCall(_lol)
                            )
                    ]
                                 )
              end
          }
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------