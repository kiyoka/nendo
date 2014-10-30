#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
  begin #execFunc
      def self._record_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_record_QUMARK'] = self.method( :_record_QUMARK_METHOD )
    @_record_QUMARK = 
    trampCall(
          Proc.new { |_type| 
              trampCall(_type).is_a?(
                    trampCall(Record)
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._record_MIMARKconstructor_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_MIMARKconstructor', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_record_MIMARKconstructor'] = self.method( :_record_MIMARKconstructor_METHOD )
    @_record_MIMARKconstructor = 
    trampCall(
          Proc.new { |_rtd,*__rest__| _rest_MIMARKtags = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_arg_MIMARKcount,_tags| 
                    Proc.new { |*__rest__| _args = __rest__[0] ;  
                        if ( 
                            __EQMARK(
                                  _length(
                                      trampCall(_args)
                                  )                              ,
                                trampCall(_arg_MIMARKcount)
                            )
                         ) then
                            begin #makeLet
                              ___lambda = lambda { |_new| 
                                    trampCall( self._for_MIMARKeach_METHOD(  'for-each',
                                        trampCall(@_for_MIMARKeach)                                      ,
                                    [
                                          Proc.new { |_tag,_arg| 
                                              trampCall(_new).set!(
                                                    trampCall(_tag)                                                  ,
                                                    trampCall(_arg)
                                                )
                                          }                                        ,
                                          trampCall(_tags)                                        ,
                                          trampCall(_args)
                                    ]
                                                 ))
                                  trampCall(_new)
                              } ; ___lambda.call(
                                      trampCall( self._make_MIMARKrecord_MIMARKtype_METHOD(  'make-record-type',
                                          trampCall(@_make_MIMARKrecord_MIMARKtype)                                        ,
                                      [
                                            trampCall(_rtd).typename                                          ,
                                            trampCall(_tags)
                                      ]
                                                   ))
                                         )
                            end
                        else
                              delayCall( '__PAMARKraise',  '%raise',
                                  trampCall(@__PAMARKraise)                                ,
                              [
                                    trampCall(ArgumentError)                                  ,
                                      trampCall( self._sprintf_METHOD(  'sprintf',
                                          trampCall(@_sprintf)                                        ,
                                      [
                                          "wrong number of arguments to constructor [%s] [%s]"                                          ,
                                            trampCall(_rtd)                                          ,
                                            trampCall(_args)
                                      ]
                                                   ))                                  ,
                                      trampCall( self._sprintf_METHOD(  'sprintf',
                                          trampCall(@_sprintf)                                        ,
                                      [
                                          "%s:%s raised %s"                                          ,
                                              trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                                  trampCall(@__ASMARKFILE_ASMARK)                                                ,
                                              [
                                              ]
                                                           ))                                          ,
                                              trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                                  trampCall(@__ASMARKLINE_ASMARK)                                                ,
                                              [
                                              ]
                                                           ))                                          ,
                                            trampCall(ArgumentError)
                                      ]
                                                   ))
                              ]
                                           )
                        end
                    }
                } ; ___lambda.call(
                        _length(
                              _car(
                                  trampCall(_rest_MIMARKtags)
                              )
                        )                    ,
                        _car(
                            trampCall(_rest_MIMARKtags)
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
      def self._record_MIMARKpredicate_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_MIMARKpredicate', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_record_MIMARKpredicate'] = self.method( :_record_MIMARKpredicate_METHOD )
    @_record_MIMARKpredicate = 
    trampCall(
          Proc.new { |_type| 
              Proc.new { |_thing| 
                  if ( 
                      _not(
                            _eq_QUMARK(
                              false                              ,
                                  trampCall( self._record_QUMARK_METHOD(  'record?',
                                      trampCall(@_record_QUMARK)                                    ,
                                  [
                                        trampCall(_type)
                                  ]
                                               ))
                            )
                      )
                   ) then
                      if ( 
                          _not(
                                _eq_QUMARK(
                                  false                                  ,
                                      trampCall( self._record_QUMARK_METHOD(  'record?',
                                          trampCall(@_record_QUMARK)                                        ,
                                      [
                                            trampCall(_thing)
                                      ]
                                                   ))
                                )
                          )
                       ) then
                            delayCall( '_eq_QUMARK',  'eq?',
                                trampCall(@_eq_QUMARK)                              ,
                            [
                                  trampCall(_type).typename                                ,
                                  trampCall(_thing).typename
                            ]
                                         )
                      else
                        false
                      end
                  else
                    false
                  end
              }
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._record_MIMARKaccessor_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_MIMARKaccessor', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_record_MIMARKaccessor'] = self.method( :_record_MIMARKaccessor_METHOD )
    @_record_MIMARKaccessor = 
    trampCall(
          Proc.new { |_type,_tag| 
              Proc.new { |_thing| 
                  if ( 
                    trampCall( callProcedure( nil, 'anonymouse', 
                          trampCall( self._record_MIMARKpredicate_METHOD(  'record-predicate',
                              trampCall(@_record_MIMARKpredicate)                            ,
                          [
                                trampCall(_type)
                          ]
                                       ))                      ,
                    [
                          trampCall(_thing)
                    ]
                              ))
                   ) then
                      trampCall(_thing).get(
                            trampCall(_tag)
                        )
                  else
                        delayCall( '__PAMARKraise',  '%raise',
                            trampCall(@__PAMARKraise)                          ,
                        [
                              trampCall(ArgumentError)                            ,
                                trampCall( self._sprintf_METHOD(  'sprintf',
                                    trampCall(@_sprintf)                                  ,
                                [
                                    "accessor applied to bad value [%s] [%s] [%s]"                                    ,
                                      trampCall(_type)                                    ,
                                      trampCall(_tag)                                    ,
                                      trampCall(_thing)
                                ]
                                             ))                            ,
                                trampCall( self._sprintf_METHOD(  'sprintf',
                                    trampCall(@_sprintf)                                  ,
                                [
                                    "%s:%s raised %s"                                    ,
                                        trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                            trampCall(@__ASMARKFILE_ASMARK)                                          ,
                                        [
                                        ]
                                                     ))                                    ,
                                        trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                            trampCall(@__ASMARKLINE_ASMARK)                                          ,
                                        [
                                        ]
                                                     ))                                    ,
                                      trampCall(ArgumentError)
                                ]
                                             ))
                        ]
                                     )
                  end
              }
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._record_MIMARKmodifier_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_MIMARKmodifier', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_record_MIMARKmodifier'] = self.method( :_record_MIMARKmodifier_METHOD )
    @_record_MIMARKmodifier = 
    trampCall(
          Proc.new { |_type,_tag| 
              Proc.new { |_thing,_value| 
                  if ( 
                    trampCall( callProcedure( nil, 'anonymouse', 
                          trampCall( self._record_MIMARKpredicate_METHOD(  'record-predicate',
                              trampCall(@_record_MIMARKpredicate)                            ,
                          [
                                trampCall(_type)
                          ]
                                       ))                      ,
                    [
                          trampCall(_thing)
                    ]
                              ))
                   ) then
                      trampCall(_thing).set!(
                            trampCall(_tag)                          ,
                            trampCall(_value)
                        )
                  else
                        delayCall( '__PAMARKraise',  '%raise',
                            trampCall(@__PAMARKraise)                          ,
                        [
                              trampCall(ArgumentError)                            ,
                                trampCall( self._sprintf_METHOD(  'sprintf',
                                    trampCall(@_sprintf)                                  ,
                                [
                                    "modifier applied to bad value [%s] [%s] [%s]"                                    ,
                                      trampCall(_type)                                    ,
                                      trampCall(_tag)                                    ,
                                      trampCall(_thing)
                                ]
                                             ))                            ,
                                trampCall( self._sprintf_METHOD(  'sprintf',
                                    trampCall(@_sprintf)                                  ,
                                [
                                    "%s:%s raised %s"                                    ,
                                        trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                            trampCall(@__ASMARKFILE_ASMARK)                                          ,
                                        [
                                        ]
                                                     ))                                    ,
                                        trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                            trampCall(@__ASMARKLINE_ASMARK)                                          ,
                                        [
                                        ]
                                                     ))                                    ,
                                      trampCall(ArgumentError)
                                ]
                                             ))
                        ]
                                     )
                  end
              }
          }
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------
