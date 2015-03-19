#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
  begin #execFunc
      def self._html_MIMARKescape_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKescape', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_html_MIMARKescape'] = self.method( :_html_MIMARKescape_METHOD )
    @_html_MIMARKescape = 
    trampCall(
          Proc.new { |_c| 
              begin #makeLet
                ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192| 
                    if ( 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198| 
                            if ( 
                              trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198)
                             ) then
                                trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198)
                            else
                              false
                            end
                        } ; ___lambda.call(
                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                    trampCall(@_eqv_QUMARK)                                  ,
                                [
                                    "<"                                    ,
                                      trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                ]
                                             ))
                                   )
                      end
                     ) then
                        "&lt;"
                    else
                        if ( 
                          begin #makeLet
                            ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199| 
                                if ( 
                                  trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199)
                                 ) then
                                    trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199)
                                else
                                  false
                                end
                            } ; ___lambda.call(
                                    trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                        trampCall(@_eqv_QUMARK)                                      ,
                                    [
                                        ">"                                        ,
                                          trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                    ]
                                                 ))
                                       )
                          end
                         ) then
                            "&gt;"
                        else
                            if ( 
                              begin #makeLet
                                ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200| 
                                    if ( 
                                      trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200)
                                     ) then
                                        trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200)
                                    else
                                      false
                                    end
                                } ; ___lambda.call(
                                        trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                            trampCall(@_eqv_QUMARK)                                          ,
                                        [
                                            "&"                                            ,
                                              trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                        ]
                                                     ))
                                           )
                              end
                             ) then
                                "&amp;"
                            else
                                if ( 
                                  begin #makeLet
                                    ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201| 
                                        if ( 
                                          trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201)
                                         ) then
                                            trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201)
                                        else
                                          false
                                        end
                                    } ; ___lambda.call(
                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                trampCall(@_eqv_QUMARK)                                              ,
                                            [
                                                "\""                                                ,
                                                  trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                            ]
                                                         ))
                                               )
                                  end
                                 ) then
                                    "&quot;"
                                else
                                    if ( 
                                    true
                                     ) then
                                          trampCall(_c)
                                    else
                                        Cell.new()
                                    end
                                end
                            end
                        end
                    end
                } ; ___lambda.call(
                      trampCall(_c)
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._html_MIMARKescape_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKescape_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_html_MIMARKescape_MIMARKstring'] = self.method( :_html_MIMARKescape_MIMARKstring_METHOD )
    @_html_MIMARKescape_MIMARKstring = 
    trampCall(
          Proc.new { |_string| 
                delayCall( '_string_MIMARKjoin',  'string-join',
                    trampCall(@_string_MIMARKjoin)                  ,
                [
                        trampCall( self._map_METHOD(  'map',
                            trampCall(@_map)                          ,
                        [
                              trampCall(@_html_MIMARKescape)                            ,
                                _to_MIMARKlist(
                                    trampCall(_string).to_s.split(
                                        ""
                                      )
                                )
                        ]
                                     ))                    ,
                    ""
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__ASMARKdoctype_MIMARKalist_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKdoctype_MIMARKalist_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__ASMARKdoctype_MIMARKalist_ASMARK'] = self.method( :__ASMARKdoctype_MIMARKalist_ASMARK_METHOD )
    @__ASMARKdoctype_MIMARKalist_ASMARK = 
    trampCall(
        Cell.new(Cell.new(Cell.new(LispKeyword.new( "strict" ),Cell.new(LispKeyword.new( "html" ),Cell.new(LispKeyword.new( "html-strict" ),Cell.new(LispKeyword.new( "html-4.01" ),Cell.new(LispKeyword.new( "html-4.01-strict" )))))),Cell.new(false,Cell.new("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"
       \"http://www.w3.org/TR/html4/strict.dtd\">
"))),Cell.new(Cell.new(Cell.new(LispKeyword.new( "transitional" ),Cell.new(LispKeyword.new( "html-transitional" ),Cell.new(LispKeyword.new( "html-4.01-transitional" )))),Cell.new(false,Cell.new("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"
       \"http://www.w3.org/TR/html4/loose.dtd\">
"))),Cell.new(Cell.new(Cell.new(LispKeyword.new( "frameset" ),Cell.new(LispKeyword.new( "html-frameset" ),Cell.new(LispKeyword.new( "html-4.01-frameset" )))),Cell.new(false,Cell.new("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Frameset//EN\"
       \"http://www.w3.org/TR/html4/frameset.dtd\">
"))),Cell.new(Cell.new(Cell.new(LispKeyword.new( "xhtml-1.0-strict" ),Cell.new(LispKeyword.new( "xhtml-1.0" ))),Cell.new(true,Cell.new("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"
       \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">
"))),Cell.new(Cell.new(Cell.new(LispKeyword.new( "xhtml-1.0-transitional" )),Cell.new(true,Cell.new("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"
       \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
"))),Cell.new(Cell.new(Cell.new(LispKeyword.new( "xhtml-1.0-frameset" )),Cell.new(true,Cell.new("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\"
       \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">
"))),Cell.new(Cell.new(Cell.new(LispKeyword.new( "xhtml-1.1" )),Cell.new(true,Cell.new("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"
       \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">
"))))))))))
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._html_MIMARKdoctype_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKdoctype', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_html_MIMARKdoctype'] = self.method( :_html_MIMARKdoctype_METHOD )
    @_html_MIMARKdoctype = 
    trampCall(
          Proc.new { |*__rest__| _type = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_type| 
                    if ( 
                      begin #execFunc
                          def self.___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                          @global_lisp_binding['___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203'] = self.method( :___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203_METHOD )
                        @___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203 = 
                        trampCall(
                                trampCall( self._find_METHOD(  'find',
                                    trampCall(@_find)                                  ,
                                [
                                      Proc.new { |_e| 
                                            trampCall( self._memq_METHOD(  'memq',
                                                trampCall(@_memq)                                              ,
                                            [
                                                  trampCall(_type)                                                ,
                                                    _car(
                                                        trampCall(_e)
                                                    )
                                            ]
                                                         ))
                                      }                                    ,
                                      trampCall(@__ASMARKdoctype_MIMARKalist_ASMARK)
                                ]
                                             ))
                        )
                      end
                     ) then
                          delayCall( '_caddr',  'caddr',
                              trampCall(@_caddr)                            ,
                          [
                                trampCall(@___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203)
                          ]
                                       )
                    else
                        if ( 
                        true
                         ) then
                              begin raise RuntimeError, 
                                "Unknown doctype type spec" ' ' + 
                                _write_MIMARKto_MIMARKstring(
                                  trampCall(_type)
                                )
                              rescue => __e 
                                __e.set_backtrace( ["./lib/nendo/text/html-lite.nnd:99"] + __e.backtrace )
                                raise __e
                              end 
                        else
                            Cell.new()
                        end
                    end
                } ; ___lambda.call(
                      if ( 
                          _null_QUMARK(
                              trampCall(_type)
                          )
                       ) then
                        LispKeyword.new( "html-4.01-strict" )
                      else
                          trampCall(_type)
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
      def self._make_MIMARKhtml_MIMARKelement_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_make_MIMARKhtml_MIMARKelement', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_make_MIMARKhtml_MIMARKelement'] = self.method( :_make_MIMARKhtml_MIMARKelement_METHOD )
    @_make_MIMARKhtml_MIMARKelement = 
    trampCall(
          Proc.new { |_name,*__rest__| _args = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_get_MIMARKattr| 
                    _get_MIMARKattr                     = 
                      Proc.new { |_args,_attrs| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_args)
                              )
                           ) then
                                  delayCall( '_values',  'values',
                                      trampCall(@_values)                                    ,
                                  [
                                          _reverse(
                                              trampCall(_attrs)
                                          )                                      ,
                                        trampCall(_args)
                                  ]
                                               )
                          else
                              if ( 
                                  _keyword_QUMARK(
                                        _car(
                                            trampCall(_args)
                                        )
                                  )
                               ) then
                                    if ( 
                                        _null_QUMARK(
                                              _cdr(
                                                  trampCall(_args)
                                              )
                                        )
                                     ) then
                                            delayCall( '_values',  'values',
                                                trampCall(@_values)                                              ,
                                            [
                                                    _reverse(
                                                          trampCall( self._list_ASMARK_METHOD(  'list*',
                                                              trampCall(@_list_ASMARK)                                                            ,
                                                          [
                                                                  _car(
                                                                      trampCall(_args)
                                                                  )                                                              ,
                                                              " "                                                              ,
                                                                trampCall(_attrs)
                                                          ]
                                                                       ))
                                                    )                                                ,
                                                  trampCall(_args)
                                            ]
                                                         )
                                    else
                                        if ( 
                                            _eq_QUMARK(
                                                  trampCall( self._cadr_METHOD(  'cadr',
                                                      trampCall(@_cadr)                                                    ,
                                                  [
                                                        trampCall(_args)
                                                  ]
                                                               ))                                              ,
                                              false
                                            )
                                         ) then
                                                delayCall( '_get_MIMARKattr',  'get-attr',
                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
                                                        trampCall( self._cddr_METHOD(  'cddr',
                                                            trampCall(@_cddr)                                                          ,
                                                        [
                                                              trampCall(_args)
                                                        ]
                                                                     ))                                                    ,
                                                      trampCall(_attrs)
                                                ]
                                                             )
                                        else
                                            if ( 
                                                _eq_QUMARK(
                                                      trampCall( self._cadr_METHOD(  'cadr',
                                                          trampCall(@_cadr)                                                        ,
                                                      [
                                                            trampCall(_args)
                                                      ]
                                                                   ))                                                  ,
                                                  true
                                                )
                                             ) then
                                                    delayCall( '_get_MIMARKattr',  'get-attr',
                                                        trampCall(_get_MIMARKattr)                                                      ,
                                                    [
                                                            trampCall( self._cddr_METHOD(  'cddr',
                                                                trampCall(@_cddr)                                                              ,
                                                            [
                                                                  trampCall(_args)
                                                            ]
                                                                         ))                                                        ,
                                                            trampCall( self._list_ASMARK_METHOD(  'list*',
                                                                trampCall(@_list_ASMARK)                                                              ,
                                                            [
                                                                    _car(
                                                                        trampCall(_args)
                                                                    )                                                                ,
                                                                " "                                                                ,
                                                                  trampCall(_attrs)
                                                            ]
                                                                         ))
                                                    ]
                                                                 )
                                            else
                                                if ( 
                                                true
                                                 ) then
                                                        delayCall( '_get_MIMARKattr',  'get-attr',
                                                            trampCall(_get_MIMARKattr)                                                          ,
                                                        [
                                                                trampCall( self._cddr_METHOD(  'cddr',
                                                                    trampCall(@_cddr)                                                                  ,
                                                                [
                                                                      trampCall(_args)
                                                                ]
                                                                             ))                                                            ,
                                                                trampCall( self._list_ASMARK_METHOD(  'list*',
                                                                    trampCall(@_list_ASMARK)                                                                  ,
                                                                [
                                                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                                                            trampCall(@_sprintf)                                                                          ,
                                                                        [
                                                                            "=\"%s\""                                                                            ,
                                                                                trampCall( self._html_MIMARKescape_MIMARKstring_METHOD(  'html-escape-string',
                                                                                    trampCall(@_html_MIMARKescape_MIMARKstring)                                                                                  ,
                                                                                [
                                                                                        trampCall( self._x_MIMARK_GTMARKstring_METHOD(  'x->string',
                                                                                            trampCall(@_x_MIMARK_GTMARKstring)                                                                                          ,
                                                                                        [
                                                                                                trampCall( self._cadr_METHOD(  'cadr',
                                                                                                    trampCall(@_cadr)                                                                                                  ,
                                                                                                [
                                                                                                      trampCall(_args)
                                                                                                ]
                                                                                                             ))
                                                                                        ]
                                                                                                     ))
                                                                                ]
                                                                                             ))
                                                                        ]
                                                                                     ))                                                                    ,
                                                                        _car(
                                                                            trampCall(_args)
                                                                        )                                                                    ,
                                                                    " "                                                                    ,
                                                                      trampCall(_attrs)
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
                              else
                                  if ( 
                                  true
                                   ) then
                                          delayCall( '_values',  'values',
                                              trampCall(@_values)                                            ,
                                          [
                                                  _reverse(
                                                      trampCall(_attrs)
                                                  )                                              ,
                                                trampCall(_args)
                                          ]
                                                       )
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      }
                    begin #makeLet
                      ___lambda = lambda { |_empty_QUMARK| 
                          if ( 
                            trampCall(_empty_QUMARK)
                           ) then
                              Proc.new { |*__rest__| _args = __rest__[0] ;  
                                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                        trampCall(@_call_MIMARKwith_MIMARKvalues)                                      ,
                                    [
                                          Proc.new { || 
                                                trampCall( callProcedure(  '_get_MIMARKattr',  'get-attr',
                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
                                                      trampCall(_args)                                                    ,
                                                    Cell.new()
                                                ]
                                                             ))
                                          }                                        ,
                                          Proc.new { |_attr,_args| 
                                              if ( 
                                                  _not(
                                                        _null_QUMARK(
                                                            trampCall(_args)
                                                        )
                                                  )
                                               ) then
                                                    begin raise RuntimeError, 
                                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                                            trampCall(@_sprintf)                                                          ,
                                                        [
                                                            "element %s can't have content: %s"                                                            ,
                                                              trampCall(_name)                                                            ,
                                                                _write_MIMARKto_MIMARKstring(
                                                                    trampCall(_args)
                                                                )
                                                        ]
                                                                     ))
                                                    rescue => __e 
                                                      __e.set_backtrace( [":1"] + __e.backtrace )
                                                      raise __e
                                                    end 
                                              end
                                                trampCall( self._list_METHOD(  'list',
                                                    trampCall(@_list)                                                  ,
                                                [
                                                    "<"                                                    ,
                                                      trampCall(_name)                                                    ,
                                                      trampCall(_attr)                                                    ,
                                                    " />"
                                                ]
                                                             ))
                                          }
                                    ]
                                                 )
                              }
                          else
                              Proc.new { |*__rest__| _args = __rest__[0] ;  
                                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                        trampCall(@_call_MIMARKwith_MIMARKvalues)                                      ,
                                    [
                                          Proc.new { || 
                                                trampCall( callProcedure(  '_get_MIMARKattr',  'get-attr',
                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
                                                      trampCall(_args)                                                    ,
                                                    Cell.new()
                                                ]
                                                             ))
                                          }                                        ,
                                          Proc.new { |_attr,_args| 
                                                trampCall( self._list_METHOD(  'list',
                                                    trampCall(@_list)                                                  ,
                                                [
                                                    "<"                                                    ,
                                                      trampCall(_name)                                                    ,
                                                      trampCall(_attr)                                                    ,
                                                    ">"                                                    ,
                                                      trampCall(_args)                                                    ,
                                                    "</"                                                    ,
                                                      trampCall(_name)                                                    ,
                                                    "
>"
                                                ]
                                                             ))
                                          }
                                    ]
                                                 )
                              }
                          end
                      } ; ___lambda.call(
                              trampCall( self._get_MIMARKkeyword_METHOD(  'get-keyword',
                                  trampCall(@_get_MIMARKkeyword)                                ,
                              [
                                  LispKeyword.new( "empty?" )                                  ,
                                    trampCall(_args)                                  ,
                                  false
                              ]
                                           ))
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
      def self._define_MIMARKhtml_MIMARKelements_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_define_MIMARKhtml_MIMARKelements', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_define_MIMARKhtml_MIMARKelements'] = self.method( :_define_MIMARKhtml_MIMARKelements_METHOD )
    @_define_MIMARKhtml_MIMARKelements = 
    trampCall(
          LispMacro.new { |*__rest__| _elements = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_make_MIMARKscheme_MIMARKname| 
                    _make_MIMARKscheme_MIMARKname                     = 
                      Proc.new { |_name| 
                            _string_MIMARK_GTMARKsymbol(
                                  trampCall( self._sprintf_METHOD(  'sprintf',
                                      trampCall(@_sprintf)                                    ,
                                  [
                                      "html:%s"                                      ,
                                        trampCall(_name)
                                  ]
                                               ))
                            )
                      }
                    begin #makeLetrec
                      ___lambda = lambda { |_loop| 
                          _loop                           = 
                            Proc.new { |_elements,_r| 
                                if ( 
                                    _null_QUMARK(
                                        trampCall(_elements)
                                    )
                                 ) then
                                        _cons(
                                          :"begin"                                          ,
                                              _reverse(
                                                  trampCall(_r)
                                              )
                                        )
                                else
                                    if ( 
                                      if ( 
                                          _not(
                                                _eq_QUMARK(
                                                  false                                                  ,
                                                      _pair_QUMARK(
                                                            _cdr(
                                                                trampCall(_elements)
                                                            )
                                                      )
                                                )
                                          )
                                       ) then
                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                trampCall(@_eqv_QUMARK)                                              ,
                                            [
                                                    trampCall( self._cadr_METHOD(  'cadr',
                                                        trampCall(@_cadr)                                                      ,
                                                    [
                                                          trampCall(_elements)
                                                    ]
                                                                 ))                                                ,
                                                LispKeyword.new( "empty" )
                                            ]
                                                         ))
                                      else
                                        false
                                      end
                                     ) then
                                            trampCall( callProcedure(  '_loop',  'loop',
                                                trampCall(_loop)                                              ,
                                            [
                                                    trampCall( self._cddr_METHOD(  'cddr',
                                                        trampCall(@_cddr)                                                      ,
                                                    [
                                                          trampCall(_elements)
                                                    ]
                                                                 ))                                                ,
                                                    trampCall( self._list_ASMARK_METHOD(  'list*',
                                                        trampCall(@_list_ASMARK)                                                      ,
                                                    [
                                                            _cons(
                                                              :"define"                                                              ,
                                                                  _cons(
                                                                        trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
                                                                            trampCall(_make_MIMARKscheme_MIMARKname)                                                                          ,
                                                                        [
                                                                                _car(
                                                                                    trampCall(_elements)
                                                                                )
                                                                        ]
                                                                                     ))                                                                    ,
                                                                        _cons(
                                                                              _cons(
                                                                                :"make-html-element"                                                                                ,
                                                                                    _cons(
                                                                                          _cons(
                                                                                            :"quote"                                                                                            ,
                                                                                                _cons(
                                                                                                      _car(
                                                                                                          trampCall(_elements)
                                                                                                      )                                                                                                  ,
                                                                                                  Cell.new()
                                                                                                )
                                                                                          )                                                                                      ,
                                                                                          _cons(
                                                                                            LispKeyword.new( "empty?" )                                                                                            ,
                                                                                                _cons(
                                                                                                  true                                                                                                  ,
                                                                                                  Cell.new()
                                                                                                )
                                                                                          )
                                                                                    )
                                                                              )                                                                          ,
                                                                          Cell.new()
                                                                        )
                                                                  )
                                                            )                                                        ,
                                                            _cons(
                                                              :"export"                                                              ,
                                                                  _cons(
                                                                        trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
                                                                            trampCall(_make_MIMARKscheme_MIMARKname)                                                                          ,
                                                                        [
                                                                                _car(
                                                                                    trampCall(_elements)
                                                                                )
                                                                        ]
                                                                                     ))                                                                    ,
                                                                    Cell.new()
                                                                  )
                                                            )                                                        ,
                                                          trampCall(_r)
                                                    ]
                                                                 ))
                                            ]
                                                         ))
                                    else
                                        if ( 
                                        true
                                         ) then
                                                trampCall( callProcedure(  '_loop',  'loop',
                                                    trampCall(_loop)                                                  ,
                                                [
                                                        _cdr(
                                                            trampCall(_elements)
                                                        )                                                    ,
                                                        trampCall( self._list_ASMARK_METHOD(  'list*',
                                                            trampCall(@_list_ASMARK)                                                          ,
                                                        [
                                                                _cons(
                                                                  :"define"                                                                  ,
                                                                      _cons(
                                                                            trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
                                                                                trampCall(_make_MIMARKscheme_MIMARKname)                                                                              ,
                                                                            [
                                                                                    _car(
                                                                                        trampCall(_elements)
                                                                                    )
                                                                            ]
                                                                                         ))                                                                        ,
                                                                            _cons(
                                                                                  _cons(
                                                                                    :"make-html-element"                                                                                    ,
                                                                                        _cons(
                                                                                              _cons(
                                                                                                :"quote"                                                                                                ,
                                                                                                    _cons(
                                                                                                          _car(
                                                                                                              trampCall(_elements)
                                                                                                          )                                                                                                      ,
                                                                                                      Cell.new()
                                                                                                    )
                                                                                              )                                                                                          ,
                                                                                          Cell.new()
                                                                                        )
                                                                                  )                                                                              ,
                                                                              Cell.new()
                                                                            )
                                                                      )
                                                                )                                                            ,
                                                                _cons(
                                                                  :"export"                                                                  ,
                                                                      _cons(
                                                                            trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
                                                                                trampCall(_make_MIMARKscheme_MIMARKname)                                                                              ,
                                                                            [
                                                                                    _car(
                                                                                        trampCall(_elements)
                                                                                    )
                                                                            ]
                                                                                         ))                                                                        ,
                                                                        Cell.new()
                                                                      )
                                                                )                                                            ,
                                                              trampCall(_r)
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
                                trampCall(_loop)                              ,
                            [
                                  trampCall(_elements)                                ,
                                Cell.new()
                            ]
                                         ))
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
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKtt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtt'] = self.method( :_html_COMARKtt_METHOD )
        @_html_COMARKtt = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKtt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtt'] = self.method( :_html_COMARKtt_METHOD )
        @_html_COMARKtt = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"tt"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKi_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKi', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKi'] = self.method( :_html_COMARKi_METHOD )
        @_html_COMARKi = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKi_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKi', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKi'] = self.method( :_html_COMARKi_METHOD )
        @_html_COMARKi = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"i"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKb_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKb', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKb'] = self.method( :_html_COMARKb_METHOD )
        @_html_COMARKb = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKb_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKb', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKb'] = self.method( :_html_COMARKb_METHOD )
        @_html_COMARKb = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"b"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKbig_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbig', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbig'] = self.method( :_html_COMARKbig_METHOD )
        @_html_COMARKbig = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKbig_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbig', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbig'] = self.method( :_html_COMARKbig_METHOD )
        @_html_COMARKbig = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"big"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKsmall_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsmall', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKsmall'] = self.method( :_html_COMARKsmall_METHOD )
        @_html_COMARKsmall = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKsmall_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsmall', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKsmall'] = self.method( :_html_COMARKsmall_METHOD )
        @_html_COMARKsmall = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"small"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKem_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKem', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKem'] = self.method( :_html_COMARKem_METHOD )
        @_html_COMARKem = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKem_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKem', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKem'] = self.method( :_html_COMARKem_METHOD )
        @_html_COMARKem = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"em"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKstrong_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstrong', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKstrong'] = self.method( :_html_COMARKstrong_METHOD )
        @_html_COMARKstrong = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKstrong_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstrong', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKstrong'] = self.method( :_html_COMARKstrong_METHOD )
        @_html_COMARKstrong = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"strong"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKdfn_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdfn', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdfn'] = self.method( :_html_COMARKdfn_METHOD )
        @_html_COMARKdfn = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKdfn_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdfn', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdfn'] = self.method( :_html_COMARKdfn_METHOD )
        @_html_COMARKdfn = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"dfn"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKcode_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcode', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcode'] = self.method( :_html_COMARKcode_METHOD )
        @_html_COMARKcode = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKcode_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcode', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcode'] = self.method( :_html_COMARKcode_METHOD )
        @_html_COMARKcode = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"code"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKsamp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsamp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKsamp'] = self.method( :_html_COMARKsamp_METHOD )
        @_html_COMARKsamp = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKsamp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsamp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKsamp'] = self.method( :_html_COMARKsamp_METHOD )
        @_html_COMARKsamp = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"samp"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKkbd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKkbd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKkbd'] = self.method( :_html_COMARKkbd_METHOD )
        @_html_COMARKkbd = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKkbd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKkbd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKkbd'] = self.method( :_html_COMARKkbd_METHOD )
        @_html_COMARKkbd = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"kbd"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKvar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKvar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKvar'] = self.method( :_html_COMARKvar_METHOD )
        @_html_COMARKvar = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKvar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKvar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKvar'] = self.method( :_html_COMARKvar_METHOD )
        @_html_COMARKvar = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"var"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKcite_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcite', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcite'] = self.method( :_html_COMARKcite_METHOD )
        @_html_COMARKcite = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKcite_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcite', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcite'] = self.method( :_html_COMARKcite_METHOD )
        @_html_COMARKcite = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"cite"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKabbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKabbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKabbr'] = self.method( :_html_COMARKabbr_METHOD )
        @_html_COMARKabbr = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKabbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKabbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKabbr'] = self.method( :_html_COMARKabbr_METHOD )
        @_html_COMARKabbr = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"abbr"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKacronym_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKacronym', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKacronym'] = self.method( :_html_COMARKacronym_METHOD )
        @_html_COMARKacronym = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKacronym_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKacronym', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKacronym'] = self.method( :_html_COMARKacronym_METHOD )
        @_html_COMARKacronym = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"acronym"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKsub_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsub', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKsub'] = self.method( :_html_COMARKsub_METHOD )
        @_html_COMARKsub = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKsub_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsub', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKsub'] = self.method( :_html_COMARKsub_METHOD )
        @_html_COMARKsub = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"sub"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKsup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKsup'] = self.method( :_html_COMARKsup_METHOD )
        @_html_COMARKsup = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKsup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKsup'] = self.method( :_html_COMARKsup_METHOD )
        @_html_COMARKsup = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"sup"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKspan_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKspan', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKspan'] = self.method( :_html_COMARKspan_METHOD )
        @_html_COMARKspan = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKspan_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKspan', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKspan'] = self.method( :_html_COMARKspan_METHOD )
        @_html_COMARKspan = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"span"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKbdo_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbdo', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbdo'] = self.method( :_html_COMARKbdo_METHOD )
        @_html_COMARKbdo = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKbdo_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbdo', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbdo'] = self.method( :_html_COMARKbdo_METHOD )
        @_html_COMARKbdo = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"bdo"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbr'] = self.method( :_html_COMARKbr_METHOD )
        @_html_COMARKbr = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbr'] = self.method( :_html_COMARKbr_METHOD )
        @_html_COMARKbr = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"br"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbody'] = self.method( :_html_COMARKbody_METHOD )
        @_html_COMARKbody = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbody'] = self.method( :_html_COMARKbody_METHOD )
        @_html_COMARKbody = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"body"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKaddress_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKaddress', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKaddress'] = self.method( :_html_COMARKaddress_METHOD )
        @_html_COMARKaddress = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKaddress_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKaddress', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKaddress'] = self.method( :_html_COMARKaddress_METHOD )
        @_html_COMARKaddress = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"address"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKdiv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdiv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdiv'] = self.method( :_html_COMARKdiv_METHOD )
        @_html_COMARKdiv = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKdiv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdiv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdiv'] = self.method( :_html_COMARKdiv_METHOD )
        @_html_COMARKdiv = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"div"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKa_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKa', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKa'] = self.method( :_html_COMARKa_METHOD )
        @_html_COMARKa = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKa_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKa', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKa'] = self.method( :_html_COMARKa_METHOD )
        @_html_COMARKa = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"a"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKmap'] = self.method( :_html_COMARKmap_METHOD )
        @_html_COMARKmap = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKmap'] = self.method( :_html_COMARKmap_METHOD )
        @_html_COMARKmap = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"map"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKarea'] = self.method( :_html_COMARKarea_METHOD )
        @_html_COMARKarea = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKarea'] = self.method( :_html_COMARKarea_METHOD )
        @_html_COMARKarea = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"area"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKlink_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlink', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKlink'] = self.method( :_html_COMARKlink_METHOD )
        @_html_COMARKlink = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKlink_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlink', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKlink'] = self.method( :_html_COMARKlink_METHOD )
        @_html_COMARKlink = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"link"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKimg_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKimg', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKimg'] = self.method( :_html_COMARKimg_METHOD )
        @_html_COMARKimg = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKimg_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKimg', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKimg'] = self.method( :_html_COMARKimg_METHOD )
        @_html_COMARKimg = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"img"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKobject_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKobject', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKobject'] = self.method( :_html_COMARKobject_METHOD )
        @_html_COMARKobject = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKobject_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKobject', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKobject'] = self.method( :_html_COMARKobject_METHOD )
        @_html_COMARKobject = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"object"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKparam_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKparam', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKparam'] = self.method( :_html_COMARKparam_METHOD )
        @_html_COMARKparam = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKparam_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKparam', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKparam'] = self.method( :_html_COMARKparam_METHOD )
        @_html_COMARKparam = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"param"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKhr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKhr'] = self.method( :_html_COMARKhr_METHOD )
        @_html_COMARKhr = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKhr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKhr'] = self.method( :_html_COMARKhr_METHOD )
        @_html_COMARKhr = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"hr"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKp'] = self.method( :_html_COMARKp_METHOD )
        @_html_COMARKp = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKp'] = self.method( :_html_COMARKp_METHOD )
        @_html_COMARKp = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"p"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKh1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh1'] = self.method( :_html_COMARKh1_METHOD )
        @_html_COMARKh1 = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKh1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh1'] = self.method( :_html_COMARKh1_METHOD )
        @_html_COMARKh1 = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"h1"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKh2_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh2', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh2'] = self.method( :_html_COMARKh2_METHOD )
        @_html_COMARKh2 = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKh2_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh2', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh2'] = self.method( :_html_COMARKh2_METHOD )
        @_html_COMARKh2 = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"h2"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKh3_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh3', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh3'] = self.method( :_html_COMARKh3_METHOD )
        @_html_COMARKh3 = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKh3_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh3', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh3'] = self.method( :_html_COMARKh3_METHOD )
        @_html_COMARKh3 = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"h3"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKh4_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh4', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh4'] = self.method( :_html_COMARKh4_METHOD )
        @_html_COMARKh4 = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKh4_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh4', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh4'] = self.method( :_html_COMARKh4_METHOD )
        @_html_COMARKh4 = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"h4"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKh5_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh5', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh5'] = self.method( :_html_COMARKh5_METHOD )
        @_html_COMARKh5 = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKh5_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh5', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh5'] = self.method( :_html_COMARKh5_METHOD )
        @_html_COMARKh5 = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"h5"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKh6_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh6', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh6'] = self.method( :_html_COMARKh6_METHOD )
        @_html_COMARKh6 = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKh6_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh6', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKh6'] = self.method( :_html_COMARKh6_METHOD )
        @_html_COMARKh6 = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"h6"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKpre_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKpre', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKpre'] = self.method( :_html_COMARKpre_METHOD )
        @_html_COMARKpre = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKpre_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKpre', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKpre'] = self.method( :_html_COMARKpre_METHOD )
        @_html_COMARKpre = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"pre"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKq'] = self.method( :_html_COMARKq_METHOD )
        @_html_COMARKq = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKq'] = self.method( :_html_COMARKq_METHOD )
        @_html_COMARKq = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"q"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKblockquote_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKblockquote', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKblockquote'] = self.method( :_html_COMARKblockquote_METHOD )
        @_html_COMARKblockquote = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKblockquote_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKblockquote', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKblockquote'] = self.method( :_html_COMARKblockquote_METHOD )
        @_html_COMARKblockquote = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"blockquote"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKins_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKins', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKins'] = self.method( :_html_COMARKins_METHOD )
        @_html_COMARKins = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKins_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKins', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKins'] = self.method( :_html_COMARKins_METHOD )
        @_html_COMARKins = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"ins"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKdel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdel'] = self.method( :_html_COMARKdel_METHOD )
        @_html_COMARKdel = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKdel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdel'] = self.method( :_html_COMARKdel_METHOD )
        @_html_COMARKdel = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"del"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKdl_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdl', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdl'] = self.method( :_html_COMARKdl_METHOD )
        @_html_COMARKdl = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKdl_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdl', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdl'] = self.method( :_html_COMARKdl_METHOD )
        @_html_COMARKdl = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"dl"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKdt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdt'] = self.method( :_html_COMARKdt_METHOD )
        @_html_COMARKdt = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKdt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdt'] = self.method( :_html_COMARKdt_METHOD )
        @_html_COMARKdt = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"dt"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKdd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdd'] = self.method( :_html_COMARKdd_METHOD )
        @_html_COMARKdd = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKdd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKdd'] = self.method( :_html_COMARKdd_METHOD )
        @_html_COMARKdd = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"dd"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKol'] = self.method( :_html_COMARKol_METHOD )
        @_html_COMARKol = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKol'] = self.method( :_html_COMARKol_METHOD )
        @_html_COMARKol = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"ol"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKul_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKul', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKul'] = self.method( :_html_COMARKul_METHOD )
        @_html_COMARKul = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKul_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKul', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKul'] = self.method( :_html_COMARKul_METHOD )
        @_html_COMARKul = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"ul"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKli_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKli', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKli'] = self.method( :_html_COMARKli_METHOD )
        @_html_COMARKli = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKli_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKli', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKli'] = self.method( :_html_COMARKli_METHOD )
        @_html_COMARKli = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"li"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKform_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKform', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKform'] = self.method( :_html_COMARKform_METHOD )
        @_html_COMARKform = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKform_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKform', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKform'] = self.method( :_html_COMARKform_METHOD )
        @_html_COMARKform = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"form"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKlabel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlabel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKlabel'] = self.method( :_html_COMARKlabel_METHOD )
        @_html_COMARKlabel = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKlabel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlabel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKlabel'] = self.method( :_html_COMARKlabel_METHOD )
        @_html_COMARKlabel = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"label"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKinput_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKinput', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKinput'] = self.method( :_html_COMARKinput_METHOD )
        @_html_COMARKinput = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKinput_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKinput', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKinput'] = self.method( :_html_COMARKinput_METHOD )
        @_html_COMARKinput = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"input"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKselect_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKselect', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKselect'] = self.method( :_html_COMARKselect_METHOD )
        @_html_COMARKselect = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKselect_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKselect', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKselect'] = self.method( :_html_COMARKselect_METHOD )
        @_html_COMARKselect = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"select"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKoptgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoptgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKoptgroup'] = self.method( :_html_COMARKoptgroup_METHOD )
        @_html_COMARKoptgroup = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKoptgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoptgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKoptgroup'] = self.method( :_html_COMARKoptgroup_METHOD )
        @_html_COMARKoptgroup = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"optgroup"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKoption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKoption'] = self.method( :_html_COMARKoption_METHOD )
        @_html_COMARKoption = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKoption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKoption'] = self.method( :_html_COMARKoption_METHOD )
        @_html_COMARKoption = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"option"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKtextarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtextarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtextarea'] = self.method( :_html_COMARKtextarea_METHOD )
        @_html_COMARKtextarea = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKtextarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtextarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtextarea'] = self.method( :_html_COMARKtextarea_METHOD )
        @_html_COMARKtextarea = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"textarea"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKfieldset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKfieldset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKfieldset'] = self.method( :_html_COMARKfieldset_METHOD )
        @_html_COMARKfieldset = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKfieldset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKfieldset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKfieldset'] = self.method( :_html_COMARKfieldset_METHOD )
        @_html_COMARKfieldset = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"fieldset"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKlegend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlegend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKlegend'] = self.method( :_html_COMARKlegend_METHOD )
        @_html_COMARKlegend = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKlegend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlegend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKlegend'] = self.method( :_html_COMARKlegend_METHOD )
        @_html_COMARKlegend = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"legend"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKbutton_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbutton', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbutton'] = self.method( :_html_COMARKbutton_METHOD )
        @_html_COMARKbutton = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKbutton_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbutton', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbutton'] = self.method( :_html_COMARKbutton_METHOD )
        @_html_COMARKbutton = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"button"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtable'] = self.method( :_html_COMARKtable_METHOD )
        @_html_COMARKtable = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtable'] = self.method( :_html_COMARKtable_METHOD )
        @_html_COMARKtable = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"table"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKcaption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcaption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcaption'] = self.method( :_html_COMARKcaption_METHOD )
        @_html_COMARKcaption = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKcaption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcaption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcaption'] = self.method( :_html_COMARKcaption_METHOD )
        @_html_COMARKcaption = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"caption"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKthead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKthead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKthead'] = self.method( :_html_COMARKthead_METHOD )
        @_html_COMARKthead = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKthead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKthead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKthead'] = self.method( :_html_COMARKthead_METHOD )
        @_html_COMARKthead = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"thead"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKtfoot_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtfoot', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtfoot'] = self.method( :_html_COMARKtfoot_METHOD )
        @_html_COMARKtfoot = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKtfoot_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtfoot', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtfoot'] = self.method( :_html_COMARKtfoot_METHOD )
        @_html_COMARKtfoot = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"tfoot"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKtbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtbody'] = self.method( :_html_COMARKtbody_METHOD )
        @_html_COMARKtbody = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKtbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtbody'] = self.method( :_html_COMARKtbody_METHOD )
        @_html_COMARKtbody = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"tbody"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKcolgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcolgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcolgroup'] = self.method( :_html_COMARKcolgroup_METHOD )
        @_html_COMARKcolgroup = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKcolgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcolgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcolgroup'] = self.method( :_html_COMARKcolgroup_METHOD )
        @_html_COMARKcolgroup = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"colgroup"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKcol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcol'] = self.method( :_html_COMARKcol_METHOD )
        @_html_COMARKcol = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKcol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKcol'] = self.method( :_html_COMARKcol_METHOD )
        @_html_COMARKcol = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"col"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKtr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtr'] = self.method( :_html_COMARKtr_METHOD )
        @_html_COMARKtr = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKtr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtr'] = self.method( :_html_COMARKtr_METHOD )
        @_html_COMARKtr = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"tr"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKth'] = self.method( :_html_COMARKth_METHOD )
        @_html_COMARKth = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKth'] = self.method( :_html_COMARKth_METHOD )
        @_html_COMARKth = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"th"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKtd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtd'] = self.method( :_html_COMARKtd_METHOD )
        @_html_COMARKtd = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKtd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtd'] = self.method( :_html_COMARKtd_METHOD )
        @_html_COMARKtd = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"td"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKhead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKhead'] = self.method( :_html_COMARKhead_METHOD )
        @_html_COMARKhead = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKhead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKhead'] = self.method( :_html_COMARKhead_METHOD )
        @_html_COMARKhead = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"head"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKtitle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtitle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtitle'] = self.method( :_html_COMARKtitle_METHOD )
        @_html_COMARKtitle = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKtitle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtitle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKtitle'] = self.method( :_html_COMARKtitle_METHOD )
        @_html_COMARKtitle = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"title"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKbase_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbase', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbase'] = self.method( :_html_COMARKbase_METHOD )
        @_html_COMARKbase = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKbase_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbase', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKbase'] = self.method( :_html_COMARKbase_METHOD )
        @_html_COMARKbase = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"base"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKmeta_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmeta', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKmeta'] = self.method( :_html_COMARKmeta_METHOD )
        @_html_COMARKmeta = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKmeta_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmeta', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKmeta'] = self.method( :_html_COMARKmeta_METHOD )
        @_html_COMARKmeta = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"meta"                    ,
                    LispKeyword.new( "empty?" )                    ,
                    true
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKstyle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstyle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKstyle'] = self.method( :_html_COMARKstyle_METHOD )
        @_html_COMARKstyle = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKstyle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstyle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKstyle'] = self.method( :_html_COMARKstyle_METHOD )
        @_html_COMARKstyle = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"style"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKscript'] = self.method( :_html_COMARKscript_METHOD )
        @_html_COMARKscript = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKscript'] = self.method( :_html_COMARKscript_METHOD )
        @_html_COMARKscript = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"script"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKnoscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKnoscript'] = self.method( :_html_COMARKnoscript_METHOD )
        @_html_COMARKnoscript = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKnoscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKnoscript'] = self.method( :_html_COMARKnoscript_METHOD )
        @_html_COMARKnoscript = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"noscript"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKhtml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhtml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKhtml'] = self.method( :_html_COMARKhtml_METHOD )
        @_html_COMARKhtml = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKhtml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhtml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKhtml'] = self.method( :_html_COMARKhtml_METHOD )
        @_html_COMARKhtml = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"html"
                ]
                             ))
        )
      end
  end
 )
