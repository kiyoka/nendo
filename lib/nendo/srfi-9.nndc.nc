#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
    delayCall( '_load',  'load',
        trampCall(@_load)      ,
    [
        "util/record"
    ]
                 )
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._define_MIMARKrecord_MIMARKtype_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_define_MIMARKrecord_MIMARKtype', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_define_MIMARKrecord_MIMARKtype'] = self.method( :_define_MIMARKrecord_MIMARKtype_METHOD )
    @_define_MIMARKrecord_MIMARKtype = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50225,__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226,__compare__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50227| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50251| 
                            if ( 
                              trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50251)
                             ) then
                                trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50251)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50252| 
                                      if ( 
                                        trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50252)
                                       ) then
                                          trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50252)
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
                                                  __expr__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50225
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
                                ___lambda = lambda { |__v__1__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50233| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _pair_QUMARK(
                                                      __v__1__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50233
                                                    )
                                              )
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50234| 
                                              begin #makeLet
                                                ___lambda = lambda { |_type| 
                                                    begin #makeLet
                                                      ___lambda = lambda { |__v__3__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50235| 
                                                          if ( 
                                                              _not(
                                                                    _eq_QUMARK(
                                                                      false                                                                      ,
                                                                          _pair_QUMARK(
                                                                            __v__3__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50235
                                                                          )
                                                                    )
                                                              )
                                                           ) then
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__4__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50236| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                    _pair_QUMARK(
                                                                                      __v__4__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50236
                                                                                    )
                                                                              )
                                                                        )
                                                                     ) then
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |__v__5__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50237| 
                                                                              begin #makeLet
                                                                                ___lambda = lambda { |_constructor| 
                                                                                    begin #makeLet
                                                                                      ___lambda = lambda { |__v__6__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50238| 
                                                                                          if ( 
                                                                                              _not(
                                                                                                    _eq_QUMARK(
                                                                                                      false                                                                                                      ,
                                                                                                          trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                              trampCall(@_list_QUMARK)                                                                                                            ,
                                                                                                          [
                                                                                                              __v__6__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50238
                                                                                                          ]
                                                                                                                       ))
                                                                                                    )
                                                                                              )
                                                                                           ) then
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |_constructor_MIMARKtag| 
                                                                                                    begin #makeLet
                                                                                                      ___lambda = lambda { |__v__7__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50239| 
                                                                                                          if ( 
                                                                                                              _not(
                                                                                                                    _eq_QUMARK(
                                                                                                                      false                                                                                                                      ,
                                                                                                                          _pair_QUMARK(
                                                                                                                            __v__7__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50239
                                                                                                                          )
                                                                                                                    )
                                                                                                              )
                                                                                                           ) then
                                                                                                              begin #makeLet
                                                                                                                ___lambda = lambda { |__v__8__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50240| 
                                                                                                                    begin #makeLet
                                                                                                                      ___lambda = lambda { |_predicate| 
                                                                                                                          begin #makeLet
                                                                                                                            ___lambda = lambda { |__v__9__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50241| 
                                                                                                                                begin #makeLetrec
                                                                                                                                  ___lambda = lambda { |__lp__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50228| 
                                                                                                                                      __lp__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50228                                                                                                                                       = 
                                                                                                                                        Proc.new { |__v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50242,__field_MIMARKtag_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50243,__accessor_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50244,__more_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50245| 
                                                                                                                                            if ( 
                                                                                                                                                _null_QUMARK(
                                                                                                                                                  __v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50242
                                                                                                                                                )
                                                                                                                                             ) then
                                                                                                                                                begin #makeLet
                                                                                                                                                  ___lambda = lambda { |_field_MIMARKtag,_accessor,_more| 
                                                                                                                                                        _cons(
                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                  trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                ,
                                                                                                                                                              [
                                                                                                                                                                  :"begin"
                                                                                                                                                              ]
                                                                                                                                                                           ))                                                                                                                                                          ,
                                                                                                                                                              _cons(
                                                                                                                                                                    _cons(
                                                                                                                                                                          trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                              trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                            ,
                                                                                                                                                                          [
                                                                                                                                                                              :"define"
                                                                                                                                                                          ]
                                                                                                                                                                                       ))                                                                                                                                                                      ,
                                                                                                                                                                          _cons(
                                                                                                                                                                              trampCall(_type)                                                                                                                                                                            ,
                                                                                                                                                                                _cons(
                                                                                                                                                                                      _cons(
                                                                                                                                                                                            trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                                trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                              ,
                                                                                                                                                                                            [
                                                                                                                                                                                                :"make-record-type"
                                                                                                                                                                                            ]
                                                                                                                                                                                                         ))                                                                                                                                                                                        ,
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                                            trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                                          ,
                                                                                                                                                                                                        [
                                                                                                                                                                                                            :"quote"
                                                                                                                                                                                                        ]
                                                                                                                                                                                                                     ))                                                                                                                                                                                                    ,
                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                            trampCall(_type)                                                                                                                                                                                                          ,
                                                                                                                                                                                                          Cell.new()
                                                                                                                                                                                                        )
                                                                                                                                                                                                  )                                                                                                                                                                                              ,
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                                                  trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                                                ,
                                                                                                                                                                                                              [
                                                                                                                                                                                                                  :"quote"
                                                                                                                                                                                                              ]
                                                                                                                                                                                                                           ))                                                                                                                                                                                                          ,
                                                                                                                                                                                                              _cons(
                                                                                                                                                                                                                    trampCall( self._map_METHOD(  'map',
                                                                                                                                                                                                                        trampCall(@_map)                                                                                                                                                                                                                      ,
                                                                                                                                                                                                                    [
                                                                                                                                                                                                                          Proc.new { |_field_MIMARKtag| 
                                                                                                                                                                                                                              trampCall(_field_MIMARKtag)
                                                                                                                                                                                                                          }                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                          trampCall(_field_MIMARKtag)
                                                                                                                                                                                                                    ]
                                                                                                                                                                                                                                 ))                                                                                                                                                                                                                ,
                                                                                                                                                                                                                Cell.new()
                                                                                                                                                                                                              )
                                                                                                                                                                                                        )                                                                                                                                                                                                    ,
                                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                                  )
                                                                                                                                                                                            )
                                                                                                                                                                                      )                                                                                                                                                                                  ,
                                                                                                                                                                                  Cell.new()
                                                                                                                                                                                )
                                                                                                                                                                          )
                                                                                                                                                                    )                                                                                                                                                                ,
                                                                                                                                                                    _cons(
                                                                                                                                                                          _cons(
                                                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                    trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                  ,
                                                                                                                                                                                [
                                                                                                                                                                                    :"define"
                                                                                                                                                                                ]
                                                                                                                                                                                             ))                                                                                                                                                                            ,
                                                                                                                                                                                _cons(
                                                                                                                                                                                    trampCall(_constructor)                                                                                                                                                                                  ,
                                                                                                                                                                                      _cons(
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                                      trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                                    ,
                                                                                                                                                                                                  [
                                                                                                                                                                                                      :"record-constructor"
                                                                                                                                                                                                  ]
                                                                                                                                                                                                               ))                                                                                                                                                                                              ,
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                      trampCall(_type)                                                                                                                                                                                                    ,
                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                              _cons(
                                                                                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                                                        trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                                                      ,
                                                                                                                                                                                                                    [
                                                                                                                                                                                                                        :"quote"
                                                                                                                                                                                                                    ]
                                                                                                                                                                                                                                 ))                                                                                                                                                                                                                ,
                                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                                          trampCall( self._map_METHOD(  'map',
                                                                                                                                                                                                                              trampCall(@_map)                                                                                                                                                                                                                            ,
                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                Proc.new { |_constructor_MIMARKtag| 
                                                                                                                                                                                                                                    trampCall(_constructor_MIMARKtag)
                                                                                                                                                                                                                                }                                                                                                                                                                                                                              ,
                                                                                                                                                                                                                                trampCall(_constructor_MIMARKtag)
                                                                                                                                                                                                                          ]
                                                                                                                                                                                                                                       ))                                                                                                                                                                                                                      ,
                                                                                                                                                                                                                      Cell.new()
                                                                                                                                                                                                                    )
                                                                                                                                                                                                              )                                                                                                                                                                                                          ,
                                                                                                                                                                                                          Cell.new()
                                                                                                                                                                                                        )
                                                                                                                                                                                                  )
                                                                                                                                                                                            )                                                                                                                                                                                        ,
                                                                                                                                                                                        Cell.new()
                                                                                                                                                                                      )
                                                                                                                                                                                )
                                                                                                                                                                          )                                                                                                                                                                      ,
                                                                                                                                                                          _cons(
                                                                                                                                                                                _cons(
                                                                                                                                                                                      trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                          trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                        ,
                                                                                                                                                                                      [
                                                                                                                                                                                          :"define"
                                                                                                                                                                                      ]
                                                                                                                                                                                                   ))                                                                                                                                                                                  ,
                                                                                                                                                                                      _cons(
                                                                                                                                                                                          trampCall(_predicate)                                                                                                                                                                                        ,
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                                            trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                                          ,
                                                                                                                                                                                                        [
                                                                                                                                                                                                            :"record-predicate"
                                                                                                                                                                                                        ]
                                                                                                                                                                                                                     ))                                                                                                                                                                                                    ,
                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                            trampCall(_type)                                                                                                                                                                                                          ,
                                                                                                                                                                                                          Cell.new()
                                                                                                                                                                                                        )
                                                                                                                                                                                                  )                                                                                                                                                                                              ,
                                                                                                                                                                                              Cell.new()
                                                                                                                                                                                            )
                                                                                                                                                                                      )
                                                                                                                                                                                )                                                                                                                                                                            ,
                                                                                                                                                                                trampCall( self._map_METHOD(  'map',
                                                                                                                                                                                    trampCall(@_map)                                                                                                                                                                                  ,
                                                                                                                                                                                [
                                                                                                                                                                                      Proc.new { |_field_MIMARKtag,_accessor,_more| 
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226',
                                                                                                                                                                                                      trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50226)                                                                                                                                                                                                    ,
                                                                                                                                                                                                  [
                                                                                                                                                                                                      :"define-record-field"
                                                                                                                                                                                                  ]
                                                                                                                                                                                                               ))                                                                                                                                                                                              ,
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                      trampCall(_type)                                                                                                                                                                                                    ,
                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                            trampCall(_field_MIMARKtag)                                                                                                                                                                                                          ,
                                                                                                                                                                                                              _cons(
                                                                                                                                                                                                                  trampCall(_accessor)                                                                                                                                                                                                                ,
                                                                                                                                                                                                                  trampCall(_more)
                                                                                                                                                                                                              )
                                                                                                                                                                                                        )
                                                                                                                                                                                                  )
                                                                                                                                                                                            )
                                                                                                                                                                                      }                                                                                                                                                                                    ,
                                                                                                                                                                                      trampCall(_field_MIMARKtag)                                                                                                                                                                                    ,
                                                                                                                                                                                      trampCall(_accessor)                                                                                                                                                                                    ,
                                                                                                                                                                                      trampCall(_more)
                                                                                                                                                                                ]
                                                                                                                                                                                             ))
                                                                                                                                                                          )
                                                                                                                                                                    )
                                                                                                                                                              )
                                                                                                                                                        )
                                                                                                                                                  } ; ___lambda.call(
                                                                                                                                                          _reverse(
                                                                                                                                                            __field_MIMARKtag_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50243
                                                                                                                                                          )                                                                                                                                                      ,
                                                                                                                                                          _reverse(
                                                                                                                                                            __accessor_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50244
                                                                                                                                                          )                                                                                                                                                      ,
                                                                                                                                                          _reverse(
                                                                                                                                                            __more_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50245
                                                                                                                                                          )
                                                                                                                                                             )
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                if ( 
                                                                                                                                                    _not(
                                                                                                                                                          _eq_QUMARK(
                                                                                                                                                            false                                                                                                                                                            ,
                                                                                                                                                                _pair_QUMARK(
                                                                                                                                                                  __v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50242
                                                                                                                                                                )
                                                                                                                                                          )
                                                                                                                                                    )
                                                                                                                                                 ) then
                                                                                                                                                    begin #makeLet
                                                                                                                                                      ___lambda = lambda { |__v__11__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50246| 
                                                                                                                                                          if ( 
                                                                                                                                                              _not(
                                                                                                                                                                    _eq_QUMARK(
                                                                                                                                                                      false                                                                                                                                                                      ,
                                                                                                                                                                          _pair_QUMARK(
                                                                                                                                                                            __v__11__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50246
                                                                                                                                                                          )
                                                                                                                                                                    )
                                                                                                                                                              )
                                                                                                                                                           ) then
                                                                                                                                                              begin #makeLet
                                                                                                                                                                ___lambda = lambda { |__v__12__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50247| 
                                                                                                                                                                    begin #makeLet
                                                                                                                                                                      ___lambda = lambda { |_field_MIMARKtag| 
                                                                                                                                                                          begin #makeLet
                                                                                                                                                                            ___lambda = lambda { |__v__13__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50248| 
                                                                                                                                                                                if ( 
                                                                                                                                                                                    _not(
                                                                                                                                                                                          _eq_QUMARK(
                                                                                                                                                                                            false                                                                                                                                                                                            ,
                                                                                                                                                                                                _pair_QUMARK(
                                                                                                                                                                                                  __v__13__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50248
                                                                                                                                                                                                )
                                                                                                                                                                                          )
                                                                                                                                                                                    )
                                                                                                                                                                                 ) then
                                                                                                                                                                                    begin #makeLet
                                                                                                                                                                                      ___lambda = lambda { |__v__14__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50249| 
                                                                                                                                                                                          begin #makeLet
                                                                                                                                                                                            ___lambda = lambda { |_accessor| 
                                                                                                                                                                                                begin #makeLet
                                                                                                                                                                                                  ___lambda = lambda { |__v__15__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50250| 
                                                                                                                                                                                                      begin #makeLet
                                                                                                                                                                                                        ___lambda = lambda { |_more| 
                                                                                                                                                                                                              trampCall( callProcedure(  '__lp__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50228',  '_lp__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50228',
                                                                                                                                                                                                                  trampCall(__lp__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50228)                                                                                                                                                                                                                ,
                                                                                                                                                                                                              [
                                                                                                                                                                                                                      _cdr(
                                                                                                                                                                                                                        __v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50242
                                                                                                                                                                                                                      )                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                                          trampCall(_field_MIMARKtag)                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                        __field_MIMARKtag_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50243
                                                                                                                                                                                                                      )                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                                          trampCall(_accessor)                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                        __accessor_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50244
                                                                                                                                                                                                                      )                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                                          trampCall(_more)                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                        __more_MIMARKls__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50245
                                                                                                                                                                                                                      )
                                                                                                                                                                                                              ]
                                                                                                                                                                                                                           ))
                                                                                                                                                                                                        } ; ___lambda.call(
                                                                                                                                                                                                            __v__15__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50250
                                                                                                                                                                                                                   )
                                                                                                                                                                                                      end
                                                                                                                                                                                                  } ; ___lambda.call(
                                                                                                                                                                                                          _cdr(
                                                                                                                                                                                                            __v__13__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50248
                                                                                                                                                                                                          )
                                                                                                                                                                                                             )
                                                                                                                                                                                                end
                                                                                                                                                                                            } ; ___lambda.call(
                                                                                                                                                                                                __v__14__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50249
                                                                                                                                                                                                       )
                                                                                                                                                                                          end
                                                                                                                                                                                      } ; ___lambda.call(
                                                                                                                                                                                              _car(
                                                                                                                                                                                                __v__13__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50248
                                                                                                                                                                                              )
                                                                                                                                                                                                 )
                                                                                                                                                                                    end
                                                                                                                                                                                else
                                                                                                                                                                                  false
                                                                                                                                                                                end
                                                                                                                                                                            } ; ___lambda.call(
                                                                                                                                                                                    _cdr(
                                                                                                                                                                                      __v__11__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50246
                                                                                                                                                                                    )
                                                                                                                                                                                       )
                                                                                                                                                                          end
                                                                                                                                                                      } ; ___lambda.call(
                                                                                                                                                                          __v__12__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50247
                                                                                                                                                                                 )
                                                                                                                                                                    end
                                                                                                                                                                } ; ___lambda.call(
                                                                                                                                                                        _car(
                                                                                                                                                                          __v__11__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50246
                                                                                                                                                                        )
                                                                                                                                                                           )
                                                                                                                                                              end
                                                                                                                                                          else
                                                                                                                                                            false
                                                                                                                                                          end
                                                                                                                                                      } ; ___lambda.call(
                                                                                                                                                              _car(
                                                                                                                                                                __v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50242
                                                                                                                                                              )
                                                                                                                                                                 )
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                  false
                                                                                                                                                end
                                                                                                                                            end
                                                                                                                                        }
                                                                                                                                        trampCall( callProcedure(  '__lp__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50228',  '_lp__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50228',
                                                                                                                                            trampCall(__lp__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50228)                                                                                                                                          ,
                                                                                                                                        [
                                                                                                                                            __v__9__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50241                                                                                                                                            ,
                                                                                                                                              Cell.new()                                                                                                                                            ,
                                                                                                                                              Cell.new()                                                                                                                                            ,
                                                                                                                                              Cell.new()
                                                                                                                                        ]
                                                                                                                                                     ))
                                                                                                                                  } ; ___lambda.call(
                                                                                                                                  nil
                                                                                                                                             )
                                                                                                                                end
                                                                                                                            } ; ___lambda.call(
                                                                                                                                    _cdr(
                                                                                                                                      __v__7__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50239
                                                                                                                                    )
                                                                                                                                       )
                                                                                                                          end
                                                                                                                      } ; ___lambda.call(
                                                                                                                          __v__8__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50240
                                                                                                                                 )
                                                                                                                    end
                                                                                                                } ; ___lambda.call(
                                                                                                                        _car(
                                                                                                                          __v__7__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50239
                                                                                                                        )
                                                                                                                           )
                                                                                                              end
                                                                                                          else
                                                                                                            false
                                                                                                          end
                                                                                                      } ; ___lambda.call(
                                                                                                              _cdr(
                                                                                                                __v__3__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50235
                                                                                                              )
                                                                                                                 )
                                                                                                    end
                                                                                                } ; ___lambda.call(
                                                                                                    __v__6__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50238
                                                                                                           )
                                                                                              end
                                                                                          else
                                                                                            false
                                                                                          end
                                                                                      } ; ___lambda.call(
                                                                                              _cdr(
                                                                                                __v__4__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50236
                                                                                              )
                                                                                                 )
                                                                                    end
                                                                                } ; ___lambda.call(
                                                                                    __v__5__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50237
                                                                                           )
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  _car(
                                                                                    __v__4__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50236
                                                                                  )
                                                                                     )
                                                                        end
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _car(
                                                                          __v__3__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50235
                                                                        )
                                                                           )
                                                              end
                                                          else
                                                            false
                                                          end
                                                      } ; ___lambda.call(
                                                              _cdr(
                                                                __v__1__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50233
                                                              )
                                                                 )
                                                    end
                                                } ; ___lambda.call(
                                                    __v__2__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50234
                                                           )
                                              end
                                          } ; ___lambda.call(
                                                  _car(
                                                    __v__1__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50233
                                                  )
                                                     )
                                        end
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50225
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
      def self._define_MIMARKrecord_MIMARKfield_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_define_MIMARKrecord_MIMARKfield', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_define_MIMARKrecord_MIMARKfield'] = self.method( :_define_MIMARKrecord_MIMARKfield_METHOD )
    @_define_MIMARKrecord_MIMARKfield = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |__expr__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50253,__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254,__compare__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50255| 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50277| 
                            if ( 
                              trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50277)
                             ) then
                                trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50277)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50278| 
                                      if ( 
                                        trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50278)
                                       ) then
                                          trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50278)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50279| 
                                                if ( 
                                                  trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50279)
                                                 ) then
                                                    trampCall(___gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50279)
                                                else
                                                  false
                                                end
                                            } ; ___lambda.call(
                                                  begin raise RuntimeError, 
                                                    "no expansion for" ' ' + 
                                                    _write_MIMARKto_MIMARKstring(
                                                        trampCall( self._strip_MIMARKsyntactic_MIMARKclosures_METHOD(  'strip-syntactic-closures',
                                                            trampCall(@_strip_MIMARKsyntactic_MIMARKclosures)                                                          ,
                                                        [
                                                            __expr__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50253
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
                                          ___lambda = lambda { |__v__8__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50268| 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                __v__8__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50268
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  begin #makeLet
                                                    ___lambda = lambda { |__v__9__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50269| 
                                                        begin #makeLet
                                                          ___lambda = lambda { |_type| 
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50270| 
                                                                    if ( 
                                                                        _not(
                                                                              _eq_QUMARK(
                                                                                false                                                                                ,
                                                                                    _pair_QUMARK(
                                                                                      __v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50270
                                                                                    )
                                                                              )
                                                                        )
                                                                     ) then
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |__v__11__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50271| 
                                                                              begin #makeLet
                                                                                ___lambda = lambda { |_field_MIMARKtag| 
                                                                                    begin #makeLet
                                                                                      ___lambda = lambda { |__v__12__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50272| 
                                                                                          if ( 
                                                                                              _not(
                                                                                                    _eq_QUMARK(
                                                                                                      false                                                                                                      ,
                                                                                                          _pair_QUMARK(
                                                                                                            __v__12__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50272
                                                                                                          )
                                                                                                    )
                                                                                              )
                                                                                           ) then
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |__v__13__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50273| 
                                                                                                    begin #makeLet
                                                                                                      ___lambda = lambda { |_accessor| 
                                                                                                          begin #makeLet
                                                                                                            ___lambda = lambda { |__v__14__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50274| 
                                                                                                                if ( 
                                                                                                                    _not(
                                                                                                                          _eq_QUMARK(
                                                                                                                            false                                                                                                                            ,
                                                                                                                                _pair_QUMARK(
                                                                                                                                  __v__14__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50274
                                                                                                                                )
                                                                                                                          )
                                                                                                                    )
                                                                                                                 ) then
                                                                                                                    begin #makeLet
                                                                                                                      ___lambda = lambda { |__v__15__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50275| 
                                                                                                                          begin #makeLet
                                                                                                                            ___lambda = lambda { |_modifier| 
                                                                                                                                begin #makeLet
                                                                                                                                  ___lambda = lambda { |__v__16__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50276| 
                                                                                                                                      if ( 
                                                                                                                                          _not(
                                                                                                                                                _eq_QUMARK(
                                                                                                                                                  false                                                                                                                                                  ,
                                                                                                                                                      _null_QUMARK(
                                                                                                                                                        __v__16__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50276
                                                                                                                                                      )
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                       ) then
                                                                                                                                            _cons(
                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                                      trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                                    ,
                                                                                                                                                  [
                                                                                                                                                      :"begin"
                                                                                                                                                  ]
                                                                                                                                                               ))                                                                                                                                              ,
                                                                                                                                                  _cons(
                                                                                                                                                        _cons(
                                                                                                                                                              trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                                                  trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                                                ,
                                                                                                                                                              [
                                                                                                                                                                  :"define"
                                                                                                                                                              ]
                                                                                                                                                                           ))                                                                                                                                                          ,
                                                                                                                                                              _cons(
                                                                                                                                                                  trampCall(_accessor)                                                                                                                                                                ,
                                                                                                                                                                    _cons(
                                                                                                                                                                          _cons(
                                                                                                                                                                                trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                                                                    trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                                                                  ,
                                                                                                                                                                                [
                                                                                                                                                                                    :"record-accessor"
                                                                                                                                                                                ]
                                                                                                                                                                                             ))                                                                                                                                                                            ,
                                                                                                                                                                                _cons(
                                                                                                                                                                                    trampCall(_type)                                                                                                                                                                                  ,
                                                                                                                                                                                      _cons(
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                  trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                                                                                      trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                                                                                    ,
                                                                                                                                                                                                  [
                                                                                                                                                                                                      :"quote"
                                                                                                                                                                                                  ]
                                                                                                                                                                                                               ))                                                                                                                                                                                              ,
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                      trampCall(_field_MIMARKtag)                                                                                                                                                                                                    ,
                                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                                  )
                                                                                                                                                                                            )                                                                                                                                                                                        ,
                                                                                                                                                                                        Cell.new()
                                                                                                                                                                                      )
                                                                                                                                                                                )
                                                                                                                                                                          )                                                                                                                                                                      ,
                                                                                                                                                                      Cell.new()
                                                                                                                                                                    )
                                                                                                                                                              )
                                                                                                                                                        )                                                                                                                                                    ,
                                                                                                                                                        _cons(
                                                                                                                                                              _cons(
                                                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                                                        trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                                                      ,
                                                                                                                                                                    [
                                                                                                                                                                        :"define"
                                                                                                                                                                    ]
                                                                                                                                                                                 ))                                                                                                                                                                ,
                                                                                                                                                                    _cons(
                                                                                                                                                                        trampCall(_modifier)                                                                                                                                                                      ,
                                                                                                                                                                          _cons(
                                                                                                                                                                                _cons(
                                                                                                                                                                                      trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                                                                          trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                                                                        ,
                                                                                                                                                                                      [
                                                                                                                                                                                          :"record-modifier"
                                                                                                                                                                                      ]
                                                                                                                                                                                                   ))                                                                                                                                                                                  ,
                                                                                                                                                                                      _cons(
                                                                                                                                                                                          trampCall(_type)                                                                                                                                                                                        ,
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                        trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                                                                                            trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                                                                                          ,
                                                                                                                                                                                                        [
                                                                                                                                                                                                            :"quote"
                                                                                                                                                                                                        ]
                                                                                                                                                                                                                     ))                                                                                                                                                                                                    ,
                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                            trampCall(_field_MIMARKtag)                                                                                                                                                                                                          ,
                                                                                                                                                                                                          Cell.new()
                                                                                                                                                                                                        )
                                                                                                                                                                                                  )                                                                                                                                                                                              ,
                                                                                                                                                                                              Cell.new()
                                                                                                                                                                                            )
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
                                                                                                                                      else
                                                                                                                                        false
                                                                                                                                      end
                                                                                                                                  } ; ___lambda.call(
                                                                                                                                          _cdr(
                                                                                                                                            __v__14__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50274
                                                                                                                                          )
                                                                                                                                             )
                                                                                                                                end
                                                                                                                            } ; ___lambda.call(
                                                                                                                                __v__15__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50275
                                                                                                                                       )
                                                                                                                          end
                                                                                                                      } ; ___lambda.call(
                                                                                                                              _car(
                                                                                                                                __v__14__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50274
                                                                                                                              )
                                                                                                                                 )
                                                                                                                    end
                                                                                                                else
                                                                                                                  false
                                                                                                                end
                                                                                                            } ; ___lambda.call(
                                                                                                                    _cdr(
                                                                                                                      __v__12__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50272
                                                                                                                    )
                                                                                                                       )
                                                                                                          end
                                                                                                      } ; ___lambda.call(
                                                                                                          __v__13__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50273
                                                                                                                 )
                                                                                                    end
                                                                                                } ; ___lambda.call(
                                                                                                        _car(
                                                                                                          __v__12__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50272
                                                                                                        )
                                                                                                           )
                                                                                              end
                                                                                          else
                                                                                            false
                                                                                          end
                                                                                      } ; ___lambda.call(
                                                                                              _cdr(
                                                                                                __v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50270
                                                                                              )
                                                                                                 )
                                                                                    end
                                                                                } ; ___lambda.call(
                                                                                    __v__11__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50271
                                                                                           )
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  _car(
                                                                                    __v__10__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50270
                                                                                  )
                                                                                     )
                                                                        end
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _cdr(
                                                                          __v__8__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50268
                                                                        )
                                                                           )
                                                              end
                                                          } ; ___lambda.call(
                                                              __v__9__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50269
                                                                     )
                                                        end
                                                    } ; ___lambda.call(
                                                            _car(
                                                              __v__8__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50268
                                                            )
                                                               )
                                                  end
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  _cdr(
                                                    __expr__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50253
                                                  )
                                                     )
                                        end
                                             )
                                end
                            end
                        } ; ___lambda.call(
                              begin #makeLet
                                ___lambda = lambda { |__v__1__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50261| 
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _pair_QUMARK(
                                                      __v__1__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50261
                                                    )
                                              )
                                        )
                                     ) then
                                        begin #makeLet
                                          ___lambda = lambda { |__v__2__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50262| 
                                              begin #makeLet
                                                ___lambda = lambda { |_type| 
                                                    begin #makeLet
                                                      ___lambda = lambda { |__v__3__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50263| 
                                                          if ( 
                                                              _not(
                                                                    _eq_QUMARK(
                                                                      false                                                                      ,
                                                                          _pair_QUMARK(
                                                                            __v__3__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50263
                                                                          )
                                                                    )
                                                              )
                                                           ) then
                                                              begin #makeLet
                                                                ___lambda = lambda { |__v__4__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50264| 
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |_field_MIMARKtag| 
                                                                          begin #makeLet
                                                                            ___lambda = lambda { |__v__5__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50265| 
                                                                                if ( 
                                                                                    _not(
                                                                                          _eq_QUMARK(
                                                                                            false                                                                                            ,
                                                                                                _pair_QUMARK(
                                                                                                  __v__5__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50265
                                                                                                )
                                                                                          )
                                                                                    )
                                                                                 ) then
                                                                                    begin #makeLet
                                                                                      ___lambda = lambda { |__v__6__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50266| 
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |_accessor| 
                                                                                                begin #makeLet
                                                                                                  ___lambda = lambda { |__v__7__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50267| 
                                                                                                      if ( 
                                                                                                          _not(
                                                                                                                _eq_QUMARK(
                                                                                                                  false                                                                                                                  ,
                                                                                                                      _null_QUMARK(
                                                                                                                        __v__7__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50267
                                                                                                                      )
                                                                                                                )
                                                                                                          )
                                                                                                       ) then
                                                                                                            _cons(
                                                                                                                  trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                      trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                    ,
                                                                                                                  [
                                                                                                                      :"define"
                                                                                                                  ]
                                                                                                                               ))                                                                                                              ,
                                                                                                                  _cons(
                                                                                                                      trampCall(_accessor)                                                                                                                    ,
                                                                                                                        _cons(
                                                                                                                              _cons(
                                                                                                                                    trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                        trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                      ,
                                                                                                                                    [
                                                                                                                                        :"record-accessor"
                                                                                                                                    ]
                                                                                                                                                 ))                                                                                                                                ,
                                                                                                                                    _cons(
                                                                                                                                        trampCall(_type)                                                                                                                                      ,
                                                                                                                                          _cons(
                                                                                                                                                _cons(
                                                                                                                                                      trampCall( callProcedure(  '__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',  '_rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254',
                                                                                                                                                          trampCall(__rename__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50254)                                                                                                                                                        ,
                                                                                                                                                      [
                                                                                                                                                          :"quote"
                                                                                                                                                      ]
                                                                                                                                                                   ))                                                                                                                                                  ,
                                                                                                                                                      _cons(
                                                                                                                                                          trampCall(_field_MIMARKtag)                                                                                                                                                        ,
                                                                                                                                                        Cell.new()
                                                                                                                                                      )
                                                                                                                                                )                                                                                                                                            ,
                                                                                                                                            Cell.new()
                                                                                                                                          )
                                                                                                                                    )
                                                                                                                              )                                                                                                                          ,
                                                                                                                          Cell.new()
                                                                                                                        )
                                                                                                                  )
                                                                                                            )
                                                                                                      else
                                                                                                        false
                                                                                                      end
                                                                                                  } ; ___lambda.call(
                                                                                                          _cdr(
                                                                                                            __v__5__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50265
                                                                                                          )
                                                                                                             )
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                __v__6__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50266
                                                                                                       )
                                                                                          end
                                                                                      } ; ___lambda.call(
                                                                                              _car(
                                                                                                __v__5__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50265
                                                                                              )
                                                                                                 )
                                                                                    end
                                                                                else
                                                                                  false
                                                                                end
                                                                            } ; ___lambda.call(
                                                                                    _cdr(
                                                                                      __v__3__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50263
                                                                                    )
                                                                                       )
                                                                          end
                                                                      } ; ___lambda.call(
                                                                          __v__4__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50264
                                                                                 )
                                                                    end
                                                                } ; ___lambda.call(
                                                                        _car(
                                                                          __v__3__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50263
                                                                        )
                                                                           )
                                                              end
                                                          else
                                                            false
                                                          end
                                                      } ; ___lambda.call(
                                                              _cdr(
                                                                __v__1__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50261
                                                              )
                                                                 )
                                                    end
                                                } ; ___lambda.call(
                                                    __v__2__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50262
                                                           )
                                              end
                                          } ; ___lambda.call(
                                                  _car(
                                                    __v__1__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50261
                                                  )
                                                     )
                                        end
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        _cdr(
                                          __expr__gensym__fab266b66d6ec390a8422267362d61a5891f1c3b_50253
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
