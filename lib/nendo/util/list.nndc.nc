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
  begin #execFunc
      def self._split_MIMARKat_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_split_MIMARKat_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_split_MIMARKat_ASMARK'] = self.method( :_split_MIMARKat_ASMARK_METHOD )
    @_split_MIMARKat_ASMARK = 
    trampCall(
          Proc.new { |_lis,_k,*__rest__| ___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70249 = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_fill_QUMARK,_filler| 
                    if ( 
                        ( 
                        0                        <
                            _length(
                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70249)
                            )
                         ) 
                     ) then
                          begin #execFunc
                            
                            _fill_QUMARK = 
                            trampCall(
                                    trampCall( self._nth_METHOD(  'nth',
                                        trampCall(@_nth)                                      ,
                                    [
                                        0                                        ,
                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70249)
                                    ]
                                                 ))
                            )
                          end
                    end
                    if ( 
                        ( 
                        1                        <
                            _length(
                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70249)
                            )
                         ) 
                     ) then
                          begin #execFunc
                            
                            _filler = 
                            trampCall(
                                    trampCall( self._nth_METHOD(  'nth',
                                        trampCall(@_nth)                                      ,
                                    [
                                        1                                        ,
                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70249)
                                    ]
                                                 ))
                            )
                          end
                    end
                    if ( 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70250| 
                            if ( 
                              trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70250)
                             ) then
                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70250)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70251| 
                                      if ( 
                                        trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70251)
                                       ) then
                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70251)
                                      else
                                        false
                                      end
                                  } ; ___lambda.call(
                                          trampCall( self._negative_QUMARK_METHOD(  'negative?',
                                              trampCall(@_negative_QUMARK)                                            ,
                                          [
                                                trampCall(_k)
                                          ]
                                                       ))
                                             )
                                end
                            end
                        } ; ___lambda.call(
                                _not(
                                      _integer_QUMARK(
                                          trampCall(_k)
                                      )
                                )
                                   )
                      end
                     ) then
                          begin raise RuntimeError, 
                            "index must be non-negative integer" ' ' + 
                            _write_MIMARKto_MIMARKstring(
                              trampCall(_k)
                            )
                          rescue => __e 
                            __e.set_backtrace( ["./lib/nendo/util/list.nnd:28"] + __e.backtrace )
                            raise __e
                          end 
                    end
                    begin #makeLetrec
                      ___lambda = lambda { |_loop| 
                          _loop                           = 
                            Proc.new { |_i,_lis,_r| 
                                if ( 
                                    __EQMARK(
                                        trampCall(_i)                                      ,
                                        trampCall(_k)
                                    )
                                 ) then
                                        delayCall( '_values',  'values',
                                            trampCall(@_values)                                          ,
                                        [
                                                trampCall( self._reverse_EXMARK_METHOD(  'reverse!',
                                                    trampCall(@_reverse_EXMARK)                                                  ,
                                                [
                                                      trampCall(_r)
                                                ]
                                                             ))                                            ,
                                              trampCall(_lis)
                                        ]
                                                     )
                                else
                                    if ( 
                                        _null_QUMARK(
                                            trampCall(_lis)
                                        )
                                     ) then
                                            delayCall( '_values',  'values',
                                                trampCall(@_values)                                              ,
                                            [
                                                  if ( 
                                                    trampCall(_fill_QUMARK)
                                                   ) then
                                                        trampCall( self._append_EXMARK_METHOD(  'append!',
                                                            trampCall(@_append_EXMARK)                                                          ,
                                                        [
                                                                trampCall( self._reverse_EXMARK_METHOD(  'reverse!',
                                                                    trampCall(@_reverse_EXMARK)                                                                  ,
                                                                [
                                                                      trampCall(_r)
                                                                ]
                                                                             ))                                                            ,
                                                                trampCall( self._make_MIMARKlist_METHOD(  'make-list',
                                                                    trampCall(@_make_MIMARKlist)                                                                  ,
                                                                [
                                                                        ( 
                                                                          trampCall(_k)                                                                        -
                                                                          trampCall(_i)
                                                                         )                                                                     ,
                                                                      trampCall(_filler)
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))
                                                  else
                                                        trampCall( self._reverse_EXMARK_METHOD(  'reverse!',
                                                            trampCall(@_reverse_EXMARK)                                                          ,
                                                        [
                                                              trampCall(_r)
                                                        ]
                                                                     ))
                                                  end                                                ,
                                                  trampCall(_lis)
                                            ]
                                                         )
                                    else
                                        if ( 
                                        true
                                         ) then
                                                delayCall( '_loop',  'loop',
                                                    trampCall(_loop)                                                  ,
                                                [
                                                        ( 
                                                          trampCall(_i)                                                        +
                                                        1
                                                         )                                                     ,
                                                        _cdr(
                                                            trampCall(_lis)
                                                        )                                                    ,
                                                        _cons(
                                                              _car(
                                                                  trampCall(_lis)
                                                              )                                                          ,
                                                            trampCall(_r)
                                                        )
                                                ]
                                                             )
                                        else
                                            Cell.new()
                                        end
                                    end
                                end
                            }
                            delayCall( '_loop',  'loop',
                                trampCall(_loop)                              ,
                            [
                                0                                ,
                                  trampCall(_lis)                                ,
                                Cell.new()
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                    false                    ,
                    false
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._take_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_take_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_take_ASMARK'] = self.method( :_take_ASMARK_METHOD )
    @_take_ASMARK = 
    trampCall(
          Proc.new { |_lis,_k,*__rest__| _args = __rest__[0] ;  
                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                    trampCall(@_call_MIMARKwith_MIMARKvalues)                  ,
                [
                      Proc.new { || 
                            trampCall( self._apply_METHOD(  'apply',
                                trampCall(@_apply)                              ,
                            [
                                  trampCall(@_split_MIMARKat_ASMARK)                                ,
                                  trampCall(_lis)                                ,
                                  trampCall(_k)                                ,
                                  trampCall(_args)
                            ]
                                         ))
                      }                    ,
                      Proc.new { |_h,_t| 
                          trampCall(_h)
                      }
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._drop_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_drop_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_drop_ASMARK'] = self.method( :_drop_ASMARK_METHOD )
    @_drop_ASMARK = 
    trampCall(
          Proc.new { |_lis,_k| 
              if ( 
                begin #makeLet
                  ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70255| 
                      if ( 
                        trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70255)
                       ) then
                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70255)
                      else
                          begin #makeLet
                            ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70256| 
                                if ( 
                                  trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70256)
                                 ) then
                                    trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70256)
                                else
                                  false
                                end
                            } ; ___lambda.call(
                                    trampCall( self._negative_QUMARK_METHOD(  'negative?',
                                        trampCall(@_negative_QUMARK)                                      ,
                                    [
                                          trampCall(_k)
                                    ]
                                                 ))
                                       )
                          end
                      end
                  } ; ___lambda.call(
                          _not(
                                _integer_QUMARK(
                                    trampCall(_k)
                                )
                          )
                             )
                end
               ) then
                    begin raise RuntimeError, 
                      "index must be non-negative integer" ' ' + 
                      _write_MIMARKto_MIMARKstring(
                        trampCall(_k)
                      )
                    rescue => __e 
                      __e.set_backtrace( ["./lib/nendo/util/list.nnd:45"] + __e.backtrace )
                      raise __e
                    end 
              end
              begin #makeLetrec
                ___lambda = lambda { |_loop| 
                    _loop                     = 
                      Proc.new { |_i,_lis| 
                          if ( 
                              __EQMARK(
                                  trampCall(_i)                                ,
                                  trampCall(_k)
                              )
                           ) then
                                trampCall(_lis)
                          else
                              if ( 
                                  _null_QUMARK(
                                      trampCall(_lis)
                                  )
                               ) then
                                  Cell.new()
                              else
                                  if ( 
                                  true
                                   ) then
                                          delayCall( '_loop',  'loop',
                                              trampCall(_loop)                                            ,
                                          [
                                                  ( 
                                                    trampCall(_i)                                                  +
                                                  1
                                                   )                                               ,
                                                  _cdr(
                                                      trampCall(_lis)
                                                  )
                                          ]
                                                       )
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      }
                      delayCall( '_loop',  'loop',
                          trampCall(_loop)                        ,
                      [
                          0                          ,
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
      def self._take_MIMARKright_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_take_MIMARKright_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_take_MIMARKright_ASMARK'] = self.method( :_take_MIMARKright_ASMARK_METHOD )
    @_take_MIMARKright_ASMARK = 
    trampCall(
          Proc.new { |_lis,_k,*__rest__| ___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70260 = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_fill_QUMARK,_filler| 
                    if ( 
                        ( 
                        0                        <
                            _length(
                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70260)
                            )
                         ) 
                     ) then
                          begin #execFunc
                            
                            _fill_QUMARK = 
                            trampCall(
                                    trampCall( self._nth_METHOD(  'nth',
                                        trampCall(@_nth)                                      ,
                                    [
                                        0                                        ,
                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70260)
                                    ]
                                                 ))
                            )
                          end
                    end
                    if ( 
                        ( 
                        1                        <
                            _length(
                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70260)
                            )
                         ) 
                     ) then
                          begin #execFunc
                            
                            _filler = 
                            trampCall(
                                    trampCall( self._nth_METHOD(  'nth',
                                        trampCall(@_nth)                                      ,
                                    [
                                        1                                        ,
                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70260)
                                    ]
                                                 ))
                            )
                          end
                    end
                    if ( 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70261| 
                            if ( 
                              trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70261)
                             ) then
                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70261)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70262| 
                                      if ( 
                                        trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70262)
                                       ) then
                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70262)
                                      else
                                        false
                                      end
                                  } ; ___lambda.call(
                                          trampCall( self._negative_QUMARK_METHOD(  'negative?',
                                              trampCall(@_negative_QUMARK)                                            ,
                                          [
                                                trampCall(_k)
                                          ]
                                                       ))
                                             )
                                end
                            end
                        } ; ___lambda.call(
                                _not(
                                      _integer_QUMARK(
                                          trampCall(_k)
                                      )
                                )
                                   )
                      end
                     ) then
                          begin raise RuntimeError, 
                            "index must be non-negative integer" ' ' + 
                            _write_MIMARKto_MIMARKstring(
                              trampCall(_k)
                            )
                          rescue => __e 
                            __e.set_backtrace( ["./lib/nendo/util/list.nnd:54"] + __e.backtrace )
                            raise __e
                          end 
                    end
                    begin #makeLet
                      ___lambda = lambda { |_len| 
                          if ( 
                              ( 
                                trampCall(_k)                              <=
                                trampCall(_len)
                               ) 
                           ) then
                                  delayCall( '_drop',  'drop',
                                      trampCall(@_drop)                                    ,
                                  [
                                        trampCall(_lis)                                      ,
                                          ( 
                                            trampCall(_len)                                          -
                                            trampCall(_k)
                                           ) 
                                  ]
                                               )
                          else
                              if ( 
                                trampCall(_fill_QUMARK)
                               ) then
                                      delayCall( '_append_EXMARK',  'append!',
                                          trampCall(@_append_EXMARK)                                        ,
                                      [
                                              trampCall( self._make_MIMARKlist_METHOD(  'make-list',
                                                  trampCall(@_make_MIMARKlist)                                                ,
                                              [
                                                      ( 
                                                        trampCall(_k)                                                      -
                                                        trampCall(_len)
                                                       )                                                   ,
                                                    trampCall(_filler)
                                              ]
                                                           ))                                          ,
                                            trampCall(_lis)
                                      ]
                                                   )
                              else
                                  if ( 
                                  true
                                   ) then
                                        trampCall(_lis)
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      } ; ___lambda.call(
                              _length(
                                  trampCall(_lis)
                              )
                                 )
                    end
                } ; ___lambda.call(
                    false                    ,
                    false
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._drop_MIMARKright_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_drop_MIMARKright_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_drop_MIMARKright_ASMARK'] = self.method( :_drop_MIMARKright_ASMARK_METHOD )
    @_drop_MIMARKright_ASMARK = 
    trampCall(
          Proc.new { |_lis,_k| 
              if ( 
                begin #makeLet
                  ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70266| 
                      if ( 
                        trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70266)
                       ) then
                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70266)
                      else
                          begin #makeLet
                            ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70267| 
                                if ( 
                                  trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70267)
                                 ) then
                                    trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70267)
                                else
                                  false
                                end
                            } ; ___lambda.call(
                                    trampCall( self._negative_QUMARK_METHOD(  'negative?',
                                        trampCall(@_negative_QUMARK)                                      ,
                                    [
                                          trampCall(_k)
                                    ]
                                                 ))
                                       )
                          end
                      end
                  } ; ___lambda.call(
                          _not(
                                _integer_QUMARK(
                                    trampCall(_k)
                                )
                          )
                             )
                end
               ) then
                    begin raise RuntimeError, 
                      "index must be non-negative integer" ' ' + 
                      _write_MIMARKto_MIMARKstring(
                        trampCall(_k)
                      )
                    rescue => __e 
                      __e.set_backtrace( ["./lib/nendo/util/list.nnd:62"] + __e.backtrace )
                      raise __e
                    end 
              end
              begin #makeLet
                ___lambda = lambda { |_len| 
                    if ( 
                        ( 
                          trampCall(_k)                        <=
                          trampCall(_len)
                         ) 
                     ) then
                          delayCall( '_take',  'take',
                              trampCall(@_take)                            ,
                          [
                                trampCall(_lis)                              ,
                                  ( 
                                    trampCall(_len)                                  -
                                    trampCall(_k)
                                   ) 
                          ]
                                       )
                    else
                      Cell.new()
                    end
                } ; ___lambda.call(
                        _length(
                            trampCall(_lis)
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
      def self._slices_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_slices', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_slices'] = self.method( :_slices_METHOD )
    @_slices = 
    trampCall(
          Proc.new { |_lis,_k,*__rest__| _args = __rest__[0] ;  
              if ( 
                  _not(
                      if ( 
                          _not(
                                _eq_QUMARK(
                                  false                                  ,
                                      _integer_QUMARK(
                                          trampCall(_k)
                                      )
                                )
                          )
                       ) then
                            trampCall( self._positive_QUMARK_METHOD(  'positive?',
                                trampCall(@_positive_QUMARK)                              ,
                            [
                                  trampCall(_k)
                            ]
                                         ))
                      else
                        false
                      end
                  )
               ) then
                    begin raise RuntimeError, 
                      "index must be positive integer" ' ' + 
                      _write_MIMARKto_MIMARKstring(
                        trampCall(_k)
                      )
                    rescue => __e 
                      __e.set_backtrace( ["./lib/nendo/util/list.nnd:72"] + __e.backtrace )
                      raise __e
                    end 
              end
              begin #makeLetrec
                ___lambda = lambda { |_loop| 
                    _loop                     = 
                      Proc.new { |_lis,_r| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lis)
                              )
                           ) then
                                delayCall( '_reverse_EXMARK',  'reverse!',
                                    trampCall(@_reverse_EXMARK)                                  ,
                                [
                                      trampCall(_r)
                                ]
                                             )
                          else
                                delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                    trampCall(@_call_MIMARKwith_MIMARKvalues)                                  ,
                                [
                                      Proc.new { || 
                                            trampCall( self._apply_METHOD(  'apply',
                                                trampCall(@_apply)                                              ,
                                            [
                                                  trampCall(@_split_MIMARKat_ASMARK)                                                ,
                                                  trampCall(_lis)                                                ,
                                                  trampCall(_k)                                                ,
                                                  trampCall(_args)
                                            ]
                                                         ))
                                      }                                    ,
                                      Proc.new { |_h,_t| 
                                            trampCall( callProcedure(  '_loop',  'loop',
                                                trampCall(_loop)                                              ,
                                            [
                                                  trampCall(_t)                                                ,
                                                    _cons(
                                                        trampCall(_h)                                                      ,
                                                        trampCall(_r)
                                                    )
                                            ]
                                                         ))
                                      }
                                ]
                                             )
                          end
                      }
                      delayCall( '_loop',  'loop',
                          trampCall(_loop)                        ,
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
      def self._intersperse_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_intersperse', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_intersperse'] = self.method( :_intersperse_METHOD )
    @_intersperse = 
    trampCall(
          Proc.new { |_item,_lis| 
              begin #makeLetrec
                ___lambda = lambda { |_rec| 
                    _rec                     = 
                      Proc.new { |_l,_r| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_l)
                              )
                           ) then
                                delayCall( '_reverse_EXMARK',  'reverse!',
                                    trampCall(@_reverse_EXMARK)                                  ,
                                [
                                      trampCall(_r)
                                ]
                                             )
                          else
                                delayCall( '_rec',  'rec',
                                    trampCall(_rec)                                  ,
                                [
                                        _cdr(
                                            trampCall(_l)
                                        )                                    ,
                                        trampCall( self._list_ASMARK_METHOD(  'list*',
                                            trampCall(@_list_ASMARK)                                          ,
                                        [
                                                _car(
                                                    trampCall(_l)
                                                )                                            ,
                                              trampCall(_item)                                            ,
                                              trampCall(_r)
                                        ]
                                                     ))
                                ]
                                             )
                          end
                      }
                    if ( 
                        _null_QUMARK(
                            trampCall(_lis)
                        )
                     ) then
                      Cell.new()
                    else
                          delayCall( '_rec',  'rec',
                              trampCall(_rec)                            ,
                          [
                                  _cdr(
                                      trampCall(_lis)
                                  )                              ,
                                  trampCall( self._list_METHOD(  'list',
                                      trampCall(@_list)                                    ,
                                  [
                                          _car(
                                              trampCall(_lis)
                                          )
                                  ]
                                               ))
                          ]
                                       )
                    end
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
      def self._cond_MIMARKlist_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cond_MIMARKlist', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cond_MIMARKlist'] = self.method( :_cond_MIMARKlist_METHOD )
    @_cond_MIMARKlist = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70268,__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269,__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70314| 
                            if ( 
                              trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70314)
                             ) then
                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70314)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70315| 
                                      if ( 
                                        trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70315)
                                       ) then
                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70315)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70316| 
                                                if ( 
                                                  trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70316)
                                                 ) then
                                                    trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70316)
                                                else
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70317| 
                                                          if ( 
                                                            trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70317)
                                                           ) then
                                                              trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70317)
                                                          else
                                                              begin #makeLet
                                                                ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70318| 
                                                                    if ( 
                                                                      trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70318)
                                                                     ) then
                                                                        trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70318)
                                                                    else
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70319| 
                                                                              if ( 
                                                                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70319)
                                                                               ) then
                                                                                  trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70319)
                                                                              else
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70320| 
                                                                                        if ( 
                                                                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70320)
                                                                                         ) then
                                                                                            trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70320)
                                                                                        else
                                                                                          false
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                          begin raise RuntimeError, 
                                                                                            "no expansion for" ' ' + 
                                                                                            _write_MIMARKto_MIMARKstring(
                                                                                                trampCall( self._strip_MIMARKsyntactic_MIMARKclosures_METHOD(  'strip-syntactic-closures',
                                                                                                    trampCall(@_strip_MIMARKsyntactic_MIMARKclosures)                                                                                                  ,
                                                                                                [
                                                                                                    __expr__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70268
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
                                                                                  ___lambda = lambda { |__v__34__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70309| 
                                                                                      if ( 
                                                                                          _not(
                                                                                                _eq_QUMARK(
                                                                                                  false                                                                                                  ,
                                                                                                      _pair_QUMARK(
                                                                                                        __v__34__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70309
                                                                                                      )
                                                                                                )
                                                                                          )
                                                                                       ) then
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |__v__35__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70310| 
                                                                                                if ( 
                                                                                                    _not(
                                                                                                          _eq_QUMARK(
                                                                                                            false                                                                                                            ,
                                                                                                                _pair_QUMARK(
                                                                                                                  __v__35__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70310
                                                                                                                )
                                                                                                          )
                                                                                                    )
                                                                                                 ) then
                                                                                                    begin #makeLet
                                                                                                      ___lambda = lambda { |__v__36__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70311| 
                                                                                                          begin #makeLet
                                                                                                            ___lambda = lambda { |_test| 
                                                                                                                begin #makeLet
                                                                                                                  ___lambda = lambda { |__v__37__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70312| 
                                                                                                                      begin #makeLet
                                                                                                                        ___lambda = lambda { |_expr| 
                                                                                                                            begin #makeLet
                                                                                                                              ___lambda = lambda { |__v__38__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70313| 
                                                                                                                                  begin #makeLet
                                                                                                                                    ___lambda = lambda { |_rest| 
                                                                                                                                          _cons(
                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                    trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                  ,
                                                                                                                                                [
                                                                                                                                                    :"let*"
                                                                                                                                                ]
                                                                                                                                                             ))                                                                                                                                            ,
                                                                                                                                                _cons(
                                                                                                                                                      _cons(
                                                                                                                                                            _cons(
                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                      trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                    ,
                                                                                                                                                                  [
                                                                                                                                                                      :"tmp"
                                                                                                                                                                  ]
                                                                                                                                                                               ))                                                                                                                                                              ,
                                                                                                                                                                  _cons(
                                                                                                                                                                      trampCall(_test)                                                                                                                                                                    ,
                                                                                                                                                                    Cell.new()
                                                                                                                                                                  )
                                                                                                                                                            )                                                                                                                                                        ,
                                                                                                                                                            _cons(
                                                                                                                                                                  _cons(
                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                            trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                          ,
                                                                                                                                                                        [
                                                                                                                                                                            :"r"
                                                                                                                                                                        ]
                                                                                                                                                                                     ))                                                                                                                                                                    ,
                                                                                                                                                                        _cons(
                                                                                                                                                                              _cons(
                                                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                        trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                      ,
                                                                                                                                                                                    [
                                                                                                                                                                                        :"cond-list"
                                                                                                                                                                                    ]
                                                                                                                                                                                                 ))                                                                                                                                                                                ,
                                                                                                                                                                                  trampCall(_rest)
                                                                                                                                                                              )                                                                                                                                                                          ,
                                                                                                                                                                          Cell.new()
                                                                                                                                                                        )
                                                                                                                                                                  )                                                                                                                                                              ,
                                                                                                                                                              Cell.new()
                                                                                                                                                            )
                                                                                                                                                      )                                                                                                                                                  ,
                                                                                                                                                      _cons(
                                                                                                                                                            _cons(
                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                      trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                    ,
                                                                                                                                                                  [
                                                                                                                                                                      :"if"
                                                                                                                                                                  ]
                                                                                                                                                                               ))                                                                                                                                                              ,
                                                                                                                                                                  _cons(
                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                            trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                          ,
                                                                                                                                                                        [
                                                                                                                                                                            :"tmp"
                                                                                                                                                                        ]
                                                                                                                                                                                     ))                                                                                                                                                                    ,
                                                                                                                                                                        _cons(
                                                                                                                                                                              _cons(
                                                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                        trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                      ,
                                                                                                                                                                                    [
                                                                                                                                                                                        :"cons"
                                                                                                                                                                                    ]
                                                                                                                                                                                                 ))                                                                                                                                                                                ,
                                                                                                                                                                                    _cons(
                                                                                                                                                                                          _cons(
                                                                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                    trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                  ,
                                                                                                                                                                                                [
                                                                                                                                                                                                    :"begin"
                                                                                                                                                                                                ]
                                                                                                                                                                                                             ))                                                                                                                                                                                            ,
                                                                                                                                                                                              trampCall(_expr)
                                                                                                                                                                                          )                                                                                                                                                                                      ,
                                                                                                                                                                                          _cons(
                                                                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                    trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                  ,
                                                                                                                                                                                                [
                                                                                                                                                                                                    :"r"
                                                                                                                                                                                                ]
                                                                                                                                                                                                             ))                                                                                                                                                                                            ,
                                                                                                                                                                                            Cell.new()
                                                                                                                                                                                          )
                                                                                                                                                                                    )
                                                                                                                                                                              )                                                                                                                                                                          ,
                                                                                                                                                                              _cons(
                                                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                        trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                      ,
                                                                                                                                                                                    [
                                                                                                                                                                                        :"r"
                                                                                                                                                                                    ]
                                                                                                                                                                                                 ))                                                                                                                                                                                ,
                                                                                                                                                                                Cell.new()
                                                                                                                                                                              )
                                                                                                                                                                        )
                                                                                                                                                                  )
                                                                                                                                                            )                                                                                                                                                        ,
                                                                                                                                                        Cell.new()
                                                                                                                                                      )
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    } ; ___lambda.call(
                                                                                                                                        __v__38__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70313
                                                                                                                                               )
                                                                                                                                  end
                                                                                                                              } ; ___lambda.call(
                                                                                                                                      _cdr(
                                                                                                                                        __v__34__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70309
                                                                                                                                      )
                                                                                                                                         )
                                                                                                                            end
                                                                                                                        } ; ___lambda.call(
                                                                                                                            __v__37__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70312
                                                                                                                                   )
                                                                                                                      end
                                                                                                                  } ; ___lambda.call(
                                                                                                                          _cdr(
                                                                                                                            __v__35__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70310
                                                                                                                          )
                                                                                                                             )
                                                                                                                end
                                                                                                            } ; ___lambda.call(
                                                                                                                __v__36__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70311
                                                                                                                       )
                                                                                                          end
                                                                                                      } ; ___lambda.call(
                                                                                                              _car(
                                                                                                                __v__35__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70310
                                                                                                              )
                                                                                                                 )
                                                                                                    end
                                                                                                else
                                                                                                  false
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                    _car(
                                                                                                      __v__34__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70309
                                                                                                    )
                                                                                                       )
                                                                                          end
                                                                                      else
                                                                                        false
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          _cdr(
                                                                                            __expr__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70268
                                                                                          )
                                                                                             )
                                                                                end
                                                                                     )
                                                                        end
                                                                    end
                                                                } ; ___lambda.call(
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |__v__27__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70302| 
                                                                            if ( 
                                                                                _not(
                                                                                      _eq_QUMARK(
                                                                                        false                                                                                        ,
                                                                                            _pair_QUMARK(
                                                                                              __v__27__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70302
                                                                                            )
                                                                                      )
                                                                                )
                                                                             ) then
                                                                                begin #makeLet
                                                                                  ___lambda = lambda { |__v__28__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70303| 
                                                                                      if ( 
                                                                                          _not(
                                                                                                _eq_QUMARK(
                                                                                                  false                                                                                                  ,
                                                                                                      _pair_QUMARK(
                                                                                                        __v__28__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70303
                                                                                                      )
                                                                                                )
                                                                                          )
                                                                                       ) then
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |__v__29__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70304| 
                                                                                                begin #makeLet
                                                                                                  ___lambda = lambda { |_test| 
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |__v__30__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70305| 
                                                                                                            if ( 
                                                                                                                _not(
                                                                                                                      _eq_QUMARK(
                                                                                                                        false                                                                                                                        ,
                                                                                                                            _pair_QUMARK(
                                                                                                                              __v__30__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70305
                                                                                                                            )
                                                                                                                      )
                                                                                                                )
                                                                                                             ) then
                                                                                                                begin #makeLet
                                                                                                                  ___lambda = lambda { |__v__31__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70306| 
                                                                                                                      if ( 
                                                                                                                          _not(
                                                                                                                                _eq_QUMARK(
                                                                                                                                  false                                                                                                                                  ,
                                                                                                                                      trampCall( callProcedure(  '__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270',  '_compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270',
                                                                                                                                          trampCall(__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270)                                                                                                                                        ,
                                                                                                                                      [
                                                                                                                                          __v__31__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70306                                                                                                                                          ,
                                                                                                                                          :"@"
                                                                                                                                      ]
                                                                                                                                                   ))
                                                                                                                                )
                                                                                                                          )
                                                                                                                       ) then
                                                                                                                          begin #makeLet
                                                                                                                            ___lambda = lambda { |__v__32__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70307| 
                                                                                                                                begin #makeLet
                                                                                                                                  ___lambda = lambda { |_expr| 
                                                                                                                                      begin #makeLet
                                                                                                                                        ___lambda = lambda { |__v__33__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70308| 
                                                                                                                                            begin #makeLet
                                                                                                                                              ___lambda = lambda { |_rest| 
                                                                                                                                                    _cons(
                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                            ,
                                                                                                                                                          [
                                                                                                                                                              :"let*"
                                                                                                                                                          ]
                                                                                                                                                                       ))                                                                                                                                                      ,
                                                                                                                                                          _cons(
                                                                                                                                                                _cons(
                                                                                                                                                                      _cons(
                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                              ,
                                                                                                                                                                            [
                                                                                                                                                                                :"tmp"
                                                                                                                                                                            ]
                                                                                                                                                                                         ))                                                                                                                                                                        ,
                                                                                                                                                                            _cons(
                                                                                                                                                                                trampCall(_test)                                                                                                                                                                              ,
                                                                                                                                                                              Cell.new()
                                                                                                                                                                            )
                                                                                                                                                                      )                                                                                                                                                                  ,
                                                                                                                                                                      _cons(
                                                                                                                                                                            _cons(
                                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                      trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                    ,
                                                                                                                                                                                  [
                                                                                                                                                                                      :"r"
                                                                                                                                                                                  ]
                                                                                                                                                                                               ))                                                                                                                                                                              ,
                                                                                                                                                                                  _cons(
                                                                                                                                                                                        _cons(
                                                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                ,
                                                                                                                                                                                              [
                                                                                                                                                                                                  :"cond-list"
                                                                                                                                                                                              ]
                                                                                                                                                                                                           ))                                                                                                                                                                                          ,
                                                                                                                                                                                            trampCall(_rest)
                                                                                                                                                                                        )                                                                                                                                                                                    ,
                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                  )
                                                                                                                                                                            )                                                                                                                                                                        ,
                                                                                                                                                                        Cell.new()
                                                                                                                                                                      )
                                                                                                                                                                )                                                                                                                                                            ,
                                                                                                                                                                _cons(
                                                                                                                                                                      _cons(
                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                              ,
                                                                                                                                                                            [
                                                                                                                                                                                :"if"
                                                                                                                                                                            ]
                                                                                                                                                                                         ))                                                                                                                                                                        ,
                                                                                                                                                                            _cons(
                                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                      trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                    ,
                                                                                                                                                                                  [
                                                                                                                                                                                      :"tmp"
                                                                                                                                                                                  ]
                                                                                                                                                                                               ))                                                                                                                                                                              ,
                                                                                                                                                                                  _cons(
                                                                                                                                                                                        _cons(
                                                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                ,
                                                                                                                                                                                              [
                                                                                                                                                                                                  :"append"
                                                                                                                                                                                              ]
                                                                                                                                                                                                           ))                                                                                                                                                                                          ,
                                                                                                                                                                                              _cons(
                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                            ,
                                                                                                                                                                                                          [
                                                                                                                                                                                                              :"begin"
                                                                                                                                                                                                          ]
                                                                                                                                                                                                                       ))                                                                                                                                                                                                      ,
                                                                                                                                                                                                        trampCall(_expr)
                                                                                                                                                                                                    )                                                                                                                                                                                                ,
                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                            ,
                                                                                                                                                                                                          [
                                                                                                                                                                                                              :"r"
                                                                                                                                                                                                          ]
                                                                                                                                                                                                                       ))                                                                                                                                                                                                      ,
                                                                                                                                                                                                      Cell.new()
                                                                                                                                                                                                    )
                                                                                                                                                                                              )
                                                                                                                                                                                        )                                                                                                                                                                                    ,
                                                                                                                                                                                        _cons(
                                                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                ,
                                                                                                                                                                                              [
                                                                                                                                                                                                  :"r"
                                                                                                                                                                                              ]
                                                                                                                                                                                                           ))                                                                                                                                                                                          ,
                                                                                                                                                                                          Cell.new()
                                                                                                                                                                                        )
                                                                                                                                                                                  )
                                                                                                                                                                            )
                                                                                                                                                                      )                                                                                                                                                                  ,
                                                                                                                                                                  Cell.new()
                                                                                                                                                                )
                                                                                                                                                          )
                                                                                                                                                    )
                                                                                                                                              } ; ___lambda.call(
                                                                                                                                                  __v__33__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70308
                                                                                                                                                         )
                                                                                                                                            end
                                                                                                                                        } ; ___lambda.call(
                                                                                                                                                _cdr(
                                                                                                                                                  __v__27__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70302
                                                                                                                                                )
                                                                                                                                                   )
                                                                                                                                      end
                                                                                                                                  } ; ___lambda.call(
                                                                                                                                      __v__32__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70307
                                                                                                                                             )
                                                                                                                                end
                                                                                                                            } ; ___lambda.call(
                                                                                                                                    _cdr(
                                                                                                                                      __v__30__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70305
                                                                                                                                    )
                                                                                                                                       )
                                                                                                                          end
                                                                                                                      else
                                                                                                                        false
                                                                                                                      end
                                                                                                                  } ; ___lambda.call(
                                                                                                                          _car(
                                                                                                                            __v__30__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70305
                                                                                                                          )
                                                                                                                             )
                                                                                                                end
                                                                                                            else
                                                                                                              false
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                                _cdr(
                                                                                                                  __v__28__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70303
                                                                                                                )
                                                                                                                   )
                                                                                                      end
                                                                                                  } ; ___lambda.call(
                                                                                                      __v__29__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70304
                                                                                                             )
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                    _car(
                                                                                                      __v__28__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70303
                                                                                                    )
                                                                                                       )
                                                                                          end
                                                                                      else
                                                                                        false
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          _car(
                                                                                            __v__27__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70302
                                                                                          )
                                                                                             )
                                                                                end
                                                                            else
                                                                              false
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                _cdr(
                                                                                  __expr__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70268
                                                                                )
                                                                                   )
                                                                      end
                                                                           )
                                                              end
                                                          end
                                                      } ; ___lambda.call(
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__16__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70291| 
                                                                  if ( 
                                                                      _not(
                                                                            _eq_QUMARK(
                                                                              false                                                                              ,
                                                                                  _pair_QUMARK(
                                                                                    __v__16__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70291
                                                                                  )
                                                                            )
                                                                      )
                                                                   ) then
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |__v__17__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70292| 
                                                                            if ( 
                                                                                _not(
                                                                                      _eq_QUMARK(
                                                                                        false                                                                                        ,
                                                                                            _pair_QUMARK(
                                                                                              __v__17__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70292
                                                                                            )
                                                                                      )
                                                                                )
                                                                             ) then
                                                                                begin #makeLet
                                                                                  ___lambda = lambda { |__v__18__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70293| 
                                                                                      begin #makeLet
                                                                                        ___lambda = lambda { |_test| 
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |__v__19__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70294| 
                                                                                                  if ( 
                                                                                                      _not(
                                                                                                            _eq_QUMARK(
                                                                                                              false                                                                                                              ,
                                                                                                                  _pair_QUMARK(
                                                                                                                    __v__19__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70294
                                                                                                                  )
                                                                                                            )
                                                                                                      )
                                                                                                   ) then
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |__v__20__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70295| 
                                                                                                            if ( 
                                                                                                                _not(
                                                                                                                      _eq_QUMARK(
                                                                                                                        false                                                                                                                        ,
                                                                                                                            trampCall( callProcedure(  '__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270',  '_compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270',
                                                                                                                                trampCall(__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270)                                                                                                                              ,
                                                                                                                            [
                                                                                                                                __v__20__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70295                                                                                                                                ,
                                                                                                                                :"feedto"
                                                                                                                            ]
                                                                                                                                         ))
                                                                                                                      )
                                                                                                                )
                                                                                                             ) then
                                                                                                                begin #makeLet
                                                                                                                  ___lambda = lambda { |__v__21__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70296| 
                                                                                                                      if ( 
                                                                                                                          _not(
                                                                                                                                _eq_QUMARK(
                                                                                                                                  false                                                                                                                                  ,
                                                                                                                                      _pair_QUMARK(
                                                                                                                                        __v__21__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70296
                                                                                                                                      )
                                                                                                                                )
                                                                                                                          )
                                                                                                                       ) then
                                                                                                                          begin #makeLet
                                                                                                                            ___lambda = lambda { |__v__22__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70297| 
                                                                                                                                if ( 
                                                                                                                                    _not(
                                                                                                                                          _eq_QUMARK(
                                                                                                                                            false                                                                                                                                            ,
                                                                                                                                                trampCall( callProcedure(  '__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270',  '_compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270',
                                                                                                                                                    trampCall(__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270)                                                                                                                                                  ,
                                                                                                                                                [
                                                                                                                                                    __v__22__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70297                                                                                                                                                    ,
                                                                                                                                                    :"@"
                                                                                                                                                ]
                                                                                                                                                             ))
                                                                                                                                          )
                                                                                                                                    )
                                                                                                                                 ) then
                                                                                                                                    begin #makeLet
                                                                                                                                      ___lambda = lambda { |__v__23__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70298| 
                                                                                                                                          if ( 
                                                                                                                                              _not(
                                                                                                                                                    _eq_QUMARK(
                                                                                                                                                      false                                                                                                                                                      ,
                                                                                                                                                          _pair_QUMARK(
                                                                                                                                                            __v__23__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70298
                                                                                                                                                          )
                                                                                                                                                    )
                                                                                                                                              )
                                                                                                                                           ) then
                                                                                                                                              begin #makeLet
                                                                                                                                                ___lambda = lambda { |__v__24__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70299| 
                                                                                                                                                    begin #makeLet
                                                                                                                                                      ___lambda = lambda { |_proc| 
                                                                                                                                                          begin #makeLet
                                                                                                                                                            ___lambda = lambda { |__v__25__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70300| 
                                                                                                                                                                if ( 
                                                                                                                                                                    _not(
                                                                                                                                                                          _eq_QUMARK(
                                                                                                                                                                            false                                                                                                                                                                            ,
                                                                                                                                                                                _null_QUMARK(
                                                                                                                                                                                  __v__25__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70300
                                                                                                                                                                                )
                                                                                                                                                                          )
                                                                                                                                                                    )
                                                                                                                                                                 ) then
                                                                                                                                                                    begin #makeLet
                                                                                                                                                                      ___lambda = lambda { |__v__26__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70301| 
                                                                                                                                                                          begin #makeLet
                                                                                                                                                                            ___lambda = lambda { |_rest| 
                                                                                                                                                                                  _cons(
                                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                            trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                          ,
                                                                                                                                                                                        [
                                                                                                                                                                                            :"let*"
                                                                                                                                                                                        ]
                                                                                                                                                                                                     ))                                                                                                                                                                                    ,
                                                                                                                                                                                        _cons(
                                                                                                                                                                                              _cons(
                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                            ,
                                                                                                                                                                                                          [
                                                                                                                                                                                                              :"tmp"
                                                                                                                                                                                                          ]
                                                                                                                                                                                                                       ))                                                                                                                                                                                                      ,
                                                                                                                                                                                                          _cons(
                                                                                                                                                                                                              trampCall(_test)                                                                                                                                                                                                            ,
                                                                                                                                                                                                            Cell.new()
                                                                                                                                                                                                          )
                                                                                                                                                                                                    )                                                                                                                                                                                                ,
                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                          _cons(
                                                                                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                                    trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                [
                                                                                                                                                                                                                    :"r"
                                                                                                                                                                                                                ]
                                                                                                                                                                                                                             ))                                                                                                                                                                                                            ,
                                                                                                                                                                                                                _cons(
                                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                                                trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                                              ,
                                                                                                                                                                                                                            [
                                                                                                                                                                                                                                :"cond-list"
                                                                                                                                                                                                                            ]
                                                                                                                                                                                                                                         ))                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                          trampCall(_rest)
                                                                                                                                                                                                                      )                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                  Cell.new()
                                                                                                                                                                                                                )
                                                                                                                                                                                                          )                                                                                                                                                                                                      ,
                                                                                                                                                                                                      Cell.new()
                                                                                                                                                                                                    )
                                                                                                                                                                                              )                                                                                                                                                                                          ,
                                                                                                                                                                                              _cons(
                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                            ,
                                                                                                                                                                                                          [
                                                                                                                                                                                                              :"if"
                                                                                                                                                                                                          ]
                                                                                                                                                                                                                       ))                                                                                                                                                                                                      ,
                                                                                                                                                                                                          _cons(
                                                                                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                                    trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                [
                                                                                                                                                                                                                    :"tmp"
                                                                                                                                                                                                                ]
                                                                                                                                                                                                                             ))                                                                                                                                                                                                            ,
                                                                                                                                                                                                                _cons(
                                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                                                trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                                              ,
                                                                                                                                                                                                                            [
                                                                                                                                                                                                                                :"append"
                                                                                                                                                                                                                            ]
                                                                                                                                                                                                                                         ))                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                            _cons(
                                                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                                                      trampCall(_proc)                                                                                                                                                                                                                                    ,
                                                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                                                                ,
                                                                                                                                                                                                                                              [
                                                                                                                                                                                                                                                  :"tmp"
                                                                                                                                                                                                                                              ]
                                                                                                                                                                                                                                                           ))                                                                                                                                                                                                                                          ,
                                                                                                                                                                                                                                          Cell.new()
                                                                                                                                                                                                                                        )
                                                                                                                                                                                                                                  )                                                                                                                                                                                                                              ,
                                                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                                                            trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                                                          ,
                                                                                                                                                                                                                                        [
                                                                                                                                                                                                                                            :"r"
                                                                                                                                                                                                                                        ]
                                                                                                                                                                                                                                                     ))                                                                                                                                                                                                                                    ,
                                                                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                                                                  )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                      )                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                                                trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                                              ,
                                                                                                                                                                                                                            [
                                                                                                                                                                                                                                :"r"
                                                                                                                                                                                                                            ]
                                                                                                                                                                                                                                         ))                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                        Cell.new()
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                )
                                                                                                                                                                                                          )
                                                                                                                                                                                                    )                                                                                                                                                                                                ,
                                                                                                                                                                                                Cell.new()
                                                                                                                                                                                              )
                                                                                                                                                                                        )
                                                                                                                                                                                  )
                                                                                                                                                                            } ; ___lambda.call(
                                                                                                                                                                                __v__26__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70301
                                                                                                                                                                                       )
                                                                                                                                                                          end
                                                                                                                                                                      } ; ___lambda.call(
                                                                                                                                                                              _cdr(
                                                                                                                                                                                __v__16__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70291
                                                                                                                                                                              )
                                                                                                                                                                                 )
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                  false
                                                                                                                                                                end
                                                                                                                                                            } ; ___lambda.call(
                                                                                                                                                                    _cdr(
                                                                                                                                                                      __v__23__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70298
                                                                                                                                                                    )
                                                                                                                                                                       )
                                                                                                                                                          end
                                                                                                                                                      } ; ___lambda.call(
                                                                                                                                                          __v__24__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70299
                                                                                                                                                                 )
                                                                                                                                                    end
                                                                                                                                                } ; ___lambda.call(
                                                                                                                                                        _car(
                                                                                                                                                          __v__23__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70298
                                                                                                                                                        )
                                                                                                                                                           )
                                                                                                                                              end
                                                                                                                                          else
                                                                                                                                            false
                                                                                                                                          end
                                                                                                                                      } ; ___lambda.call(
                                                                                                                                              _cdr(
                                                                                                                                                __v__21__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70296
                                                                                                                                              )
                                                                                                                                                 )
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                  false
                                                                                                                                end
                                                                                                                            } ; ___lambda.call(
                                                                                                                                    _car(
                                                                                                                                      __v__21__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70296
                                                                                                                                    )
                                                                                                                                       )
                                                                                                                          end
                                                                                                                      else
                                                                                                                        false
                                                                                                                      end
                                                                                                                  } ; ___lambda.call(
                                                                                                                          _cdr(
                                                                                                                            __v__19__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70294
                                                                                                                          )
                                                                                                                             )
                                                                                                                end
                                                                                                            else
                                                                                                              false
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                                _car(
                                                                                                                  __v__19__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70294
                                                                                                                )
                                                                                                                   )
                                                                                                      end
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      _cdr(
                                                                                                        __v__17__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70292
                                                                                                      )
                                                                                                         )
                                                                                            end
                                                                                        } ; ___lambda.call(
                                                                                            __v__18__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70293
                                                                                                   )
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          _car(
                                                                                            __v__17__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70292
                                                                                          )
                                                                                             )
                                                                                end
                                                                            else
                                                                              false
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                _car(
                                                                                  __v__16__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70291
                                                                                )
                                                                                   )
                                                                      end
                                                                  else
                                                                    false
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _cdr(
                                                                        __expr__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70268
                                                                      )
                                                                         )
                                                            end
                                                                 )
                                                    end
                                                end
                                            } ; ___lambda.call(
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__7__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70282| 
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                        _pair_QUMARK(
                                                                          __v__7__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70282
                                                                        )
                                                                  )
                                                            )
                                                         ) then
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__8__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70283| 
                                                                  if ( 
                                                                      _not(
                                                                            _eq_QUMARK(
                                                                              false                                                                              ,
                                                                                  _pair_QUMARK(
                                                                                    __v__8__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70283
                                                                                  )
                                                                            )
                                                                      )
                                                                   ) then
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |__v__9__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70284| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_test| 
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__v__10__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70285| 
                                                                                        if ( 
                                                                                            _not(
                                                                                                  _eq_QUMARK(
                                                                                                    false                                                                                                    ,
                                                                                                        _pair_QUMARK(
                                                                                                          __v__10__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70285
                                                                                                        )
                                                                                                  )
                                                                                            )
                                                                                         ) then
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |__v__11__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70286| 
                                                                                                  if ( 
                                                                                                      _not(
                                                                                                            _eq_QUMARK(
                                                                                                              false                                                                                                              ,
                                                                                                                  trampCall( callProcedure(  '__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270',  '_compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270',
                                                                                                                      trampCall(__compare__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70270)                                                                                                                    ,
                                                                                                                  [
                                                                                                                      __v__11__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70286                                                                                                                      ,
                                                                                                                      :"feedto"
                                                                                                                  ]
                                                                                                                               ))
                                                                                                            )
                                                                                                      )
                                                                                                   ) then
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |__v__12__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70287| 
                                                                                                            if ( 
                                                                                                                _not(
                                                                                                                      _eq_QUMARK(
                                                                                                                        false                                                                                                                        ,
                                                                                                                            _pair_QUMARK(
                                                                                                                              __v__12__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70287
                                                                                                                            )
                                                                                                                      )
                                                                                                                )
                                                                                                             ) then
                                                                                                                begin #makeLet
                                                                                                                  ___lambda = lambda { |__v__13__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70288| 
                                                                                                                      begin #makeLet
                                                                                                                        ___lambda = lambda { |_proc| 
                                                                                                                            begin #makeLet
                                                                                                                              ___lambda = lambda { |__v__14__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70289| 
                                                                                                                                  if ( 
                                                                                                                                      _not(
                                                                                                                                            _eq_QUMARK(
                                                                                                                                              false                                                                                                                                              ,
                                                                                                                                                  _null_QUMARK(
                                                                                                                                                    __v__14__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70289
                                                                                                                                                  )
                                                                                                                                            )
                                                                                                                                      )
                                                                                                                                   ) then
                                                                                                                                      begin #makeLet
                                                                                                                                        ___lambda = lambda { |__v__15__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70290| 
                                                                                                                                            begin #makeLet
                                                                                                                                              ___lambda = lambda { |_rest| 
                                                                                                                                                    _cons(
                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                            ,
                                                                                                                                                          [
                                                                                                                                                              :"let*"
                                                                                                                                                          ]
                                                                                                                                                                       ))                                                                                                                                                      ,
                                                                                                                                                          _cons(
                                                                                                                                                                _cons(
                                                                                                                                                                      _cons(
                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                              ,
                                                                                                                                                                            [
                                                                                                                                                                                :"tmp"
                                                                                                                                                                            ]
                                                                                                                                                                                         ))                                                                                                                                                                        ,
                                                                                                                                                                            _cons(
                                                                                                                                                                                trampCall(_test)                                                                                                                                                                              ,
                                                                                                                                                                              Cell.new()
                                                                                                                                                                            )
                                                                                                                                                                      )                                                                                                                                                                  ,
                                                                                                                                                                      _cons(
                                                                                                                                                                            _cons(
                                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                      trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                    ,
                                                                                                                                                                                  [
                                                                                                                                                                                      :"r"
                                                                                                                                                                                  ]
                                                                                                                                                                                               ))                                                                                                                                                                              ,
                                                                                                                                                                                  _cons(
                                                                                                                                                                                        _cons(
                                                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                ,
                                                                                                                                                                                              [
                                                                                                                                                                                                  :"cond-list"
                                                                                                                                                                                              ]
                                                                                                                                                                                                           ))                                                                                                                                                                                          ,
                                                                                                                                                                                            trampCall(_rest)
                                                                                                                                                                                        )                                                                                                                                                                                    ,
                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                  )
                                                                                                                                                                            )                                                                                                                                                                        ,
                                                                                                                                                                        Cell.new()
                                                                                                                                                                      )
                                                                                                                                                                )                                                                                                                                                            ,
                                                                                                                                                                _cons(
                                                                                                                                                                      _cons(
                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                              ,
                                                                                                                                                                            [
                                                                                                                                                                                :"if"
                                                                                                                                                                            ]
                                                                                                                                                                                         ))                                                                                                                                                                        ,
                                                                                                                                                                            _cons(
                                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                      trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                    ,
                                                                                                                                                                                  [
                                                                                                                                                                                      :"tmp"
                                                                                                                                                                                  ]
                                                                                                                                                                                               ))                                                                                                                                                                              ,
                                                                                                                                                                                  _cons(
                                                                                                                                                                                        _cons(
                                                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                ,
                                                                                                                                                                                              [
                                                                                                                                                                                                  :"cons"
                                                                                                                                                                                              ]
                                                                                                                                                                                                           ))                                                                                                                                                                                          ,
                                                                                                                                                                                              _cons(
                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                        trampCall(_proc)                                                                                                                                                                                                      ,
                                                                                                                                                                                                          _cons(
                                                                                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                                    trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                [
                                                                                                                                                                                                                    :"tmp"
                                                                                                                                                                                                                ]
                                                                                                                                                                                                                             ))                                                                                                                                                                                                            ,
                                                                                                                                                                                                            Cell.new()
                                                                                                                                                                                                          )
                                                                                                                                                                                                    )                                                                                                                                                                                                ,
                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                            ,
                                                                                                                                                                                                          [
                                                                                                                                                                                                              :"r"
                                                                                                                                                                                                          ]
                                                                                                                                                                                                                       ))                                                                                                                                                                                                      ,
                                                                                                                                                                                                      Cell.new()
                                                                                                                                                                                                    )
                                                                                                                                                                                              )
                                                                                                                                                                                        )                                                                                                                                                                                    ,
                                                                                                                                                                                        _cons(
                                                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                                                                ,
                                                                                                                                                                                              [
                                                                                                                                                                                                  :"r"
                                                                                                                                                                                              ]
                                                                                                                                                                                                           ))                                                                                                                                                                                          ,
                                                                                                                                                                                          Cell.new()
                                                                                                                                                                                        )
                                                                                                                                                                                  )
                                                                                                                                                                            )
                                                                                                                                                                      )                                                                                                                                                                  ,
                                                                                                                                                                  Cell.new()
                                                                                                                                                                )
                                                                                                                                                          )
                                                                                                                                                    )
                                                                                                                                              } ; ___lambda.call(
                                                                                                                                                  __v__15__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70290
                                                                                                                                                         )
                                                                                                                                            end
                                                                                                                                        } ; ___lambda.call(
                                                                                                                                                _cdr(
                                                                                                                                                  __v__7__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70282
                                                                                                                                                )
                                                                                                                                                   )
                                                                                                                                      end
                                                                                                                                  else
                                                                                                                                    false
                                                                                                                                  end
                                                                                                                              } ; ___lambda.call(
                                                                                                                                      _cdr(
                                                                                                                                        __v__12__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70287
                                                                                                                                      )
                                                                                                                                         )
                                                                                                                            end
                                                                                                                        } ; ___lambda.call(
                                                                                                                            __v__13__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70288
                                                                                                                                   )
                                                                                                                      end
                                                                                                                  } ; ___lambda.call(
                                                                                                                          _car(
                                                                                                                            __v__12__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70287
                                                                                                                          )
                                                                                                                             )
                                                                                                                end
                                                                                                            else
                                                                                                              false
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                                _cdr(
                                                                                                                  __v__10__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70285
                                                                                                                )
                                                                                                                   )
                                                                                                      end
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      _car(
                                                                                                        __v__10__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70285
                                                                                                      )
                                                                                                         )
                                                                                            end
                                                                                        else
                                                                                          false
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _cdr(
                                                                                              __v__8__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70283
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              } ; ___lambda.call(
                                                                                  __v__9__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70284
                                                                                         )
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                _car(
                                                                                  __v__8__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70283
                                                                                )
                                                                                   )
                                                                      end
                                                                  else
                                                                    false
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _car(
                                                                        __v__7__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70282
                                                                      )
                                                                         )
                                                            end
                                                        else
                                                          false
                                                        end
                                                    } ; ___lambda.call(
                                                            _cdr(
                                                              __expr__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70268
                                                            )
                                                               )
                                                  end
                                                       )
                                          end
                                      end
                                  } ; ___lambda.call(
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70277| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__2__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70277
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__3__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70278| 
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                        _pair_QUMARK(
                                                                          __v__3__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70278
                                                                        )
                                                                  )
                                                            )
                                                         ) then
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__4__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70279| 
                                                                  begin #makeLet
                                                                    ___lambda = lambda { |_test| 
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |__v__5__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70280| 
                                                                              if ( 
                                                                                  _not(
                                                                                        _eq_QUMARK(
                                                                                          false                                                                                          ,
                                                                                              _null_QUMARK(
                                                                                                __v__5__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70280
                                                                                              )
                                                                                        )
                                                                                  )
                                                                               ) then
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__v__6__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70281| 
                                                                                        begin #makeLet
                                                                                          ___lambda = lambda { |_rest| 
                                                                                                _cons(
                                                                                                      trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                          trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                        ,
                                                                                                      [
                                                                                                          :"let*"
                                                                                                      ]
                                                                                                                   ))                                                                                                  ,
                                                                                                      _cons(
                                                                                                            _cons(
                                                                                                                  _cons(
                                                                                                                        trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                            trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                          ,
                                                                                                                        [
                                                                                                                            :"tmp"
                                                                                                                        ]
                                                                                                                                     ))                                                                                                                    ,
                                                                                                                        _cons(
                                                                                                                            trampCall(_test)                                                                                                                          ,
                                                                                                                          Cell.new()
                                                                                                                        )
                                                                                                                  )                                                                                                              ,
                                                                                                                  _cons(
                                                                                                                        _cons(
                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                ,
                                                                                                                              [
                                                                                                                                  :"r"
                                                                                                                              ]
                                                                                                                                           ))                                                                                                                          ,
                                                                                                                              _cons(
                                                                                                                                    _cons(
                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                            ,
                                                                                                                                          [
                                                                                                                                              :"cond-list"
                                                                                                                                          ]
                                                                                                                                                       ))                                                                                                                                      ,
                                                                                                                                        trampCall(_rest)
                                                                                                                                    )                                                                                                                                ,
                                                                                                                                Cell.new()
                                                                                                                              )
                                                                                                                        )                                                                                                                    ,
                                                                                                                    Cell.new()
                                                                                                                  )
                                                                                                            )                                                                                                        ,
                                                                                                            _cons(
                                                                                                                  _cons(
                                                                                                                        trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                            trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                          ,
                                                                                                                        [
                                                                                                                            :"if"
                                                                                                                        ]
                                                                                                                                     ))                                                                                                                    ,
                                                                                                                        _cons(
                                                                                                                              trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                  trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                ,
                                                                                                                              [
                                                                                                                                  :"tmp"
                                                                                                                              ]
                                                                                                                                           ))                                                                                                                          ,
                                                                                                                              _cons(
                                                                                                                                    _cons(
                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                            ,
                                                                                                                                          [
                                                                                                                                              :"cons"
                                                                                                                                          ]
                                                                                                                                                       ))                                                                                                                                      ,
                                                                                                                                          _cons(
                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                    trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                  ,
                                                                                                                                                [
                                                                                                                                                    :"tmp"
                                                                                                                                                ]
                                                                                                                                                             ))                                                                                                                                            ,
                                                                                                                                                _cons(
                                                                                                                                                      trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                                          trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                                        ,
                                                                                                                                                      [
                                                                                                                                                          :"r"
                                                                                                                                                      ]
                                                                                                                                                                   ))                                                                                                                                                  ,
                                                                                                                                                  Cell.new()
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    )                                                                                                                                ,
                                                                                                                                    _cons(
                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                                                                                                              trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                                                                                                            ,
                                                                                                                                          [
                                                                                                                                              :"r"
                                                                                                                                          ]
                                                                                                                                                       ))                                                                                                                                      ,
                                                                                                                                      Cell.new()
                                                                                                                                    )
                                                                                                                              )
                                                                                                                        )
                                                                                                                  )                                                                                                              ,
                                                                                                              Cell.new()
                                                                                                            )
                                                                                                      )
                                                                                                )
                                                                                          } ; ___lambda.call(
                                                                                              __v__6__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70281
                                                                                                     )
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _cdr(
                                                                                              __v__2__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70277
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              else
                                                                                false
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  _cdr(
                                                                                    __v__3__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70278
                                                                                  )
                                                                                     )
                                                                        end
                                                                    } ; ___lambda.call(
                                                                        __v__4__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70279
                                                                               )
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _car(
                                                                        __v__3__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70278
                                                                      )
                                                                         )
                                                            end
                                                        else
                                                          false
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__2__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70277
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                    __expr__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70268
                                                  )
                                                     )
                                        end
                                             )
                                end
                            end
                        } ; ___lambda.call(
                              begin #makeLet
                                ___lambda = lambda { |__v__1__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70276| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _null_QUMARK(
                                                      __v__1__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70276
                                                    )
                                              )
                                        )
                                     ) then
                                          _cons(
                                                trampCall( callProcedure(  '__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',  '_rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269',
                                                    trampCall(__rename__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70269)                                                  ,
                                                [
                                                    :"quote"
                                                ]
                                                             ))                                            ,
                                                _cons(
                                                  Cell.new()                                                  ,
                                                  Cell.new()
                                                )
                                          )
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70268
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
#--------------------