#--------------------

trampCall( 
  begin  #makeBegin
      begin #execFunc
          def self._html_COMARKframeset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframeset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKframeset'] = self.method( :_html_COMARKframeset_METHOD )
        @_html_COMARKframeset = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKframeset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframeset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKframeset'] = self.method( :_html_COMARKframeset_METHOD )
        @_html_COMARKframeset = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"frameset"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKframe'] = self.method( :_html_COMARKframe_METHOD )
        @_html_COMARKframe = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKframe'] = self.method( :_html_COMARKframe_METHOD )
        @_html_COMARKframe = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"frame"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKnoframes_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoframes', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKnoframes'] = self.method( :_html_COMARKnoframes_METHOD )
        @_html_COMARKnoframes = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKnoframes_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoframes', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKnoframes'] = self.method( :_html_COMARKnoframes_METHOD )
        @_html_COMARKnoframes = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"noframes"
                ]
                             ))
        )
      end
      begin #execFunc
          def self._html_COMARKiframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKiframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKiframe'] = self.method( :_html_COMARKiframe_METHOD )
        @_html_COMARKiframe = 
        trampCall(
            nil
        )
      end
      begin #execFunc
          def self._html_COMARKiframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKiframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
          @global_lisp_binding['_html_COMARKiframe'] = self.method( :_html_COMARKiframe_METHOD )
        @_html_COMARKiframe = 
        trampCall(
                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
                    :"iframe"
                ]
                             ))
        )
      end
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------
