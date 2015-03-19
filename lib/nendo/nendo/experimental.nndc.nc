#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
  begin #execFunc
      def self.__ASMARKruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__ASMARKruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_ASMARK'] = self.method( :__ASMARKruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_ASMARK_METHOD )
    @__ASMARKruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_ASMARK = 
    trampCall(
          begin #makeLet
            ___lambda = lambda { |_arr| 
                trampCall(_arr).respond_to?(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30171| 
                            trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30171).to_sym(
                              )
                        } ; ___lambda.call(
                            "lazy"
                                   )
                      end
                  )
            } ; ___lambda.call(
                  trampCall(Array).new(
                    )
                       )
          end
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK'] = self.method( :_ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK_METHOD )
    @_ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK = 
    trampCall(
          Proc.new { || 
              trampCall(@__ASMARKruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_ASMARK)
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._ruby_MIMARKlazy_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ruby_MIMARKlazy', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_ruby_MIMARKlazy'] = self.method( :_ruby_MIMARKlazy_METHOD )
    @_ruby_MIMARKlazy = 
    trampCall(
          Proc.new { |_enumerable| 
              if ( 
                if ( 
                    _not(
                          _eq_QUMARK(
                            false                            ,
                                trampCall( self._ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK_METHOD(  'ruby-lazy-enabled-platform?',
                                    trampCall(@_ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK)                                  ,
                                [
                                ]
                                             ))
                          )
                    )
                 ) then
                    trampCall(_enumerable).is_a?(
                          trampCall(Enumerable)
                      )
                else
                  false
                end
               ) then
                  trampCall(_enumerable).lazy(
                    )
              else
                  trampCall(_enumerable)
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._ruby_MIMARKlazy_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ruby_MIMARKlazy_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_ruby_MIMARKlazy_QUMARK'] = self.method( :_ruby_MIMARKlazy_QUMARK_METHOD )
    @_ruby_MIMARKlazy_QUMARK = 
    trampCall(
          Proc.new { |_v| 
              if ( 
                  trampCall( self._ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK_METHOD(  'ruby-lazy-enabled-platform?',
                      trampCall(@_ruby_MIMARKlazy_MIMARKenabled_MIMARKplatform_QUMARK)                    ,
                  [
                  ]
                               ))
               ) then
                  trampCall(_v).is_a?(
                        trampCall(Enumerator::Lazy)
                    )
              else
                false
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._vector_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector_QUMARK'] = self.method( :_vector_QUMARK_METHOD )
    @_vector_QUMARK = 
    trampCall(
          Proc.new { |_v| 
              begin #makeLet
                ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30173| 
                    if ( 
                      trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30173)
                     ) then
                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30173)
                    else
                        begin #makeLet
                          ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30174| 
                              if ( 
                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30174)
                               ) then
                                  trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30174)
                              else
                                false
                              end
                          } ; ___lambda.call(
                                  trampCall( self._ruby_MIMARKlazy_QUMARK_METHOD(  'ruby-lazy?',
                                      trampCall(@_ruby_MIMARKlazy_QUMARK)                                    ,
                                  [
                                        trampCall(_v)
                                  ]
                                               ))
                                     )
                        end
                    end
                } ; ___lambda.call(
                      trampCall(_v).is_a?(
                            trampCall(Array)
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
      def self._vector_MIMARK_GTMARKlist_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector_MIMARK_GTMARKlist', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector_MIMARK_GTMARKlist'] = self.method( :_vector_MIMARK_GTMARKlist_METHOD )
    @_vector_MIMARK_GTMARKlist = 
    trampCall(
          Proc.new { |_v| 
              begin #makeLet
                ___lambda = lambda { |_v| 
                    trampCall(_v).to_list
                } ; ___lambda.call(
                      if ( 
                          trampCall( self._ruby_MIMARKlazy_QUMARK_METHOD(  'ruby-lazy?',
                              trampCall(@_ruby_MIMARKlazy_QUMARK)                            ,
                          [
                                trampCall(_v)
                          ]
                                       ))
                       ) then
                          trampCall(_v).to_a(
                            )
                      else
                          trampCall(_v)
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
      def self.__PAMARK_PAMARKenumerable_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKenumerable_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKenumerable_QUMARK'] = self.method( :__PAMARK_PAMARKenumerable_QUMARK_METHOD )
    @__PAMARK_PAMARKenumerable_QUMARK = 
    trampCall(
          Proc.new { |_x| 
              if ( 
                  _not(
                        _eq_QUMARK(
                          false                          ,
                            trampCall(_x).is_a?(
                                  trampCall(Enumerable)
                              )
                        )
                  )
               ) then
                    delayCall( '_not',  'not',
                        trampCall(@_not)                      ,
                    [
                          trampCall(_x).is_a?(
                                trampCall(Cell)
                            )
                    ]
                                 )
              else
                false
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARK_PAMARKmap_MIMARKable_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKmap_MIMARKable_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKmap_MIMARKable_QUMARK'] = self.method( :__PAMARK_PAMARKmap_MIMARKable_QUMARK_METHOD )
    @__PAMARK_PAMARKmap_MIMARKable_QUMARK = 
    trampCall(
          Proc.new { |_proc,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  __EQMARK(
                    1                    ,
                        _length(
                            trampCall(_lists)
                        )
                  )
               ) then
                    delayCall( '__PAMARK_PAMARKenumerable_QUMARK',  '%%enumerable?',
                        trampCall(@__PAMARK_PAMARKenumerable_QUMARK)                      ,
                    [
                            _car(
                                trampCall(_lists)
                            )
                    ]
                                 )
              else
                false
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARK_PAMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKmap'] = self.method( :__PAMARK_PAMARKmap_METHOD )
    @__PAMARK_PAMARKmap = 
    trampCall(
          Proc.new { |_proc,_vec| 
              trampCall(_vec).map(
                    &Proc.new { |_x| 
                          trampCall( callProcedure(  '_proc',  'proc',
                              trampCall(_proc)                            ,
                          [
                                trampCall(_x)
                          ]
                                       ))
                    }
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKmap'] = self.method( :__PAMARKmap_METHOD )
    @__PAMARKmap = 
    trampCall(
          Proc.new { |_proc,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_args| 
                    if ( 
                        trampCall( self._apply_METHOD(  'apply',
                            trampCall(@_apply)                          ,
                        [
                              trampCall(@__PAMARK_PAMARKmap_MIMARKable_QUMARK)                            ,
                              trampCall(_args)
                        ]
                                     ))
                     ) then
                          delayCall( '__PAMARK_PAMARKmap',  '%%map',
                              trampCall(@__PAMARK_PAMARKmap)                            ,
                          [
                                trampCall(_proc)                              ,
                                  _car(
                                      trampCall(_lists)
                                  )
                          ]
                                       )
                    else
                          delayCall( '_apply',  'apply',
                              trampCall(@_apply)                            ,
                          [
                                trampCall(@__PAMARKmap_MIMARKoriginal)                              ,
                                trampCall(_args)
                          ]
                                       )
                    end
                } ; ___lambda.call(
                        _cons(
                            trampCall(_proc)                          ,
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
      def self.__PAMARK_PAMARKfor_MIMARKeach_MIMARKable_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKfor_MIMARKeach_MIMARKable_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKfor_MIMARKeach_MIMARKable_QUMARK'] = self.method( :__PAMARK_PAMARKfor_MIMARKeach_MIMARKable_QUMARK_METHOD )
    @__PAMARK_PAMARKfor_MIMARKeach_MIMARKable_QUMARK = 
    trampCall(
          Proc.new { |_proc,*__rest__| _lists = __rest__[0] ;  
              if ( 
                  __EQMARK(
                    1                    ,
                        _length(
                            trampCall(_lists)
                        )
                  )
               ) then
                    delayCall( '__PAMARK_PAMARKenumerable_QUMARK',  '%%enumerable?',
                        trampCall(@__PAMARK_PAMARKenumerable_QUMARK)                      ,
                    [
                            _car(
                                trampCall(_lists)
                            )
                    ]
                                 )
              else
                false
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARK_PAMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKfor_MIMARKeach'] = self.method( :__PAMARK_PAMARKfor_MIMARKeach_METHOD )
    @__PAMARK_PAMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,_vec| 
              trampCall(_vec).each(
                    &Proc.new { |_x| 
                          trampCall( callProcedure(  '_proc',  'proc',
                              trampCall(_proc)                            ,
                          [
                                trampCall(_x)
                          ]
                                       ))
                    }
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKfor_MIMARKeach'] = self.method( :__PAMARKfor_MIMARKeach_METHOD )
    @__PAMARKfor_MIMARKeach = 
    trampCall(
          Proc.new { |_proc,*__rest__| _lists = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_args| 
                    if ( 
                        trampCall( self._apply_METHOD(  'apply',
                            trampCall(@_apply)                          ,
                        [
                              trampCall(@__PAMARK_PAMARKfor_MIMARKeach_MIMARKable_QUMARK)                            ,
                              trampCall(_args)
                        ]
                                     ))
                     ) then
                          delayCall( '__PAMARK_PAMARKfor_MIMARKeach',  '%%for-each',
                              trampCall(@__PAMARK_PAMARKfor_MIMARKeach)                            ,
                          [
                                trampCall(_proc)                              ,
                                  _car(
                                      trampCall(_lists)
                                  )
                          ]
                                       )
                    else
                          delayCall( '_apply',  'apply',
                              trampCall(@_apply)                            ,
                          [
                                trampCall(@__PAMARKfor_MIMARKeach_MIMARKoriginal)                              ,
                                trampCall(_args)
                          ]
                                       )
                    end
                } ; ___lambda.call(
                        _cons(
                            trampCall(_proc)                          ,
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
      def self.__PAMARK_PAMARKfilter_MIMARKable_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKfilter_MIMARKable_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKfilter_MIMARKable_QUMARK'] = self.method( :__PAMARK_PAMARKfilter_MIMARKable_QUMARK_METHOD )
    @__PAMARK_PAMARKfilter_MIMARKable_QUMARK = 
    trampCall(
          Proc.new { |_proc,_lst| 
                delayCall( '__PAMARK_PAMARKenumerable_QUMARK',  '%%enumerable?',
                    trampCall(@__PAMARK_PAMARKenumerable_QUMARK)                  ,
                [
                      trampCall(_lst)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARK_PAMARKfilter_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKfilter', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKfilter'] = self.method( :__PAMARK_PAMARKfilter_METHOD )
    @__PAMARK_PAMARKfilter = 
    trampCall(
          Proc.new { |_proc,_vec| 
              trampCall(_vec).select(
                    &Proc.new { |_x| 
                          trampCall( callProcedure(  '_proc',  'proc',
                              trampCall(_proc)                            ,
                          [
                                trampCall(_x)
                          ]
                                       ))
                    }
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKfilter_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKfilter', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKfilter'] = self.method( :__PAMARKfilter_METHOD )
    @__PAMARKfilter = 
    trampCall(
          Proc.new { |_proc,_lst| 
              if ( 
                  trampCall( self.__PAMARK_PAMARKfilter_MIMARKable_QUMARK_METHOD(  '%%filter-able?',
                      trampCall(@__PAMARK_PAMARKfilter_MIMARKable_QUMARK)                    ,
                  [
                        trampCall(_proc)                      ,
                        trampCall(_lst)
                  ]
                               ))
               ) then
                    delayCall( '__PAMARK_PAMARKfilter',  '%%filter',
                        trampCall(@__PAMARK_PAMARKfilter)                      ,
                    [
                          trampCall(_proc)                        ,
                          trampCall(_lst)
                    ]
                                 )
              else
                    delayCall( '__PAMARKfilter_MIMARKoriginal',  '%filter-original',
                        trampCall(@__PAMARKfilter_MIMARKoriginal)                      ,
                    [
                          trampCall(_proc)                        ,
                          trampCall(_lst)
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
      def self.__PAMARK_PAMARKfold_MIMARKable_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKfold_MIMARKable_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKfold_MIMARKable_QUMARK'] = self.method( :__PAMARK_PAMARKfold_MIMARKable_QUMARK_METHOD )
    @__PAMARK_PAMARKfold_MIMARKable_QUMARK = 
    trampCall(
          Proc.new { |_proc,_knil,_lst| 
                delayCall( '__PAMARK_PAMARKenumerable_QUMARK',  '%%enumerable?',
                    trampCall(@__PAMARK_PAMARKenumerable_QUMARK)                  ,
                [
                      trampCall(_lst)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARK_PAMARKfold_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKfold', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKfold'] = self.method( :__PAMARK_PAMARKfold_METHOD )
    @__PAMARK_PAMARKfold = 
    trampCall(
          Proc.new { |_proc,_knil,_vec| 
              trampCall(_vec).inject(
                    trampCall(_knil)                  ,
                    &Proc.new { |_result,_item| 
                          trampCall( callProcedure(  '_proc',  'proc',
                              trampCall(_proc)                            ,
                          [
                                trampCall(_item)                              ,
                                trampCall(_result)
                          ]
                                       ))
                    }
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKfold_MIMARKoriginal_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKfold_MIMARKoriginal', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKfold_MIMARKoriginal'] = self.method( :__PAMARKfold_MIMARKoriginal_METHOD )
    @__PAMARKfold_MIMARKoriginal = 
    trampCall(
          Proc.new { |_proc,_knil,_lis1| 
              begin #makeLetrec
                ___lambda = lambda { |_null_MIMARKlist_QUMARK| 
                    _null_MIMARKlist_QUMARK                     = 
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
                                          __e.set_backtrace( ["./lib/nendo/nendo/experimental.nnd:134"] + __e.backtrace )
                                          raise __e
                                        end 
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      }
                    begin #makeLetrec
                      ___lambda = lambda { |_lp| 
                          _lp                           = 
                            Proc.new { |_lis,_ans| 
                                if ( 
                                    trampCall( callProcedure(  '_null_MIMARKlist_QUMARK',  'null-list?',
                                        trampCall(_null_MIMARKlist_QUMARK)                                      ,
                                    [
                                          trampCall(_lis)
                                    ]
                                                 ))
                                 ) then
                                    trampCall(_ans)
                                else
                                      delayCall( '_lp',  'lp',
                                          trampCall(_lp)                                        ,
                                      [
                                              _cdr(
                                                  trampCall(_lis)
                                              )                                          ,
                                              trampCall( callProcedure(  '_proc',  'proc',
                                                  trampCall(_proc)                                                ,
                                              [
                                                      _car(
                                                          trampCall(_lis)
                                                      )                                                  ,
                                                    trampCall(_ans)
                                              ]
                                                           ))
                                      ]
                                                   )
                                end
                            }
                            delayCall( '_lp',  'lp',
                                trampCall(_lp)                              ,
                            [
                                  trampCall(_lis1)                                ,
                                  trampCall(_knil)
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
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
      def self.__PAMARKfold_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKfold', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKfold'] = self.method( :__PAMARKfold_METHOD )
    @__PAMARKfold = 
    trampCall(
          Proc.new { |_proc,_knil,_lst| 
              if ( 
                  trampCall( self.__PAMARK_PAMARKfold_MIMARKable_QUMARK_METHOD(  '%%fold-able?',
                      trampCall(@__PAMARK_PAMARKfold_MIMARKable_QUMARK)                    ,
                  [
                        trampCall(_proc)                      ,
                        trampCall(_knil)                      ,
                        trampCall(_lst)
                  ]
                               ))
               ) then
                    delayCall( '__PAMARK_PAMARKfold',  '%%fold',
                        trampCall(@__PAMARK_PAMARKfold)                      ,
                    [
                          trampCall(_proc)                        ,
                          trampCall(_knil)                        ,
                          trampCall(_lst)
                    ]
                                 )
              else
                    delayCall( '__PAMARKfold_MIMARKoriginal',  '%fold-original',
                        trampCall(@__PAMARKfold_MIMARKoriginal)                      ,
                    [
                          trampCall(_proc)                        ,
                          trampCall(_knil)                        ,
                          trampCall(_lst)
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
          trampCall(@__PAMARKmap)
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
          trampCall(@__PAMARKfor_MIMARKeach)
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
      def self._fold_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_fold', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_fold'] = self.method( :_fold_METHOD )
    @_fold = 
    trampCall(
          trampCall(@__PAMARKfold)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._disasm_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_disasm', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_disasm'] = self.method( :_disasm_METHOD )
    @_disasm = 
    trampCall(
          Proc.new { |_varname,*__rest__| _opt = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_kind,_alist| 
                    if ( 
                        trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                            trampCall(@_eqv_QUMARK)                          ,
                        [
                              trampCall(_kind)                            ,
                            :"compiled"
                        ]
                                     ))
                     ) then
                            delayCall( '_assv_MIMARKref',  'assv-ref',
                                trampCall(@_assv_MIMARKref)                              ,
                            [
                                "compiled_str"                                ,
                                  trampCall(_alist)
                            ]
                                         )
                    else
                        if ( 
                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                trampCall(@_eqv_QUMARK)                              ,
                            [
                                  trampCall(_kind)                                ,
                                :"source"
                            ]
                                         ))
                         ) then
                                delayCall( '_assv_MIMARKref',  'assv-ref',
                                    trampCall(@_assv_MIMARKref)                                  ,
                                [
                                    "source"                                    ,
                                      trampCall(_alist)
                                ]
                                             )
                        else
                            if ( 
                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                    trampCall(@_eqv_QUMARK)                                  ,
                                [
                                      trampCall(_kind)                                    ,
                                    :"expanded"
                                ]
                                             ))
                             ) then
                                    delayCall( '_assv_MIMARKref',  'assv-ref',
                                        trampCall(@_assv_MIMARKref)                                      ,
                                    [
                                        "expanded"                                        ,
                                          trampCall(_alist)
                                    ]
                                                 )
                            else
                                if ( 
                                    trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                        trampCall(@_eqv_QUMARK)                                      ,
                                    [
                                          trampCall(_kind)                                        ,
                                        :"info"
                                    ]
                                                 ))
                                 ) then
                                        delayCall( '_string_MIMARKjoin',  'string-join',
                                            trampCall(@_string_MIMARKjoin)                                          ,
                                        [
                                                trampCall( self._list_METHOD(  'list',
                                                    trampCall(@_list)                                                  ,
                                                [
                                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                                            trampCall(@_sprintf)                                                          ,
                                                        [
                                                            " file:   %s 
"                                                            ,
                                                                trampCall( self._assv_MIMARKref_METHOD(  'assv-ref',
                                                                    trampCall(@_assv_MIMARKref)                                                                  ,
                                                                [
                                                                    "sourcefile"                                                                    ,
                                                                      trampCall(_alist)
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))                                                    ,
                                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                                            trampCall(@_sprintf)                                                          ,
                                                        [
                                                            " lineno: %s 
"                                                            ,
                                                                trampCall( self._assv_MIMARKref_METHOD(  'assv-ref',
                                                                    trampCall(@_assv_MIMARKref)                                                                  ,
                                                                [
                                                                    "lineno"                                                                    ,
                                                                      trampCall(_alist)
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))                                                    ,
                                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                                            trampCall(@_sprintf)                                                          ,
                                                        [
                                                            " source: 
"
                                                        ]
                                                                     ))                                                    ,
                                                        trampCall( self._pretty_MIMARKprint_MIMARKto_MIMARKstring_METHOD(  'pretty-print-to-string',
                                                            trampCall(@_pretty_MIMARKprint_MIMARKto_MIMARKstring)                                                          ,
                                                        [
                                                                trampCall( self._assv_MIMARKref_METHOD(  'assv-ref',
                                                                    trampCall(@_assv_MIMARKref)                                                                  ,
                                                                [
                                                                    "source"                                                                    ,
                                                                      trampCall(_alist)
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))                                                    ,
                                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                                            trampCall(@_sprintf)                                                          ,
                                                        [
                                                            " expanded: 
"
                                                        ]
                                                                     ))                                                    ,
                                                        trampCall( self._pretty_MIMARKprint_MIMARKto_MIMARKstring_METHOD(  'pretty-print-to-string',
                                                            trampCall(@_pretty_MIMARKprint_MIMARKto_MIMARKstring)                                                          ,
                                                        [
                                                                trampCall( self._assv_MIMARKref_METHOD(  'assv-ref',
                                                                    trampCall(@_assv_MIMARKref)                                                                  ,
                                                                [
                                                                    "expanded"                                                                    ,
                                                                      trampCall(_alist)
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))
                                                ]
                                                             ))
                                        ]
                                                     )
                                else
                                    Cell.new()
                                end
                            end
                        end
                    end
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30178| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30178)
                                )
                             ) then
                              :"compiled"
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30178)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_opt)
                                   )
                      end                    ,
                        trampCall( self._get_MIMARKsource_MIMARKinfo_METHOD(  'get-source-info',
                            trampCall(@_get_MIMARKsource_MIMARKinfo)                          ,
                        [
                              trampCall(_varname).to_s(
                                )
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
      def self._raise_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_raise', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_raise'] = self.method( :_raise_METHOD )
    @_raise = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30183,__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184,__compare__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30185| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30207| 
                            if ( 
                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30207)
                             ) then
                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30207)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30208| 
                                      if ( 
                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30208)
                                       ) then
                                          trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30208)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30209| 
                                                if ( 
                                                  trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30209)
                                                 ) then
                                                    trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30209)
                                                else
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30210| 
                                                          if ( 
                                                            trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30210)
                                                           ) then
                                                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30210)
                                                          else
                                                              begin #makeLet
                                                                ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30211| 
                                                                    if ( 
                                                                      trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30211)
                                                                     ) then
                                                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30211)
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                      begin raise RuntimeError, 
                                                                        "no expansion for" ' ' + 
                                                                        _write_MIMARKto_MIMARKstring(
                                                                            trampCall( self._strip_MIMARKsyntactic_MIMARKclosures_METHOD(  'strip-syntactic-closures',
                                                                                trampCall(@_strip_MIMARKsyntactic_MIMARKclosures)                                                                              ,
                                                                            [
                                                                                __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30183
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
                                                              ___lambda = lambda { |__v__10__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30200| 
                                                                  if ( 
                                                                      _not(
                                                                            _eq_QUMARK(
                                                                              false                                                                              ,
                                                                                  _pair_QUMARK(
                                                                                    __v__10__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30200
                                                                                  )
                                                                            )
                                                                      )
                                                                   ) then
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |__v__11__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30201| 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |_exc| 
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__v__12__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30202| 
                                                                                        if ( 
                                                                                            _not(
                                                                                                  _eq_QUMARK(
                                                                                                    false                                                                                                    ,
                                                                                                        _pair_QUMARK(
                                                                                                          __v__12__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30202
                                                                                                        )
                                                                                                  )
                                                                                            )
                                                                                         ) then
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |__v__13__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30203| 
                                                                                                  begin #makeLet
                                                                                                    ___lambda = lambda { |_mes| 
                                                                                                        begin #makeLet
                                                                                                          ___lambda = lambda { |__v__14__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30204| 
                                                                                                              if ( 
                                                                                                                  _not(
                                                                                                                        _eq_QUMARK(
                                                                                                                          false                                                                                                                          ,
                                                                                                                              _pair_QUMARK(
                                                                                                                                __v__14__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30204
                                                                                                                              )
                                                                                                                        )
                                                                                                                  )
                                                                                                               ) then
                                                                                                                  begin #makeLet
                                                                                                                    ___lambda = lambda { |__v__15__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30205| 
                                                                                                                        begin #makeLet
                                                                                                                          ___lambda = lambda { |_backtrace| 
                                                                                                                              begin #makeLet
                                                                                                                                ___lambda = lambda { |__v__16__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30206| 
                                                                                                                                    if ( 
                                                                                                                                        _not(
                                                                                                                                              _eq_QUMARK(
                                                                                                                                                false                                                                                                                                                ,
                                                                                                                                                    _null_QUMARK(
                                                                                                                                                      __v__16__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30206
                                                                                                                                                    )
                                                                                                                                              )
                                                                                                                                        )
                                                                                                                                     ) then
                                                                                                                                          _cons(
                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                                                  ,
                                                                                                                                                [
                                                                                                                                                    :"%raise"
                                                                                                                                                ]
                                                                                                                                                             ))                                                                                                                                            ,
                                                                                                                                                _cons(
                                                                                                                                                    trampCall(_exc)                                                                                                                                                  ,
                                                                                                                                                      _cons(
                                                                                                                                                          trampCall(_mes)                                                                                                                                                        ,
                                                                                                                                                            _cons(
                                                                                                                                                                trampCall(_backtrace)                                                                                                                                                              ,
                                                                                                                                                              Cell.new()
                                                                                                                                                            )
                                                                                                                                                      )
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    else
                                                                                                                                      false
                                                                                                                                    end
                                                                                                                                } ; ___lambda.call(
                                                                                                                                        _cdr(
                                                                                                                                          __v__14__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30204
                                                                                                                                        )
                                                                                                                                           )
                                                                                                                              end
                                                                                                                          } ; ___lambda.call(
                                                                                                                              __v__15__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30205
                                                                                                                                     )
                                                                                                                        end
                                                                                                                    } ; ___lambda.call(
                                                                                                                            _car(
                                                                                                                              __v__14__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30204
                                                                                                                            )
                                                                                                                               )
                                                                                                                  end
                                                                                                              else
                                                                                                                false
                                                                                                              end
                                                                                                          } ; ___lambda.call(
                                                                                                                  _cdr(
                                                                                                                    __v__12__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30202
                                                                                                                  )
                                                                                                                     )
                                                                                                        end
                                                                                                    } ; ___lambda.call(
                                                                                                        __v__13__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30203
                                                                                                               )
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      _car(
                                                                                                        __v__12__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30202
                                                                                                      )
                                                                                                         )
                                                                                            end
                                                                                        else
                                                                                          false
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _cdr(
                                                                                              __v__10__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30200
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              } ; ___lambda.call(
                                                                                  __v__11__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30201
                                                                                         )
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                _car(
                                                                                  __v__10__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30200
                                                                                )
                                                                                   )
                                                                      end
                                                                  else
                                                                    false
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _cdr(
                                                                        __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30183
                                                                      )
                                                                         )
                                                            end
                                                                 )
                                                    end
                                                end
                                            } ; ___lambda.call(
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30195| 
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                        _pair_QUMARK(
                                                                          __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30195
                                                                        )
                                                                  )
                                                            )
                                                         ) then
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__6__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30196| 
                                                                  begin #makeLet
                                                                    ___lambda = lambda { |_exc| 
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |__v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30197| 
                                                                              if ( 
                                                                                  _not(
                                                                                        _eq_QUMARK(
                                                                                          false                                                                                          ,
                                                                                              _pair_QUMARK(
                                                                                                __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30197
                                                                                              )
                                                                                        )
                                                                                  )
                                                                               ) then
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__v__8__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30198| 
                                                                                        begin #makeLet
                                                                                          ___lambda = lambda { |_mes| 
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |__v__9__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30199| 
                                                                                                    if ( 
                                                                                                        _not(
                                                                                                              _eq_QUMARK(
                                                                                                                false                                                                                                                ,
                                                                                                                    _null_QUMARK(
                                                                                                                      __v__9__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30199
                                                                                                                    )
                                                                                                              )
                                                                                                        )
                                                                                                     ) then
                                                                                                          _cons(
                                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                  ,
                                                                                                                [
                                                                                                                    :"%raise"
                                                                                                                ]
                                                                                                                             ))                                                                                                            ,
                                                                                                                _cons(
                                                                                                                    trampCall(_exc)                                                                                                                  ,
                                                                                                                      _cons(
                                                                                                                          trampCall(_mes)                                                                                                                        ,
                                                                                                                            _cons(
                                                                                                                                  _cons(
                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                                            trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                                          ,
                                                                                                                                        [
                                                                                                                                            :"sprintf"
                                                                                                                                        ]
                                                                                                                                                     ))                                                                                                                                    ,
                                                                                                                                        _cons(
                                                                                                                                          "%s:%s raised %s"                                                                                                                                          ,
                                                                                                                                              _cons(
                                                                                                                                                    _cons(
                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                                                              trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                                                            ,
                                                                                                                                                          [
                                                                                                                                                              :"*FILE*"
                                                                                                                                                          ]
                                                                                                                                                                       ))                                                                                                                                                      ,
                                                                                                                                                      Cell.new()
                                                                                                                                                    )                                                                                                                                                ,
                                                                                                                                                    _cons(
                                                                                                                                                          _cons(
                                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                                                                  ,
                                                                                                                                                                [
                                                                                                                                                                    :"*LINE*"
                                                                                                                                                                ]
                                                                                                                                                                             ))                                                                                                                                                            ,
                                                                                                                                                            Cell.new()
                                                                                                                                                          )                                                                                                                                                      ,
                                                                                                                                                          _cons(
                                                                                                                                                              trampCall(_exc)                                                                                                                                                            ,
                                                                                                                                                            Cell.new()
                                                                                                                                                          )
                                                                                                                                                    )
                                                                                                                                              )
                                                                                                                                        )
                                                                                                                                  )                                                                                                                              ,
                                                                                                                              Cell.new()
                                                                                                                            )
                                                                                                                      )
                                                                                                                )
                                                                                                          )
                                                                                                    else
                                                                                                      false
                                                                                                    end
                                                                                                } ; ___lambda.call(
                                                                                                        _cdr(
                                                                                                          __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30197
                                                                                                        )
                                                                                                           )
                                                                                              end
                                                                                          } ; ___lambda.call(
                                                                                              __v__8__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30198
                                                                                                     )
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _car(
                                                                                              __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30197
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              else
                                                                                false
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  _cdr(
                                                                                    __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30195
                                                                                  )
                                                                                     )
                                                                        end
                                                                    } ; ___lambda.call(
                                                                        __v__6__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30196
                                                                               )
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _car(
                                                                        __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30195
                                                                      )
                                                                         )
                                                            end
                                                        else
                                                          false
                                                        end
                                                    } ; ___lambda.call(
                                                            _cdr(
                                                              __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30183
                                                            )
                                                               )
                                                  end
                                                       )
                                          end
                                      end
                                  } ; ___lambda.call(
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30192| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30192
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30193| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_exc| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30194| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                    _null_QUMARK(
                                                                                      __v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30194
                                                                                    )
                                                                              )
                                                                        )
                                                                     ) then
                                                                          _cons(
                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                  ,
                                                                                [
                                                                                    :"%raise"
                                                                                ]
                                                                                             ))                                                                            ,
                                                                                _cons(
                                                                                    trampCall(_exc)                                                                                  ,
                                                                                      _cons(
                                                                                            _cons(
                                                                                                  trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                      trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                    ,
                                                                                                  [
                                                                                                      :"sprintf"
                                                                                                  ]
                                                                                                               ))                                                                                              ,
                                                                                                  _cons(
                                                                                                    "%s:%s raised %s"                                                                                                    ,
                                                                                                        _cons(
                                                                                                              _cons(
                                                                                                                    trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                        trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                      ,
                                                                                                                    [
                                                                                                                        :"*FILE*"
                                                                                                                    ]
                                                                                                                                 ))                                                                                                                ,
                                                                                                                Cell.new()
                                                                                                              )                                                                                                          ,
                                                                                                              _cons(
                                                                                                                    _cons(
                                                                                                                          trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                              trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                            ,
                                                                                                                          [
                                                                                                                              :"*LINE*"
                                                                                                                          ]
                                                                                                                                       ))                                                                                                                      ,
                                                                                                                      Cell.new()
                                                                                                                    )                                                                                                                ,
                                                                                                                    _cons(
                                                                                                                        trampCall(_exc)                                                                                                                      ,
                                                                                                                      Cell.new()
                                                                                                                    )
                                                                                                              )
                                                                                                        )
                                                                                                  )
                                                                                            )                                                                                        ,
                                                                                            _cons(
                                                                                                  _cons(
                                                                                                        trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                            trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                          ,
                                                                                                        [
                                                                                                            :"sprintf"
                                                                                                        ]
                                                                                                                     ))                                                                                                    ,
                                                                                                        _cons(
                                                                                                          "%s:%s raised %s"                                                                                                          ,
                                                                                                              _cons(
                                                                                                                    _cons(
                                                                                                                          trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                              trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                            ,
                                                                                                                          [
                                                                                                                              :"*FILE*"
                                                                                                                          ]
                                                                                                                                       ))                                                                                                                      ,
                                                                                                                      Cell.new()
                                                                                                                    )                                                                                                                ,
                                                                                                                    _cons(
                                                                                                                          _cons(
                                                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                                                                                                  ,
                                                                                                                                [
                                                                                                                                    :"*LINE*"
                                                                                                                                ]
                                                                                                                                             ))                                                                                                                            ,
                                                                                                                            Cell.new()
                                                                                                                          )                                                                                                                      ,
                                                                                                                          _cons(
                                                                                                                              trampCall(_exc)                                                                                                                            ,
                                                                                                                            Cell.new()
                                                                                                                          )
                                                                                                                    )
                                                                                                              )
                                                                                                        )
                                                                                                  )                                                                                              ,
                                                                                              Cell.new()
                                                                                            )
                                                                                      )
                                                                                )
                                                                          )
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _cdr(
                                                                          __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30192
                                                                        )
                                                                           )
                                                              end
                                                          } ; ___lambda.call(
                                                              __v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30193
                                                                     )
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30192
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                    __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30183
                                                  )
                                                     )
                                        end
                                             )
                                end
                            end
                        } ; ___lambda.call(
                              begin #makeLet
                                ___lambda = lambda { |__v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30191| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _null_QUMARK(
                                                      __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30191
                                                    )
                                              )
                                        )
                                     ) then
                                          _cons(
                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184',
                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30184)                                                  ,
                                                [
                                                    :"error"
                                                ]
                                                             ))                                            ,
                                                _cons(
                                                  "raise requires (raise exception message [backtrace-str])"                                                  ,
                                                  Cell.new()
                                                )
                                          )
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30183
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
      def self.__PAMARKguard_MIMARKvar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKguard_MIMARKvar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKguard_MIMARKvar'] = self.method( :__PAMARKguard_MIMARKvar_METHOD )
    @__PAMARKguard_MIMARKvar = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30212,__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30213,__compare__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30214| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30225| 
                            if ( 
                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30225)
                             ) then
                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30225)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30226| 
                                      if ( 
                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30226)
                                       ) then
                                          trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30226)
                                      else
                                        false
                                      end
                                  } ; ___lambda.call(
                                        begin raise RuntimeError, 
                                          "no expansion for" ' ' + 
                                          _write_MIMARKto_MIMARKstring(
                                              trampCall( self._strip_MIMARKsyntactic_MIMARKclosures_METHOD(  'strip-syntactic-closures',
                                                  trampCall(@_strip_MIMARKsyntactic_MIMARKclosures)                                                ,
                                              [
                                                  __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30212
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
                                ___lambda = lambda { |__v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30220| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _pair_QUMARK(
                                                      __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30220
                                                    )
                                              )
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30221| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30221
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30222| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_var| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30223| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                    trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                        trampCall(@_list_QUMARK)                                                                                      ,
                                                                                    [
                                                                                        __v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30223
                                                                                    ]
                                                                                                 ))
                                                                              )
                                                                        )
                                                                     ) then
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |_clauses| 
                                                                              begin #makeLet
                                                                                ___lambda = lambda { |__v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30224| 
                                                                                    if ( 
                                                                                        _not(
                                                                                              _eq_QUMARK(
                                                                                                false                                                                                                ,
                                                                                                    _null_QUMARK(
                                                                                                      __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30224
                                                                                                    )
                                                                                              )
                                                                                        )
                                                                                     ) then
                                                                                        trampCall(_var)
                                                                                    else
                                                                                      false
                                                                                    end
                                                                                } ; ___lambda.call(
                                                                                        _cdr(
                                                                                          __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30220
                                                                                        )
                                                                                           )
                                                                              end
                                                                          } ; ___lambda.call(
                                                                              __v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30223
                                                                                     )
                                                                        end
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _cdr(
                                                                          __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30221
                                                                        )
                                                                           )
                                                              end
                                                          } ; ___lambda.call(
                                                              __v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30222
                                                                     )
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30221
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _car(
                                                    __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30220
                                                  )
                                                     )
                                        end
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30212
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
      def self.__PAMARKguard_MIMARKclause_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKguard_MIMARKclause', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKguard_MIMARKclause'] = self.method( :__PAMARKguard_MIMARKclause_METHOD )
    @__PAMARKguard_MIMARKclause = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30227,__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30228,__compare__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30229| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30240| 
                            if ( 
                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30240)
                             ) then
                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30240)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30241| 
                                      if ( 
                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30241)
                                       ) then
                                          trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30241)
                                      else
                                        false
                                      end
                                  } ; ___lambda.call(
                                        begin raise RuntimeError, 
                                          "no expansion for" ' ' + 
                                          _write_MIMARKto_MIMARKstring(
                                              trampCall( self._strip_MIMARKsyntactic_MIMARKclosures_METHOD(  'strip-syntactic-closures',
                                                  trampCall(@_strip_MIMARKsyntactic_MIMARKclosures)                                                ,
                                              [
                                                  __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30227
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
                                ___lambda = lambda { |__v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30235| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _pair_QUMARK(
                                                      __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30235
                                                    )
                                              )
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30236| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30236
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30237| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_var| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30238| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                    trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                        trampCall(@_list_QUMARK)                                                                                      ,
                                                                                    [
                                                                                        __v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30238
                                                                                    ]
                                                                                                 ))
                                                                              )
                                                                        )
                                                                     ) then
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |_clauses| 
                                                                              begin #makeLet
                                                                                ___lambda = lambda { |__v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30239| 
                                                                                    if ( 
                                                                                        _not(
                                                                                              _eq_QUMARK(
                                                                                                false                                                                                                ,
                                                                                                    _null_QUMARK(
                                                                                                      __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30239
                                                                                                    )
                                                                                              )
                                                                                        )
                                                                                     ) then
                                                                                          _cons(
                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30228',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30228',
                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30228)                                                                                                  ,
                                                                                                [
                                                                                                    :"cond"
                                                                                                ]
                                                                                                             ))                                                                                            ,
                                                                                                trampCall( self._append_METHOD(  'append',
                                                                                                    trampCall(@_append)                                                                                                  ,
                                                                                                [
                                                                                                        trampCall( self._map_METHOD(  'map',
                                                                                                            trampCall(@_map)                                                                                                          ,
                                                                                                        [
                                                                                                              Proc.new { |_clauses| 
                                                                                                                  trampCall(_clauses)
                                                                                                              }                                                                                                            ,
                                                                                                              trampCall(_clauses)
                                                                                                        ]
                                                                                                                     ))                                                                                                    ,
                                                                                                        _cons(
                                                                                                              _cons(
                                                                                                                true                                                                                                                ,
                                                                                                                    _cons(
                                                                                                                          _cons(
                                                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30228',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30228',
                                                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30228)                                                                                                                                  ,
                                                                                                                                [
                                                                                                                                    :"raise"
                                                                                                                                ]
                                                                                                                                             ))                                                                                                                            ,
                                                                                                                                _cons(
                                                                                                                                    trampCall(_var)                                                                                                                                  ,
                                                                                                                                  Cell.new()
                                                                                                                                )
                                                                                                                          )                                                                                                                      ,
                                                                                                                      Cell.new()
                                                                                                                    )
                                                                                                              )                                                                                                          ,
                                                                                                          Cell.new()
                                                                                                        )
                                                                                                ]
                                                                                                             ))
                                                                                          )
                                                                                    else
                                                                                      false
                                                                                    end
                                                                                } ; ___lambda.call(
                                                                                        _cdr(
                                                                                          __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30235
                                                                                        )
                                                                                           )
                                                                              end
                                                                          } ; ___lambda.call(
                                                                              __v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30238
                                                                                     )
                                                                        end
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _cdr(
                                                                          __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30236
                                                                        )
                                                                           )
                                                              end
                                                          } ; ___lambda.call(
                                                              __v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30237
                                                                     )
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30236
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _car(
                                                    __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30235
                                                  )
                                                     )
                                        end
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30227
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
      def self._guard_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_guard', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_guard'] = self.method( :_guard_METHOD )
    @_guard = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30242,__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243,__compare__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30244| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30257| 
                            if ( 
                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30257)
                             ) then
                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30257)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30258| 
                                      if ( 
                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30258)
                                       ) then
                                          trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30258)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30259| 
                                                if ( 
                                                  trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30259)
                                                 ) then
                                                    trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30259)
                                                else
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30260| 
                                                          if ( 
                                                            trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30260)
                                                           ) then
                                                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30260)
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
                                                                      __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30242
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
                                                    ___lambda = lambda { |__v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30254| 
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                        _pair_QUMARK(
                                                                          __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30254
                                                                        )
                                                                  )
                                                            )
                                                         ) then
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__6__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30255| 
                                                                  begin #makeLet
                                                                    ___lambda = lambda { |_var_MIMARKclauses| 
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |__v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30256| 
                                                                              if ( 
                                                                                  _not(
                                                                                        _eq_QUMARK(
                                                                                          false                                                                                          ,
                                                                                              trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                  trampCall(@_list_QUMARK)                                                                                                ,
                                                                                              [
                                                                                                  __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30256
                                                                                              ]
                                                                                                           ))
                                                                                        )
                                                                                  )
                                                                               ) then
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |_body| 
                                                                                          _cons(
                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',
                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243)                                                                                                  ,
                                                                                                [
                                                                                                    :"%guard"
                                                                                                ]
                                                                                                             ))                                                                                            ,
                                                                                                _cons(
                                                                                                      _cons(
                                                                                                            trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',
                                                                                                                trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243)                                                                                                              ,
                                                                                                            [
                                                                                                                :"%guard-var"
                                                                                                            ]
                                                                                                                         ))                                                                                                        ,
                                                                                                            _cons(
                                                                                                                trampCall(_var_MIMARKclauses)                                                                                                              ,
                                                                                                              Cell.new()
                                                                                                            )
                                                                                                      )                                                                                                  ,
                                                                                                      _cons(
                                                                                                            _cons(
                                                                                                                  trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',
                                                                                                                      trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243)                                                                                                                    ,
                                                                                                                  [
                                                                                                                      :"%guard-clause"
                                                                                                                  ]
                                                                                                                               ))                                                                                                              ,
                                                                                                                  _cons(
                                                                                                                      trampCall(_var_MIMARKclauses)                                                                                                                    ,
                                                                                                                    Cell.new()
                                                                                                                  )
                                                                                                            )                                                                                                        ,
                                                                                                            trampCall( self._map_METHOD(  'map',
                                                                                                                trampCall(@_map)                                                                                                              ,
                                                                                                            [
                                                                                                                  Proc.new { |_body| 
                                                                                                                      trampCall(_body)
                                                                                                                  }                                                                                                                ,
                                                                                                                  trampCall(_body)
                                                                                                            ]
                                                                                                                         ))
                                                                                                      )
                                                                                                )
                                                                                          )
                                                                                    } ; ___lambda.call(
                                                                                        __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30256
                                                                                               )
                                                                                  end
                                                                              else
                                                                                false
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  _cdr(
                                                                                    __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30254
                                                                                  )
                                                                                     )
                                                                        end
                                                                    } ; ___lambda.call(
                                                                        __v__6__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30255
                                                                               )
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _car(
                                                                        __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30254
                                                                      )
                                                                         )
                                                            end
                                                        else
                                                          false
                                                        end
                                                    } ; ___lambda.call(
                                                            _cdr(
                                                              __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30242
                                                            )
                                                               )
                                                  end
                                                       )
                                          end
                                      end
                                  } ; ___lambda.call(
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30251| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30251
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30252| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_var_MIMARKclauses| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30253| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                    _null_QUMARK(
                                                                                      __v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30253
                                                                                    )
                                                                              )
                                                                        )
                                                                     ) then
                                                                          _cons(
                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',
                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243)                                                                                  ,
                                                                                [
                                                                                    :"error"
                                                                                ]
                                                                                             ))                                                                            ,
                                                                                _cons(
                                                                                  "guard requires (guard (var (clauses-like-cond)) body ...)"                                                                                  ,
                                                                                  Cell.new()
                                                                                )
                                                                          )
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _cdr(
                                                                          __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30251
                                                                        )
                                                                           )
                                                              end
                                                          } ; ___lambda.call(
                                                              __v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30252
                                                                     )
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30251
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                    __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30242
                                                  )
                                                     )
                                        end
                                             )
                                end
                            end
                        } ; ___lambda.call(
                              begin #makeLet
                                ___lambda = lambda { |__v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30250| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _null_QUMARK(
                                                      __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30250
                                                    )
                                              )
                                        )
                                     ) then
                                          _cons(
                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243',
                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30243)                                                  ,
                                                [
                                                    :"error"
                                                ]
                                                             ))                                            ,
                                                _cons(
                                                  "guard requires (guard (var (clauses-like-cond)) body ...)"                                                  ,
                                                  Cell.new()
                                                )
                                          )
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30242
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
      def self._unwind_MIMARKprotect_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unwind_MIMARKprotect', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unwind_MIMARKprotect'] = self.method( :_unwind_MIMARKprotect_METHOD )
    @_unwind_MIMARKprotect = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30261,__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262,__compare__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30263| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30278| 
                            if ( 
                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30278)
                             ) then
                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30278)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30279| 
                                      if ( 
                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30279)
                                       ) then
                                          trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30279)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30280| 
                                                if ( 
                                                  trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30280)
                                                 ) then
                                                    trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30280)
                                                else
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30281| 
                                                          if ( 
                                                            trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30281)
                                                           ) then
                                                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30281)
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
                                                                      __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30261
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
                                                    ___lambda = lambda { |__v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30273| 
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                        _pair_QUMARK(
                                                                          __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30273
                                                                        )
                                                                  )
                                                            )
                                                         ) then
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__6__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30274| 
                                                                  begin #makeLet
                                                                    ___lambda = lambda { |_body| 
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |__v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30275| 
                                                                              if ( 
                                                                                  _not(
                                                                                        _eq_QUMARK(
                                                                                          false                                                                                          ,
                                                                                              _pair_QUMARK(
                                                                                                __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30275
                                                                                              )
                                                                                        )
                                                                                  )
                                                                               ) then
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__v__8__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30276| 
                                                                                        begin #makeLet
                                                                                          ___lambda = lambda { |_cleanup| 
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |__v__9__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30277| 
                                                                                                    if ( 
                                                                                                        _not(
                                                                                                              _eq_QUMARK(
                                                                                                                false                                                                                                                ,
                                                                                                                    _null_QUMARK(
                                                                                                                      __v__9__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30277
                                                                                                                    )
                                                                                                              )
                                                                                                        )
                                                                                                     ) then
                                                                                                          _cons(
                                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                  ,
                                                                                                                [
                                                                                                                    :"let1"
                                                                                                                ]
                                                                                                                             ))                                                                                                            ,
                                                                                                                _cons(
                                                                                                                      trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                          trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                        ,
                                                                                                                      [
                                                                                                                          :"temp"
                                                                                                                      ]
                                                                                                                                   ))                                                                                                                  ,
                                                                                                                      _cons(
                                                                                                                        false                                                                                                                        ,
                                                                                                                            _cons(
                                                                                                                                  _cons(
                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                                            trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                                          ,
                                                                                                                                        [
                                                                                                                                            :"guard"
                                                                                                                                        ]
                                                                                                                                                     ))                                                                                                                                    ,
                                                                                                                                        _cons(
                                                                                                                                              _cons(
                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                                                        trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                                                      ,
                                                                                                                                                    [
                                                                                                                                                        :"exc"
                                                                                                                                                    ]
                                                                                                                                                                 ))                                                                                                                                                ,
                                                                                                                                                    _cons(
                                                                                                                                                          _cons(
                                                                                                                                                            true                                                                                                                                                            ,
                                                                                                                                                                _cons(
                                                                                                                                                                      _cons(
                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                                                                                trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                                                                              ,
                                                                                                                                                                            [
                                                                                                                                                                                :"begin"
                                                                                                                                                                            ]
                                                                                                                                                                                         ))                                                                                                                                                                        ,
                                                                                                                                                                            _cons(
                                                                                                                                                                                trampCall(_cleanup)                                                                                                                                                                              ,
                                                                                                                                                                                  _cons(
                                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                                                                                            trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                                                                                          ,
                                                                                                                                                                                        [
                                                                                                                                                                                            :"temp"
                                                                                                                                                                                        ]
                                                                                                                                                                                                     ))                                                                                                                                                                                    ,
                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                  )
                                                                                                                                                                            )
                                                                                                                                                                      )                                                                                                                                                                  ,
                                                                                                                                                                  Cell.new()
                                                                                                                                                                )
                                                                                                                                                          )                                                                                                                                                      ,
                                                                                                                                                      Cell.new()
                                                                                                                                                    )
                                                                                                                                              )                                                                                                                                          ,
                                                                                                                                              _cons(
                                                                                                                                                    _cons(
                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                                                              trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                                                            ,
                                                                                                                                                          [
                                                                                                                                                              :"begin0"
                                                                                                                                                          ]
                                                                                                                                                                       ))                                                                                                                                                      ,
                                                                                                                                                          _cons(
                                                                                                                                                                _cons(
                                                                                                                                                                      trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                                                                          trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                                                                        ,
                                                                                                                                                                      [
                                                                                                                                                                          :"set!"
                                                                                                                                                                      ]
                                                                                                                                                                                   ))                                                                                                                                                                  ,
                                                                                                                                                                      _cons(
                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                                                                                                                trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                                                                                                              ,
                                                                                                                                                                            [
                                                                                                                                                                                :"temp"
                                                                                                                                                                            ]
                                                                                                                                                                                         ))                                                                                                                                                                        ,
                                                                                                                                                                            _cons(
                                                                                                                                                                                trampCall(_body)                                                                                                                                                                              ,
                                                                                                                                                                              Cell.new()
                                                                                                                                                                            )
                                                                                                                                                                      )
                                                                                                                                                                )                                                                                                                                                            ,
                                                                                                                                                                _cons(
                                                                                                                                                                    trampCall(_cleanup)                                                                                                                                                                  ,
                                                                                                                                                                  Cell.new()
                                                                                                                                                                )
                                                                                                                                                          )
                                                                                                                                                    )                                                                                                                                                ,
                                                                                                                                                Cell.new()
                                                                                                                                              )
                                                                                                                                        )
                                                                                                                                  )                                                                                                                              ,
                                                                                                                              Cell.new()
                                                                                                                            )
                                                                                                                      )
                                                                                                                )
                                                                                                          )
                                                                                                    else
                                                                                                      false
                                                                                                    end
                                                                                                } ; ___lambda.call(
                                                                                                        _cdr(
                                                                                                          __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30275
                                                                                                        )
                                                                                                           )
                                                                                              end
                                                                                          } ; ___lambda.call(
                                                                                              __v__8__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30276
                                                                                                     )
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _car(
                                                                                              __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30275
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              else
                                                                                false
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  _cdr(
                                                                                    __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30273
                                                                                  )
                                                                                     )
                                                                        end
                                                                    } ; ___lambda.call(
                                                                        __v__6__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30274
                                                                               )
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _car(
                                                                        __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30273
                                                                      )
                                                                         )
                                                            end
                                                        else
                                                          false
                                                        end
                                                    } ; ___lambda.call(
                                                            _cdr(
                                                              __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30261
                                                            )
                                                               )
                                                  end
                                                       )
                                          end
                                      end
                                  } ; ___lambda.call(
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30270| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30270
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30271| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_body| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30272| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                    _null_QUMARK(
                                                                                      __v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30272
                                                                                    )
                                                                              )
                                                                        )
                                                                     ) then
                                                                          _cons(
                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                                                  ,
                                                                                [
                                                                                    :"error"
                                                                                ]
                                                                                             ))                                                                            ,
                                                                                _cons(
                                                                                  "unwind-protect requires (unwind-protect body cleanup) form."                                                                                  ,
                                                                                  Cell.new()
                                                                                )
                                                                          )
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _cdr(
                                                                          __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30270
                                                                        )
                                                                           )
                                                              end
                                                          } ; ___lambda.call(
                                                              __v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30271
                                                                     )
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30270
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                    __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30261
                                                  )
                                                     )
                                        end
                                             )
                                end
                            end
                        } ; ___lambda.call(
                              begin #makeLet
                                ___lambda = lambda { |__v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30269| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _null_QUMARK(
                                                      __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30269
                                                    )
                                              )
                                        )
                                     ) then
                                          _cons(
                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262',
                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30262)                                                  ,
                                                [
                                                    :"error"
                                                ]
                                                             ))                                            ,
                                                _cons(
                                                  "unwind-protect requires (unwind-protect body cleanup) form."                                                  ,
                                                  Cell.new()
                                                )
                                          )
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30261
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
      def self._nendo_MIMARKsyntax_MIMARKerror_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_nendo_MIMARKsyntax_MIMARKerror', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_nendo_MIMARKsyntax_MIMARKerror'] = self.method( :_nendo_MIMARKsyntax_MIMARKerror_METHOD )
    @_nendo_MIMARKsyntax_MIMARKerror = 
    trampCall(
          trampCall(SyntaxError)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._let1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_let1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_let1'] = self.method( :_let1_METHOD )
    @_let1 = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282,__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283,__compare__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30284| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30330| 
                            if ( 
                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30330)
                             ) then
                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30330)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30331| 
                                      if ( 
                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30331)
                                       ) then
                                          trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30331)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30332| 
                                                if ( 
                                                  trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30332)
                                                 ) then
                                                    trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30332)
                                                else
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30333| 
                                                          if ( 
                                                            trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30333)
                                                           ) then
                                                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30333)
                                                          else
                                                              begin #makeLet
                                                                ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30334| 
                                                                    if ( 
                                                                      trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30334)
                                                                     ) then
                                                                        trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30334)
                                                                    else
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30335| 
                                                                              if ( 
                                                                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30335)
                                                                               ) then
                                                                                  trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30335)
                                                                              else
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30336| 
                                                                                        if ( 
                                                                                          trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30336)
                                                                                         ) then
                                                                                            trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30336)
                                                                                        else
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30337| 
                                                                                                  if ( 
                                                                                                    trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30337)
                                                                                                   ) then
                                                                                                      trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30337)
                                                                                                  else
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30338| 
                                                                                                            if ( 
                                                                                                              trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30338)
                                                                                                             ) then
                                                                                                                trampCall(___gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30338)
                                                                                                            else
                                                                                                              false
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                              begin raise RuntimeError, 
                                                                                                                "no expansion for" ' ' + 
                                                                                                                _write_MIMARKto_MIMARKstring(
                                                                                                                    trampCall( self._strip_MIMARKsyntactic_MIMARKclosures_METHOD(  'strip-syntactic-closures',
                                                                                                                        trampCall(@_strip_MIMARKsyntactic_MIMARKclosures)                                                                                                                      ,
                                                                                                                    [
                                                                                                                        __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
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
                                                                                                      ___lambda = lambda { |__v__36__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30325| 
                                                                                                          if ( 
                                                                                                              _not(
                                                                                                                    _eq_QUMARK(
                                                                                                                      false                                                                                                                      ,
                                                                                                                          _pair_QUMARK(
                                                                                                                            __v__36__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30325
                                                                                                                          )
                                                                                                                    )
                                                                                                              )
                                                                                                           ) then
                                                                                                              begin #makeLet
                                                                                                                ___lambda = lambda { |__v__37__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30326| 
                                                                                                                    begin #makeLet
                                                                                                                      ___lambda = lambda { |_var| 
                                                                                                                          begin #makeLet
                                                                                                                            ___lambda = lambda { |__v__38__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30327| 
                                                                                                                                if ( 
                                                                                                                                    _not(
                                                                                                                                          _eq_QUMARK(
                                                                                                                                            false                                                                                                                                            ,
                                                                                                                                                _pair_QUMARK(
                                                                                                                                                  __v__38__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30327
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    )
                                                                                                                                 ) then
                                                                                                                                    begin #makeLet
                                                                                                                                      ___lambda = lambda { |__v__39__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30328| 
                                                                                                                                          begin #makeLet
                                                                                                                                            ___lambda = lambda { |_expr| 
                                                                                                                                                begin #makeLet
                                                                                                                                                  ___lambda = lambda { |__v__40__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30329| 
                                                                                                                                                      if ( 
                                                                                                                                                          _not(
                                                                                                                                                                _eq_QUMARK(
                                                                                                                                                                  false                                                                                                                                                                  ,
                                                                                                                                                                      trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                                                                                          trampCall(@_list_QUMARK)                                                                                                                                                                        ,
                                                                                                                                                                      [
                                                                                                                                                                          __v__40__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30329
                                                                                                                                                                      ]
                                                                                                                                                                                   ))
                                                                                                                                                                )
                                                                                                                                                          )
                                                                                                                                                       ) then
                                                                                                                                                          begin #makeLet
                                                                                                                                                            ___lambda = lambda { |_body| 
                                                                                                                                                                  _cons(
                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                                                            trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                                                          ,
                                                                                                                                                                        [
                                                                                                                                                                            :"%let"
                                                                                                                                                                        ]
                                                                                                                                                                                     ))                                                                                                                                                                    ,
                                                                                                                                                                        _cons(
                                                                                                                                                                              _cons(
                                                                                                                                                                                    _cons(
                                                                                                                                                                                        trampCall(_var)                                                                                                                                                                                      ,
                                                                                                                                                                                          _cons(
                                                                                                                                                                                              trampCall(_expr)                                                                                                                                                                                            ,
                                                                                                                                                                                            Cell.new()
                                                                                                                                                                                          )
                                                                                                                                                                                    )                                                                                                                                                                                ,
                                                                                                                                                                                Cell.new()
                                                                                                                                                                              )                                                                                                                                                                          ,
                                                                                                                                                                              trampCall( self._map_METHOD(  'map',
                                                                                                                                                                                  trampCall(@_map)                                                                                                                                                                                ,
                                                                                                                                                                              [
                                                                                                                                                                                    Proc.new { |_body| 
                                                                                                                                                                                        trampCall(_body)
                                                                                                                                                                                    }                                                                                                                                                                                  ,
                                                                                                                                                                                    trampCall(_body)
                                                                                                                                                                              ]
                                                                                                                                                                                           ))
                                                                                                                                                                        )
                                                                                                                                                                  )
                                                                                                                                                            } ; ___lambda.call(
                                                                                                                                                                __v__40__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30329
                                                                                                                                                                       )
                                                                                                                                                          end
                                                                                                                                                      else
                                                                                                                                                        false
                                                                                                                                                      end
                                                                                                                                                  } ; ___lambda.call(
                                                                                                                                                          _cdr(
                                                                                                                                                            __v__38__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30327
                                                                                                                                                          )
                                                                                                                                                             )
                                                                                                                                                end
                                                                                                                                            } ; ___lambda.call(
                                                                                                                                                __v__39__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30328
                                                                                                                                                       )
                                                                                                                                          end
                                                                                                                                      } ; ___lambda.call(
                                                                                                                                              _car(
                                                                                                                                                __v__38__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30327
                                                                                                                                              )
                                                                                                                                                 )
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                  false
                                                                                                                                end
                                                                                                                            } ; ___lambda.call(
                                                                                                                                    _cdr(
                                                                                                                                      __v__36__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30325
                                                                                                                                    )
                                                                                                                                       )
                                                                                                                          end
                                                                                                                      } ; ___lambda.call(
                                                                                                                          __v__37__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30326
                                                                                                                                 )
                                                                                                                    end
                                                                                                                } ; ___lambda.call(
                                                                                                                        _car(
                                                                                                                          __v__36__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30325
                                                                                                                        )
                                                                                                                           )
                                                                                                              end
                                                                                                          else
                                                                                                            false
                                                                                                          end
                                                                                                      } ; ___lambda.call(
                                                                                                              _cdr(
                                                                                                                __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
                                                                                                              )
                                                                                                                 )
                                                                                                    end
                                                                                                         )
                                                                                            end
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |__v__33__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30322| 
                                                                                                if ( 
                                                                                                    _not(
                                                                                                          _eq_QUMARK(
                                                                                                            false                                                                                                            ,
                                                                                                                _pair_QUMARK(
                                                                                                                  __v__33__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30322
                                                                                                                )
                                                                                                          )
                                                                                                    )
                                                                                                 ) then
                                                                                                    begin #makeLet
                                                                                                      ___lambda = lambda { |__v__34__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30323| 
                                                                                                          if ( 
                                                                                                              _not(
                                                                                                                    _eq_QUMARK(
                                                                                                                      false                                                                                                                      ,
                                                                                                                          _null_QUMARK(
                                                                                                                            __v__34__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30323
                                                                                                                          )
                                                                                                                    )
                                                                                                              )
                                                                                                           ) then
                                                                                                              begin #makeLet
                                                                                                                ___lambda = lambda { |__v__35__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30324| 
                                                                                                                    if ( 
                                                                                                                        _not(
                                                                                                                              _eq_QUMARK(
                                                                                                                                false                                                                                                                                ,
                                                                                                                                    trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                                                        trampCall(@_list_QUMARK)                                                                                                                                      ,
                                                                                                                                    [
                                                                                                                                        __v__35__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30324
                                                                                                                                    ]
                                                                                                                                                 ))
                                                                                                                              )
                                                                                                                        )
                                                                                                                     ) then
                                                                                                                        begin #makeLet
                                                                                                                          ___lambda = lambda { |_body| 
                                                                                                                                _cons(
                                                                                                                                      trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                          trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                        ,
                                                                                                                                      [
                                                                                                                                          :"raise"
                                                                                                                                      ]
                                                                                                                                                   ))                                                                                                                                  ,
                                                                                                                                      _cons(
                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                                trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                              ,
                                                                                                                                            [
                                                                                                                                                :"nendo-syntax-error"
                                                                                                                                            ]
                                                                                                                                                         ))                                                                                                                                        ,
                                                                                                                                            _cons(
                                                                                                                                              "let1 requires (let1 var expr body ...) form."                                                                                                                                              ,
                                                                                                                                              Cell.new()
                                                                                                                                            )
                                                                                                                                      )
                                                                                                                                )
                                                                                                                          } ; ___lambda.call(
                                                                                                                              __v__35__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30324
                                                                                                                                     )
                                                                                                                        end
                                                                                                                    else
                                                                                                                      false
                                                                                                                    end
                                                                                                                } ; ___lambda.call(
                                                                                                                        _cdr(
                                                                                                                          __v__33__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30322
                                                                                                                        )
                                                                                                                           )
                                                                                                              end
                                                                                                          else
                                                                                                            false
                                                                                                          end
                                                                                                      } ; ___lambda.call(
                                                                                                              _car(
                                                                                                                __v__33__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30322
                                                                                                              )
                                                                                                                 )
                                                                                                    end
                                                                                                else
                                                                                                  false
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                    _cdr(
                                                                                                      __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
                                                                                                    )
                                                                                                       )
                                                                                          end
                                                                                               )
                                                                                  end
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                begin #makeLet
                                                                                  ___lambda = lambda { |__v__24__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30313| 
                                                                                      if ( 
                                                                                          _not(
                                                                                                _eq_QUMARK(
                                                                                                  false                                                                                                  ,
                                                                                                      _pair_QUMARK(
                                                                                                        __v__24__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30313
                                                                                                      )
                                                                                                )
                                                                                          )
                                                                                       ) then
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |__v__25__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30314| 
                                                                                                if ( 
                                                                                                    _not(
                                                                                                          _eq_QUMARK(
                                                                                                            false                                                                                                            ,
                                                                                                                _pair_QUMARK(
                                                                                                                  __v__25__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30314
                                                                                                                )
                                                                                                          )
                                                                                                    )
                                                                                                 ) then
                                                                                                    begin #makeLet
                                                                                                      ___lambda = lambda { |__v__26__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30315| 
                                                                                                          if ( 
                                                                                                              _not(
                                                                                                                    _eq_QUMARK(
                                                                                                                      false                                                                                                                      ,
                                                                                                                          _pair_QUMARK(
                                                                                                                            __v__26__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30315
                                                                                                                          )
                                                                                                                    )
                                                                                                              )
                                                                                                           ) then
                                                                                                              begin #makeLet
                                                                                                                ___lambda = lambda { |__v__27__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30316| 
                                                                                                                    begin #makeLet
                                                                                                                      ___lambda = lambda { |_var| 
                                                                                                                          begin #makeLet
                                                                                                                            ___lambda = lambda { |__v__28__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30317| 
                                                                                                                                if ( 
                                                                                                                                    _not(
                                                                                                                                          _eq_QUMARK(
                                                                                                                                            false                                                                                                                                            ,
                                                                                                                                                _pair_QUMARK(
                                                                                                                                                  __v__28__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30317
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    )
                                                                                                                                 ) then
                                                                                                                                    begin #makeLet
                                                                                                                                      ___lambda = lambda { |__v__29__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30318| 
                                                                                                                                          begin #makeLet
                                                                                                                                            ___lambda = lambda { |_expr| 
                                                                                                                                                begin #makeLet
                                                                                                                                                  ___lambda = lambda { |__v__30__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30319| 
                                                                                                                                                      if ( 
                                                                                                                                                          _not(
                                                                                                                                                                _eq_QUMARK(
                                                                                                                                                                  false                                                                                                                                                                  ,
                                                                                                                                                                      _null_QUMARK(
                                                                                                                                                                        __v__30__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30319
                                                                                                                                                                      )
                                                                                                                                                                )
                                                                                                                                                          )
                                                                                                                                                       ) then
                                                                                                                                                          begin #makeLet
                                                                                                                                                            ___lambda = lambda { |__v__31__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30320| 
                                                                                                                                                                if ( 
                                                                                                                                                                    _not(
                                                                                                                                                                          _eq_QUMARK(
                                                                                                                                                                            false                                                                                                                                                                            ,
                                                                                                                                                                                _null_QUMARK(
                                                                                                                                                                                  __v__31__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30320
                                                                                                                                                                                )
                                                                                                                                                                          )
                                                                                                                                                                    )
                                                                                                                                                                 ) then
                                                                                                                                                                    begin #makeLet
                                                                                                                                                                      ___lambda = lambda { |__v__32__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30321| 
                                                                                                                                                                          if ( 
                                                                                                                                                                              _not(
                                                                                                                                                                                    _eq_QUMARK(
                                                                                                                                                                                      false                                                                                                                                                                                      ,
                                                                                                                                                                                          trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                                                                                                              trampCall(@_list_QUMARK)                                                                                                                                                                                            ,
                                                                                                                                                                                          [
                                                                                                                                                                                              __v__32__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30321
                                                                                                                                                                                          ]
                                                                                                                                                                                                       ))
                                                                                                                                                                                    )
                                                                                                                                                                              )
                                                                                                                                                                           ) then
                                                                                                                                                                              begin #makeLet
                                                                                                                                                                                ___lambda = lambda { |_body| 
                                                                                                                                                                                      _cons(
                                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                                                                                trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                                                                              ,
                                                                                                                                                                                            [
                                                                                                                                                                                                :"raise"
                                                                                                                                                                                            ]
                                                                                                                                                                                                         ))                                                                                                                                                                                        ,
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                                                                                      trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                                                                                    ,
                                                                                                                                                                                                  [
                                                                                                                                                                                                      :"nendo-syntax-error"
                                                                                                                                                                                                  ]
                                                                                                                                                                                                               ))                                                                                                                                                                                              ,
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                    "let1 requires (let1 var expr body ...) form."                                                                                                                                                                                                    ,
                                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                                  )
                                                                                                                                                                                            )
                                                                                                                                                                                      )
                                                                                                                                                                                } ; ___lambda.call(
                                                                                                                                                                                    __v__32__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30321
                                                                                                                                                                                           )
                                                                                                                                                                              end
                                                                                                                                                                          else
                                                                                                                                                                            false
                                                                                                                                                                          end
                                                                                                                                                                      } ; ___lambda.call(
                                                                                                                                                                              _cdr(
                                                                                                                                                                                __v__24__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30313
                                                                                                                                                                              )
                                                                                                                                                                                 )
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                  false
                                                                                                                                                                end
                                                                                                                                                            } ; ___lambda.call(
                                                                                                                                                                    _cdr(
                                                                                                                                                                      __v__25__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30314
                                                                                                                                                                    )
                                                                                                                                                                       )
                                                                                                                                                          end
                                                                                                                                                      else
                                                                                                                                                        false
                                                                                                                                                      end
                                                                                                                                                  } ; ___lambda.call(
                                                                                                                                                          _cdr(
                                                                                                                                                            __v__28__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30317
                                                                                                                                                          )
                                                                                                                                                             )
                                                                                                                                                end
                                                                                                                                            } ; ___lambda.call(
                                                                                                                                                __v__29__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30318
                                                                                                                                                       )
                                                                                                                                          end
                                                                                                                                      } ; ___lambda.call(
                                                                                                                                              _car(
                                                                                                                                                __v__28__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30317
                                                                                                                                              )
                                                                                                                                                 )
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                  false
                                                                                                                                end
                                                                                                                            } ; ___lambda.call(
                                                                                                                                    _cdr(
                                                                                                                                      __v__26__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30315
                                                                                                                                    )
                                                                                                                                       )
                                                                                                                          end
                                                                                                                      } ; ___lambda.call(
                                                                                                                          __v__27__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30316
                                                                                                                                 )
                                                                                                                    end
                                                                                                                } ; ___lambda.call(
                                                                                                                        _car(
                                                                                                                          __v__26__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30315
                                                                                                                        )
                                                                                                                           )
                                                                                                              end
                                                                                                          else
                                                                                                            false
                                                                                                          end
                                                                                                      } ; ___lambda.call(
                                                                                                              _car(
                                                                                                                __v__25__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30314
                                                                                                              )
                                                                                                                 )
                                                                                                    end
                                                                                                else
                                                                                                  false
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                    _car(
                                                                                                      __v__24__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30313
                                                                                                    )
                                                                                                       )
                                                                                          end
                                                                                      else
                                                                                        false
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          _cdr(
                                                                                            __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
                                                                                          )
                                                                                             )
                                                                                end
                                                                                     )
                                                                        end
                                                                    end
                                                                } ; ___lambda.call(
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |__v__17__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30306| 
                                                                            if ( 
                                                                                _not(
                                                                                      _eq_QUMARK(
                                                                                        false                                                                                        ,
                                                                                            _pair_QUMARK(
                                                                                              __v__17__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30306
                                                                                            )
                                                                                      )
                                                                                )
                                                                             ) then
                                                                                begin #makeLet
                                                                                  ___lambda = lambda { |__v__18__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30307| 
                                                                                      if ( 
                                                                                          _not(
                                                                                                _eq_QUMARK(
                                                                                                  false                                                                                                  ,
                                                                                                      _pair_QUMARK(
                                                                                                        __v__18__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30307
                                                                                                      )
                                                                                                )
                                                                                          )
                                                                                       ) then
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |__v__19__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30308| 
                                                                                                begin #makeLet
                                                                                                  ___lambda = lambda { |_var| 
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |__v__20__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30309| 
                                                                                                            if ( 
                                                                                                                _not(
                                                                                                                      _eq_QUMARK(
                                                                                                                        false                                                                                                                        ,
                                                                                                                            _pair_QUMARK(
                                                                                                                              __v__20__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30309
                                                                                                                            )
                                                                                                                      )
                                                                                                                )
                                                                                                             ) then
                                                                                                                begin #makeLet
                                                                                                                  ___lambda = lambda { |__v__21__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30310| 
                                                                                                                      begin #makeLet
                                                                                                                        ___lambda = lambda { |_expr| 
                                                                                                                            begin #makeLet
                                                                                                                              ___lambda = lambda { |__v__22__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30311| 
                                                                                                                                  if ( 
                                                                                                                                      _not(
                                                                                                                                            _eq_QUMARK(
                                                                                                                                              false                                                                                                                                              ,
                                                                                                                                                  _null_QUMARK(
                                                                                                                                                    __v__22__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30311
                                                                                                                                                  )
                                                                                                                                            )
                                                                                                                                      )
                                                                                                                                   ) then
                                                                                                                                      begin #makeLet
                                                                                                                                        ___lambda = lambda { |__v__23__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30312| 
                                                                                                                                            if ( 
                                                                                                                                                _not(
                                                                                                                                                      _eq_QUMARK(
                                                                                                                                                        false                                                                                                                                                        ,
                                                                                                                                                            trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                                                                                trampCall(@_list_QUMARK)                                                                                                                                                              ,
                                                                                                                                                            [
                                                                                                                                                                __v__23__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30312
                                                                                                                                                            ]
                                                                                                                                                                         ))
                                                                                                                                                      )
                                                                                                                                                )
                                                                                                                                             ) then
                                                                                                                                                begin #makeLet
                                                                                                                                                  ___lambda = lambda { |_body| 
                                                                                                                                                        _cons(
                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                                                  trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                                                ,
                                                                                                                                                              [
                                                                                                                                                                  :"raise"
                                                                                                                                                              ]
                                                                                                                                                                           ))                                                                                                                                                          ,
                                                                                                                                                              _cons(
                                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                                                        trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                                                      ,
                                                                                                                                                                    [
                                                                                                                                                                        :"nendo-syntax-error"
                                                                                                                                                                    ]
                                                                                                                                                                                 ))                                                                                                                                                                ,
                                                                                                                                                                    _cons(
                                                                                                                                                                      "let1 requires (let1 var expr body ...) form."                                                                                                                                                                      ,
                                                                                                                                                                      Cell.new()
                                                                                                                                                                    )
                                                                                                                                                              )
                                                                                                                                                        )
                                                                                                                                                  } ; ___lambda.call(
                                                                                                                                                      __v__23__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30312
                                                                                                                                                             )
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                              false
                                                                                                                                            end
                                                                                                                                        } ; ___lambda.call(
                                                                                                                                                _cdr(
                                                                                                                                                  __v__17__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30306
                                                                                                                                                )
                                                                                                                                                   )
                                                                                                                                      end
                                                                                                                                  else
                                                                                                                                    false
                                                                                                                                  end
                                                                                                                              } ; ___lambda.call(
                                                                                                                                      _cdr(
                                                                                                                                        __v__20__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30309
                                                                                                                                      )
                                                                                                                                         )
                                                                                                                            end
                                                                                                                        } ; ___lambda.call(
                                                                                                                            __v__21__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30310
                                                                                                                                   )
                                                                                                                      end
                                                                                                                  } ; ___lambda.call(
                                                                                                                          _car(
                                                                                                                            __v__20__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30309
                                                                                                                          )
                                                                                                                             )
                                                                                                                end
                                                                                                            else
                                                                                                              false
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                                _cdr(
                                                                                                                  __v__18__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30307
                                                                                                                )
                                                                                                                   )
                                                                                                      end
                                                                                                  } ; ___lambda.call(
                                                                                                      __v__19__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30308
                                                                                                             )
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                    _car(
                                                                                                      __v__18__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30307
                                                                                                    )
                                                                                                       )
                                                                                          end
                                                                                      else
                                                                                        false
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          _car(
                                                                                            __v__17__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30306
                                                                                          )
                                                                                             )
                                                                                end
                                                                            else
                                                                              false
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                _cdr(
                                                                                  __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
                                                                                )
                                                                                   )
                                                                      end
                                                                           )
                                                              end
                                                          end
                                                      } ; ___lambda.call(
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__10__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30299| 
                                                                  if ( 
                                                                      _not(
                                                                            _eq_QUMARK(
                                                                              false                                                                              ,
                                                                                  _pair_QUMARK(
                                                                                    __v__10__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30299
                                                                                  )
                                                                            )
                                                                      )
                                                                   ) then
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |__v__11__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30300| 
                                                                            if ( 
                                                                                _not(
                                                                                      _eq_QUMARK(
                                                                                        false                                                                                        ,
                                                                                            _pair_QUMARK(
                                                                                              __v__11__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30300
                                                                                            )
                                                                                      )
                                                                                )
                                                                             ) then
                                                                                begin #makeLet
                                                                                  ___lambda = lambda { |__v__12__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30301| 
                                                                                      begin #makeLet
                                                                                        ___lambda = lambda { |_var| 
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |__v__13__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30302| 
                                                                                                  if ( 
                                                                                                      _not(
                                                                                                            _eq_QUMARK(
                                                                                                              false                                                                                                              ,
                                                                                                                  _null_QUMARK(
                                                                                                                    __v__13__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30302
                                                                                                                  )
                                                                                                            )
                                                                                                      )
                                                                                                   ) then
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |__v__14__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30303| 
                                                                                                            if ( 
                                                                                                                _not(
                                                                                                                      _eq_QUMARK(
                                                                                                                        false                                                                                                                        ,
                                                                                                                            _pair_QUMARK(
                                                                                                                              __v__14__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30303
                                                                                                                            )
                                                                                                                      )
                                                                                                                )
                                                                                                             ) then
                                                                                                                begin #makeLet
                                                                                                                  ___lambda = lambda { |__v__15__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30304| 
                                                                                                                      begin #makeLet
                                                                                                                        ___lambda = lambda { |_expr| 
                                                                                                                            begin #makeLet
                                                                                                                              ___lambda = lambda { |__v__16__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30305| 
                                                                                                                                  if ( 
                                                                                                                                      _not(
                                                                                                                                            _eq_QUMARK(
                                                                                                                                              false                                                                                                                                              ,
                                                                                                                                                  trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                                                                      trampCall(@_list_QUMARK)                                                                                                                                                    ,
                                                                                                                                                  [
                                                                                                                                                      __v__16__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30305
                                                                                                                                                  ]
                                                                                                                                                               ))
                                                                                                                                            )
                                                                                                                                      )
                                                                                                                                   ) then
                                                                                                                                      begin #makeLet
                                                                                                                                        ___lambda = lambda { |_body| 
                                                                                                                                              _cons(
                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                                        trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                                      ,
                                                                                                                                                    [
                                                                                                                                                        :"raise"
                                                                                                                                                    ]
                                                                                                                                                                 ))                                                                                                                                                ,
                                                                                                                                                    _cons(
                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                                                              trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                                                            ,
                                                                                                                                                          [
                                                                                                                                                              :"nendo-syntax-error"
                                                                                                                                                          ]
                                                                                                                                                                       ))                                                                                                                                                      ,
                                                                                                                                                          _cons(
                                                                                                                                                            "let1 requires (let1 var expr body ...) form."                                                                                                                                                            ,
                                                                                                                                                            Cell.new()
                                                                                                                                                          )
                                                                                                                                                    )
                                                                                                                                              )
                                                                                                                                        } ; ___lambda.call(
                                                                                                                                            __v__16__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30305
                                                                                                                                                   )
                                                                                                                                      end
                                                                                                                                  else
                                                                                                                                    false
                                                                                                                                  end
                                                                                                                              } ; ___lambda.call(
                                                                                                                                      _cdr(
                                                                                                                                        __v__14__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30303
                                                                                                                                      )
                                                                                                                                         )
                                                                                                                            end
                                                                                                                        } ; ___lambda.call(
                                                                                                                            __v__15__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30304
                                                                                                                                   )
                                                                                                                      end
                                                                                                                  } ; ___lambda.call(
                                                                                                                          _car(
                                                                                                                            __v__14__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30303
                                                                                                                          )
                                                                                                                             )
                                                                                                                end
                                                                                                            else
                                                                                                              false
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                                _cdr(
                                                                                                                  __v__10__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30299
                                                                                                                )
                                                                                                                   )
                                                                                                      end
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      _cdr(
                                                                                                        __v__11__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30300
                                                                                                      )
                                                                                                         )
                                                                                            end
                                                                                        } ; ___lambda.call(
                                                                                            __v__12__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30301
                                                                                                   )
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          _car(
                                                                                            __v__11__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30300
                                                                                          )
                                                                                             )
                                                                                end
                                                                            else
                                                                              false
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                _car(
                                                                                  __v__10__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30299
                                                                                )
                                                                                   )
                                                                      end
                                                                  else
                                                                    false
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _cdr(
                                                                        __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
                                                                      )
                                                                         )
                                                            end
                                                                 )
                                                    end
                                                end
                                            } ; ___lambda.call(
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30294| 
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                        _pair_QUMARK(
                                                                          __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30294
                                                                        )
                                                                  )
                                                            )
                                                         ) then
                                                            begin #makeLet
                                                              ___lambda = lambda { |__v__6__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30295| 
                                                                  begin #makeLet
                                                                    ___lambda = lambda { |_var| 
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |__v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30296| 
                                                                              if ( 
                                                                                  _not(
                                                                                        _eq_QUMARK(
                                                                                          false                                                                                          ,
                                                                                              _pair_QUMARK(
                                                                                                __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30296
                                                                                              )
                                                                                        )
                                                                                  )
                                                                               ) then
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |__v__8__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30297| 
                                                                                        begin #makeLet
                                                                                          ___lambda = lambda { |_expr| 
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |__v__9__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30298| 
                                                                                                    if ( 
                                                                                                        _not(
                                                                                                              _eq_QUMARK(
                                                                                                                false                                                                                                                ,
                                                                                                                    _null_QUMARK(
                                                                                                                      __v__9__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30298
                                                                                                                    )
                                                                                                              )
                                                                                                        )
                                                                                                     ) then
                                                                                                          _cons(
                                                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                  ,
                                                                                                                [
                                                                                                                    :"raise"
                                                                                                                ]
                                                                                                                             ))                                                                                                            ,
                                                                                                                _cons(
                                                                                                                      trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                                                          trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                                                        ,
                                                                                                                      [
                                                                                                                          :"nendo-syntax-error"
                                                                                                                      ]
                                                                                                                                   ))                                                                                                                  ,
                                                                                                                      _cons(
                                                                                                                        "let1 requires (let1 var expr body ...) form."                                                                                                                        ,
                                                                                                                        Cell.new()
                                                                                                                      )
                                                                                                                )
                                                                                                          )
                                                                                                    else
                                                                                                      false
                                                                                                    end
                                                                                                } ; ___lambda.call(
                                                                                                        _cdr(
                                                                                                          __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30296
                                                                                                        )
                                                                                                           )
                                                                                              end
                                                                                          } ; ___lambda.call(
                                                                                              __v__8__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30297
                                                                                                     )
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            _car(
                                                                                              __v__7__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30296
                                                                                            )
                                                                                               )
                                                                                  end
                                                                              else
                                                                                false
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  _cdr(
                                                                                    __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30294
                                                                                  )
                                                                                     )
                                                                        end
                                                                    } ; ___lambda.call(
                                                                        __v__6__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30295
                                                                               )
                                                                  end
                                                              } ; ___lambda.call(
                                                                      _car(
                                                                        __v__5__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30294
                                                                      )
                                                                         )
                                                            end
                                                        else
                                                          false
                                                        end
                                                    } ; ___lambda.call(
                                                            _cdr(
                                                              __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
                                                            )
                                                               )
                                                  end
                                                       )
                                          end
                                      end
                                  } ; ___lambda.call(
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30291| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30291
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30292| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_var| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30293| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                    _null_QUMARK(
                                                                                      __v__4__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30293
                                                                                    )
                                                                              )
                                                                        )
                                                                     ) then
                                                                          _cons(
                                                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                  ,
                                                                                [
                                                                                    :"raise"
                                                                                ]
                                                                                             ))                                                                            ,
                                                                                _cons(
                                                                                      trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                                                          trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                                                        ,
                                                                                      [
                                                                                          :"nendo-syntax-error"
                                                                                      ]
                                                                                                   ))                                                                                  ,
                                                                                      _cons(
                                                                                        "let1 requires (let1 var expr body ...) form."                                                                                        ,
                                                                                        Cell.new()
                                                                                      )
                                                                                )
                                                                          )
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _cdr(
                                                                          __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30291
                                                                        )
                                                                           )
                                                              end
                                                          } ; ___lambda.call(
                                                              __v__3__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30292
                                                                     )
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__2__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30291
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                    __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
                                                  )
                                                     )
                                        end
                                             )
                                end
                            end
                        } ; ___lambda.call(
                              begin #makeLet
                                ___lambda = lambda { |__v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30290| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _null_QUMARK(
                                                      __v__1__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30290
                                                    )
                                              )
                                        )
                                     ) then
                                          _cons(
                                                trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                    trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                  ,
                                                [
                                                    :"raise"
                                                ]
                                                             ))                                            ,
                                                _cons(
                                                      trampCall( callProcedure(  '__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',  '_rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283',
                                                          trampCall(__rename__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30283)                                                        ,
                                                      [
                                                          :"nendo-syntax-error"
                                                      ]
                                                                   ))                                                  ,
                                                      _cons(
                                                        "let1 requires (let1 var expr body ...) form."                                                        ,
                                                        Cell.new()
                                                      )
                                                )
                                          )
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__6ca5d703c7bb64092dc87361d771b25533b45b8f_30282
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
      def self._readlines_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_readlines', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_readlines'] = self.method( :_readlines_METHOD )
    @_readlines = 
    trampCall(
          Proc.new { |_io| 
              if ( 
                  _not(
                      trampCall(_io).is_a?(
                            trampCall(IO)
                        )
                  )
               ) then
                    delayCall( '__PAMARKraise',  '%raise',
                        trampCall(@__PAMARKraise)                      ,
                    [
                          trampCall(ArgumentError)                        ,
                        "readlines expects IO object."                        ,
                            trampCall( self._sprintf_METHOD(  'sprintf',
                                trampCall(@_sprintf)                              ,
                            [
                                "%s:%s raised %s"                                ,
                                    trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                        trampCall(@__ASMARKFILE_ASMARK)                                      ,
                                    [
                                    ]
                                                 ))                                ,
                                    trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                        trampCall(@__ASMARKLINE_ASMARK)                                      ,
                                    [
                                    ]
                                                 ))                                ,
                                  trampCall(ArgumentError)
                            ]
                                         ))
                    ]
                                 )
              else
                    delayCall( '_map',  'map',
                        trampCall(@_map)                      ,
                    [
                          Proc.new { |_x| 
                              trampCall(_x).chomp(
                                )
                          }                        ,
                            trampCall( self._ruby_MIMARKlazy_METHOD(  'ruby-lazy',
                                trampCall(@_ruby_MIMARKlazy)                              ,
                            [
                                  trampCall(_io).each_line(
                                    )
                            ]
                                         ))
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
      def self._readchars_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_readchars', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_readchars'] = self.method( :_readchars_METHOD )
    @_readchars = 
    trampCall(
          Proc.new { |_io| 
              if ( 
                  _not(
                      trampCall(_io).is_a?(
                            trampCall(IO)
                        )
                  )
               ) then
                    delayCall( '__PAMARKraise',  '%raise',
                        trampCall(@__PAMARKraise)                      ,
                    [
                          trampCall(ArgumentError)                        ,
                        "readlines expects IO object."                        ,
                            trampCall( self._sprintf_METHOD(  'sprintf',
                                trampCall(@_sprintf)                              ,
                            [
                                "%s:%s raised %s"                                ,
                                    trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                        trampCall(@__ASMARKFILE_ASMARK)                                      ,
                                    [
                                    ]
                                                 ))                                ,
                                    trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                        trampCall(@__ASMARKLINE_ASMARK)                                      ,
                                    [
                                    ]
                                                 ))                                ,
                                  trampCall(ArgumentError)
                            ]
                                         ))
                    ]
                                 )
              else
                    delayCall( '_ruby_MIMARKlazy',  'ruby-lazy',
                        trampCall(@_ruby_MIMARKlazy)                      ,
                    [
                          trampCall(_io).each_char(
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