trampCall( 
  begin #execFunc
      def self._alist_MIMARK_GTMARKhash_MIMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_alist_MIMARK_GTMARKhash_MIMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_alist_MIMARK_GTMARKhash_MIMARKtable'] = self.method( :_alist_MIMARK_GTMARKhash_MIMARKtable_METHOD )
    @_alist_MIMARK_GTMARKhash_MIMARKtable = 
    trampCall(
          Proc.new { |_a,*__rest__| _opt_MIMARKeq = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_tb| 
                      trampCall( self._for_MIMARKeach_METHOD(  'for-each',
                          trampCall(@_for_MIMARKeach)                        ,
                      [
                            Proc.new { |_x| 
                                  trampCall( self._hash_MIMARKtable_MIMARKput_EXMARK_METHOD(  'hash-table-put!',
                                      trampCall(@_hash_MIMARKtable_MIMARKput_EXMARK)                                    ,
                                  [
                                        trampCall(_tb)                                      ,
                                          _car(
                                              trampCall(_x)
                                          )                                      ,
                                          _cdr(
                                              trampCall(_x)
                                          )
                                  ]
                                               ))
                            }                          ,
                            trampCall(_a)
                      ]
                                   ))
                    trampCall(_tb)
                } ; ___lambda.call(
                        trampCall( self._apply_METHOD(  'apply',
                            trampCall(@_apply)                          ,
                        [
                              trampCall(@_make_MIMARKhash_MIMARKtable)                            ,
                              trampCall(_opt_MIMARKeq)
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
      def self._hash_MIMARKtable_MIMARK_GTMARKalist_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARK_GTMARKalist', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARK_GTMARKalist'] = self.method( :_hash_MIMARKtable_MIMARK_GTMARKalist_METHOD )
    @_hash_MIMARKtable_MIMARK_GTMARKalist = 
    trampCall(
          Proc.new { |_h| 
                delayCall( '_hash_MIMARKtable_MIMARKmap',  'hash-table-map',
                    trampCall(@_hash_MIMARKtable_MIMARKmap)                  ,
                [
                      trampCall(_h)                    ,
                      trampCall(@_cons)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._rassoc_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rassoc', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rassoc'] = self.method( :_rassoc_METHOD )
    @_rassoc = 
    trampCall(
          Proc.new { |_key,_alist,*__rest__| ___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70321 = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_eq| 
                    if ( 
                        ( 
                        0                        <
                            _length(
                                trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70321)
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
                                          trampCall(___gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70321)
                                    ]
                                                 ))
                            )
                          end
                    end
                      delayCall( '_find',  'find',
                          trampCall(@_find)                        ,
                      [
                            Proc.new { |_elt| 
                                if ( 
                                    _not(
                                          _eq_QUMARK(
                                            false                                            ,
                                                _pair_QUMARK(
                                                    trampCall(_elt)
                                                )
                                          )
                                    )
                                 ) then
                                      trampCall( callProcedure(  '_eq',  'eq',
                                          trampCall(_eq)                                        ,
                                      [
                                              _cdr(
                                                  trampCall(_elt)
                                              )                                          ,
                                            trampCall(_key)
                                      ]
                                                   ))
                                else
                                  false
                                end
                            }                          ,
                            trampCall(_alist)
                      ]
                                   )
                } ; ___lambda.call(
                      trampCall(@_equal_QUMARK)
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._rassq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rassq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rassq'] = self.method( :_rassq_METHOD )
    @_rassq = 
    trampCall(
          begin #makeLet
            ___lambda = lambda { |__tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70324| 
                Proc.new { |__tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70322,__tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70323| 
                      delayCall( '_rassoc',  'rassoc',
                          trampCall(@_rassoc)                        ,
                      [
                          __tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70322                          ,
                          __tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70323                          ,
                          __tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70324
                      ]
                                   )
                }
            } ; ___lambda.call(
                  trampCall(@_eq_QUMARK)
                       )
          end
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._rassv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rassv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rassv'] = self.method( :_rassv_METHOD )
    @_rassv = 
    trampCall(
          begin #makeLet
            ___lambda = lambda { |__tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70327| 
                Proc.new { |__tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70325,__tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70326| 
                      delayCall( '_rassoc',  'rassoc',
                          trampCall(@_rassoc)                        ,
                      [
                          __tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70325                          ,
                          __tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70326                          ,
                          __tmp__gensym__8ac8b7a738109fae1a89eee6598100ae9139175d_70327
                      ]
                                   )
                }
            } ; ___lambda.call(
                  trampCall(@_eqv_QUMARK)
                       )
          end
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------