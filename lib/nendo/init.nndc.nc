#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
  begin #execFunc
      def self.__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda'] = self.method( :__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda_METHOD )
    @__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda = 
    trampCall(
          Proc.new { |_arg,_body_MIMARKlist| 
              if ( 
                  _pair_QUMARK(
                        _cdr(
                            trampCall(_arg)
                        )
                  )
               ) then
                  if ( 
                      _pair_QUMARK(
                            _car(
                                  _cdr(
                                      trampCall(_arg)
                                  )
                            )
                      )
                   ) then
                      begin raise RuntimeError, 
                      "Error: define syntax error."
                      rescue => __e 
                        __e.set_backtrace( ["./lib/nendo/init.nnd:45"] + __e.backtrace )
                        raise __e
                      end 
                  end
              end
                delayCall( '_cons',  'cons',
                    trampCall(@_cons)                  ,
                [
                    :"define"                    ,
                        _cons(
                              _car(
                                  trampCall(_arg)
                              )                          ,
                              trampCall( self._list_METHOD(  'list',
                                  trampCall(@_list)                                ,
                              [
                                      _cons(
                                        :"lambda"                                        ,
                                            _cons(
                                                  _cdr(
                                                      trampCall(_arg)
                                                  )                                              ,
                                                trampCall(_body_MIMARKlist)
                                            )
                                      )
                              ]
                                           ))
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
      def self._define_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_define', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_define'] = self.method( :_define_METHOD )
    @_define = 
    trampCall(
          LispMacro.new { |_arg,*__rest__| _body = __rest__[0] ;  
              if ( 
                  _not(
                        _pair_QUMARK(
                            trampCall(_arg)
                        )
                  )
               ) then
                    _cons(
                      :"define"                      ,
                          _cons(
                              trampCall(_arg)                            ,
                              trampCall(_body)
                          )
                    )
              else
                    trampCall( self.__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda_METHOD(  '%expand-define-form-lambda',
                        trampCall(@__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda)                      ,
                    [
                          trampCall(_arg)                        ,
                          trampCall(_body)
                    ]
                                 ))
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKexpand_MIMARKdefine_MIMARKform_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKexpand_MIMARKdefine_MIMARKform', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKexpand_MIMARKdefine_MIMARKform'] = self.method( :__PAMARKexpand_MIMARKdefine_MIMARKform_METHOD )
    @__PAMARKexpand_MIMARKdefine_MIMARKform = 
    trampCall(
          Proc.new { |_arg_MIMARKand_MIMARKbody| 
              begin #makeLet
                ___lambda = lambda { |_arg,_body| 
                    if ( 
                        _not(
                              _pair_QUMARK(
                                  trampCall(_arg)
                              )
                        )
                     ) then
                          delayCall( '_cons',  'cons',
                              trampCall(@_cons)                            ,
                          [
                              :"define"                              ,
                                  _cons(
                                      trampCall(_arg)                                    ,
                                      trampCall(_body)
                                  )
                          ]
                                       )
                    else
                          delayCall( '__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda',  '%expand-define-form-lambda',
                              trampCall(@__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda)                            ,
                          [
                                trampCall(_arg)                              ,
                                trampCall(_body)
                          ]
                                       )
                    end
                } ; ___lambda.call(
                        _car(
                            trampCall(_arg_MIMARKand_MIMARKbody)
                        )                    ,
                        _cdr(
                            trampCall(_arg_MIMARKand_MIMARKbody)
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
      def self._debug_MIMARKprint_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_debug_MIMARKprint', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_debug_MIMARKprint'] = self.method( :_debug_MIMARKprint_METHOD )
    @_debug_MIMARKprint = 
    trampCall(
          LispMacro.new { |__form,_sourcefile,_lineno,_sourcesexp| 
              trampCall(__form)
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._caar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caar'] = self.method( :_caar_METHOD )
    @_caar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _car(
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
      def self._cadr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cadr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cadr'] = self.method( :_cadr_METHOD )
    @_cadr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _cdr(
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
      def self._cdar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdar'] = self.method( :_cdar_METHOD )
    @_cdar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _car(
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
      def self._cddr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cddr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cddr'] = self.method( :_cddr_METHOD )
    @_cddr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _cdr(
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
      def self._caaar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caaar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caaar'] = self.method( :_caaar_METHOD )
    @_caaar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _car(
                              _car(
                                  trampCall(_x)
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
      def self._caadr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caadr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caadr'] = self.method( :_caadr_METHOD )
    @_caadr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _car(
                              _cdr(
                                  trampCall(_x)
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
      def self._cadar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cadar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cadar'] = self.method( :_cadar_METHOD )
    @_cadar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _cdr(
                              _car(
                                  trampCall(_x)
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
      def self._caddr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caddr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caddr'] = self.method( :_caddr_METHOD )
    @_caddr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _cdr(
                              _cdr(
                                  trampCall(_x)
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
      def self._cdaar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdaar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdaar'] = self.method( :_cdaar_METHOD )
    @_cdaar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _car(
                              _car(
                                  trampCall(_x)
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
      def self._cdadr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdadr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdadr'] = self.method( :_cdadr_METHOD )
    @_cdadr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _car(
                              _cdr(
                                  trampCall(_x)
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
      def self._cddar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cddar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cddar'] = self.method( :_cddar_METHOD )
    @_cddar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _cdr(
                              _car(
                                  trampCall(_x)
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
      def self._cdddr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdddr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdddr'] = self.method( :_cdddr_METHOD )
    @_cdddr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _cdr(
                              _cdr(
                                  trampCall(_x)
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
      def self._caaaar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caaaar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caaaar'] = self.method( :_caaaar_METHOD )
    @_caaaar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _car(
                              _car(
                                    _car(
                                        trampCall(_x)
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
      def self._caaadr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caaadr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caaadr'] = self.method( :_caaadr_METHOD )
    @_caaadr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _car(
                              _car(
                                    _cdr(
                                        trampCall(_x)
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
      def self._caadar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caadar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caadar'] = self.method( :_caadar_METHOD )
    @_caadar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _car(
                              _cdr(
                                    _car(
                                        trampCall(_x)
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
      def self._caaddr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caaddr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caaddr'] = self.method( :_caaddr_METHOD )
    @_caaddr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _car(
                              _cdr(
                                    _cdr(
                                        trampCall(_x)
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
      def self._cadaar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cadaar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cadaar'] = self.method( :_cadaar_METHOD )
    @_cadaar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _cdr(
                              _car(
                                    _car(
                                        trampCall(_x)
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
      def self._cadadr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cadadr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cadadr'] = self.method( :_cadadr_METHOD )
    @_cadadr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _cdr(
                              _car(
                                    _cdr(
                                        trampCall(_x)
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
      def self._caddar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_caddar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_caddar'] = self.method( :_caddar_METHOD )
    @_caddar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _cdr(
                              _cdr(
                                    _car(
                                        trampCall(_x)
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
      def self._cadddr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cadddr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cadddr'] = self.method( :_cadddr_METHOD )
    @_cadddr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_car',  'car',
                    trampCall(@_car)                  ,
                [
                        _cdr(
                              _cdr(
                                    _cdr(
                                        trampCall(_x)
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
      def self._cdaaar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdaaar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdaaar'] = self.method( :_cdaaar_METHOD )
    @_cdaaar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _car(
                              _car(
                                    _car(
                                        trampCall(_x)
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
      def self._cdaadr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdaadr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdaadr'] = self.method( :_cdaadr_METHOD )
    @_cdaadr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _car(
                              _car(
                                    _cdr(
                                        trampCall(_x)
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
      def self._cdadar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdadar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdadar'] = self.method( :_cdadar_METHOD )
    @_cdadar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _car(
                              _cdr(
                                    _car(
                                        trampCall(_x)
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
      def self._cdaddr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdaddr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdaddr'] = self.method( :_cdaddr_METHOD )
    @_cdaddr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _car(
                              _cdr(
                                    _cdr(
                                        trampCall(_x)
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
      def self._cddaar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cddaar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cddaar'] = self.method( :_cddaar_METHOD )
    @_cddaar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _cdr(
                              _car(
                                    _car(
                                        trampCall(_x)
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
      def self._cddadr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cddadr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cddadr'] = self.method( :_cddadr_METHOD )
    @_cddadr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _cdr(
                              _car(
                                    _cdr(
                                        trampCall(_x)
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
      def self._cdddar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cdddar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cdddar'] = self.method( :_cdddar_METHOD )
    @_cdddar = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _cdr(
                              _cdr(
                                    _car(
                                        trampCall(_x)
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
      def self._cddddr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cddddr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cddddr'] = self.method( :_cddddr_METHOD )
    @_cddddr = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_cdr',  'cdr',
                    trampCall(@_cdr)                  ,
                [
                        _cdr(
                              _cdr(
                                    _cdr(
                                        trampCall(_x)
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
      def self._iota_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_iota', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_iota'] = self.method( :_iota_METHOD )
    @_iota = 
    trampCall(
          trampCall(@_range)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._append_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_append', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_append'] = self.method( :_append_METHOD )
    @_append = 
    trampCall(
          Proc.new { |_a,_b| 
              begin #makeLetrec
                ___lambda = lambda { |_append_MIMARKreverse| 
                    _append_MIMARKreverse                     = 
                      Proc.new { |_a,_b| 
                          if ( 
                              _pair_QUMARK(
                                  trampCall(_a)
                              )
                           ) then
                                delayCall( '_append_MIMARKreverse',  'append-reverse',
                                    trampCall(_append_MIMARKreverse)                                  ,
                                [
                                        _cdr(
                                            trampCall(_a)
                                        )                                    ,
                                        _cons(
                                              _car(
                                                  trampCall(_a)
                                              )                                          ,
                                            trampCall(_b)
                                        )
                                ]
                                             )
                          else
                              trampCall(_b)
                          end
                      }
                      delayCall( '_append_MIMARKreverse',  'append-reverse',
                          trampCall(_append_MIMARKreverse)                        ,
                      [
                              _reverse(
                                  trampCall(_a)
                              )                          ,
                            trampCall(_b)
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
      def self._vector_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector'] = self.method( :_vector_METHOD )
    @_vector = 
    trampCall(
          Proc.new { |*__rest__| _lst = __rest__[0] ;  
                delayCall( '_to_MIMARKarr',  'to-arr',
                    trampCall(@_to_MIMARKarr)                  ,
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
      def self._list_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_list_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_list_QUMARK'] = self.method( :_list_QUMARK_METHOD )
    @_list_QUMARK = 
    trampCall(
          trampCall(@__PAMARKlist_QUMARK)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._even_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_even_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_even_QUMARK'] = self.method( :_even_QUMARK_METHOD )
    @_even_QUMARK = 
    trampCall(
          Proc.new { |_n| 
                delayCall( '__EQMARK',  '=',
                    trampCall(@__EQMARK)                  ,
                [
                        trampCall( self.__PAMARK_METHOD(  '%',
                            trampCall(@__PAMARK)                          ,
                        [
                              trampCall(_n)                            ,
                            2
                        ]
                                     ))                    ,
                    0
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._odd_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_odd_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_odd_QUMARK'] = self.method( :_odd_QUMARK_METHOD )
    @_odd_QUMARK = 
    trampCall(
          Proc.new { |_n| 
                delayCall( '_not',  'not',
                    trampCall(@_not)                  ,
                [
                        __EQMARK(
                              trampCall( self.__PAMARK_METHOD(  '%',
                                  trampCall(@__PAMARK)                                ,
                              [
                                    trampCall(_n)                                  ,
                                  2
                              ]
                                           ))                          ,
                          0
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
      def self._zero_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_zero_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_zero_QUMARK'] = self.method( :_zero_QUMARK_METHOD )
    @_zero_QUMARK = 
    trampCall(
          Proc.new { |_n| 
                delayCall( '__EQMARK',  '=',
                    trampCall(@__EQMARK)                  ,
                [
                      trampCall(_n)                    ,
                    0
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._positive_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_positive_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_positive_QUMARK'] = self.method( :_positive_QUMARK_METHOD )
    @_positive_QUMARK = 
    trampCall(
          Proc.new { |_n| 
                delayCall( '__GTMARK',  '>',
                    trampCall(@__GTMARK)                  ,
                [
                      trampCall(_n)                    ,
                    0
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._negative_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_negative_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_negative_QUMARK'] = self.method( :_negative_QUMARK_METHOD )
    @_negative_QUMARK = 
    trampCall(
          Proc.new { |_n| 
                delayCall( '__LTMARK',  '<',
                    trampCall(@__LTMARK)                  ,
                [
                      trampCall(_n)                    ,
                    0
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._abs_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_abs', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_abs'] = self.method( :_abs_METHOD )
    @_abs = 
    trampCall(
          Proc.new { |_n| 
              if ( 
                  ( 
                    trampCall(_n)                  >=
                  0
                   ) 
               ) then
                  trampCall(_n)
              else
                    delayCall( '__MIMARK',  '-',
                        trampCall(@__MIMARK)                      ,
                    [
                          trampCall(_n)
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
      def self._max_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_max', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_max'] = self.method( :_max_METHOD )
    @_max = 
    trampCall(
          Proc.new { |*__rest__| _lst = __rest__[0] ;  
                delayCall( '_fold_MIMARKright',  'fold-right',
                    trampCall(@_fold_MIMARKright)                  ,
                [
                      Proc.new { |_a,_b| 
                          if ( 
                              ( 
                                trampCall(_a)                              >
                                trampCall(_b)
                               ) 
                           ) then
                              trampCall(_a)
                          else
                              trampCall(_b)
                          end
                      }                    ,
                        _car(
                            trampCall(_lst)
                        )                    ,
                        _cdr(
                            trampCall(_lst)
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
      def self._min_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_min', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_min'] = self.method( :_min_METHOD )
    @_min = 
    trampCall(
          Proc.new { |*__rest__| _lst = __rest__[0] ;  
                delayCall( '_fold_MIMARKright',  'fold-right',
                    trampCall(@_fold_MIMARKright)                  ,
                [
                      Proc.new { |_a,_b| 
                          if ( 
                              ( 
                                trampCall(_a)                              <
                                trampCall(_b)
                               ) 
                           ) then
                              trampCall(_a)
                          else
                              trampCall(_b)
                          end
                      }                    ,
                        _car(
                            trampCall(_lst)
                        )                    ,
                        _cdr(
                            trampCall(_lst)
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
      def self._succ_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_succ', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_succ'] = self.method( :_succ_METHOD )
    @_succ = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '__PLMARK',  '+',
                    trampCall(@__PLMARK)                  ,
                [
                      trampCall(_x)                    ,
                    1
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._pred_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_pred', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_pred'] = self.method( :_pred_METHOD )
    @_pred = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '__MIMARK',  '-',
                    trampCall(@__MIMARK)                  ,
                [
                      trampCall(_x)                    ,
                    1
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._nth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_nth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_nth'] = self.method( :_nth_METHOD )
    @_nth = 
    trampCall(
          Proc.new { |_n,_lst| 
              begin #makeLetrec
                ___lambda = lambda { |_nth_MIMARKiter| 
                    _nth_MIMARKiter                     = 
                      Proc.new { |_n,_index,_lst| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lst)
                              )
                           ) then
                            Cell.new()
                          else
                              if ( 
                                  _not(
                                        _pair_QUMARK(
                                            trampCall(_lst)
                                        )
                                  )
                               ) then
                                  begin raise RuntimeError, 
                                  "Error: nth got improper list."
                                  rescue => __e 
                                    __e.set_backtrace( ["./lib/nendo/init.nnd:149"] + __e.backtrace )
                                    raise __e
                                  end 
                              else
                                  if ( 
                                      trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                          trampCall(@_eqv_QUMARK)                                        ,
                                      [
                                            trampCall(_n)                                          ,
                                            trampCall(_index)
                                      ]
                                                   ))
                                   ) then
                                        delayCall( '_car',  'car',
                                            trampCall(@_car)                                          ,
                                        [
                                              trampCall(_lst)
                                        ]
                                                     )
                                  else
                                        delayCall( '_nth_MIMARKiter',  'nth-iter',
                                            trampCall(_nth_MIMARKiter)                                          ,
                                        [
                                              trampCall(_n)                                            ,
                                                ( 
                                                  trampCall(_index)                                                +
                                                1
                                                 )                                             ,
                                                _cdr(
                                                    trampCall(_lst)
                                                )
                                        ]
                                                     )
                                  end
                              end
                          end
                      }
                      delayCall( '_nth_MIMARKiter',  'nth-iter',
                          trampCall(_nth_MIMARKiter)                        ,
                      [
                            trampCall(_n)                          ,
                          0                          ,
                            trampCall(_lst)
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
      def self._first_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_first', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_first'] = self.method( :_first_METHOD )
    @_first = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    0                    ,
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
      def self._second_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_second', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_second'] = self.method( :_second_METHOD )
    @_second = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    1                    ,
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
      def self._third_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_third', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_third'] = self.method( :_third_METHOD )
    @_third = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    2                    ,
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
      def self._fourth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_fourth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_fourth'] = self.method( :_fourth_METHOD )
    @_fourth = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    3                    ,
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
      def self._fifth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_fifth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_fifth'] = self.method( :_fifth_METHOD )
    @_fifth = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    4                    ,
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
      def self._sixth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_sixth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_sixth'] = self.method( :_sixth_METHOD )
    @_sixth = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    5                    ,
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
      def self._seventh_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_seventh', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_seventh'] = self.method( :_seventh_METHOD )
    @_seventh = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    6                    ,
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
      def self._eighth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_eighth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_eighth'] = self.method( :_eighth_METHOD )
    @_eighth = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    7                    ,
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
      def self._ninth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ninth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_ninth'] = self.method( :_ninth_METHOD )
    @_ninth = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    8                    ,
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
      def self._tenth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_tenth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_tenth'] = self.method( :_tenth_METHOD )
    @_tenth = 
    trampCall(
          Proc.new { |_lst| 
                delayCall( '_nth',  'nth',
                    trampCall(@_nth)                  ,
                [
                    9                    ,
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
      def self._x_MIMARK_GTMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_x_MIMARK_GTMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_x_MIMARK_GTMARKstring'] = self.method( :_x_MIMARK_GTMARKstring_METHOD )
    @_x_MIMARK_GTMARKstring = 
    trampCall(
          Proc.new { |_object| 
                delayCall( '_to_MIMARKs',  'to-s',
                    trampCall(@_to_MIMARKs)                  ,
                [
                      trampCall(_object)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._number_MIMARK_GTMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_number_MIMARK_GTMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_number_MIMARK_GTMARKstring'] = self.method( :_number_MIMARK_GTMARKstring_METHOD )
    @_number_MIMARK_GTMARKstring = 
    trampCall(
          Proc.new { |_num| 
                delayCall( '_x_MIMARK_GTMARKstring',  'x->string',
                    trampCall(@_x_MIMARK_GTMARKstring)                  ,
                [
                      trampCall(_num)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._string_MIMARKappend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_string_MIMARKappend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_string_MIMARKappend'] = self.method( :_string_MIMARKappend_METHOD )
    @_string_MIMARKappend = 
    trampCall(
          Proc.new { |*__rest__| _str_MIMARKlst = __rest__[0] ;  
                delayCall( '_string_MIMARKjoin',  'string-join',
                    trampCall(@_string_MIMARKjoin)                  ,
                [
                      trampCall(_str_MIMARKlst)                    ,
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
      def self._string_EQMARK_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_string_EQMARK_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_string_EQMARK_QUMARK'] = self.method( :_string_EQMARK_QUMARK_METHOD )
    @_string_EQMARK_QUMARK = 
    trampCall(
          Proc.new { |_a,_b| 
                delayCall( '_equal_QUMARK',  'equal?',
                    trampCall(@_equal_QUMARK)                  ,
                [
                      trampCall(_a)                    ,
                      trampCall(_b)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._macroexpand_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_macroexpand', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_macroexpand'] = self.method( :_macroexpand_METHOD )
    @_macroexpand = 
    trampCall(
          Proc.new { |_sexp| 
              begin #makeLet
                ___lambda = lambda { |_newsexp| 
                    if ( 
                        _not(
                              _equal_QUMARK(
                                  trampCall(_sexp)                                ,
                                  trampCall(_newsexp)
                              )
                        )
                     ) then
                          delayCall( '_macroexpand',  'macroexpand',
                              trampCall(@_macroexpand)                            ,
                          [
                                trampCall(_newsexp)
                          ]
                                       )
                    else
                          delayCall( '_strip_MIMARKlet_MIMARKsyntax_MIMARKkeyword',  'strip-let-syntax-keyword',
                              trampCall(@_strip_MIMARKlet_MIMARKsyntax_MIMARKkeyword)                            ,
                          [
                                  trampCall( self._strip_MIMARKsyntax_MIMARKquote_METHOD(  'strip-syntax-quote',
                                      trampCall(@_strip_MIMARKsyntax_MIMARKquote)                                    ,
                                  [
                                        trampCall(_newsexp)
                                  ]
                                               ))
                          ]
                                       )
                    end
                } ; ___lambda.call(
                        _macroexpand_MIMARK1(
                            trampCall(_sexp)
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
      def self._feedto_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_feedto', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_feedto'] = self.method( :_feedto_METHOD )
    @_feedto = 
    trampCall(
          Proc.new { || 
              begin raise RuntimeError, 
              "=> (feedto) appeared outside cond or case."
              rescue => __e 
                __e.set_backtrace( ["./lib/nendo/init.nnd:187"] + __e.backtrace )
                raise __e
              end 
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._cond_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_cond', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_cond'] = self.method( :_cond_METHOD )
    @_cond = 
    trampCall(
          LispMacro.new { |*__rest__| _lst = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_case_MIMARKblock,_cond_MIMARKiter| 
                    _case_MIMARKblock                     = 
                      Proc.new { |_elem,*__rest__| _elseblock = __rest__[0] ;  
                          begin #makeLet
                            ___lambda = lambda { |_condition,_body,_tmpsym| 
                                  trampCall( self._append_METHOD(  'append',
                                      trampCall(@_append)                                    ,
                                  [
                                        if ( 
                                            _eq_QUMARK(
                                              :"feedto"                                              ,
                                                  _car(
                                                      trampCall(_body)
                                                  )
                                            )
                                         ) then
                                              _cons(
                                                :"if"                                                ,
                                                    trampCall( self._list_METHOD(  'list',
                                                        trampCall(@_list)                                                      ,
                                                    [
                                                            trampCall( self._list_METHOD(  'list',
                                                                trampCall(@_list)                                                              ,
                                                            [
                                                                :"set!"                                                                ,
                                                                  trampCall(_tmpsym)                                                                ,
                                                                  trampCall(_condition)
                                                            ]
                                                                         ))                                                        ,
                                                            trampCall( self._list_METHOD(  'list',
                                                                trampCall(@_list)                                                              ,
                                                            [
                                                                    trampCall( self._cadr_METHOD(  'cadr',
                                                                        trampCall(@_cadr)                                                                      ,
                                                                    [
                                                                          trampCall(_body)
                                                                    ]
                                                                                 ))                                                                ,
                                                                  trampCall(_tmpsym)
                                                            ]
                                                                         ))
                                                    ]
                                                                 ))
                                              )
                                        else
                                              _cons(
                                                :"if"                                                ,
                                                    trampCall( self._list_METHOD(  'list',
                                                        trampCall(@_list)                                                      ,
                                                    [
                                                          trampCall(_condition)                                                        ,
                                                            _cons(
                                                              :"begin"                                                              ,
                                                                trampCall(_body)
                                                            )
                                                    ]
                                                                 ))
                                              )
                                        end                                      ,
                                        if ( 
                                            ( 
                                            0                                            <
                                                _length(
                                                    trampCall(_elseblock)
                                                )
                                             ) 
                                         ) then
                                            trampCall(_elseblock)
                                        else
                                          Cell.new()
                                        end
                                  ]
                                               ))
                            } ; ___lambda.call(
                                  if ( 
                                      _eq_QUMARK(
                                        :"else"                                        ,
                                            _car(
                                                trampCall(_elem)
                                            )
                                      )
                                   ) then
                                    true
                                  else
                                        _car(
                                            trampCall(_elem)
                                        )
                                  end                                ,
                                  if ( 
                                      _null_QUMARK(
                                            _cdr(
                                                trampCall(_elem)
                                            )
                                      )
                                   ) then
                                    Cell.new(true)
                                  else
                                        _cdr(
                                            trampCall(_elem)
                                        )
                                  end                                ,
                                    trampCall( self._gensym_METHOD(  'gensym',
                                        trampCall(@_gensym)                                      ,
                                    [
                                    ]
                                                 ))
                                       )
                          end
                      }
                    _cond_MIMARKiter                     = 
                      Proc.new { |_lst| 
                          if ( 
                              _eq_QUMARK(
                                0                                ,
                                    _length(
                                        trampCall(_lst)
                                    )
                              )
                           ) then
                            Cell.new()
                          else
                              if ( 
                                  _eq_QUMARK(
                                    1                                    ,
                                        _length(
                                            trampCall(_lst)
                                        )
                                  )
                               ) then
                                    trampCall( callProcedure(  '_case_MIMARKblock',  'case-block',
                                        trampCall(_case_MIMARKblock)                                      ,
                                    [
                                            _car(
                                                trampCall(_lst)
                                            )                                        ,
                                        Cell.new()
                                    ]
                                                 ))
                              else
                                    trampCall( callProcedure(  '_case_MIMARKblock',  'case-block',
                                        trampCall(_case_MIMARKblock)                                      ,
                                    [
                                            _car(
                                                trampCall(_lst)
                                            )                                        ,
                                            trampCall( callProcedure(  '_cond_MIMARKiter',  'cond-iter',
                                                trampCall(_cond_MIMARKiter)                                              ,
                                            [
                                                    _cdr(
                                                        trampCall(_lst)
                                                    )
                                            ]
                                                         ))
                                    ]
                                                 ))
                              end
                          end
                      }
                      trampCall( callProcedure(  '_cond_MIMARKiter',  'cond-iter',
                          trampCall(_cond_MIMARKiter)                        ,
                      [
                            trampCall(_lst)
                      ]
                                   ))
                } ; ___lambda.call(
                nil,nil
                           )
              end
          }
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
          LispMacro.new { |_var,_expr,*__rest__| _body = __rest__[0] ;  
                trampCall( self._append_METHOD(  'append',
                    trampCall(@_append)                  ,
                [
                        trampCall( self._list_METHOD(  'list',
                            trampCall(@_list)                          ,
                        [
                            :"%let"                            ,
                                trampCall( self._list_METHOD(  'list',
                                    trampCall(@_list)                                  ,
                                [
                                        trampCall( self._list_METHOD(  'list',
                                            trampCall(@_list)                                          ,
                                        [
                                              trampCall(_var)                                            ,
                                              trampCall(_expr)
                                        ]
                                                     ))
                                ]
                                             ))
                        ]
                                     ))                    ,
                      trampCall(_body)
                ]
                             ))
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._or_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_or', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_or'] = self.method( :_or_METHOD )
    @_or = 
    trampCall(
          LispMacro.new { |*__rest__| _lst = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_or_MIMARKiter| 
                    _or_MIMARKiter                     = 
                      Proc.new { |_lst| 
                          if ( 
                              _eq_QUMARK(
                                0                                ,
                                    _length(
                                        trampCall(_lst)
                                    )
                              )
                           ) then
                              false
                          else
                              if ( 
                                  _eq_QUMARK(
                                    1                                    ,
                                        _length(
                                            trampCall(_lst)
                                        )
                                  )
                               ) then
                                    begin #makeLet
                                      ___lambda = lambda { |_sym| 
                                            trampCall( self._list_METHOD(  'list',
                                                trampCall(@_list)                                              ,
                                            [
                                                :"let1"                                                ,
                                                  trampCall(_sym)                                                ,
                                                    _car(
                                                        trampCall(_lst)
                                                    )                                                ,
                                                    trampCall( self._list_METHOD(  'list',
                                                        trampCall(@_list)                                                      ,
                                                    [
                                                        :"if"                                                        ,
                                                          trampCall(_sym)                                                        ,
                                                          trampCall(_sym)                                                        ,
                                                        false
                                                    ]
                                                                 ))
                                            ]
                                                         ))
                                      } ; ___lambda.call(
                                              trampCall( self._gensym_METHOD(  'gensym',
                                                  trampCall(@_gensym)                                                ,
                                              [
                                              ]
                                                           ))
                                                 )
                                    end
                              else
                                  if ( 
                                  true
                                   ) then
                                        begin #makeLet
                                          ___lambda = lambda { |_sym| 
                                                trampCall( self._list_METHOD(  'list',
                                                    trampCall(@_list)                                                  ,
                                                [
                                                    :"let1"                                                    ,
                                                      trampCall(_sym)                                                    ,
                                                        _car(
                                                            trampCall(_lst)
                                                        )                                                    ,
                                                        trampCall( self._list_METHOD(  'list',
                                                            trampCall(@_list)                                                          ,
                                                        [
                                                            :"if"                                                            ,
                                                              trampCall(_sym)                                                            ,
                                                              trampCall(_sym)                                                            ,
                                                                trampCall( callProcedure(  '_or_MIMARKiter',  'or-iter',
                                                                    trampCall(_or_MIMARKiter)                                                                  ,
                                                                [
                                                                        _cdr(
                                                                            trampCall(_lst)
                                                                        )
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))
                                                ]
                                                             ))
                                          } ; ___lambda.call(
                                                  trampCall( self._gensym_METHOD(  'gensym',
                                                      trampCall(@_gensym)                                                    ,
                                                  [
                                                  ]
                                                               ))
                                                     )
                                        end
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      }
                      trampCall( callProcedure(  '_or_MIMARKiter',  'or-iter',
                          trampCall(_or_MIMARKiter)                        ,
                      [
                            trampCall(_lst)
                      ]
                                   ))
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
      def self._and_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_and', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_and'] = self.method( :_and_METHOD )
    @_and = 
    trampCall(
          LispMacro.new { |*__rest__| _lst = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_and_MIMARKiter| 
                    _and_MIMARKiter                     = 
                      Proc.new { |_lst| 
                          if ( 
                              _eq_QUMARK(
                                0                                ,
                                    _length(
                                        trampCall(_lst)
                                    )
                              )
                           ) then
                              true
                          else
                              if ( 
                                  _eq_QUMARK(
                                    1                                    ,
                                        _length(
                                            trampCall(_lst)
                                        )
                                  )
                               ) then
                                      _car(
                                          trampCall(_lst)
                                      )
                              else
                                  if ( 
                                  true
                                   ) then
                                          trampCall( self._list_METHOD(  'list',
                                              trampCall(@_list)                                            ,
                                          [
                                              :"if"                                              ,
                                                  trampCall( self._list_METHOD(  'list',
                                                      trampCall(@_list)                                                    ,
                                                  [
                                                      :"not"                                                      ,
                                                          trampCall( self._list_METHOD(  'list',
                                                              trampCall(@_list)                                                            ,
                                                          [
                                                              :"eq?"                                                              ,
                                                              false                                                              ,
                                                                  _car(
                                                                      trampCall(_lst)
                                                                  )
                                                          ]
                                                                       ))
                                                  ]
                                                               ))                                              ,
                                                  trampCall( callProcedure(  '_and_MIMARKiter',  'and-iter',
                                                      trampCall(_and_MIMARKiter)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_lst)
                                                          )
                                                  ]
                                                               ))                                              ,
                                              false
                                          ]
                                                       ))
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      }
                      trampCall( callProcedure(  '_and_MIMARKiter',  'and-iter',
                          trampCall(_and_MIMARKiter)                        ,
                      [
                            trampCall(_lst)
                      ]
                                   ))
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
      def self._apply_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_apply', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_apply'] = self.method( :_apply_METHOD )
    @_apply = 
    trampCall(
          Proc.new { |_proc,*__rest__| _args = __rest__[0] ;  
              if ( 
                  _null_QUMARK(
                      trampCall(_args)
                  )
               ) then
                    delayCall( '_proc',  'proc',
                        trampCall(_proc)                      ,
                    [
                    ]
                                 )
              else
                  trampCall( callProcedure( nil, 'anonymouse', 
                      Proc.new { |_lol| 
                            trampCall( self._apply1_METHOD(  'apply1',
                                trampCall(@_apply1)                              ,
                            [
                                  trampCall(_proc)                                ,
                                    trampCall( self._append_METHOD(  'append',
                                        trampCall(@_append)                                      ,
                                    [
                                            _reverse(
                                                  _cdr(
                                                      trampCall(_lol)
                                                  )
                                            )                                        ,
                                            _car(
                                                trampCall(_lol)
                                            )
                                    ]
                                                 ))
                            ]
                                         ))
                      }                    ,
                  [
                          _reverse(
                              trampCall(_args)
                          )
                  ]
                            ))
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._quasiquote_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_quasiquote', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_quasiquote'] = self.method( :_quasiquote_METHOD )
    @_quasiquote = 
    trampCall(
          LispMacro.new { |_l| 
              begin #makeLetrec
                ___lambda = lambda { |_mcons,_mappend,_foo| 
                    _mcons                     = 
                      Proc.new { |_f,_l,_r| 
                          if ( 
                            if ( 
                                _not(
                                      _eq_QUMARK(
                                        false                                        ,
                                            _pair_QUMARK(
                                                trampCall(_r)
                                            )
                                      )
                                )
                             ) then
                                if ( 
                                    _not(
                                          _eq_QUMARK(
                                            false                                            ,
                                                _eq_QUMARK(
                                                      _car(
                                                          trampCall(_r)
                                                      )                                                  ,
                                                  :"quote"
                                                )
                                          )
                                    )
                                 ) then
                                    if ( 
                                        _not(
                                              _eq_QUMARK(
                                                false                                                ,
                                                    _eq_QUMARK(
                                                          _car(
                                                                _cdr(
                                                                    trampCall(_r)
                                                                )
                                                          )                                                      ,
                                                          _cdr(
                                                              trampCall(_f)
                                                          )
                                                    )
                                              )
                                        )
                                     ) then
                                        if ( 
                                            _not(
                                                  _eq_QUMARK(
                                                    false                                                    ,
                                                        _pair_QUMARK(
                                                            trampCall(_l)
                                                        )
                                                  )
                                            )
                                         ) then
                                            if ( 
                                                _not(
                                                      _eq_QUMARK(
                                                        false                                                        ,
                                                            _eq_QUMARK(
                                                                  _car(
                                                                      trampCall(_l)
                                                                  )                                                              ,
                                                              :"quote"
                                                            )
                                                      )
                                                )
                                             ) then
                                                  _eq_QUMARK(
                                                        _car(
                                                              _cdr(
                                                                  trampCall(_l)
                                                              )
                                                        )                                                    ,
                                                        _car(
                                                            trampCall(_f)
                                                        )
                                                  )
                                            else
                                              false
                                            end
                                        else
                                          false
                                        end
                                    else
                                      false
                                    end
                                else
                                  false
                                end
                            else
                              false
                            end
                           ) then
                              if ( 
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40543| 
                                      if ( 
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40543)
                                       ) then
                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40543)
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40544| 
                                                if ( 
                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40544)
                                                 ) then
                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40544)
                                                else
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40545| 
                                                          if ( 
                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40545)
                                                           ) then
                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40545)
                                                          else
                                                            false
                                                          end
                                                      } ; ___lambda.call(
                                                              _string_QUMARK(
                                                                  trampCall(_f)
                                                              )
                                                                 )
                                                    end
                                                end
                                            } ; ___lambda.call(
                                                    _number_QUMARK(
                                                        trampCall(_f)
                                                    )
                                                       )
                                          end
                                      end
                                  } ; ___lambda.call(
                                          _procedure_QUMARK(
                                              trampCall(_f)
                                          )
                                             )
                                end
                               ) then
                                  trampCall(_f)
                              else
                                    trampCall( self._list_METHOD(  'list',
                                        trampCall(@_list)                                      ,
                                    [
                                        :"quote"                                        ,
                                          trampCall(_f)
                                    ]
                                                 ))
                              end
                          else
                              if ( 
                                  trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                      trampCall(@_eqv_QUMARK)                                    ,
                                  [
                                        trampCall(_l)                                      ,
                                        trampCall(@_vector)
                                  ]
                                               ))
                               ) then
                                    trampCall( self._apply_METHOD(  'apply',
                                        trampCall(@_apply)                                      ,
                                    [
                                          trampCall(_l)                                        ,
                                            trampCall( self._eval_METHOD(  'eval',
                                                trampCall(@_eval)                                              ,
                                            [
                                                  trampCall(_r)
                                            ]
                                                         ))
                                    ]
                                                 ))
                              else
                                    trampCall( self._list_METHOD(  'list',
                                        trampCall(@_list)                                      ,
                                    [
                                        :"cons"                                        ,
                                          trampCall(_l)                                        ,
                                          trampCall(_r)
                                    ]
                                                 ))
                              end
                          end
                      }
                    _mappend                     = 
                      Proc.new { |_f,_l,_r| 
                          if ( 
                            begin #makeLet
                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40546| 
                                  if ( 
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40546)
                                   ) then
                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40546)
                                  else
                                      begin #makeLet
                                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40547| 
                                            if ( 
                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40547)
                                             ) then
                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40547)
                                            else
                                              false
                                            end
                                        } ; ___lambda.call(
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                  trampCall(_r)
                                                              )
                                                        )
                                                  )
                                               ) then
                                                  if ( 
                                                      _not(
                                                            _eq_QUMARK(
                                                              false                                                              ,
                                                                  _eq_QUMARK(
                                                                        _car(
                                                                            trampCall(_r)
                                                                        )                                                                    ,
                                                                    :"quote"
                                                                  )
                                                            )
                                                      )
                                                   ) then
                                                        _eq_QUMARK(
                                                              _car(
                                                                    _cdr(
                                                                        trampCall(_r)
                                                                    )
                                                              )                                                          ,
                                                          Cell.new()
                                                        )
                                                  else
                                                    false
                                                  end
                                              else
                                                false
                                              end
                                                   )
                                      end
                                  end
                              } ; ___lambda.call(
                                      _null_QUMARK(
                                            _cdr(
                                                trampCall(_f)
                                            )
                                      )
                                         )
                            end
                           ) then
                              trampCall(_l)
                          else
                                trampCall( self._list_METHOD(  'list',
                                    trampCall(@_list)                                  ,
                                [
                                    :"append"                                    ,
                                      trampCall(_l)                                    ,
                                      trampCall(_r)
                                ]
                                             ))
                          end
                      }
                    _foo                     = 
                      Proc.new { |_level,_form| 
                          if ( 
                              _not(
                                    _pair_QUMARK(
                                        trampCall(_form)
                                    )
                              )
                           ) then
                                if ( 
                                  begin #makeLet
                                    ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40551| 
                                        if ( 
                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40551)
                                         ) then
                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40551)
                                        else
                                            begin #makeLet
                                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40552| 
                                                  if ( 
                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40552)
                                                   ) then
                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40552)
                                                  else
                                                      begin #makeLet
                                                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40553| 
                                                            if ( 
                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40553)
                                                             ) then
                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40553)
                                                            else
                                                              false
                                                            end
                                                        } ; ___lambda.call(
                                                                _string_QUMARK(
                                                                    trampCall(_form)
                                                                )
                                                                   )
                                                      end
                                                  end
                                              } ; ___lambda.call(
                                                      _number_QUMARK(
                                                          trampCall(_form)
                                                      )
                                                         )
                                            end
                                        end
                                    } ; ___lambda.call(
                                            _procedure_QUMARK(
                                                trampCall(_form)
                                            )
                                               )
                                  end
                                 ) then
                                    trampCall(_form)
                                else
                                      trampCall( self._list_METHOD(  'list',
                                          trampCall(@_list)                                        ,
                                      [
                                          :"quote"                                          ,
                                            trampCall(_form)
                                      ]
                                                   ))
                                end
                          else
                              if ( 
                                  _eq_QUMARK(
                                    :"quasiquote"                                    ,
                                        _car(
                                            trampCall(_form)
                                        )
                                  )
                               ) then
                                      trampCall( callProcedure(  '_mcons',  'mcons',
                                          trampCall(_mcons)                                        ,
                                      [
                                            trampCall(_form)                                          ,
                                          Cell.new(:"quote",Cell.new(:"quasiquote"))                                          ,
                                              trampCall( callProcedure(  '_foo',  'foo',
                                                  trampCall(_foo)                                                ,
                                              [
                                                      ( 
                                                        trampCall(_level)                                                      +
                                                      1
                                                       )                                                   ,
                                                      _cdr(
                                                          trampCall(_form)
                                                      )
                                              ]
                                                           ))
                                      ]
                                                   ))
                              else
                                  if ( 
                                  true
                                   ) then
                                        if ( 
                                            trampCall( self._zero_QUMARK_METHOD(  'zero?',
                                                trampCall(@_zero_QUMARK)                                              ,
                                            [
                                                  trampCall(_level)
                                            ]
                                                         ))
                                         ) then
                                            if ( 
                                                _eq_QUMARK(
                                                      _car(
                                                          trampCall(_form)
                                                      )                                                  ,
                                                  :"unquote"
                                                )
                                             ) then
                                                    _car(
                                                          _cdr(
                                                              trampCall(_form)
                                                          )
                                                    )
                                            else
                                                if ( 
                                                    _eq_QUMARK(
                                                          _car(
                                                              trampCall(_form)
                                                          )                                                      ,
                                                      :"unquote-splicing"
                                                    )
                                                 ) then
                                                        trampCall( self.__PAMARKraise_METHOD(  '%raise',
                                                            trampCall(@__PAMARKraise)                                                          ,
                                                        [
                                                              trampCall(RuntimeError)                                                            ,
                                                                ( 
                                                                "Error: Unquote-splicing wasn't in a list: "                                                                +
                                                                    _write_MIMARKto_MIMARKstring(
                                                                        trampCall(_form)
                                                                    )
                                                                 )                                                             ,
                                                                trampCall( self._sprintf_METHOD(  'sprintf',
                                                                    trampCall(@_sprintf)                                                                  ,
                                                                [
                                                                    "%s:%s outside list."                                                                    ,
                                                                        trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                                                            trampCall(@__ASMARKFILE_ASMARK)                                                                          ,
                                                                        [
                                                                        ]
                                                                                     ))                                                                    ,
                                                                        trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                                                            trampCall(@__ASMARKLINE_ASMARK)                                                                          ,
                                                                        [
                                                                        ]
                                                                                     ))
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))
                                                else
                                                    if ( 
                                                      if ( 
                                                          _not(
                                                                _eq_QUMARK(
                                                                  false                                                                  ,
                                                                      _pair_QUMARK(
                                                                            _car(
                                                                                trampCall(_form)
                                                                            )
                                                                      )
                                                                )
                                                          )
                                                       ) then
                                                            _eq_QUMARK(
                                                                  _car(
                                                                        _car(
                                                                            trampCall(_form)
                                                                        )
                                                                  )                                                              ,
                                                              :"unquote-splicing"
                                                            )
                                                      else
                                                        false
                                                      end
                                                     ) then
                                                            trampCall( callProcedure(  '_mappend',  'mappend',
                                                                trampCall(_mappend)                                                              ,
                                                            [
                                                                  trampCall(_form)                                                                ,
                                                                    _car(
                                                                          _cdr(
                                                                                _car(
                                                                                    trampCall(_form)
                                                                                )
                                                                          )
                                                                    )                                                                ,
                                                                    trampCall( callProcedure(  '_foo',  'foo',
                                                                        trampCall(_foo)                                                                      ,
                                                                    [
                                                                          trampCall(_level)                                                                        ,
                                                                            _cdr(
                                                                                trampCall(_form)
                                                                            )
                                                                    ]
                                                                                 ))
                                                            ]
                                                                         ))
                                                    else
                                                        if ( 
                                                        true
                                                         ) then
                                                                trampCall( callProcedure(  '_mcons',  'mcons',
                                                                    trampCall(_mcons)                                                                  ,
                                                                [
                                                                      trampCall(_form)                                                                    ,
                                                                        trampCall( callProcedure(  '_foo',  'foo',
                                                                            trampCall(_foo)                                                                          ,
                                                                        [
                                                                              trampCall(_level)                                                                            ,
                                                                                _car(
                                                                                    trampCall(_form)
                                                                                )
                                                                        ]
                                                                                     ))                                                                    ,
                                                                        trampCall( callProcedure(  '_foo',  'foo',
                                                                            trampCall(_foo)                                                                          ,
                                                                        [
                                                                              trampCall(_level)                                                                            ,
                                                                                _cdr(
                                                                                    trampCall(_form)
                                                                                )
                                                                        ]
                                                                                     ))
                                                                ]
                                                                             ))
                                                        else
                                                            Cell.new()
                                                        end
                                                    end
                                                end
                                            end
                                        else
                                            if ( 
                                                _eq_QUMARK(
                                                      _car(
                                                          trampCall(_form)
                                                      )                                                  ,
                                                  :"unquote"
                                                )
                                             ) then
                                                    trampCall( callProcedure(  '_mcons',  'mcons',
                                                        trampCall(_mcons)                                                      ,
                                                    [
                                                          trampCall(_form)                                                        ,
                                                        Cell.new(:"quote",Cell.new(:"unquote"))                                                        ,
                                                            trampCall( callProcedure(  '_foo',  'foo',
                                                                trampCall(_foo)                                                              ,
                                                            [
                                                                    ( 
                                                                      trampCall(_level)                                                                    -
                                                                    1
                                                                     )                                                                 ,
                                                                    _cdr(
                                                                        trampCall(_form)
                                                                    )
                                                            ]
                                                                         ))
                                                    ]
                                                                 ))
                                            else
                                                if ( 
                                                    _eq_QUMARK(
                                                          _car(
                                                              trampCall(_form)
                                                          )                                                      ,
                                                      :"unquote-splicing"
                                                    )
                                                 ) then
                                                        trampCall( callProcedure(  '_mcons',  'mcons',
                                                            trampCall(_mcons)                                                          ,
                                                        [
                                                              trampCall(_form)                                                            ,
                                                            Cell.new(:"quote",Cell.new(:"unquote-splicing"))                                                            ,
                                                                trampCall( callProcedure(  '_foo',  'foo',
                                                                    trampCall(_foo)                                                                  ,
                                                                [
                                                                        ( 
                                                                          trampCall(_level)                                                                        -
                                                                        1
                                                                         )                                                                     ,
                                                                        _cdr(
                                                                            trampCall(_form)
                                                                        )
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))
                                                else
                                                    if ( 
                                                    true
                                                     ) then
                                                            trampCall( callProcedure(  '_mcons',  'mcons',
                                                                trampCall(_mcons)                                                              ,
                                                            [
                                                                  trampCall(_form)                                                                ,
                                                                    trampCall( callProcedure(  '_foo',  'foo',
                                                                        trampCall(_foo)                                                                      ,
                                                                    [
                                                                          trampCall(_level)                                                                        ,
                                                                            _car(
                                                                                trampCall(_form)
                                                                            )
                                                                    ]
                                                                                 ))                                                                ,
                                                                    trampCall( callProcedure(  '_foo',  'foo',
                                                                        trampCall(_foo)                                                                      ,
                                                                    [
                                                                          trampCall(_level)                                                                        ,
                                                                            _cdr(
                                                                                trampCall(_form)
                                                                            )
                                                                    ]
                                                                                 ))
                                                            ]
                                                                         ))
                                                    else
                                                        Cell.new()
                                                    end
                                                end
                                            end
                                        end
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      }
                      trampCall( callProcedure(  '_foo',  'foo',
                          trampCall(_foo)                        ,
                      [
                          0                          ,
                            trampCall(_l)
                      ]
                                   ))
                } ; ___lambda.call(
                nil,nil,nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unquote_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unquote', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unquote'] = self.method( :_unquote_METHOD )
    @_unquote = 
    trampCall(
          LispMacro.new { |_lst| 
                trampCall( self.__PAMARKraise_METHOD(  '%raise',
                    trampCall(@__PAMARKraise)                  ,
                [
                      trampCall(RuntimeError)                    ,
                    "Error: unquote appeared outside quasiquote"                    ,
                        trampCall( self._sprintf_METHOD(  'sprintf',
                            trampCall(@_sprintf)                          ,
                        [
                            "%s:%s outside quasiquote"                            ,
                                trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                    trampCall(@__ASMARKFILE_ASMARK)                                  ,
                                [
                                ]
                                             ))                            ,
                                trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                    trampCall(@__ASMARKLINE_ASMARK)                                  ,
                                [
                                ]
                                             ))
                        ]
                                     ))
                ]
                             ))
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unquote_MIMARKsplicing_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unquote_MIMARKsplicing', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unquote_MIMARKsplicing'] = self.method( :_unquote_MIMARKsplicing_METHOD )
    @_unquote_MIMARKsplicing = 
    trampCall(
          LispMacro.new { |_lst| 
                trampCall( self.__PAMARKraise_METHOD(  '%raise',
                    trampCall(@__PAMARKraise)                  ,
                [
                      trampCall(RuntimeError)                    ,
                    "Error: unquote-splicing appeared outside quasiquote"                    ,
                        trampCall( self._sprintf_METHOD(  'sprintf',
                            trampCall(@_sprintf)                          ,
                        [
                            "%s:%s outside quasiquote"                            ,
                                trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                    trampCall(@__ASMARKFILE_ASMARK)                                  ,
                                [
                                ]
                                             ))                            ,
                                trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                    trampCall(@__ASMARKLINE_ASMARK)                                  ,
                                [
                                ]
                                             ))
                        ]
                                     ))
                ]
                             ))
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._when_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_when', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_when'] = self.method( :_when_METHOD )
    @_when = 
    trampCall(
          LispMacro.new { |*__rest__| _form = __rest__[0] ;  
                _cons(
                  :"if"                  ,
                      _cons(
                            _car(
                                trampCall(_form)
                            )                        ,
                            _cons(
                                  _cons(
                                    :"begin"                                    ,
                                        _cdr(
                                            trampCall(_form)
                                        )
                                  )                              ,
                              Cell.new()
                            )
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unless_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unless', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unless'] = self.method( :_unless_METHOD )
    @_unless = 
    trampCall(
          LispMacro.new { |*__rest__| _form = __rest__[0] ;  
                _cons(
                  :"if"                  ,
                      _cons(
                            _cons(
                              :"not"                              ,
                                  _cons(
                                        _car(
                                            trampCall(_form)
                                        )                                    ,
                                    Cell.new()
                                  )
                            )                        ,
                            _cons(
                                  _cons(
                                    :"begin"                                    ,
                                        _cdr(
                                            trampCall(_form)
                                        )
                                  )                              ,
                              Cell.new()
                            )
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._while_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_while', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_while'] = self.method( :_while_METHOD )
    @_while = 
    trampCall(
          LispMacro.new { |*__rest__| _form = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_sym| 
                      _cons(
                        :"begin"                        ,
                            _cons(
                                  _cons(
                                    :"define"                                    ,
                                        _cons(
                                            trampCall(_sym)                                          ,
                                              _cons(
                                                    _cons(
                                                      :"lambda"                                                      ,
                                                          _cons(
                                                            Cell.new()                                                            ,
                                                                _cons(
                                                                      _cons(
                                                                        :"if"                                                                        ,
                                                                            _cons(
                                                                                  _car(
                                                                                      trampCall(_form)
                                                                                  )                                                                              ,
                                                                                  _cons(
                                                                                        _cons(
                                                                                          :"begin"                                                                                          ,
                                                                                              trampCall( self._append_METHOD(  'append',
                                                                                                  trampCall(@_append)                                                                                                ,
                                                                                              [
                                                                                                      _cdr(
                                                                                                          trampCall(_form)
                                                                                                      )                                                                                                  ,
                                                                                                      _cons(
                                                                                                            _cons(
                                                                                                                trampCall(_sym)                                                                                                              ,
                                                                                                              Cell.new()
                                                                                                            )                                                                                                        ,
                                                                                                        Cell.new()
                                                                                                      )
                                                                                              ]
                                                                                                           ))
                                                                                        )                                                                                    ,
                                                                                    Cell.new()
                                                                                  )
                                                                            )
                                                                      )                                                                  ,
                                                                  Cell.new()
                                                                )
                                                          )
                                                    )                                                ,
                                                Cell.new()
                                              )
                                        )
                                  )                              ,
                                  _cons(
                                        _cons(
                                            trampCall(_sym)                                          ,
                                          Cell.new()
                                        )                                    ,
                                    Cell.new()
                                  )
                            )
                      )
                } ; ___lambda.call(
                        trampCall( self._gensym_METHOD(  'gensym',
                            trampCall(@_gensym)                          ,
                        [
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
      def self._until_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_until', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_until'] = self.method( :_until_METHOD )
    @_until = 
    trampCall(
          LispMacro.new { |*__rest__| _form = __rest__[0] ;  
                _cons(
                  :"while"                  ,
                      _cons(
                            _cons(
                              :"not"                              ,
                                  _cons(
                                        _car(
                                            trampCall(_form)
                                        )                                    ,
                                    Cell.new()
                                  )
                            )                        ,
                            _cdr(
                                trampCall(_form)
                            )
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._let_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_let', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_let'] = self.method( :_let_METHOD )
    @_let = 
    trampCall(
          LispMacro.new { |*__rest__| _lst = __rest__[0] ;  
              if ( 
                  _symbol_QUMARK(
                        _car(
                            trampCall(_lst)
                        )
                  )
               ) then
                    if ( 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40563| 
                            if ( 
                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40563)
                             ) then
                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40563)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40564| 
                                      if ( 
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40564)
                                       ) then
                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40564)
                                      else
                                        false
                                      end
                                  } ; ___lambda.call(
                                          _not(
                                                trampCall( self._list_QUMARK_METHOD(  'list?',
                                                    trampCall(@_list_QUMARK)                                                  ,
                                                [
                                                        trampCall( self._second_METHOD(  'second',
                                                            trampCall(@_second)                                                          ,
                                                        [
                                                              trampCall(_lst)
                                                        ]
                                                                     ))
                                                ]
                                                             ))
                                          )
                                             )
                                end
                            end
                        } ; ___lambda.call(
                                ( 
                                    _length(
                                        trampCall(_lst)
                                    )                                <
                                3
                                 ) 
                                   )
                      end
                     ) then
                            trampCall( self.__PAMARKraise_METHOD(  '%raise',
                                trampCall(@__PAMARKraise)                              ,
                            [
                                  trampCall(SyntaxError)                                ,
                                    trampCall( self._sprintf_METHOD(  'sprintf',
                                        trampCall(@_sprintf)                                      ,
                                    [
                                        "named let requires (let name (bind-list) body ...) form  But got %s"                                        ,
                                            _write_MIMARKto_MIMARKstring(
                                                  _cons(
                                                    :"let"                                                    ,
                                                      trampCall(_lst)
                                                  )
                                            )
                                    ]
                                                 ))                                ,
                                    trampCall( self._sprintf_METHOD(  'sprintf',
                                        trampCall(@_sprintf)                                      ,
                                    [
                                        "%s:%s in named let form"                                        ,
                                            trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                                trampCall(@__ASMARKFILE_ASMARK)                                              ,
                                            [
                                            ]
                                                         ))                                        ,
                                            trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                                trampCall(@__ASMARKLINE_ASMARK)                                              ,
                                            [
                                            ]
                                                         ))
                                    ]
                                                 ))
                            ]
                                         ))
                    end
              else
                  if ( 
                  true
                   ) then
                        if ( 
                          begin #makeLet
                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40565| 
                                if ( 
                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40565)
                                 ) then
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40565)
                                else
                                    begin #makeLet
                                      ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40566| 
                                          if ( 
                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40566)
                                           ) then
                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40566)
                                          else
                                            false
                                          end
                                      } ; ___lambda.call(
                                              _not(
                                                    trampCall( self._list_QUMARK_METHOD(  'list?',
                                                        trampCall(@_list_QUMARK)                                                      ,
                                                    [
                                                            trampCall( self._first_METHOD(  'first',
                                                                trampCall(@_first)                                                              ,
                                                            [
                                                                  trampCall(_lst)
                                                            ]
                                                                         ))
                                                    ]
                                                                 ))
                                              )
                                                 )
                                    end
                                end
                            } ; ___lambda.call(
                                    ( 
                                        _length(
                                            trampCall(_lst)
                                        )                                    <
                                    2
                                     ) 
                                       )
                          end
                         ) then
                                trampCall( self.__PAMARKraise_METHOD(  '%raise',
                                    trampCall(@__PAMARKraise)                                  ,
                                [
                                      trampCall(SyntaxError)                                    ,
                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                            trampCall(@_sprintf)                                          ,
                                        [
                                            "let requires (let (bind-list) body ...) form  But got %s"                                            ,
                                                _write_MIMARKto_MIMARKstring(
                                                      _cons(
                                                        :"let"                                                        ,
                                                          trampCall(_lst)
                                                      )
                                                )
                                        ]
                                                     ))                                    ,
                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                            trampCall(@_sprintf)                                          ,
                                        [
                                            "%s:%s in named let form"                                            ,
                                                trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                                    trampCall(@__ASMARKFILE_ASMARK)                                                  ,
                                                [
                                                ]
                                                             ))                                            ,
                                                trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                                    trampCall(@__ASMARKLINE_ASMARK)                                                  ,
                                                [
                                                ]
                                                             ))
                                        ]
                                                     ))
                                ]
                                             ))
                        end
                  else
                      Cell.new()
                  end
              end
              if ( 
                  _symbol_QUMARK(
                        _car(
                            trampCall(_lst)
                        )
                  )
               ) then
                    _cons(
                      :"letrec"                      ,
                          _cons(
                                _cons(
                                      _cons(
                                            trampCall( self._first_METHOD(  'first',
                                                trampCall(@_first)                                              ,
                                            [
                                                  trampCall(_lst)
                                            ]
                                                         ))                                        ,
                                            _cons(
                                                  _cons(
                                                    :"lambda"                                                    ,
                                                        _cons(
                                                              trampCall( self._map_METHOD(  'map',
                                                                  trampCall(@_map)                                                                ,
                                                              [
                                                                    Proc.new { |_x| 
                                                                          trampCall( self._first_METHOD(  'first',
                                                                              trampCall(@_first)                                                                            ,
                                                                          [
                                                                                trampCall(_x)
                                                                          ]
                                                                                       ))
                                                                    }                                                                  ,
                                                                      trampCall( self._second_METHOD(  'second',
                                                                          trampCall(@_second)                                                                        ,
                                                                      [
                                                                            trampCall(_lst)
                                                                      ]
                                                                                   ))
                                                              ]
                                                                           ))                                                          ,
                                                              trampCall( self._cddr_METHOD(  'cddr',
                                                                  trampCall(@_cddr)                                                                ,
                                                              [
                                                                    trampCall(_lst)
                                                              ]
                                                                           ))
                                                        )
                                                  )                                              ,
                                              Cell.new()
                                            )
                                      )                                  ,
                                  Cell.new()
                                )                            ,
                                _cons(
                                      _cons(
                                            trampCall( self._first_METHOD(  'first',
                                                trampCall(@_first)                                              ,
                                            [
                                                  trampCall(_lst)
                                            ]
                                                         ))                                        ,
                                            trampCall( self._map_METHOD(  'map',
                                                trampCall(@_map)                                              ,
                                            [
                                                  Proc.new { |_x| 
                                                        trampCall( self._second_METHOD(  'second',
                                                            trampCall(@_second)                                                          ,
                                                        [
                                                              trampCall(_x)
                                                        ]
                                                                     ))
                                                  }                                                ,
                                                    trampCall( self._second_METHOD(  'second',
                                                        trampCall(@_second)                                                      ,
                                                    [
                                                          trampCall(_lst)
                                                    ]
                                                                 ))
                                            ]
                                                         ))
                                      )                                  ,
                                  Cell.new()
                                )
                          )
                    )
              else
                    _cons(
                      :"%let"                      ,
                        trampCall(_lst)
                    )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._if_MIMARKlet1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_if_MIMARKlet1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_if_MIMARKlet1'] = self.method( :_if_MIMARKlet1_METHOD )
    @_if_MIMARKlet1 = 
    trampCall(
          LispMacro.new { |_var,__expr,__then,*__rest__| __else = __rest__[0] ;  
                _cons(
                  :"let1"                  ,
                      _cons(
                          trampCall(_var)                        ,
                            _cons(
                                trampCall(__expr)                              ,
                                  _cons(
                                        _cons(
                                          :"if"                                          ,
                                              _cons(
                                                  trampCall(_var)                                                ,
                                                    _cons(
                                                        trampCall(__then)                                                      ,
                                                        trampCall(__else)
                                                    )
                                              )
                                        )                                    ,
                                    Cell.new()
                                  )
                            )
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._push_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_push_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_push_EXMARK'] = self.method( :_push_EXMARK_METHOD )
    @_push_EXMARK = 
    trampCall(
          LispMacro.new { |__lst,__val| 
                _cons(
                  :"set!"                  ,
                      _cons(
                          trampCall(__lst)                        ,
                            _cons(
                                  _cons(
                                    :"append"                                    ,
                                        _cons(
                                              _cons(
                                                :"list"                                                ,
                                                    _cons(
                                                        trampCall(__val)                                                      ,
                                                      Cell.new()
                                                    )
                                              )                                          ,
                                              _cons(
                                                  trampCall(__lst)                                                ,
                                                Cell.new()
                                              )
                                        )
                                  )                              ,
                              Cell.new()
                            )
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._errorf_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_errorf', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_errorf'] = self.method( :_errorf_METHOD )
    @_errorf = 
    trampCall(
          LispMacro.new { |_format,*__rest__| _args = __rest__[0] ;  
                _cons(
                  :"error"                  ,
                      _cons(
                            _cons(
                              :"sprintf"                              ,
                                  _cons(
                                      trampCall(_format)                                    ,
                                      trampCall(_args)
                                  )
                            )                        ,
                        Cell.new()
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._get_MIMARKoptional_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_get_MIMARKoptional', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_get_MIMARKoptional'] = self.method( :_get_MIMARKoptional_METHOD )
    @_get_MIMARKoptional = 
    trampCall(
          LispMacro.new { |_restarg,_default| 
              begin #makeLet
                ___lambda = lambda { |__restarg| 
                      _cons(
                        :"let1"                        ,
                            _cons(
                                trampCall(__restarg)                              ,
                                  _cons(
                                      trampCall(_restarg)                                    ,
                                        _cons(
                                              _cons(
                                                :"if"                                                ,
                                                    _cons(
                                                          _cons(
                                                            :"null?"                                                            ,
                                                                _cons(
                                                                    trampCall(__restarg)                                                                  ,
                                                                  Cell.new()
                                                                )
                                                          )                                                      ,
                                                          _cons(
                                                              trampCall(_default)                                                            ,
                                                                _cons(
                                                                      _cons(
                                                                        :"car"                                                                        ,
                                                                            _cons(
                                                                                trampCall(__restarg)                                                                              ,
                                                                              Cell.new()
                                                                            )
                                                                      )                                                                  ,
                                                                  Cell.new()
                                                                )
                                                          )
                                                    )
                                              )                                          ,
                                          Cell.new()
                                        )
                                  )
                            )
                      )
                } ; ___lambda.call(
                        trampCall( self._gensym_METHOD(  'gensym',
                            trampCall(@_gensym)                          ,
                        [
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
      def self._check_MIMARKarg_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_check_MIMARKarg', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_check_MIMARKarg'] = self.method( :_check_MIMARKarg_METHOD )
    @_check_MIMARKarg = 
    trampCall(
          LispMacro.new { |_a,_b,*__rest__| _c = __rest__[0] ;  
                _cons(
                  :"begin"                  ,
                  Cell.new()
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._do_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_do', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_do'] = self.method( :_do_METHOD )
    @_do = 
    trampCall(
          LispMacro.new { |*__rest__| _do_MIMARKmacro = __rest__[0] ;  
                trampCall( self._apply_METHOD(  'apply',
                    trampCall(@_apply)                  ,
                [
                      Proc.new { |_vars,_endtest,*__rest__| _body = __rest__[0] ;  
                          begin #makeLet
                            ___lambda = lambda { |_do_MIMARKloop| 
                                  _cons(
                                    :"letrec"                                    ,
                                        _cons(
                                              _cons(
                                                    _cons(
                                                        trampCall(_do_MIMARKloop)                                                      ,
                                                          _cons(
                                                                _cons(
                                                                  :"lambda"                                                                  ,
                                                                      _cons(
                                                                            trampCall( self._map_METHOD(  'map',
                                                                                trampCall(@_map)                                                                              ,
                                                                            [
                                                                                  Proc.new { |_x| 
                                                                                      if ( 
                                                                                          _pair_QUMARK(
                                                                                              trampCall(_x)
                                                                                          )
                                                                                       ) then
                                                                                            _car(
                                                                                                trampCall(_x)
                                                                                            )
                                                                                      else
                                                                                          trampCall(_x)
                                                                                      end
                                                                                  }                                                                                ,
                                                                                  trampCall(_vars)
                                                                            ]
                                                                                         ))                                                                        ,
                                                                            _cons(
                                                                                  _cons(
                                                                                    :"if"                                                                                    ,
                                                                                        _cons(
                                                                                              _car(
                                                                                                  trampCall(_endtest)
                                                                                              )                                                                                          ,
                                                                                              _cons(
                                                                                                    _cons(
                                                                                                      :"begin"                                                                                                      ,
                                                                                                          _cdr(
                                                                                                              trampCall(_endtest)
                                                                                                          )
                                                                                                    )                                                                                                ,
                                                                                                    _cons(
                                                                                                          _cons(
                                                                                                            :"begin"                                                                                                            ,
                                                                                                                trampCall( self._append_METHOD(  'append',
                                                                                                                    trampCall(@_append)                                                                                                                  ,
                                                                                                                [
                                                                                                                      trampCall(_body)                                                                                                                    ,
                                                                                                                        _cons(
                                                                                                                              _cons(
                                                                                                                                  trampCall(_do_MIMARKloop)                                                                                                                                ,
                                                                                                                                    trampCall( self._map_METHOD(  'map',
                                                                                                                                        trampCall(@_map)                                                                                                                                      ,
                                                                                                                                    [
                                                                                                                                          Proc.new { |_x| 
                                                                                                                                              if ( 
                                                                                                                                                  _not(
                                                                                                                                                        _pair_QUMARK(
                                                                                                                                                            trampCall(_x)
                                                                                                                                                        )
                                                                                                                                                  )
                                                                                                                                               ) then
                                                                                                                                                    trampCall(_x)
                                                                                                                                              else
                                                                                                                                                  if ( 
                                                                                                                                                      ( 
                                                                                                                                                          _length(
                                                                                                                                                              trampCall(_x)
                                                                                                                                                          )                                                                                                                                                      <
                                                                                                                                                      3
                                                                                                                                                       ) 
                                                                                                                                                   ) then
                                                                                                                                                          _car(
                                                                                                                                                              trampCall(_x)
                                                                                                                                                          )
                                                                                                                                                  else
                                                                                                                                                      if ( 
                                                                                                                                                      true
                                                                                                                                                       ) then
                                                                                                                                                              _car(
                                                                                                                                                                    _cdr(
                                                                                                                                                                          _cdr(
                                                                                                                                                                              trampCall(_x)
                                                                                                                                                                          )
                                                                                                                                                                    )
                                                                                                                                                              )
                                                                                                                                                      else
                                                                                                                                                          Cell.new()
                                                                                                                                                      end
                                                                                                                                                  end
                                                                                                                                              end
                                                                                                                                          }                                                                                                                                        ,
                                                                                                                                          trampCall(_vars)
                                                                                                                                    ]
                                                                                                                                                 ))
                                                                                                                              )                                                                                                                          ,
                                                                                                                          Cell.new()
                                                                                                                        )
                                                                                                                ]
                                                                                                                             ))
                                                                                                          )                                                                                                      ,
                                                                                                      Cell.new()
                                                                                                    )
                                                                                              )
                                                                                        )
                                                                                  )                                                                              ,
                                                                              Cell.new()
                                                                            )
                                                                      )
                                                                )                                                            ,
                                                            Cell.new()
                                                          )
                                                    )                                                ,
                                                Cell.new()
                                              )                                          ,
                                              _cons(
                                                    _cons(
                                                        trampCall(_do_MIMARKloop)                                                      ,
                                                          trampCall( self._map_METHOD(  'map',
                                                              trampCall(@_map)                                                            ,
                                                          [
                                                                Proc.new { |_x| 
                                                                    if ( 
                                                                      if ( 
                                                                          _not(
                                                                                _eq_QUMARK(
                                                                                  false                                                                                  ,
                                                                                      _pair_QUMARK(
                                                                                          trampCall(_x)
                                                                                      )
                                                                                )
                                                                          )
                                                                       ) then
                                                                            _cdr(
                                                                                trampCall(_x)
                                                                            )
                                                                      else
                                                                        false
                                                                      end
                                                                     ) then
                                                                          _car(
                                                                                _cdr(
                                                                                    trampCall(_x)
                                                                                )
                                                                          )
                                                                    else
                                                                      Cell.new()
                                                                    end
                                                                }                                                              ,
                                                                trampCall(_vars)
                                                          ]
                                                                       ))
                                                    )                                                ,
                                                Cell.new()
                                              )
                                        )
                                  )
                            } ; ___lambda.call(
                                    trampCall( self._gensym_METHOD(  'gensym',
                                        trampCall(@_gensym)                                      ,
                                    [
                                    ]
                                                 ))
                                       )
                          end
                      }                    ,
                      trampCall(_do_MIMARKmacro)
                ]
                             ))
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._generic_MIMARKmember_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_generic_MIMARKmember', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_generic_MIMARKmember'] = self.method( :_generic_MIMARKmember_METHOD )
    @_generic_MIMARKmember = 
    trampCall(
          Proc.new { |_cmp,_obj,_lst| 
              if ( 
                  _null_QUMARK(
                      trampCall(_lst)
                  )
               ) then
                  false
              else
                  if ( 
                      _not(
                            _pair_QUMARK(
                                trampCall(_lst)
                            )
                      )
                   ) then
                      false
                  else
                      if ( 
                          trampCall( callProcedure(  '_cmp',  'cmp',
                              trampCall(_cmp)                            ,
                          [
                                trampCall(_obj)                              ,
                                  _car(
                                      trampCall(_lst)
                                  )
                          ]
                                       ))
                       ) then
                            trampCall(_lst)
                      else
                          if ( 
                          true
                           ) then
                                  delayCall( '_generic_MIMARKmember',  'generic-member',
                                      trampCall(@_generic_MIMARKmember)                                    ,
                                  [
                                        trampCall(_cmp)                                      ,
                                        trampCall(_obj)                                      ,
                                          _cdr(
                                              trampCall(_lst)
                                          )
                                  ]
                                               )
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
      def self._memq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_memq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_memq'] = self.method( :_memq_METHOD )
    @_memq = 
    trampCall(
          Proc.new { |_obj,_lst| 
                delayCall( '_generic_MIMARKmember',  'generic-member',
                    trampCall(@_generic_MIMARKmember)                  ,
                [
                      trampCall(@_eq_QUMARK)                    ,
                      trampCall(_obj)                    ,
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
      def self._memv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_memv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_memv'] = self.method( :_memv_METHOD )
    @_memv = 
    trampCall(
          Proc.new { |_obj,_lst| 
                delayCall( '_generic_MIMARKmember',  'generic-member',
                    trampCall(@_generic_MIMARKmember)                  ,
                [
                      trampCall(@_eqv_QUMARK)                    ,
                      trampCall(_obj)                    ,
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
      def self._member_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_member', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_member'] = self.method( :_member_METHOD )
    @_member = 
    trampCall(
          Proc.new { |_obj,_lst| 
                delayCall( '_generic_MIMARKmember',  'generic-member',
                    trampCall(@_generic_MIMARKmember)                  ,
                [
                      trampCall(@_equal_QUMARK)                    ,
                      trampCall(_obj)                    ,
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
      def self._generic_MIMARKassoc_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_generic_MIMARKassoc', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_generic_MIMARKassoc'] = self.method( :_generic_MIMARKassoc_METHOD )
    @_generic_MIMARKassoc = 
    trampCall(
          Proc.new { |_cmp,_obj,_alst| 
              if ( 
                  _null_QUMARK(
                      trampCall(_alst)
                  )
               ) then
                  false
              else
                  if ( 
                      trampCall( callProcedure(  '_cmp',  'cmp',
                          trampCall(_cmp)                        ,
                      [
                            trampCall(_obj)                          ,
                              trampCall( self._caar_METHOD(  'caar',
                                  trampCall(@_caar)                                ,
                              [
                                    trampCall(_alst)
                              ]
                                           ))
                      ]
                                   ))
                   ) then
                          delayCall( '_car',  'car',
                              trampCall(@_car)                            ,
                          [
                                trampCall(_alst)
                          ]
                                       )
                  else
                      if ( 
                      true
                       ) then
                              delayCall( '_generic_MIMARKassoc',  'generic-assoc',
                                  trampCall(@_generic_MIMARKassoc)                                ,
                              [
                                    trampCall(_cmp)                                  ,
                                    trampCall(_obj)                                  ,
                                      _cdr(
                                          trampCall(_alst)
                                      )
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
      def self._assq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_assq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_assq'] = self.method( :_assq_METHOD )
    @_assq = 
    trampCall(
          Proc.new { |_obj,_alst| 
                delayCall( '_generic_MIMARKassoc',  'generic-assoc',
                    trampCall(@_generic_MIMARKassoc)                  ,
                [
                      trampCall(@_eq_QUMARK)                    ,
                      trampCall(_obj)                    ,
                      trampCall(_alst)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._assv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_assv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_assv'] = self.method( :_assv_METHOD )
    @_assv = 
    trampCall(
          Proc.new { |_obj,_alst| 
                delayCall( '_generic_MIMARKassoc',  'generic-assoc',
                    trampCall(@_generic_MIMARKassoc)                  ,
                [
                      trampCall(@_eqv_QUMARK)                    ,
                      trampCall(_obj)                    ,
                      trampCall(_alst)
                ]
                             )
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
          Proc.new { |_obj,_alst| 
                delayCall( '_generic_MIMARKassoc',  'generic-assoc',
                    trampCall(@_generic_MIMARKassoc)                  ,
                [
                      trampCall(@_equal_QUMARK)                    ,
                      trampCall(_obj)                    ,
                      trampCall(_alst)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._acons_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_acons', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_acons'] = self.method( :_acons_METHOD )
    @_acons = 
    trampCall(
          Proc.new { |_x,_y,_z| 
                delayCall( '_cons',  'cons',
                    trampCall(@_cons)                  ,
                [
                        _cons(
                            trampCall(_x)                          ,
                            trampCall(_y)
                        )                    ,
                      trampCall(_z)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._assq_MIMARKref_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_assq_MIMARKref', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_assq_MIMARKref'] = self.method( :_assq_MIMARKref_METHOD )
    @_assq_MIMARKref = 
    trampCall(
          Proc.new { |_obj,_alst| 
              if ( 
                begin #execFunc
                    def self.___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40578_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40578', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                    @global_lisp_binding['___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40578'] = self.method( :___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40578_METHOD )
                  @___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40578 = 
                  trampCall(
                          trampCall( self._assq_METHOD(  'assq',
                              trampCall(@_assq)                            ,
                          [
                                trampCall(_obj)                              ,
                                trampCall(_alst)
                          ]
                                       ))
                  )
                end
               ) then
                    delayCall( '_cdr',  'cdr',
                        trampCall(@_cdr)                      ,
                    [
                          trampCall(@___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40578)
                    ]
                                 )
              else
                  if ( 
                  true
                   ) then
                      nil
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
      def self._assv_MIMARKref_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_assv_MIMARKref', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_assv_MIMARKref'] = self.method( :_assv_MIMARKref_METHOD )
    @_assv_MIMARKref = 
    trampCall(
          Proc.new { |_obj,_alst| 
              if ( 
                begin #execFunc
                    def self.___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40580_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40580', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                    @global_lisp_binding['___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40580'] = self.method( :___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40580_METHOD )
                  @___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40580 = 
                  trampCall(
                          trampCall( self._assv_METHOD(  'assv',
                              trampCall(@_assv)                            ,
                          [
                                trampCall(_obj)                              ,
                                trampCall(_alst)
                          ]
                                       ))
                  )
                end
               ) then
                    delayCall( '_cdr',  'cdr',
                        trampCall(@_cdr)                      ,
                    [
                          trampCall(@___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40580)
                    ]
                                 )
              else
                  if ( 
                  true
                   ) then
                      nil
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
      def self._assoc_MIMARKref_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_assoc_MIMARKref', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_assoc_MIMARKref'] = self.method( :_assoc_MIMARKref_METHOD )
    @_assoc_MIMARKref = 
    trampCall(
          Proc.new { |_obj,_alst| 
              if ( 
                begin #execFunc
                    def self.___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40582_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40582', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                    @global_lisp_binding['___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40582'] = self.method( :___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40582_METHOD )
                  @___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40582 = 
                  trampCall(
                          trampCall( self._assoc_METHOD(  'assoc',
                              trampCall(@_assoc)                            ,
                          [
                                trampCall(_obj)                              ,
                                trampCall(_alst)
                          ]
                                       ))
                  )
                end
               ) then
                    delayCall( '_cdr',  'cdr',
                        trampCall(@_cdr)                      ,
                    [
                          trampCall(@___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40582)
                    ]
                                 )
              else
                  if ( 
                  true
                   ) then
                      nil
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
      def self._fold_MIMARKright_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_fold_MIMARKright', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_fold_MIMARKright'] = self.method( :_fold_MIMARKright_METHOD )
    @_fold_MIMARKright = 
    trampCall(
          Proc.new { |_f,_x,_lst| 
              if ( 
                  _null_QUMARK(
                      trampCall(_lst)
                  )
               ) then
                  trampCall(_x)
              else
                    delayCall( '_fold_MIMARKright',  'fold-right',
                        trampCall(@_fold_MIMARKright)                      ,
                    [
                          trampCall(_f)                        ,
                            trampCall( callProcedure(  '_f',  'f',
                                trampCall(_f)                              ,
                            [
                                  trampCall(_x)                                ,
                                    _car(
                                        trampCall(_lst)
                                    )
                            ]
                                         ))                        ,
                            _cdr(
                                trampCall(_lst)
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
      def self._unzip1_MIMARKwith_MIMARKcdr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unzip1_MIMARKwith_MIMARKcdr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unzip1_MIMARKwith_MIMARKcdr'] = self.method( :_unzip1_MIMARKwith_MIMARKcdr_METHOD )
    @_unzip1_MIMARKwith_MIMARKcdr = 
    trampCall(
          Proc.new { |*__rest__| _lists = __rest__[0] ;  
                delayCall( '_unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative',  'unzip1-with-cdr-iterative',
                    trampCall(@_unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative)                  ,
                [
                      trampCall(_lists)                    ,
                    Cell.new()                    ,
                    Cell.new()
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative'] = self.method( :_unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative_METHOD )
    @_unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative = 
    trampCall(
          Proc.new { |_lists,_cars,_cdrs| 
              if ( 
                  _null_QUMARK(
                      trampCall(_lists)
                  )
               ) then
                    delayCall( '_cons',  'cons',
                        trampCall(@_cons)                      ,
                    [
                          trampCall(_cars)                        ,
                          trampCall(_cdrs)
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_car1,_cdr1| 
                          delayCall( '_unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative',  'unzip1-with-cdr-iterative',
                              trampCall(@_unzip1_MIMARKwith_MIMARKcdr_MIMARKiterative)                            ,
                          [
                                  _cdr(
                                      trampCall(_lists)
                                  )                              ,
                                  trampCall( self._append_METHOD(  'append',
                                      trampCall(@_append)                                    ,
                                  [
                                        trampCall(_cars)                                      ,
                                          trampCall( self._list_METHOD(  'list',
                                              trampCall(@_list)                                            ,
                                          [
                                                trampCall(_car1)
                                          ]
                                                       ))
                                  ]
                                               ))                              ,
                                  trampCall( self._append_METHOD(  'append',
                                      trampCall(@_append)                                    ,
                                  [
                                        trampCall(_cdrs)                                      ,
                                          trampCall( self._list_METHOD(  'list',
                                              trampCall(@_list)                                            ,
                                          [
                                                trampCall(_cdr1)
                                          ]
                                                       ))
                                  ]
                                               ))
                          ]
                                       )
                    } ; ___lambda.call(
                            trampCall( self._caar_METHOD(  'caar',
                                trampCall(@_caar)                              ,
                            [
                                  trampCall(_lists)
                            ]
                                         ))                        ,
                            trampCall( self._cdar_METHOD(  'cdar',
                                trampCall(@_cdar)                              ,
                            [
                                  trampCall(_lists)
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
      def self.__PAMARKmap_MIMARKoriginal_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKmap_MIMARKoriginal', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKmap_MIMARKoriginal'] = self.method( :__PAMARKmap_MIMARKoriginal_METHOD )
    @__PAMARKmap_MIMARKoriginal = 
    trampCall(
          Proc.new { |_proc,*__rest__| _lists = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_result,__PAMARKmap_MIMARKarg1| 
                    _result                     = 
                    Cell.new()
                    __PAMARKmap_MIMARKarg1                     = 
                      Proc.new { |_proc,_lst| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lst)
                              )
                           ) then
                            true
                          else
                              begin  #makeBegin
                                  begin #execFunc
                                    
                                    _result = 
                                    trampCall(
                                            _cons(
                                                  trampCall( callProcedure(  '_proc',  'proc',
                                                      trampCall(_proc)                                                    ,
                                                  [
                                                          _car(
                                                              trampCall(_lst)
                                                          )
                                                  ]
                                                               ))                                              ,
                                                trampCall(_result)
                                            )
                                    )
                                  end
                                    delayCall( '__PAMARKmap_MIMARKarg1',  '%map-arg1',
                                        trampCall(__PAMARKmap_MIMARKarg1)                                      ,
                                    [
                                          trampCall(_proc)                                        ,
                                            _cdr(
                                                trampCall(_lst)
                                            )
                                    ]
                                                 )
                              end
                          end
                      }
                    if ( 
                        _null_QUMARK(
                            trampCall(_lists)
                        )
                     ) then
                            delayCall( '_apply',  'apply',
                                trampCall(@_apply)                              ,
                            [
                                  trampCall(_proc)
                            ]
                                         )
                    else
                        if ( 
                            _eq_QUMARK(
                              1                              ,
                                  _length(
                                      trampCall(_lists)
                                  )
                            )
                         ) then
                            begin  #makeBegin
                                  trampCall( callProcedure(  '__PAMARKmap_MIMARKarg1',  '%map-arg1',
                                      trampCall(__PAMARKmap_MIMARKarg1)                                    ,
                                  [
                                        trampCall(_proc)                                      ,
                                          _car(
                                              trampCall(_lists)
                                          )
                                  ]
                                               ))
                                  delayCall( '_reverse',  'reverse',
                                      trampCall(@_reverse)                                    ,
                                  [
                                        trampCall(_result)
                                  ]
                                               )
                            end
                        else
                            if ( 
                            true
                             ) then
                                  if ( 
                                      _null_QUMARK(
                                            _car(
                                                trampCall(_lists)
                                            )
                                      )
                                   ) then
                                    Cell.new()
                                  else
                                      begin #makeLet
                                        ___lambda = lambda { |_unz| 
                                            begin #makeLet
                                              ___lambda = lambda { |_cars,_cdrs| 
                                                    delayCall( '_cons',  'cons',
                                                        trampCall(@_cons)                                                      ,
                                                    [
                                                            trampCall( self._apply_METHOD(  'apply',
                                                                trampCall(@_apply)                                                              ,
                                                            [
                                                                  trampCall(_proc)                                                                ,
                                                                  trampCall(_cars)
                                                            ]
                                                                         ))                                                        ,
                                                          if ( 
                                                              _null_QUMARK(
                                                                  trampCall(_cdrs)
                                                              )
                                                           ) then
                                                            Cell.new()
                                                          else
                                                                trampCall( self._apply_METHOD(  'apply',
                                                                    trampCall(@_apply)                                                                  ,
                                                                [
                                                                      trampCall(@__PAMARKmap_MIMARKoriginal)                                                                    ,
                                                                        _cons(
                                                                            trampCall(_proc)                                                                          ,
                                                                            trampCall(_cdrs)
                                                                        )
                                                                ]
                                                                             ))
                                                          end
                                                    ]
                                                                 )
                                              } ; ___lambda.call(
                                                      _car(
                                                          trampCall(_unz)
                                                      )                                                  ,
                                                      _cdr(
                                                          trampCall(_unz)
                                                      )
                                                         )
                                            end
                                        } ; ___lambda.call(
                                                trampCall( self._apply_METHOD(  'apply',
                                                    trampCall(@_apply)                                                  ,
                                                [
                                                      trampCall(@_unzip1_MIMARKwith_MIMARKcdr)                                                    ,
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                                   )
                                      end
                                  end
                            else
                                Cell.new()
                            end
                        end
                    end
                } ; ___lambda.call(
                nil,nil
                           )
              end
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
          trampCall(@__PAMARKmap_MIMARKoriginal)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec'] = self.method( :__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec_METHOD )
    @__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec = 
    trampCall(
          Proc.new { |__sym,__src| 
              if ( 
                  _not(
                        trampCall( self._list_QUMARK_METHOD(  'list?',
                            trampCall(@_list_QUMARK)                          ,
                        [
                                trampCall( self._cadr_METHOD(  'cadr',
                                    trampCall(@_cadr)                                  ,
                                [
                                      trampCall(__src)
                                ]
                                             ))
                        ]
                                     ))
                  )
               ) then
                    delayCall( '_cons',  'cons',
                        trampCall(@_cons)                      ,
                    [
                          trampCall(__sym)                        ,
                          trampCall(__src)
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_body,_defs,_rest| 
                        if ( 
                            _not(
                                  trampCall( self._list_QUMARK_METHOD(  'list?',
                                      trampCall(@_list_QUMARK)                                    ,
                                  [
                                          _car(
                                              trampCall(_body)
                                          )
                                  ]
                                               ))
                            )
                         ) then
                              delayCall( '_cons',  'cons',
                                  trampCall(@_cons)                                ,
                              [
                                    trampCall(__sym)                                  ,
                                    trampCall(__src)
                              ]
                                           )
                        else
                            begin  #makeBegin
                                  trampCall( self.__PAMARKmap_METHOD(  '%map',
                                      trampCall(@__PAMARKmap)                                    ,
                                  [
                                        Proc.new { |_x| 
                                            if ( 
                                              if ( 
                                                  _not(
                                                        _eq_QUMARK(
                                                          false                                                          ,
                                                              _pair_QUMARK(
                                                                  trampCall(_x)
                                                              )
                                                        )
                                                  )
                                               ) then
                                                    _eq_QUMARK(
                                                      :"define"                                                      ,
                                                          _car(
                                                              trampCall(_x)
                                                          )
                                                    )
                                              else
                                                false
                                              end
                                             ) then
                                                begin #execFunc
                                                  
                                                  _defs = 
                                                  trampCall(
                                                          _cons(
                                                                trampCall( self.__PAMARKexpand_MIMARKdefine_MIMARKform_METHOD(  '%expand-define-form',
                                                                    trampCall(@__PAMARKexpand_MIMARKdefine_MIMARKform)                                                                  ,
                                                                [
                                                                        _cdr(
                                                                            trampCall(_x)
                                                                        )
                                                                ]
                                                                             ))                                                            ,
                                                              trampCall(_defs)
                                                          )
                                                  )
                                                end
                                            else
                                                begin #execFunc
                                                  
                                                  _rest = 
                                                  trampCall(
                                                          _cons(
                                                              trampCall(_x)                                                            ,
                                                              trampCall(_rest)
                                                          )
                                                  )
                                                end
                                            end
                                        }                                      ,
                                        trampCall(_body)
                                  ]
                                               ))
                                begin #makeLet
                                  ___lambda = lambda { |_defs,_rest| 
                                      if ( 
                                          ( 
                                          0                                          <
                                              _length(
                                                  trampCall(_defs)
                                              )
                                           ) 
                                       ) then
                                            delayCall( '_cons',  'cons',
                                                trampCall(@_cons)                                              ,
                                            [
                                                  trampCall(__sym)                                                ,
                                                    _cons(
                                                          _car(
                                                              trampCall(__src)
                                                          )                                                      ,
                                                          _cons(
                                                                _cons(
                                                                  :"letrec"                                                                  ,
                                                                      _cons(
                                                                            trampCall( self.__PAMARKmap_METHOD(  '%map',
                                                                                trampCall(@__PAMARKmap)                                                                              ,
                                                                            [
                                                                                  Proc.new { |_x| 
                                                                                        trampCall( self._list_METHOD(  'list',
                                                                                            trampCall(@_list)                                                                                          ,
                                                                                        [
                                                                                                trampCall( self._cadr_METHOD(  'cadr',
                                                                                                    trampCall(@_cadr)                                                                                                  ,
                                                                                                [
                                                                                                      trampCall(_x)
                                                                                                ]
                                                                                                             ))                                                                                            ,
                                                                                                trampCall( self._caddr_METHOD(  'caddr',
                                                                                                    trampCall(@_caddr)                                                                                                  ,
                                                                                                [
                                                                                                      trampCall(_x)
                                                                                                ]
                                                                                                             ))
                                                                                        ]
                                                                                                     ))
                                                                                  }                                                                                ,
                                                                                  trampCall(_defs)
                                                                            ]
                                                                                         ))                                                                        ,
                                                                          trampCall(_rest)
                                                                      )
                                                                )                                                            ,
                                                            Cell.new()
                                                          )
                                                    )
                                            ]
                                                         )
                                      else
                                            delayCall( '_cons',  'cons',
                                                trampCall(@_cons)                                              ,
                                            [
                                                  trampCall(__sym)                                                ,
                                                  trampCall(__src)
                                            ]
                                                         )
                                      end
                                  } ; ___lambda.call(
                                          _reverse(
                                              trampCall(_defs)
                                          )                                      ,
                                          _reverse(
                                              trampCall(_rest)
                                          )
                                             )
                                end
                            end
                        end
                    } ; ___lambda.call(
                            _cdr(
                                trampCall(__src)
                            )                        ,
                        Cell.new()                        ,
                        Cell.new()
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
      def self.__PAMARKfor_MIMARKeach_MIMARKoriginal_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKfor_MIMARKeach_MIMARKoriginal', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKfor_MIMARKeach_MIMARKoriginal'] = self.method( :__PAMARKfor_MIMARKeach_MIMARKoriginal_METHOD )
    @__PAMARKfor_MIMARKeach_MIMARKoriginal = 
    trampCall(
          Proc.new { |_proc,*__rest__| _lists = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |__PAMARKfor_MIMARKeach_MIMARKarg1| 
                    __PAMARKfor_MIMARKeach_MIMARKarg1                     = 
                      Proc.new { |_proc,_lst| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lst)
                              )
                           ) then
                            true
                          else
                              begin  #makeBegin
                                    trampCall( callProcedure(  '_proc',  'proc',
                                        trampCall(_proc)                                      ,
                                    [
                                            _car(
                                                trampCall(_lst)
                                            )
                                    ]
                                                 ))
                                    delayCall( '__PAMARKfor_MIMARKeach_MIMARKarg1',  '%for-each-arg1',
                                        trampCall(__PAMARKfor_MIMARKeach_MIMARKarg1)                                      ,
                                    [
                                          trampCall(_proc)                                        ,
                                            _cdr(
                                                trampCall(_lst)
                                            )
                                    ]
                                                 )
                              end
                          end
                      }
                    if ( 
                        _null_QUMARK(
                            trampCall(_lists)
                        )
                     ) then
                            delayCall( '_apply',  'apply',
                                trampCall(@_apply)                              ,
                            [
                                  trampCall(_proc)
                            ]
                                         )
                    else
                        if ( 
                            _eq_QUMARK(
                              1                              ,
                                  _length(
                                      trampCall(_lists)
                                  )
                            )
                         ) then
                                delayCall( '__PAMARKfor_MIMARKeach_MIMARKarg1',  '%for-each-arg1',
                                    trampCall(__PAMARKfor_MIMARKeach_MIMARKarg1)                                  ,
                                [
                                      trampCall(_proc)                                    ,
                                        _car(
                                            trampCall(_lists)
                                        )
                                ]
                                             )
                        else
                            if ( 
                            true
                             ) then
                                  if ( 
                                      _null_QUMARK(
                                            _car(
                                                trampCall(_lists)
                                            )
                                      )
                                   ) then
                                    true
                                  else
                                      begin #makeLet
                                        ___lambda = lambda { |_unz| 
                                            begin #makeLet
                                              ___lambda = lambda { |_cars,_cdrs| 
                                                    trampCall( self._apply_METHOD(  'apply',
                                                        trampCall(@_apply)                                                      ,
                                                    [
                                                          trampCall(_proc)                                                        ,
                                                          trampCall(_cars)
                                                    ]
                                                                 ))
                                                  if ( 
                                                      _null_QUMARK(
                                                          trampCall(_cdrs)
                                                      )
                                                   ) then
                                                    Cell.new()
                                                  else
                                                        delayCall( '_apply',  'apply',
                                                            trampCall(@_apply)                                                          ,
                                                        [
                                                              trampCall(@__PAMARKfor_MIMARKeach_MIMARKoriginal)                                                            ,
                                                                _cons(
                                                                    trampCall(_proc)                                                                  ,
                                                                    trampCall(_cdrs)
                                                                )
                                                        ]
                                                                     )
                                                  end
                                              } ; ___lambda.call(
                                                      _car(
                                                          trampCall(_unz)
                                                      )                                                  ,
                                                      _cdr(
                                                          trampCall(_unz)
                                                      )
                                                         )
                                            end
                                        } ; ___lambda.call(
                                                trampCall( self._apply_METHOD(  'apply',
                                                    trampCall(@_apply)                                                  ,
                                                [
                                                      trampCall(@_unzip1_MIMARKwith_MIMARKcdr)                                                    ,
                                                      trampCall(_lists)
                                                ]
                                                             ))
                                                   )
                                      end
                                  end
                            else
                                Cell.new()
                            end
                        end
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
      def self.__PAMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKfor_MIMARKeach'] = self.method( :__PAMARKfor_MIMARKeach_METHOD )
    @__PAMARKfor_MIMARKeach = 
    trampCall(
          trampCall(@__PAMARKfor_MIMARKeach_MIMARKoriginal)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKfilter_MIMARKoriginal_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKfilter_MIMARKoriginal', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKfilter_MIMARKoriginal'] = self.method( :__PAMARKfilter_MIMARKoriginal_METHOD )
    @__PAMARKfilter_MIMARKoriginal = 
    trampCall(
          Proc.new { |_pred,_lst| 
              begin #makeLetrec
                ___lambda = lambda { |_result,__PAMARKfilter_MIMARKarg1| 
                    _result                     = 
                    Cell.new()
                    __PAMARKfilter_MIMARKarg1                     = 
                      Proc.new { |_proc,_lst| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lst)
                              )
                           ) then
                            Cell.new()
                          else
                              begin #makeLet
                                ___lambda = lambda { |_v| 
                                    if ( 
                                      trampCall(_v)
                                     ) then
                                          begin #execFunc
                                            
                                            _result = 
                                            trampCall(
                                                    _cons(
                                                          _car(
                                                              trampCall(_lst)
                                                          )                                                      ,
                                                        trampCall(_result)
                                                    )
                                            )
                                          end
                                    end
                                      delayCall( '__PAMARKfilter_MIMARKarg1',  '%filter-arg1',
                                          trampCall(__PAMARKfilter_MIMARKarg1)                                        ,
                                      [
                                            trampCall(_proc)                                          ,
                                              _cdr(
                                                  trampCall(_lst)
                                              )
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        trampCall( callProcedure(  '_proc',  'proc',
                                            trampCall(_proc)                                          ,
                                        [
                                                _car(
                                                    trampCall(_lst)
                                                )
                                        ]
                                                     ))
                                           )
                              end
                          end
                      }
                      trampCall( callProcedure(  '__PAMARKfilter_MIMARKarg1',  '%filter-arg1',
                          trampCall(__PAMARKfilter_MIMARKarg1)                        ,
                      [
                            trampCall(_pred)                          ,
                            trampCall(_lst)
                      ]
                                   ))
                      delayCall( '_reverse',  'reverse',
                          trampCall(@_reverse)                        ,
                      [
                            trampCall(_result)
                      ]
                                   )
                } ; ___lambda.call(
                nil,nil
                           )
              end
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
          trampCall(@__PAMARKfilter_MIMARKoriginal)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKfilter_MIMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKfilter_MIMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKfilter_MIMARKmap'] = self.method( :__PAMARKfilter_MIMARKmap_METHOD )
    @__PAMARKfilter_MIMARKmap = 
    trampCall(
          Proc.new { |_pred,_lst| 
              begin #makeLetrec
                ___lambda = lambda { |_result,__PAMARKfilter_MIMARKmap_MIMARKarg1| 
                    _result                     = 
                    Cell.new()
                    __PAMARKfilter_MIMARKmap_MIMARKarg1                     = 
                      Proc.new { |_proc,_lst| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lst)
                              )
                           ) then
                            Cell.new()
                          else
                              begin #makeLet
                                ___lambda = lambda { |_v| 
                                    if ( 
                                      trampCall(_v)
                                     ) then
                                          begin #execFunc
                                            
                                            _result = 
                                            trampCall(
                                                    _cons(
                                                        trampCall(_v)                                                      ,
                                                        trampCall(_result)
                                                    )
                                            )
                                          end
                                    end
                                      delayCall( '__PAMARKfilter_MIMARKmap_MIMARKarg1',  '%filter-map-arg1',
                                          trampCall(__PAMARKfilter_MIMARKmap_MIMARKarg1)                                        ,
                                      [
                                            trampCall(_proc)                                          ,
                                              _cdr(
                                                  trampCall(_lst)
                                              )
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        trampCall( callProcedure(  '_proc',  'proc',
                                            trampCall(_proc)                                          ,
                                        [
                                                _car(
                                                    trampCall(_lst)
                                                )
                                        ]
                                                     ))
                                           )
                              end
                          end
                      }
                      trampCall( callProcedure(  '__PAMARKfilter_MIMARKmap_MIMARKarg1',  '%filter-map-arg1',
                          trampCall(__PAMARKfilter_MIMARKmap_MIMARKarg1)                        ,
                      [
                            trampCall(_pred)                          ,
                            trampCall(_lst)
                      ]
                                   ))
                      delayCall( '_reverse',  'reverse',
                          trampCall(@_reverse)                        ,
                      [
                            trampCall(_result)
                      ]
                                   )
                } ; ___lambda.call(
                nil,nil
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
          Proc.new { |_pred,_lst| 
              begin #makeLet
                ___lambda = lambda { |_result| 
                    if ( 
                        _null_QUMARK(
                            trampCall(_result)
                        )
                     ) then
                      false
                    else
                          delayCall( '_car',  'car',
                              trampCall(@_car)                            ,
                          [
                                trampCall(_result)
                          ]
                                       )
                    end
                } ; ___lambda.call(
                        trampCall( self.__PAMARKfilter_METHOD(  '%filter',
                            trampCall(@__PAMARKfilter)                          ,
                        [
                              trampCall(_pred)                            ,
                              trampCall(_lst)
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
      def self._any_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_any', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_any'] = self.method( :_any_METHOD )
    @_any = 
    trampCall(
          Proc.new { |_pred,_lst| 
              begin #makeLet
                ___lambda = lambda { |_result| 
                    if ( 
                        _null_QUMARK(
                            trampCall(_result)
                        )
                     ) then
                      false
                    else
                          delayCall( '_car',  'car',
                              trampCall(@_car)                            ,
                          [
                                trampCall(_result)
                          ]
                                       )
                    end
                } ; ___lambda.call(
                        trampCall( self.__PAMARKfilter_MIMARKmap_METHOD(  '%filter-map',
                            trampCall(@__PAMARKfilter_MIMARKmap)                          ,
                        [
                              trampCall(_pred)                            ,
                              trampCall(_lst)
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
      def self._filter_MIMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_filter_MIMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_filter_MIMARKmap'] = self.method( :_filter_MIMARKmap_METHOD )
    @_filter_MIMARKmap = 
    trampCall(
          trampCall(@__PAMARKfilter_MIMARKmap)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck'] = self.method( :__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck_METHOD )
    @__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck = 
    trampCall(
          Proc.new { |_target,_arg_MIMARKand_MIMARKbody| 
              begin #makeLet
                ___lambda = lambda { |_arg_MIMARKlist| 
                    if ( 
                        trampCall( self._list_QUMARK_METHOD(  'list?',
                            trampCall(@_list_QUMARK)                          ,
                        [
                              trampCall(_arg_MIMARKlist)
                        ]
                                     ))
                     ) then
                          if ( 
                              trampCall( self._any_METHOD(  'any',
                                  trampCall(@_any)                                ,
                              [
                                    Proc.new { |_x| 
                                          _keyword_QUMARK(
                                              trampCall(_x)
                                          )
                                    }                                  ,
                                    trampCall(_arg_MIMARKlist)
                              ]
                                           ))
                           ) then
                                begin raise RuntimeError, 
                                    trampCall( self._sprintf_METHOD(  'sprintf',
                                        trampCall(@_sprintf)                                      ,
                                    [
                                        "Error: %s can't handle keyword argument."                                        ,
                                          trampCall(_target)
                                    ]
                                                 ))
                                rescue => __e 
                                  __e.set_backtrace( [":1"] + __e.backtrace )
                                  raise __e
                                end 
                          end
                    end
                } ; ___lambda.call(
                      if ( 
                          trampCall( self._list_QUMARK_METHOD(  'list?',
                              trampCall(@_list_QUMARK)                            ,
                          [
                                trampCall(_arg_MIMARKand_MIMARKbody)
                          ]
                                       ))
                       ) then
                            delayCall( '_car',  'car',
                                trampCall(@_car)                              ,
                            [
                                  trampCall(_arg_MIMARKand_MIMARKbody)
                            ]
                                         )
                      else
                        Cell.new()
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
      def self._lambda_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lambda', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_lambda'] = self.method( :_lambda_METHOD )
    @_lambda = 
    trampCall(
          LispMacro.new { |*__rest__| _src = __rest__[0] ;  
                trampCall( self.__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck_METHOD(  '%%optional-argument-check',
                    trampCall(@__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck)                  ,
                [
                    :"lambda"                    ,
                      trampCall(_src)
                ]
                             ))
                trampCall( self.__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec_METHOD(  '%internal-define-to-letrec',
                    trampCall(@__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec)                  ,
                [
                    :"lambda"                    ,
                      trampCall(_src)
                ]
                             ))
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._macro_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_macro', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_macro'] = self.method( :_macro_METHOD )
    @_macro = 
    trampCall(
          LispMacro.new { |*__rest__| _src = __rest__[0] ;  
                trampCall( self.__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck_METHOD(  '%%optional-argument-check',
                    trampCall(@__PAMARK_PAMARKoptional_MIMARKargument_MIMARKcheck)                  ,
                [
                    :"macro"                    ,
                      trampCall(_src)
                ]
                             ))
                trampCall( self.__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec_METHOD(  '%internal-define-to-letrec',
                    trampCall(@__PAMARKinternal_MIMARKdefine_MIMARKto_MIMARKletrec)                  ,
                [
                    :"macro"                    ,
                      trampCall(_src)
                ]
                             ))
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKtransform_MIMARKoptional_MIMARKarguments_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKtransform_MIMARKoptional_MIMARKarguments', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKtransform_MIMARKoptional_MIMARKarguments'] = self.method( :__PAMARKtransform_MIMARKoptional_MIMARKarguments_METHOD )
    @__PAMARKtransform_MIMARKoptional_MIMARKarguments = 
    trampCall(
          Proc.new { |_arg,_body_MIMARKlist| 
              begin #makeLet
                ___lambda = lambda { |_rest_MIMARKof_MIMARKopts| 
                    if ( 
                      trampCall(_rest_MIMARKof_MIMARKopts)
                     ) then
                        begin #makeLet
                          ___lambda = lambda { |_opts,_rest_MIMARKof_MIMARKopts,__rest| 
                                trampCall( self._for_MIMARKeach_METHOD(  'for-each',
                                    trampCall(@_for_MIMARKeach)                                  ,
                                [
                                      Proc.new { |_x| 
                                          begin #makeLet
                                            ___lambda = lambda { |_syntax_MIMARKis_MIMARKok| 
                                                if ( 
                                                    _not(
                                                        trampCall(_syntax_MIMARKis_MIMARKok)
                                                    )
                                                 ) then
                                                      begin raise RuntimeError, 
                                                        "Error:  :optional format is illegal ... " ' ' + 
                                                        _write_MIMARKto_MIMARKstring(
                                                          trampCall(_arg)
                                                        )
                                                      rescue => __e 
                                                        __e.set_backtrace( ["./lib/nendo/init.nnd:709"] + __e.backtrace )
                                                        raise __e
                                                      end 
                                                end
                                            } ; ___lambda.call(
                                                  if ( 
                                                      _pair_QUMARK(
                                                          trampCall(_x)
                                                      )
                                                   ) then
                                                        __EQMARK(
                                                          2                                                          ,
                                                              _length(
                                                                  trampCall(_x)
                                                              )
                                                        )
                                                  else
                                                    false
                                                  end
                                                       )
                                          end
                                      }                                    ,
                                      trampCall(_rest_MIMARKof_MIMARKopts)
                                ]
                                             ))
                              begin #makeLetrec
                                ___lambda = lambda { |_loop| 
                                    _loop                                     = 
                                      Proc.new { |_arg| 
                                          if ( 
                                              _eq_QUMARK(
                                                LispKeyword.new( "optional" )                                                ,
                                                    _car(
                                                        trampCall(_arg)
                                                    )
                                              )
                                           ) then
                                              trampCall(_arg)
                                          else
                                              begin  #makeBegin
                                                  begin #execFunc
                                                    
                                                    _opts = 
                                                    trampCall(
                                                            _cons(
                                                                  _car(
                                                                      trampCall(_arg)
                                                                  )                                                              ,
                                                                trampCall(_opts)
                                                            )
                                                    )
                                                  end
                                                    trampCall( callProcedure(  '_loop',  'loop',
                                                        trampCall(_loop)                                                      ,
                                                    [
                                                            _cdr(
                                                                trampCall(_arg)
                                                            )
                                                    ]
                                                                 ))
                                              end
                                          end
                                      }
                                      trampCall( callProcedure(  '_loop',  'loop',
                                          trampCall(_loop)                                        ,
                                      [
                                            trampCall(_arg)
                                      ]
                                                   ))
                                } ; ___lambda.call(
                                nil
                                           )
                              end
                              begin #makeLet
                                ___lambda = lambda { |_new_MIMARKarg| 
                                      delayCall( '_list',  'list',
                                          trampCall(@_list)                                        ,
                                      [
                                          :"lambda"                                          ,
                                            trampCall(_new_MIMARKarg)                                          ,
                                              _cons(
                                                :"let"                                                ,
                                                    _cons(
                                                        trampCall(_rest_MIMARKof_MIMARKopts)                                                      ,
                                                          trampCall( self._append_METHOD(  'append',
                                                              trampCall(@_append)                                                            ,
                                                          [
                                                                  trampCall( self._map_METHOD(  'map',
                                                                      trampCall(@_map)                                                                    ,
                                                                  [
                                                                        Proc.new { |_k,_n| 
                                                                              _cons(
                                                                                :"when"                                                                                ,
                                                                                    _cons(
                                                                                          _cons(
                                                                                            :"<"                                                                                            ,
                                                                                                _cons(
                                                                                                    trampCall(_n)                                                                                                  ,
                                                                                                      _cons(
                                                                                                            _cons(
                                                                                                              :"length"                                                                                                              ,
                                                                                                                  _cons(
                                                                                                                      trampCall(__rest)                                                                                                                    ,
                                                                                                                    Cell.new()
                                                                                                                  )
                                                                                                            )                                                                                                        ,
                                                                                                        Cell.new()
                                                                                                      )
                                                                                                )
                                                                                          )                                                                                      ,
                                                                                          _cons(
                                                                                                _cons(
                                                                                                  :"set!"                                                                                                  ,
                                                                                                      _cons(
                                                                                                            _car(
                                                                                                                trampCall(_k)
                                                                                                            )                                                                                                        ,
                                                                                                            _cons(
                                                                                                                  _cons(
                                                                                                                    :"nth"                                                                                                                    ,
                                                                                                                        _cons(
                                                                                                                            trampCall(_n)                                                                                                                          ,
                                                                                                                              _cons(
                                                                                                                                  trampCall(__rest)                                                                                                                                ,
                                                                                                                                Cell.new()
                                                                                                                              )
                                                                                                                        )
                                                                                                                  )                                                                                                              ,
                                                                                                              Cell.new()
                                                                                                            )
                                                                                                      )
                                                                                                )                                                                                            ,
                                                                                            Cell.new()
                                                                                          )
                                                                                    )
                                                                              )
                                                                        }                                                                      ,
                                                                        trampCall(_rest_MIMARKof_MIMARKopts)                                                                      ,
                                                                          trampCall( self._range_METHOD(  'range',
                                                                              trampCall(@_range)                                                                            ,
                                                                          [
                                                                                  _length(
                                                                                      trampCall(_rest_MIMARKof_MIMARKopts)
                                                                                  )
                                                                          ]
                                                                                       ))
                                                                  ]
                                                                               ))                                                              ,
                                                                trampCall(_body_MIMARKlist)
                                                          ]
                                                                       ))
                                                    )
                                              )
                                      ]
                                                   )
                                } ; ___lambda.call(
                                        trampCall( self._apply_METHOD(  'apply',
                                            trampCall(@_apply)                                          ,
                                        [
                                              trampCall(@_list_ASMARK)                                            ,
                                                trampCall( self._append_METHOD(  'append',
                                                    trampCall(@_append)                                                  ,
                                                [
                                                        _reverse(
                                                            trampCall(_opts)
                                                        )                                                    ,
                                                        trampCall( self._list_METHOD(  'list',
                                                            trampCall(@_list)                                                          ,
                                                        [
                                                              trampCall(__rest)
                                                        ]
                                                                     ))
                                                ]
                                                             ))
                                        ]
                                                     ))
                                           )
                              end
                          } ; ___lambda.call(
                              Cell.new()                              ,
                                  _cdr(
                                      trampCall(_rest_MIMARKof_MIMARKopts)
                                  )                              ,
                                  trampCall( self._gensym_METHOD(  'gensym',
                                      trampCall(@_gensym)                                    ,
                                  [
                                  ]
                                               ))
                                     )
                        end
                    else
                          delayCall( '_cons',  'cons',
                              trampCall(@_cons)                            ,
                          [
                              :"lambda"                              ,
                                  _cons(
                                      trampCall(_arg)                                    ,
                                      trampCall(_body_MIMARKlist)
                                  )
                          ]
                                       )
                    end
                } ; ___lambda.call(
                        trampCall( self._memq_METHOD(  'memq',
                            trampCall(@_memq)                          ,
                        [
                            LispKeyword.new( "optional" )                            ,
                              trampCall(_arg)
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
      def self.__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda'] = self.method( :__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda_METHOD )
    @__PAMARKexpand_MIMARKdefine_MIMARKform_MIMARKlambda = 
    trampCall(
          Proc.new { |_arg,_body_MIMARKlist| 
              if ( 
                  _pair_QUMARK(
                        _cdr(
                            trampCall(_arg)
                        )
                  )
               ) then
                  if ( 
                      _pair_QUMARK(
                            _car(
                                  _cdr(
                                      trampCall(_arg)
                                  )
                            )
                      )
                   ) then
                      begin raise RuntimeError, 
                      "Error: define syntax error."
                      rescue => __e 
                        __e.set_backtrace( ["./lib/nendo/init.nnd:736"] + __e.backtrace )
                        raise __e
                      end 
                  end
              end
                delayCall( '_cons',  'cons',
                    trampCall(@_cons)                  ,
                [
                    :"define"                    ,
                        trampCall( self._list_METHOD(  'list',
                            trampCall(@_list)                          ,
                        [
                                _car(
                                    trampCall(_arg)
                                )                            ,
                                trampCall( self.__PAMARKtransform_MIMARKoptional_MIMARKarguments_METHOD(  '%transform-optional-arguments',
                                    trampCall(@__PAMARKtransform_MIMARKoptional_MIMARKarguments)                                  ,
                                [
                                        _cdr(
                                            trampCall(_arg)
                                        )                                    ,
                                      trampCall(_body_MIMARKlist)
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
      def self._case_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_case', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_case'] = self.method( :_case_METHOD )
    @_case = 
    trampCall(
          LispMacro.new { |_cond_MIMARKexp,*__rest__| _body = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_case_MIMARKblock,_case_MIMARKiter| 
                    _case_MIMARKblock                     = 
                      Proc.new { |_val,*__rest__| _elem = __rest__[0] ;  
                          begin #makeLet
                            ___lambda = lambda { |_block| 
                                begin #makeLet
                                  ___lambda = lambda { |_cond_MIMARKvals,_body| 
                                      begin #makeLet
                                        ___lambda = lambda { |_v| 
                                              _cons(
                                                    _cons(
                                                        trampCall(_v)                                                      ,
                                                        trampCall(_body)
                                                    )                                                ,
                                                Cell.new()
                                              )
                                        } ; ___lambda.call(
                                              if ( 
                                                  _eq_QUMARK(
                                                    :"else"                                                    ,
                                                      trampCall(_cond_MIMARKvals)
                                                  )
                                               ) then
                                                  trampCall(_cond_MIMARKvals)
                                              else
                                                    _cons(
                                                      :"or"                                                      ,
                                                          trampCall( self._map_METHOD(  'map',
                                                              trampCall(@_map)                                                            ,
                                                          [
                                                                Proc.new { |_x| 
                                                                      _cons(
                                                                        :"eqv?"                                                                        ,
                                                                            _cons(
                                                                                  _cons(
                                                                                    :"quote"                                                                                    ,
                                                                                        _cons(
                                                                                            trampCall(_x)                                                                                          ,
                                                                                          Cell.new()
                                                                                        )
                                                                                  )                                                                              ,
                                                                                  _cons(
                                                                                      trampCall(_val)                                                                                    ,
                                                                                    Cell.new()
                                                                                  )
                                                                            )
                                                                      )
                                                                }                                                              ,
                                                                trampCall(_cond_MIMARKvals)
                                                          ]
                                                                       ))
                                                    )
                                              end
                                                   )
                                      end
                                  } ; ___lambda.call(
                                          _car(
                                              trampCall(_block)
                                          )                                      ,
                                          _cdr(
                                              trampCall(_block)
                                          )
                                             )
                                end
                            } ; ___lambda.call(
                                    _car(
                                        trampCall(_elem)
                                    )
                                       )
                          end
                      }
                    _case_MIMARKiter                     = 
                      Proc.new { |_val,_lst| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_lst)
                              )
                           ) then
                              Cell.new()
                          else
                              if ( 
                                  _eq_QUMARK(
                                    1                                    ,
                                        _length(
                                            trampCall(_lst)
                                        )
                                  )
                               ) then
                                      trampCall( callProcedure(  '_case_MIMARKblock',  'case-block',
                                          trampCall(_case_MIMARKblock)                                        ,
                                      [
                                            trampCall(_val)                                          ,
                                              _car(
                                                  trampCall(_lst)
                                              )
                                      ]
                                                   ))
                              else
                                  if ( 
                                  true
                                   ) then
                                          trampCall( self._append_METHOD(  'append',
                                              trampCall(@_append)                                            ,
                                          [
                                                  trampCall( callProcedure(  '_case_MIMARKblock',  'case-block',
                                                      trampCall(_case_MIMARKblock)                                                    ,
                                                  [
                                                        trampCall(_val)                                                      ,
                                                          _car(
                                                              trampCall(_lst)
                                                          )
                                                  ]
                                                               ))                                              ,
                                                  trampCall( callProcedure(  '_case_MIMARKiter',  'case-iter',
                                                      trampCall(_case_MIMARKiter)                                                    ,
                                                  [
                                                        trampCall(_val)                                                      ,
                                                          _cdr(
                                                              trampCall(_lst)
                                                          )
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
                    begin #makeLet
                      ___lambda = lambda { |_sym| 
                            _cons(
                              :"let1"                              ,
                                  _cons(
                                      trampCall(_sym)                                    ,
                                        _cons(
                                            trampCall(_cond_MIMARKexp)                                          ,
                                              _cons(
                                                    _cons(
                                                      :"cond"                                                      ,
                                                          trampCall( callProcedure(  '_case_MIMARKiter',  'case-iter',
                                                              trampCall(_case_MIMARKiter)                                                            ,
                                                          [
                                                                trampCall(_sym)                                                              ,
                                                                trampCall(_body)
                                                          ]
                                                                       ))
                                                    )                                                ,
                                                Cell.new()
                                              )
                                        )
                                  )
                            )
                      } ; ___lambda.call(
                              trampCall( self._gensym_METHOD(  'gensym',
                                  trampCall(@_gensym)                                ,
                              [
                              ]
                                           ))
                                 )
                    end
                } ; ___lambda.call(
                nil,nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._let_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_let_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_let_ASMARK'] = self.method( :_let_ASMARK_METHOD )
    @_let_ASMARK = 
    trampCall(
          LispMacro.new { |_exps,*__rest__| _body = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_let_ASMARK_MIMARKexpand| 
                    _let_ASMARK_MIMARKexpand                     = 
                      Proc.new { |_rest,_body| 
                          begin #makeLet
                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40592| 
                                if ( 
                                  begin #makeLet
                                    ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40596| 
                                        if ( 
                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40596)
                                         ) then
                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40596)
                                        else
                                          false
                                        end
                                    } ; ___lambda.call(
                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                trampCall(@_eqv_QUMARK)                                              ,
                                            [
                                                0                                                ,
                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40592)
                                            ]
                                                         ))
                                               )
                                  end
                                 ) then
                                    Cell.new()
                                else
                                    if ( 
                                      begin #makeLet
                                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40597| 
                                            if ( 
                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40597)
                                             ) then
                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40597)
                                            else
                                              false
                                            end
                                        } ; ___lambda.call(
                                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                    trampCall(@_eqv_QUMARK)                                                  ,
                                                [
                                                    1                                                    ,
                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40592)
                                                ]
                                                             ))
                                                   )
                                      end
                                     ) then
                                            _cons(
                                              :"let"                                              ,
                                                  _cons(
                                                        _cons(
                                                              _car(
                                                                  trampCall(_rest)
                                                              )                                                          ,
                                                          Cell.new()
                                                        )                                                    ,
                                                      trampCall(_body)
                                                  )
                                            )
                                    else
                                        if ( 
                                        true
                                         ) then
                                                _cons(
                                                  :"let"                                                  ,
                                                      _cons(
                                                            _cons(
                                                                  _car(
                                                                      trampCall(_rest)
                                                                  )                                                              ,
                                                              Cell.new()
                                                            )                                                        ,
                                                            _cons(
                                                                  trampCall( callProcedure(  '_let_ASMARK_MIMARKexpand',  'let*-expand',
                                                                      trampCall(_let_ASMARK_MIMARKexpand)                                                                    ,
                                                                  [
                                                                          _cdr(
                                                                              trampCall(_rest)
                                                                          )                                                                      ,
                                                                        trampCall(_body)
                                                                  ]
                                                                               ))                                                              ,
                                                              Cell.new()
                                                            )
                                                      )
                                                )
                                        else
                                            Cell.new()
                                        end
                                    end
                                end
                            } ; ___lambda.call(
                                    _length(
                                        trampCall(_rest)
                                    )
                                       )
                          end
                      }
                      trampCall( callProcedure(  '_let_ASMARK_MIMARKexpand',  'let*-expand',
                          trampCall(_let_ASMARK_MIMARKexpand)                        ,
                      [
                            trampCall(_exps)                          ,
                            trampCall(_body)
                      ]
                                   ))
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
      def self._begin0_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_begin0', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_begin0'] = self.method( :_begin0_METHOD )
    @_begin0 = 
    trampCall(
          LispMacro.new { |*__rest__| _body = __rest__[0] ;  
              if ( 
                  _null_QUMARK(
                      trampCall(_body)
                  )
               ) then
                Cell.new(:"begin",Cell.new(false))
              else
                  begin #makeLet
                    ___lambda = lambda { |_result| 
                          _cons(
                            :"receive"                            ,
                                _cons(
                                    trampCall(_result)                                  ,
                                      _cons(
                                            _car(
                                                trampCall(_body)
                                            )                                        ,
                                            trampCall( self._append_METHOD(  'append',
                                                trampCall(@_append)                                              ,
                                            [
                                                    _cdr(
                                                        trampCall(_body)
                                                    )                                                ,
                                                    _cons(
                                                          _cons(
                                                            :"apply"                                                            ,
                                                                _cons(
                                                                  :"values"                                                                  ,
                                                                      _cons(
                                                                          trampCall(_result)                                                                        ,
                                                                        Cell.new()
                                                                      )
                                                                )
                                                          )                                                      ,
                                                      Cell.new()
                                                    )
                                            ]
                                                         ))
                                      )
                                )
                          )
                    } ; ___lambda.call(
                            trampCall( self._gensym_METHOD(  'gensym',
                                trampCall(@_gensym)                              ,
                            [
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
      def self._values_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_values', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_values'] = self.method( :_values_METHOD )
    @_values = 
    trampCall(
          Proc.new { |*__rest__| _args = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40598| 
                    if ( 
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40601| 
                            if ( 
                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40601)
                             ) then
                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40601)
                            else
                              false
                            end
                        } ; ___lambda.call(
                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                    trampCall(@_eqv_QUMARK)                                  ,
                                [
                                    1                                    ,
                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40598)
                                ]
                                             ))
                                   )
                      end
                     ) then
                            delayCall( '_car',  'car',
                                trampCall(@_car)                              ,
                            [
                                  trampCall(_args)
                            ]
                                         )
                    else
                        if ( 
                        true
                         ) then
                                delayCall( '_make_MIMARKvalues',  'make-values',
                                    trampCall(@_make_MIMARKvalues)                                  ,
                                [
                                      trampCall(_args)
                                ]
                                             )
                        else
                            Cell.new()
                        end
                    end
                } ; ___lambda.call(
                        _length(
                            trampCall(_args)
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
      def self._call_MIMARKwith_MIMARKvalues_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_call_MIMARKwith_MIMARKvalues', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_call_MIMARKwith_MIMARKvalues'] = self.method( :_call_MIMARKwith_MIMARKvalues_METHOD )
    @_call_MIMARKwith_MIMARKvalues = 
    trampCall(
          Proc.new { |_producer,_consumer| 
              begin #makeLet
                ___lambda = lambda { |_v| 
                    if ( 
                        trampCall( self._values_QUMARK_METHOD(  'values?',
                            trampCall(@_values_QUMARK)                          ,
                        [
                              trampCall(_v)
                        ]
                                     ))
                     ) then
                          delayCall( '_apply',  'apply',
                              trampCall(@_apply)                            ,
                          [
                                trampCall(_consumer)                              ,
                                  trampCall( self._values_MIMARKvalues_METHOD(  'values-values',
                                      trampCall(@_values_MIMARKvalues)                                    ,
                                  [
                                        trampCall(_v)
                                  ]
                                               ))
                          ]
                                       )
                    else
                          delayCall( '_consumer',  'consumer',
                              trampCall(_consumer)                            ,
                          [
                                trampCall(_v)
                          ]
                                       )
                    end
                } ; ___lambda.call(
                        trampCall( callProcedure(  '_producer',  'producer',
                            trampCall(_producer)                          ,
                        [
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
      def self._receive_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_receive', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_receive'] = self.method( :_receive_METHOD )
    @_receive = 
    trampCall(
          LispMacro.new { |_vars,_expr,*__rest__| _body = __rest__[0] ;  
                _cons(
                  :"call-with-values"                  ,
                      _cons(
                            _cons(
                              :"lambda"                              ,
                                  _cons(
                                    Cell.new()                                    ,
                                        _cons(
                                            trampCall(_expr)                                          ,
                                          Cell.new()
                                        )
                                  )
                            )                        ,
                            _cons(
                                  _cons(
                                    :"lambda"                                    ,
                                        _cons(
                                            trampCall(_vars)                                          ,
                                            trampCall(_body)
                                        )
                                  )                              ,
                              Cell.new()
                            )
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._get_MIMARKkeyword_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_get_MIMARKkeyword', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_get_MIMARKkeyword'] = self.method( :_get_MIMARKkeyword_METHOD )
    @_get_MIMARKkeyword = 
    trampCall(
          Proc.new { |_key,_kv_MIMARKlist,*__rest__| _fallback = __rest__[0] ;  
              if ( 
                begin #makeLet
                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40604| 
                      if ( 
                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40604)
                       ) then
                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40604)
                      else
                          begin #makeLet
                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40605| 
                                if ( 
                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40605)
                                 ) then
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40605)
                                else
                                  false
                                end
                            } ; ___lambda.call(
                                    ( 
                                    2                                    >=
                                        _length(
                                            trampCall(_kv_MIMARKlist)
                                        )
                                     ) 
                                       )
                          end
                      end
                  } ; ___lambda.call(
                          _not(
                                trampCall( self._list_QUMARK_METHOD(  'list?',
                                    trampCall(@_list_QUMARK)                                  ,
                                [
                                      trampCall(_kv_MIMARKlist)
                                ]
                                             ))
                          )
                             )
                end
               ) then
                    if ( 
                        _null_QUMARK(
                            trampCall(_fallback)
                        )
                     ) then
                        begin raise RuntimeError, 
                            trampCall( self._sprintf_METHOD(  'sprintf',
                                trampCall(@_sprintf)                              ,
                            [
                                "Error: imcomplete key list: %s
"                                ,
                                    _write_MIMARKto_MIMARKstring(
                                        trampCall(_kv_MIMARKlist)
                                    )
                            ]
                                         ))
                        rescue => __e 
                          __e.set_backtrace( [":1"] + __e.backtrace )
                          raise __e
                        end 
                    else
                          delayCall( '_car',  'car',
                              trampCall(@_car)                            ,
                          [
                                trampCall(_fallback)
                          ]
                                       )
                    end
              else
                  if ( 
                  true
                   ) then
                        begin #makeLetrec
                          ___lambda = lambda { |_loop| 
                              _loop                               = 
                                Proc.new { |_k,_v,_rest| 
                                    if ( 
                                        _eq_QUMARK(
                                            trampCall(_k)                                          ,
                                            trampCall(_key)
                                        )
                                     ) then
                                        trampCall(_v)
                                    else
                                        begin #makeLet
                                          ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40606| 
                                              if ( 
                                                begin #makeLet
                                                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40610| 
                                                      if ( 
                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40610)
                                                       ) then
                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40610)
                                                      else
                                                        false
                                                      end
                                                  } ; ___lambda.call(
                                                          trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                              trampCall(@_eqv_QUMARK)                                                            ,
                                                          [
                                                              0                                                              ,
                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40606)
                                                          ]
                                                                       ))
                                                             )
                                                end
                                               ) then
                                                    if ( 
                                                        _null_QUMARK(
                                                            trampCall(_fallback)
                                                        )
                                                     ) then
                                                        begin raise RuntimeError, 
                                                            trampCall( self._sprintf_METHOD(  'sprintf',
                                                                trampCall(@_sprintf)                                                              ,
                                                            [
                                                                "Error: value for key %s is not provided : %s
"                                                                ,
                                                                    _write_MIMARKto_MIMARKstring(
                                                                        trampCall(_key)
                                                                    )                                                                ,
                                                                    _write_MIMARKto_MIMARKstring(
                                                                        trampCall(_kv_MIMARKlist)
                                                                    )
                                                            ]
                                                                         ))
                                                        rescue => __e 
                                                          __e.set_backtrace( [":1"] + __e.backtrace )
                                                          raise __e
                                                        end 
                                                    else
                                                          delayCall( '_car',  'car',
                                                              trampCall(@_car)                                                            ,
                                                          [
                                                                trampCall(_fallback)
                                                          ]
                                                                       )
                                                    end
                                              else
                                                  if ( 
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40611| 
                                                          if ( 
                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40611)
                                                           ) then
                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40611)
                                                          else
                                                            false
                                                          end
                                                      } ; ___lambda.call(
                                                              trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                  trampCall(@_eqv_QUMARK)                                                                ,
                                                              [
                                                                  1                                                                  ,
                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40606)
                                                              ]
                                                                           ))
                                                                 )
                                                    end
                                                   ) then
                                                        begin raise RuntimeError, 
                                                            trampCall( self._sprintf_METHOD(  'sprintf',
                                                                trampCall(@_sprintf)                                                              ,
                                                            [
                                                                "Error: incomplete key list: %s
"                                                                ,
                                                                    _write_MIMARKto_MIMARKstring(
                                                                        trampCall(_kv_MIMARKlist)
                                                                    )
                                                            ]
                                                                         ))
                                                        rescue => __e 
                                                          __e.set_backtrace( [":1"] + __e.backtrace )
                                                          raise __e
                                                        end 
                                                  else
                                                      if ( 
                                                      true
                                                       ) then
                                                              delayCall( '_loop',  'loop',
                                                                  trampCall(_loop)                                                                ,
                                                              [
                                                                      _car(
                                                                          trampCall(_rest)
                                                                      )                                                                  ,
                                                                      trampCall( self._cadr_METHOD(  'cadr',
                                                                          trampCall(@_cadr)                                                                        ,
                                                                      [
                                                                            trampCall(_rest)
                                                                      ]
                                                                                   ))                                                                  ,
                                                                      trampCall( self._cddr_METHOD(  'cddr',
                                                                          trampCall(@_cddr)                                                                        ,
                                                                      [
                                                                            trampCall(_rest)
                                                                      ]
                                                                                   ))
                                                              ]
                                                                           )
                                                      else
                                                          Cell.new()
                                                      end
                                                  end
                                              end
                                          } ; ___lambda.call(
                                                  _length(
                                                      trampCall(_rest)
                                                  )
                                                     )
                                        end
                                    end
                                }
                                delayCall( '_loop',  'loop',
                                    trampCall(_loop)                                  ,
                                [
                                        _car(
                                            trampCall(_kv_MIMARKlist)
                                        )                                    ,
                                        trampCall( self._cadr_METHOD(  'cadr',
                                            trampCall(@_cadr)                                          ,
                                        [
                                              trampCall(_kv_MIMARKlist)
                                        ]
                                                     ))                                    ,
                                        trampCall( self._cddr_METHOD(  'cddr',
                                            trampCall(@_cddr)                                          ,
                                        [
                                              trampCall(_kv_MIMARKlist)
                                        ]
                                                     ))
                                ]
                                             )
                          } ; ___lambda.call(
                          nil
                                     )
                        end
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
      def self._keyword_MIMARK_GTMARKsymbol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_keyword_MIMARK_GTMARKsymbol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_keyword_MIMARK_GTMARKsymbol'] = self.method( :_keyword_MIMARK_GTMARKsymbol_METHOD )
    @_keyword_MIMARK_GTMARKsymbol = 
    trampCall(
          Proc.new { |_kw| 
                delayCall( '_string_MIMARK_GTMARKsymbol',  'string->symbol',
                    trampCall(@_string_MIMARK_GTMARKsymbol)                  ,
                [
                        trampCall( self._keyword_MIMARK_GTMARKstring_METHOD(  'keyword->string',
                            trampCall(@_keyword_MIMARK_GTMARKstring)                          ,
                        [
                              trampCall(_kw)
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
      def self._dot_MIMARKoperator_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_dot_MIMARKoperator', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_dot_MIMARKoperator'] = self.method( :_dot_MIMARKoperator_METHOD )
    @_dot_MIMARKoperator = 
    trampCall(
          LispMacro.new { |*__rest__| _lst = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_generate_MIMARKmethod_MIMARKcall_MIMARKform| 
                    _generate_MIMARKmethod_MIMARKcall_MIMARKform                     = 
                      Proc.new { |_lst| 
                          begin #makeLet
                            ___lambda = lambda { |_tmp| 
                                if ( 
                                    _symbol_QUMARK(
                                          trampCall( self._first_METHOD(  'first',
                                              trampCall(@_first)                                            ,
                                          [
                                                trampCall(_lst)
                                          ]
                                                       ))
                                    )
                                 ) then
                                      _cons(
                                            _string_MIMARK_GTMARKsymbol(
                                                  ( 
                                                      _to_MIMARKs(
                                                            trampCall( self._first_METHOD(  'first',
                                                                trampCall(@_first)                                                              ,
                                                            [
                                                                  trampCall(_lst)
                                                            ]
                                                                         ))
                                                      )                                                  +
                                                  "."                                                  +
                                                      _to_MIMARKs(
                                                            trampCall( self._second_METHOD(  'second',
                                                                trampCall(@_second)                                                              ,
                                                            [
                                                                  trampCall(_lst)
                                                            ]
                                                                         ))
                                                      )
                                                   ) 
                                            )                                        ,
                                            trampCall( self._cddr_METHOD(  'cddr',
                                                trampCall(@_cddr)                                              ,
                                            [
                                                  trampCall(_lst)
                                            ]
                                                         ))
                                      )
                                else
                                      _cons(
                                        :"let"                                        ,
                                            _cons(
                                                  _cons(
                                                        _cons(
                                                            trampCall(_tmp)                                                          ,
                                                              _cons(
                                                                    trampCall( self._first_METHOD(  'first',
                                                                        trampCall(@_first)                                                                      ,
                                                                    [
                                                                          trampCall(_lst)
                                                                    ]
                                                                                 ))                                                                ,
                                                                Cell.new()
                                                              )
                                                        )                                                    ,
                                                    Cell.new()
                                                  )                                              ,
                                                  _cons(
                                                        _cons(
                                                              _string_MIMARK_GTMARKsymbol(
                                                                    ( 
                                                                        _to_MIMARKs(
                                                                            trampCall(_tmp)
                                                                        )                                                                    +
                                                                    "."                                                                    +
                                                                        _to_MIMARKs(
                                                                              trampCall( self._second_METHOD(  'second',
                                                                                  trampCall(@_second)                                                                                ,
                                                                              [
                                                                                    trampCall(_lst)
                                                                              ]
                                                                                           ))
                                                                        )
                                                                     ) 
                                                              )                                                          ,
                                                              trampCall( self._cddr_METHOD(  'cddr',
                                                                  trampCall(@_cddr)                                                                ,
                                                              [
                                                                    trampCall(_lst)
                                                              ]
                                                                           ))
                                                        )                                                    ,
                                                    Cell.new()
                                                  )
                                            )
                                      )
                                end
                            } ; ___lambda.call(
                                    trampCall( self._gensym_METHOD(  'gensym',
                                        trampCall(@_gensym)                                      ,
                                    [
                                    ]
                                                 ))
                                       )
                          end
                      }
                    if ( 
                        ( 
                        2                        >
                            _length(
                                trampCall(_lst)
                            )
                         ) 
                     ) then
                            trampCall( self.__PAMARKraise_METHOD(  '%raise',
                                trampCall(@__PAMARKraise)                              ,
                            [
                                  trampCall(ArgumentError)                                ,
                                ". dot-operator requires 2+ arguments."                                ,
                                    trampCall( self._sprintf_METHOD(  'sprintf',
                                        trampCall(@_sprintf)                                      ,
                                    [
                                        "%s:%s in dot-operator"                                        ,
                                            trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                                trampCall(@__ASMARKFILE_ASMARK)                                              ,
                                            [
                                            ]
                                                         ))                                        ,
                                            trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                                trampCall(@__ASMARKLINE_ASMARK)                                              ,
                                            [
                                            ]
                                                         ))
                                    ]
                                                 ))
                            ]
                                         ))
                    else
                        if ( 
                        true
                         ) then
                              if ( 
                                  _symbol_QUMARK(
                                        trampCall( self._second_METHOD(  'second',
                                            trampCall(@_second)                                          ,
                                        [
                                              trampCall(_lst)
                                        ]
                                                     ))
                                  )
                               ) then
                                    trampCall( callProcedure(  '_generate_MIMARKmethod_MIMARKcall_MIMARKform',  'generate-method-call-form',
                                        trampCall(_generate_MIMARKmethod_MIMARKcall_MIMARKform)                                      ,
                                    [
                                          trampCall(_lst)
                                    ]
                                                 ))
                              else
                                    trampCall( self.__PAMARKraise_METHOD(  '%raise',
                                        trampCall(@__PAMARKraise)                                      ,
                                    [
                                          trampCall(TypeError)                                        ,
                                        ". dot-operator requires method name as symbol."                                        ,
                                            trampCall( self._sprintf_METHOD(  'sprintf',
                                                trampCall(@_sprintf)                                              ,
                                            [
                                                "%s:%s in dot-operator"                                                ,
                                                    trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
                                                        trampCall(@__ASMARKFILE_ASMARK)                                                      ,
                                                    [
                                                    ]
                                                                 ))                                                ,
                                                    trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
                                                        trampCall(@__ASMARKLINE_ASMARK)                                                      ,
                                                    [
                                                    ]
                                                                 ))
                                            ]
                                                         ))
                                    ]
                                                 ))
                              end
                        else
                            Cell.new()
                        end
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
      def self._with_MIMARKopen_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_with_MIMARKopen', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_with_MIMARKopen'] = self.method( :_with_MIMARKopen_METHOD )
    @_with_MIMARKopen = 
    trampCall(
          Proc.new { |_filename,_pred,*__rest__| _lst = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_opt| 
                    if ( 
                        ( 
                        1                        <
                            _length(
                                trampCall(_lst)
                            )
                         ) 
                     ) then
                          begin raise RuntimeError, 
                          "with-open requires 2 or 3 arguments."
                          rescue => __e 
                            __e.set_backtrace( ["./lib/nendo/init.nnd:887"] + __e.backtrace )
                            raise __e
                          end 
                    end
                    if ( 
                        _not(
                              _procedure_QUMARK(
                                  trampCall(_pred)
                              )
                        )
                     ) then
                          begin raise RuntimeError, 
                          "with-open requires procedure as pred argument."
                          rescue => __e 
                            __e.set_backtrace( ["./lib/nendo/init.nnd:889"] + __e.backtrace )
                            raise __e
                          end 
                    end
                    if ( 
                      trampCall(_opt)
                     ) then
                        trampCall(Kernel).open(
                              trampCall(_filename)                            ,
                              trampCall(_opt)                            ,
                              &Proc.new { |_f| 
                                    trampCall( callProcedure(  '_pred',  'pred',
                                        trampCall(_pred)                                      ,
                                    [
                                          trampCall(_f)
                                    ]
                                                 ))
                              }
                          )
                    else
                        trampCall(Kernel).open(
                              trampCall(_filename)                            ,
                              &Proc.new { |_f| 
                                    trampCall( callProcedure(  '_pred',  'pred',
                                        trampCall(_pred)                                      ,
                                    [
                                          trampCall(_f)
                                    ]
                                                 ))
                              }
                          )
                    end
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40614| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40614)
                                )
                             ) then
                              false
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40614)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_lst)
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
      def self._last_MIMARKpair_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_last_MIMARKpair', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_last_MIMARKpair'] = self.method( :_last_MIMARKpair_METHOD )
    @_last_MIMARKpair = 
    trampCall(
          Proc.new { |_x| 
              if ( 
                  _pair_QUMARK(
                        _cdr(
                            trampCall(_x)
                        )
                  )
               ) then
                    delayCall( '_last_MIMARKpair',  'last-pair',
                        trampCall(@_last_MIMARKpair)                      ,
                    [
                            _cdr(
                                trampCall(_x)
                            )
                    ]
                                 )
              else
                  trampCall(_x)
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
          Proc.new { |_arg,*__rest__| _args = __rest__[0] ;  
              if ( 
                  _null_QUMARK(
                      trampCall(_args)
                  )
               ) then
                  trampCall(_arg)
              else
                    delayCall( '_cons',  'cons',
                        trampCall(@_cons)                      ,
                    [
                          trampCall(_arg)                        ,
                            trampCall( self._apply_METHOD(  'apply',
                                trampCall(@_apply)                              ,
                            [
                                  trampCall(@_cons_ASMARK)                                ,
                                  trampCall(_args)
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
      def self._list_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_list_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_list_ASMARK'] = self.method( :_list_ASMARK_METHOD )
    @_list_ASMARK = 
    trampCall(
          trampCall(@_cons_ASMARK)
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._make_MIMARKhash_MIMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_make_MIMARKhash_MIMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_make_MIMARKhash_MIMARKtable'] = self.method( :_make_MIMARKhash_MIMARKtable_METHOD )
    @_make_MIMARKhash_MIMARKtable = 
    trampCall(
          Proc.new { |*__rest__| _eq = __rest__[0] ;  
              trampCall(Hash).new(
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._hash_MIMARKtable_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_QUMARK'] = self.method( :_hash_MIMARKtable_QUMARK_METHOD )
    @_hash_MIMARKtable_QUMARK = 
    trampCall(
          Proc.new { |_h| 
              trampCall(_h).is_a?(
                    trampCall(Hash)
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._hash_MIMARKtable_MIMARKnum_MIMARKentries_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARKnum_MIMARKentries', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARKnum_MIMARKentries'] = self.method( :_hash_MIMARKtable_MIMARKnum_MIMARKentries_METHOD )
    @_hash_MIMARKtable_MIMARKnum_MIMARKentries = 
    trampCall(
          Proc.new { |_h| 
              trampCall(_h).length(
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._hash_MIMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable'] = self.method( :_hash_MIMARKtable_METHOD )
    @_hash_MIMARKtable = 
    trampCall(
          Proc.new { |_type,*__rest__| _kv_MIMARKlist = __rest__[0] ;  
              if ( 
                  _not(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40615| 
                            if ( 
                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40615)
                             ) then
                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40615)
                            else
                                begin #makeLet
                                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40616| 
                                      if ( 
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40616)
                                       ) then
                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40616)
                                      else
                                        false
                                      end
                                  } ; ___lambda.call(
                                          _eq_QUMARK(
                                              trampCall(_type)                                            ,
                                              trampCall(@_eqv_QUMARK)
                                          )
                                             )
                                end
                            end
                        } ; ___lambda.call(
                                _eq_QUMARK(
                                    trampCall(_type)                                  ,
                                    trampCall(@_eq_QUMARK)
                                )
                                   )
                      end
                  )
               ) then
                    begin raise RuntimeError, 
                    "Error: hash-table got eq? or eqv? as type"
                    rescue => __e 
                      __e.set_backtrace( ["./lib/nendo/init.nnd:926"] + __e.backtrace )
                      raise __e
                    end 
              end
              begin #makeLet
                ___lambda = lambda { |_h| 
                      trampCall( self._for_MIMARKeach_METHOD(  'for-each',
                          trampCall(@_for_MIMARKeach)                        ,
                      [
                            Proc.new { |_entry| 
                                  trampCall( self._hash_MIMARKtable_MIMARKput_EXMARK_METHOD(  'hash-table-put!',
                                      trampCall(@_hash_MIMARKtable_MIMARKput_EXMARK)                                    ,
                                  [
                                        trampCall(_h)                                      ,
                                          _car(
                                              trampCall(_entry)
                                          )                                      ,
                                          _cdr(
                                              trampCall(_entry)
                                          )
                                  ]
                                               ))
                            }                          ,
                            trampCall(_kv_MIMARKlist)
                      ]
                                   ))
                    trampCall(_h)
                } ; ___lambda.call(
                        trampCall( self._make_MIMARKhash_MIMARKtable_METHOD(  'make-hash-table',
                            trampCall(@_make_MIMARKhash_MIMARKtable)                          ,
                        [
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
      def self._hash_MIMARKtable_MIMARKclear_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARKclear_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARKclear_EXMARK'] = self.method( :_hash_MIMARKtable_MIMARKclear_EXMARK_METHOD )
    @_hash_MIMARKtable_MIMARKclear_EXMARK = 
    trampCall(
          Proc.new { |_h| 
              trampCall(_h).clear(
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._hash_MIMARKtable_MIMARKdelete_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARKdelete_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARKdelete_EXMARK'] = self.method( :_hash_MIMARKtable_MIMARKdelete_EXMARK_METHOD )
    @_hash_MIMARKtable_MIMARKdelete_EXMARK = 
    trampCall(
          Proc.new { |_h,_key| 
              trampCall(_h).delete(
                    trampCall(_key)
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._hash_MIMARKtable_MIMARKpush_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARKpush_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARKpush_EXMARK'] = self.method( :_hash_MIMARKtable_MIMARKpush_EXMARK_METHOD )
    @_hash_MIMARKtable_MIMARKpush_EXMARK = 
    trampCall(
          Proc.new { |_ht,_key,_value| 
                delayCall( '_hash_MIMARKtable_MIMARKput_EXMARK',  'hash-table-put!',
                    trampCall(@_hash_MIMARKtable_MIMARKput_EXMARK)                  ,
                [
                      trampCall(_ht)                    ,
                      trampCall(_key)                    ,
                        _cons(
                            trampCall(_value)                          ,
                              trampCall( self._hash_MIMARKtable_MIMARKget_METHOD(  'hash-table-get',
                                  trampCall(@_hash_MIMARKtable_MIMARKget)                                ,
                              [
                                    trampCall(_ht)                                  ,
                                    trampCall(_key)                                  ,
                                  Cell.new()
                              ]
                                           ))
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
      def self._hash_MIMARKtable_MIMARKkeys_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARKkeys', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARKkeys'] = self.method( :_hash_MIMARKtable_MIMARKkeys_METHOD )
    @_hash_MIMARKtable_MIMARKkeys = 
    trampCall(
          Proc.new { |_h| 
                delayCall( '_to_MIMARKlist',  'to-list',
                    trampCall(@_to_MIMARKlist)                  ,
                [
                      trampCall(_h).keys(
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
      def self._hash_MIMARKtable_MIMARKvalues_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARKvalues', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARKvalues'] = self.method( :_hash_MIMARKtable_MIMARKvalues_METHOD )
    @_hash_MIMARKtable_MIMARKvalues = 
    trampCall(
          Proc.new { |_h| 
                delayCall( '_to_MIMARKlist',  'to-list',
                    trampCall(@_to_MIMARKlist)                  ,
                [
                      trampCall(_h).values(
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
      def self._hash_MIMARKtable_MIMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARKmap'] = self.method( :_hash_MIMARKtable_MIMARKmap_METHOD )
    @_hash_MIMARKtable_MIMARKmap = 
    trampCall(
          Proc.new { |_h,_pred| 
              begin #makeLet
                ___lambda = lambda { |_keys| 
                      delayCall( '_map',  'map',
                          trampCall(@_map)                        ,
                      [
                            Proc.new { |_key| 
                                  trampCall( callProcedure(  '_pred',  'pred',
                                      trampCall(_pred)                                    ,
                                  [
                                        trampCall(_key)                                      ,
                                          trampCall( self._hash_MIMARKtable_MIMARKget_METHOD(  'hash-table-get',
                                              trampCall(@_hash_MIMARKtable_MIMARKget)                                            ,
                                          [
                                                trampCall(_h)                                              ,
                                                trampCall(_key)
                                          ]
                                                       ))
                                  ]
                                               ))
                            }                          ,
                            trampCall(_keys)
                      ]
                                   )
                } ; ___lambda.call(
                        trampCall( self._hash_MIMARKtable_MIMARKkeys_METHOD(  'hash-table-keys',
                            trampCall(@_hash_MIMARKtable_MIMARKkeys)                          ,
                        [
                              trampCall(_h)
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
      def self._hash_MIMARKtable_MIMARKfor_MIMARKeach_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_hash_MIMARKtable_MIMARKfor_MIMARKeach', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_hash_MIMARKtable_MIMARKfor_MIMARKeach'] = self.method( :_hash_MIMARKtable_MIMARKfor_MIMARKeach_METHOD )
    @_hash_MIMARKtable_MIMARKfor_MIMARKeach = 
    trampCall(
          trampCall(@_hash_MIMARKtable_MIMARKmap)
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
              trampCall(_v).is_a?(
                    trampCall(Array)
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._make_MIMARKvector_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_make_MIMARKvector', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_make_MIMARKvector'] = self.method( :_make_MIMARKvector_METHOD )
    @_make_MIMARKvector = 
    trampCall(
          Proc.new { |_k,*__rest__| _rest = __rest__[0] ;  
              if ( 
                  _null_QUMARK(
                      trampCall(_rest)
                  )
               ) then
                  trampCall(Array).new(
                        trampCall(_k)
                    )
              else
                  trampCall(Array).new(
                        trampCall(_k)                      ,
                          _car(
                              trampCall(_rest)
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
      def self._vector_MIMARKlength_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector_MIMARKlength', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector_MIMARKlength'] = self.method( :_vector_MIMARKlength_METHOD )
    @_vector_MIMARKlength = 
    trampCall(
          Proc.new { |_v| 
              trampCall(_v).size(
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._vector_MIMARKcopy_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector_MIMARKcopy', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector_MIMARKcopy'] = self.method( :_vector_MIMARKcopy_METHOD )
    @_vector_MIMARKcopy = 
    trampCall(
          Proc.new { |_v| 
              trampCall(_v).clone(
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._vector_MIMARKref_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector_MIMARKref', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector_MIMARKref'] = self.method( :_vector_MIMARKref_METHOD )
    @_vector_MIMARKref = 
    trampCall(
          Proc.new { |_v,_index,*__rest__| _fallback = __rest__[0] ;  
              if ( 
                if ( 
                    _not(
                          _eq_QUMARK(
                            false                            ,
                                ( 
                                0                                <=
                                  trampCall(_index)
                                 ) 
                          )
                    )
                 ) then
                      ( 
                        trampCall(_index)                      <
                        trampCall(_v).size
                       ) 
                else
                  false
                end
               ) then
                  trampCall(_v).fetch(
                        trampCall(_index)
                    )
              else
                  if ( 
                      _null_QUMARK(
                          trampCall(_fallback)
                      )
                   ) then
                      begin raise RuntimeError, 
                          trampCall( self._sprintf_METHOD(  'sprintf',
                              trampCall(@_sprintf)                            ,
                          [
                              "Error: vector-ref  index value is overflow: %s
"                              ,
                                trampCall(_index)
                          ]
                                       ))
                      rescue => __e 
                        __e.set_backtrace( [":1"] + __e.backtrace )
                        raise __e
                      end 
                  else
                        delayCall( '_car',  'car',
                            trampCall(@_car)                          ,
                        [
                              trampCall(_fallback)
                        ]
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
      def self._vector_MIMARKequal_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector_MIMARKequal_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector_MIMARKequal_QUMARK'] = self.method( :_vector_MIMARKequal_QUMARK_METHOD )
    @_vector_MIMARKequal_QUMARK = 
    trampCall(
          Proc.new { |_x,_y| 
              if ( 
                  _not(
                        _eq_QUMARK(
                          false                          ,
                              trampCall( self._vector_QUMARK_METHOD(  'vector?',
                                  trampCall(@_vector_QUMARK)                                ,
                              [
                                    trampCall(_x)
                              ]
                                           ))
                        )
                  )
               ) then
                  if ( 
                      _not(
                            _eq_QUMARK(
                              false                              ,
                                  trampCall( self._vector_QUMARK_METHOD(  'vector?',
                                      trampCall(@_vector_QUMARK)                                    ,
                                  [
                                        trampCall(_y)
                                  ]
                                               ))
                            )
                      )
                   ) then
                      if ( 
                          _not(
                                _eq_QUMARK(
                                  false                                  ,
                                      __EQMARK(
                                            trampCall( self._vector_MIMARKlength_METHOD(  'vector-length',
                                                trampCall(@_vector_MIMARKlength)                                              ,
                                            [
                                                  trampCall(_x)
                                            ]
                                                         ))                                        ,
                                            trampCall( self._vector_MIMARKlength_METHOD(  'vector-length',
                                                trampCall(@_vector_MIMARKlength)                                              ,
                                            [
                                                  trampCall(_y)
                                            ]
                                                         ))
                                      )
                                )
                          )
                       ) then
                          begin #makeLet
                            ___lambda = lambda { |_n| 
                                begin #makeLetrec
                                  ___lambda = lambda { |_loop| 
                                      _loop                                       = 
                                        Proc.new { |_i| 
                                            if ( 
                                                __EQMARK(
                                                    trampCall(_i)                                                  ,
                                                    trampCall(_n)
                                                )
                                             ) then
                                              true
                                            else
                                                if ( 
                                                    _not(
                                                          _eq_QUMARK(
                                                            false                                                            ,
                                                                _equal_QUMARK(
                                                                      trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
                                                                          trampCall(@_vector_MIMARKref)                                                                        ,
                                                                      [
                                                                            trampCall(_x)                                                                          ,
                                                                            trampCall(_i)
                                                                      ]
                                                                                   ))                                                                  ,
                                                                      trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
                                                                          trampCall(@_vector_MIMARKref)                                                                        ,
                                                                      [
                                                                            trampCall(_y)                                                                          ,
                                                                            trampCall(_i)
                                                                      ]
                                                                                   ))
                                                                )
                                                          )
                                                    )
                                                 ) then
                                                      delayCall( '_loop',  'loop',
                                                          trampCall(_loop)                                                        ,
                                                      [
                                                              trampCall( self._succ_METHOD(  'succ',
                                                                  trampCall(@_succ)                                                                ,
                                                              [
                                                                    trampCall(_i)
                                                              ]
                                                                           ))
                                                      ]
                                                                   )
                                                else
                                                  false
                                                end
                                            end
                                        }
                                        delayCall( '_loop',  'loop',
                                            trampCall(_loop)                                          ,
                                        [
                                            0
                                        ]
                                                     )
                                  } ; ___lambda.call(
                                  nil
                                             )
                                end
                            } ; ___lambda.call(
                                    trampCall( self._vector_MIMARKlength_METHOD(  'vector-length',
                                        trampCall(@_vector_MIMARKlength)                                      ,
                                    [
                                          trampCall(_x)
                                    ]
                                                 ))
                                       )
                          end
                      else
                        false
                      end
                  else
                    false
                  end
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
      def self._list_MIMARK_GTMARKvector_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_list_MIMARK_GTMARKvector', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_list_MIMARK_GTMARKvector'] = self.method( :_list_MIMARK_GTMARKvector_METHOD )
    @_list_MIMARK_GTMARKvector = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_apply',  'apply',
                    trampCall(@_apply)                  ,
                [
                      trampCall(@_vector)                    ,
                      trampCall(_x)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._vector_MIMARKfill_EXMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector_MIMARKfill_EXMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector_MIMARKfill_EXMARK'] = self.method( :_vector_MIMARKfill_EXMARK_METHOD )
    @_vector_MIMARKfill_EXMARK = 
    trampCall(
          Proc.new { |_v,_e| 
              begin #makeLet
                ___lambda = lambda { |_n| 
                    begin #makeLetrec
                      ___lambda = lambda { |_loop| 
                          _loop                           = 
                            Proc.new { |_i| 
                                if ( 
                                    __EQMARK(
                                        trampCall(_i)                                      ,
                                        trampCall(_n)
                                    )
                                 ) then
                                    trampCall(_v)
                                else
                                    begin  #makeBegin
                                          trampCall( self._vector_MIMARKset_EXMARK_METHOD(  'vector-set!',
                                              trampCall(@_vector_MIMARKset_EXMARK)                                            ,
                                          [
                                                trampCall(_v)                                              ,
                                                trampCall(_i)                                              ,
                                                trampCall(_e)
                                          ]
                                                       ))
                                          delayCall( '_loop',  'loop',
                                              trampCall(_loop)                                            ,
                                          [
                                                  trampCall( self._succ_METHOD(  'succ',
                                                      trampCall(@_succ)                                                    ,
                                                  [
                                                        trampCall(_i)
                                                  ]
                                                               ))
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
                        trampCall( self._vector_MIMARKlength_METHOD(  'vector-length',
                            trampCall(@_vector_MIMARKlength)                          ,
                        [
                              trampCall(_v)
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
      def self._vector_MIMARK_GTMARKlist_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_vector_MIMARK_GTMARKlist', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_vector_MIMARK_GTMARKlist'] = self.method( :_vector_MIMARK_GTMARKlist_METHOD )
    @_vector_MIMARK_GTMARKlist = 
    trampCall(
          Proc.new { |_v| 
              begin #makeLetrec
                ___lambda = lambda { |_loop| 
                    _loop                     = 
                      Proc.new { |_n,_l| 
                          if ( 
                              __EQMARK(
                                  trampCall(_n)                                ,
                                -1
                              )
                           ) then
                              trampCall(_l)
                          else
                                delayCall( '_loop',  'loop',
                                    trampCall(_loop)                                  ,
                                [
                                        trampCall( self._pred_METHOD(  'pred',
                                            trampCall(@_pred)                                          ,
                                        [
                                              trampCall(_n)
                                        ]
                                                     ))                                    ,
                                        _cons(
                                              trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
                                                  trampCall(@_vector_MIMARKref)                                                ,
                                              [
                                                    trampCall(_v)                                                  ,
                                                    trampCall(_n)
                                              ]
                                                           ))                                          ,
                                            trampCall(_l)
                                        )
                                ]
                                             )
                          end
                      }
                      delayCall( '_loop',  'loop',
                          trampCall(_loop)                        ,
                      [
                              trampCall( self._pred_METHOD(  'pred',
                                  trampCall(@_pred)                                ,
                              [
                                      trampCall( self._vector_MIMARKlength_METHOD(  'vector-length',
                                          trampCall(@_vector_MIMARKlength)                                        ,
                                      [
                                            trampCall(_v)
                                      ]
                                                   ))
                              ]
                                           ))                          ,
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
      def self.__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK'] = self.method( :__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK_METHOD )
    @__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK = 
    trampCall(
        63
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._debug_MIMARKprint_MIMARKlength_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_debug_MIMARKprint_MIMARKlength', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_debug_MIMARKprint_MIMARKlength'] = self.method( :_debug_MIMARKprint_MIMARKlength_METHOD )
    @_debug_MIMARKprint_MIMARKlength = 
    trampCall(
          Proc.new { |*__rest__| _len = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_len| 
                    if ( 
                        _eq_QUMARK(
                            trampCall(_len)                          ,
                          :"none"
                        )
                     ) then
                        trampCall(@__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK)
                    else
                        begin #execFunc
                            def self.__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                            @global_lisp_binding['__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK'] = self.method( :__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK_METHOD )
                          @__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK = 
                          trampCall(
                                trampCall(_len)
                          )
                        end
                    end
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40617| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40617)
                                )
                             ) then
                              :"none"
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40617)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_len)
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
      def self._debug_MIMARKprint_MIMARKoutput_MIMARKfunc_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_debug_MIMARKprint_MIMARKoutput_MIMARKfunc', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_debug_MIMARKprint_MIMARKoutput_MIMARKfunc'] = self.method( :_debug_MIMARKprint_MIMARKoutput_MIMARKfunc_METHOD )
    @_debug_MIMARKprint_MIMARKoutput_MIMARKfunc = 
    trampCall(
          Proc.new { |_str| 
              trampCall(STDERR).print(
                    trampCall(_str)
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._debug_MIMARKlimit_MIMARKlength_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_debug_MIMARKlimit_MIMARKlength', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_debug_MIMARKlimit_MIMARKlength'] = self.method( :_debug_MIMARKlimit_MIMARKlength_METHOD )
    @_debug_MIMARKlimit_MIMARKlength = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '__PLMARK',  '+',
                    trampCall(@__PLMARK)                  ,
                [
                      if ( 
                          _not(
                              trampCall(@__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK)
                          )
                       ) then
                            trampCall(_x)
                      else
                          if ( 
                              ( 
                                trampCall(@__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK)                              <
                                trampCall(_x).length
                               ) 
                           ) then
                                begin #makeLet
                                  ___lambda = lambda { |_n| 
                                        trampCall( self._sprintf_METHOD(  'sprintf',
                                            trampCall(@_sprintf)                                          ,
                                        [
                                                trampCall( self.__PLMARK_METHOD(  '+',
                                                    trampCall(@__PLMARK)                                                  ,
                                                [
                                                    "%"                                                    ,
                                                      trampCall(_n)                                                    ,
                                                    "."                                                    ,
                                                      trampCall(_n)                                                    ,
                                                    "s ..."
                                                ]
                                                             ))                                            ,
                                              trampCall(_x)
                                        ]
                                                     ))
                                  } ; ___lambda.call(
                                        trampCall(@__ASMARKdebug_MIMARKprint_MIMARKlength_ASMARK).to_s
                                             )
                                end
                          else
                              if ( 
                              true
                               ) then
                                    trampCall(_x)
                              else
                                  Cell.new()
                              end
                          end
                      end                    ,
                    "
"
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._debug_MIMARKprint_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_debug_MIMARKprint', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_debug_MIMARKprint'] = self.method( :_debug_MIMARKprint_METHOD )
    @_debug_MIMARKprint = 
    trampCall(
          LispMacro.new { |__form,_sourcefile,_lineno,_sourcesexp| 
              begin #makeLet
                ___lambda = lambda { |_val| 
                      _cons(
                        :"let"                        ,
                            _cons(
                                  _cons(
                                        _cons(
                                            trampCall(_val)                                          ,
                                              _cons(
                                                nil                                                ,
                                                Cell.new()
                                              )
                                        )                                    ,
                                    Cell.new()
                                  )                              ,
                                  _cons(
                                        _cons(
                                          :"debug-print-output-func"                                          ,
                                              _cons(
                                                    _cons(
                                                      :"debug-limit-length"                                                      ,
                                                          _cons(
                                                                _cons(
                                                                  :"sprintf"                                                                  ,
                                                                      _cons(
                                                                        "#?=\"%s\":%s:%s"                                                                        ,
                                                                            _cons(
                                                                                trampCall(_sourcefile)                                                                              ,
                                                                                  _cons(
                                                                                      trampCall(_lineno)                                                                                    ,
                                                                                        _cons(
                                                                                              _cons(
                                                                                                :"write-to-string"                                                                                                ,
                                                                                                    _cons(
                                                                                                        trampCall(_sourcesexp)                                                                                                      ,
                                                                                                      Cell.new()
                                                                                                    )
                                                                                              )                                                                                          ,
                                                                                          Cell.new()
                                                                                        )
                                                                                  )
                                                                            )
                                                                      )
                                                                )                                                            ,
                                                            Cell.new()
                                                          )
                                                    )                                                ,
                                                Cell.new()
                                              )
                                        )                                    ,
                                        _cons(
                                              _cons(
                                                :"set!"                                                ,
                                                    _cons(
                                                        trampCall(_val)                                                      ,
                                                          _cons(
                                                              trampCall(__form)                                                            ,
                                                            Cell.new()
                                                          )
                                                    )
                                              )                                          ,
                                              _cons(
                                                    _cons(
                                                      :"debug-print-output-func"                                                      ,
                                                          _cons(
                                                                _cons(
                                                                  :"debug-limit-length"                                                                  ,
                                                                      _cons(
                                                                            _cons(
                                                                              :"+"                                                                              ,
                                                                                  _cons(
                                                                                    "#?-    "                                                                                    ,
                                                                                        _cons(
                                                                                              _cons(
                                                                                                :"write-to-string"                                                                                                ,
                                                                                                    _cons(
                                                                                                        trampCall(_val)                                                                                                      ,
                                                                                                      Cell.new()
                                                                                                    )
                                                                                              )                                                                                          ,
                                                                                          Cell.new()
                                                                                        )
                                                                                  )
                                                                            )                                                                        ,
                                                                        Cell.new()
                                                                      )
                                                                )                                                            ,
                                                            Cell.new()
                                                          )
                                                    )                                                ,
                                                    _cons(
                                                        trampCall(_val)                                                      ,
                                                      Cell.new()
                                                    )
                                              )
                                        )
                                  )
                            )
                      )
                } ; ___lambda.call(
                        trampCall( self._gensym_METHOD(  'gensym',
                            trampCall(@_gensym)                          ,
                        [
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
      def self._pretty_MIMARKprint_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_pretty_MIMARKprint', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_pretty_MIMARKprint'] = self.method( :_pretty_MIMARKprint_METHOD )
    @_pretty_MIMARKprint = 
    trampCall(
          Proc.new { |_s,*__rest__| _f = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_do_MIMARKindent,_pp_MIMARKparenl,_pp_MIMARKparenr,_pp_MIMARKatom,_pp_MIMARKlist| 
                    _do_MIMARKindent                     = 
                      Proc.new { |_f,_level| 
                            delayCall( '_for_MIMARKeach',  'for-each',
                                trampCall(@_for_MIMARKeach)                              ,
                            [
                                  Proc.new { |_x| 
                                      trampCall(_f).print(
                                          " "
                                        )
                                  }                                ,
                                    trampCall( self._range_METHOD(  'range',
                                        trampCall(@_range)                                      ,
                                    [
                                          trampCall(_level)
                                    ]
                                                 ))
                            ]
                                         )
                      }
                    _pp_MIMARKparenl                     = 
                      Proc.new { |_f| 
                          trampCall(_f).print(
                              "("
                            )
                      }
                    _pp_MIMARKparenr                     = 
                      Proc.new { |_f| 
                          trampCall(_f).print(
                              ")"
                            )
                      }
                    _pp_MIMARKatom                     = 
                      Proc.new { |_f,_e,_prefix| 
                          if ( 
                            trampCall(_prefix)
                           ) then
                                trampCall(_f).print(
                                    " "
                                  )
                          end
                          trampCall(_f).print(
                                  _write_MIMARKto_MIMARKstring(
                                      trampCall(_e)
                                  )
                            )
                      }
                    _pp_MIMARKlist                     = 
                      Proc.new { |_f,_s,_level,_prefix| 
                          if ( 
                              _not(
                                    _eq_QUMARK(
                                      false                                      ,
                                        trampCall(_prefix)
                                    )
                              )
                           ) then
                                trampCall( callProcedure(  '_do_MIMARKindent',  'do-indent',
                                    trampCall(_do_MIMARKindent)                                  ,
                                [
                                      trampCall(_f)                                    ,
                                      trampCall(_level)
                                ]
                                             ))
                          else
                            false
                          end
                            trampCall( callProcedure(  '_pp_MIMARKparenl',  'pp-parenl',
                                trampCall(_pp_MIMARKparenl)                              ,
                            [
                                  trampCall(_f)
                            ]
                                         ))
                          begin #makeLetrec
                            ___lambda = lambda { |_loop| 
                                _loop                                 = 
                                  Proc.new { |_s,_prefix| 
                                      if ( 
                                          _null_QUMARK(
                                              trampCall(_s)
                                          )
                                       ) then
                                            delayCall( '_pp_MIMARKparenr',  'pp-parenr',
                                                trampCall(_pp_MIMARKparenr)                                              ,
                                            [
                                                  trampCall(_f)
                                            ]
                                                         )
                                      else
                                          begin #makeLet
                                            ___lambda = lambda { |_e| 
                                                if ( 
                                                    trampCall( self._list_QUMARK_METHOD(  'list?',
                                                        trampCall(@_list_QUMARK)                                                      ,
                                                    [
                                                          trampCall(_e)
                                                    ]
                                                                 ))
                                                 ) then
                                                    begin  #makeBegin
                                                        if ( 
                                                            _not(
                                                                  _eq_QUMARK(
                                                                    false                                                                    ,
                                                                      trampCall(_prefix)
                                                                  )
                                                            )
                                                         ) then
                                                            trampCall(_f).print(
                                                                "
"
                                                              )
                                                        else
                                                          false
                                                        end
                                                          trampCall( callProcedure(  '_pp_MIMARKlist',  'pp-list',
                                                              trampCall(_pp_MIMARKlist)                                                            ,
                                                          [
                                                                trampCall(_f)                                                              ,
                                                                trampCall(_e)                                                              ,
                                                                  ( 
                                                                    trampCall(_level)                                                                  +
                                                                  1
                                                                   )                                                               ,
                                                                trampCall(_prefix)
                                                          ]
                                                                       ))
                                                    end
                                                else
                                                      trampCall( callProcedure(  '_pp_MIMARKatom',  'pp-atom',
                                                          trampCall(_pp_MIMARKatom)                                                        ,
                                                      [
                                                            trampCall(_f)                                                          ,
                                                            trampCall(_e)                                                          ,
                                                            trampCall(_prefix)
                                                      ]
                                                                   ))
                                                end
                                                  delayCall( '_loop',  'loop',
                                                      trampCall(_loop)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_s)
                                                          )                                                      ,
                                                      true
                                                  ]
                                                               )
                                            } ; ___lambda.call(
                                                    _car(
                                                        trampCall(_s)
                                                    )
                                                       )
                                          end
                                      end
                                  }
                                  delayCall( '_loop',  'loop',
                                      trampCall(_loop)                                    ,
                                  [
                                        trampCall(_s)                                      ,
                                      false
                                  ]
                                               )
                            } ; ___lambda.call(
                            nil
                                       )
                          end
                      }
                    begin #makeLet
                      ___lambda = lambda { |_f| 
                          if ( 
                              trampCall( self._list_QUMARK_METHOD(  'list?',
                                  trampCall(@_list_QUMARK)                                ,
                              [
                                    trampCall(_s)
                              ]
                                           ))
                           ) then
                                trampCall( callProcedure(  '_pp_MIMARKlist',  'pp-list',
                                    trampCall(_pp_MIMARKlist)                                  ,
                                [
                                      trampCall(_f)                                    ,
                                      trampCall(_s)                                    ,
                                    0                                    ,
                                    false
                                ]
                                             ))
                          else
                              trampCall(_f).print(
                                      _write_MIMARKto_MIMARKstring(
                                          trampCall(_s)
                                      )
                                )
                          end
                          trampCall(_f).print(
                              "
"
                            )
                      } ; ___lambda.call(
                            begin #makeLet
                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40621| 
                                  if ( 
                                      _null_QUMARK(
                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40621)
                                      )
                                   ) then
                                      trampCall(STDOUT)
                                  else
                                        delayCall( '_car',  'car',
                                            trampCall(@_car)                                          ,
                                        [
                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40621)
                                        ]
                                                     )
                                  end
                              } ; ___lambda.call(
                                    trampCall(_f)
                                         )
                            end
                                 )
                    end
                } ; ___lambda.call(
                nil,nil,nil,nil,nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._pretty_MIMARKprint_MIMARKto_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_pretty_MIMARKprint_MIMARKto_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_pretty_MIMARKprint_MIMARKto_MIMARKstring'] = self.method( :_pretty_MIMARKprint_MIMARKto_MIMARKstring_METHOD )
    @_pretty_MIMARKprint_MIMARKto_MIMARKstring = 
    trampCall(
          Proc.new { |_s| 
              begin #makeLet
                ___lambda = lambda { |_io| 
                      trampCall( self._pretty_MIMARKprint_METHOD(  'pretty-print',
                          trampCall(@_pretty_MIMARKprint)                        ,
                      [
                            trampCall(_s)                          ,
                            trampCall(_io)
                      ]
                                   ))
                    trampCall(_io).rewind(
                      )
                    trampCall(_io).read(
                      )
                } ; ___lambda.call(
                      trampCall(StringIO).new(
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
      def self._sort_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_sort', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_sort'] = self.method( :_sort_METHOD )
    @_sort = 
    trampCall(
          Proc.new { |_lst,*__rest__| _cmpfn = __rest__[0] ;  
              if ( 
                  _null_QUMARK(
                      trampCall(_lst)
                  )
               ) then
                Cell.new()
              else
                  begin #makeLet
                    ___lambda = lambda { |_cmpfn| 
                          delayCall( '_to_MIMARKlist',  'to-list',
                              trampCall(@_to_MIMARKlist)                            ,
                          [
                                if ( 
                                  trampCall(_cmpfn)
                                 ) then
                                    trampCall(_lst).to_arr.sort(
                                          &Proc.new { |_a,_b| 
                                                trampCall( callProcedure(  '_cmpfn',  'cmpfn',
                                                    trampCall(_cmpfn)                                                  ,
                                                [
                                                      trampCall(_a)                                                    ,
                                                      trampCall(_b)
                                                ]
                                                             ))
                                          }
                                      )
                                else
                                    trampCall(_lst).to_arr.sort(
                                      )
                                end
                          ]
                                       )
                    } ; ___lambda.call(
                          begin #makeLet
                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40622| 
                                if ( 
                                    _null_QUMARK(
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40622)
                                    )
                                 ) then
                                  false
                                else
                                      delayCall( '_car',  'car',
                                          trampCall(@_car)                                        ,
                                      [
                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40622)
                                      ]
                                                   )
                                end
                            } ; ___lambda.call(
                                  trampCall(_cmpfn)
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
      def self._sort_MIMARKby_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_sort_MIMARKby', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_sort_MIMARKby'] = self.method( :_sort_MIMARKby_METHOD )
    @_sort_MIMARKby = 
    trampCall(
          Proc.new { |_lst,_keyfn| 
              if ( 
                  _null_QUMARK(
                      trampCall(_lst)
                  )
               ) then
                Cell.new()
              else
                    delayCall( '_to_MIMARKlist',  'to-list',
                        trampCall(@_to_MIMARKlist)                      ,
                    [
                          trampCall(_lst).to_arr.sort_by(
                                &Proc.new { |_item| 
                                      trampCall( callProcedure(  '_keyfn',  'keyfn',
                                          trampCall(_keyfn)                                        ,
                                      [
                                            trampCall(_item)
                                      ]
                                                   ))
                                }
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
      def self._string_MIMARKlength_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_string_MIMARKlength', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_string_MIMARKlength'] = self.method( :_string_MIMARKlength_METHOD )
    @_string_MIMARKlength = 
    trampCall(
          Proc.new { |_str| 
              trampCall(_str).size(
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._string_MIMARK_GTMARKregexp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_string_MIMARK_GTMARKregexp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_string_MIMARK_GTMARKregexp'] = self.method( :_string_MIMARK_GTMARKregexp_METHOD )
    @_string_MIMARK_GTMARKregexp = 
    trampCall(
          Proc.new { |_str,*__rest__| _casefold = __rest__[0] ;  
              if ( 
                  _not(
                      trampCall(_str).is_a?(
                            trampCall(String)
                        )
                  )
               ) then
                  begin raise RuntimeError, 
                  "Error: string->regexp requires a String argument."
                  rescue => __e 
                    __e.set_backtrace( ["./lib/nendo/init.nnd:1120"] + __e.backtrace )
                    raise __e
                  end 
              else
                  if ( 
                    begin #makeLet
                      ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40623| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40623)
                              )
                           ) then
                            false
                          else
                                _car(
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40623)
                                )
                          end
                      } ; ___lambda.call(
                            trampCall(_casefold)
                                 )
                    end
                   ) then
                      trampCall(Regexp).new(
                            trampCall(_str)                          ,
                            trampCall(Regexp::IGNORECASE)
                        )
                  else
                      trampCall(Regexp).new(
                            trampCall(_str)
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
      def self._regexp_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_regexp_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_regexp_QUMARK'] = self.method( :_regexp_QUMARK_METHOD )
    @_regexp_QUMARK = 
    trampCall(
          Proc.new { |_obj| 
              trampCall(_obj).is_a?(
                    trampCall(Regexp)
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._regexp_MIMARK_GTMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_regexp_MIMARK_GTMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_regexp_MIMARK_GTMARKstring'] = self.method( :_regexp_MIMARK_GTMARKstring_METHOD )
    @_regexp_MIMARK_GTMARKstring = 
    trampCall(
          Proc.new { |_regexp| 
              trampCall(_regexp).source(
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._rxmatch_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rxmatch', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rxmatch'] = self.method( :_rxmatch_METHOD )
    @_rxmatch = 
    trampCall(
          Proc.new { |_regexp,_str| 
              begin #makeLet
                ___lambda = lambda { |_m| 
                    if ( 
                      trampCall(_m)
                     ) then
                        trampCall(_m)
                    else
                      false
                    end
                } ; ___lambda.call(
                      trampCall(_regexp).match(
                            trampCall(_str)
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
      def self._rxmatch_MIMARKstart_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rxmatch_MIMARKstart', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rxmatch_MIMARKstart'] = self.method( :_rxmatch_MIMARKstart_METHOD )
    @_rxmatch_MIMARKstart = 
    trampCall(
          Proc.new { |_match,*__rest__| _index = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_index| 
                    trampCall(_match).begin(
                          trampCall(_index)
                      )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40624| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40624)
                                )
                             ) then
                              0
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40624)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_index)
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
      def self._rxmatch_MIMARKend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rxmatch_MIMARKend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rxmatch_MIMARKend'] = self.method( :_rxmatch_MIMARKend_METHOD )
    @_rxmatch_MIMARKend = 
    trampCall(
          Proc.new { |_match,*__rest__| _index = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_index| 
                    trampCall(_match).end(
                          trampCall(_index)
                      )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40625| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40625)
                                )
                             ) then
                              0
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40625)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_index)
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
      def self._rxmatch_MIMARKsubstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rxmatch_MIMARKsubstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rxmatch_MIMARKsubstring'] = self.method( :_rxmatch_MIMARKsubstring_METHOD )
    @_rxmatch_MIMARKsubstring = 
    trampCall(
          Proc.new { |_match,*__rest__| _index = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_index| 
                      delayCall( '_nth',  'nth',
                          trampCall(@_nth)                        ,
                      [
                            trampCall(_index)                          ,
                            trampCall(_match).to_a.to_list(
                              )
                      ]
                                   )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40626| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40626)
                                )
                             ) then
                              0
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40626)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_index)
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
      def self._rxmatch_MIMARKnum_MIMARKmatches_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rxmatch_MIMARKnum_MIMARKmatches', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rxmatch_MIMARKnum_MIMARKmatches'] = self.method( :_rxmatch_MIMARKnum_MIMARKmatches_METHOD )
    @_rxmatch_MIMARKnum_MIMARKmatches = 
    trampCall(
          Proc.new { |_match| 
              trampCall(_match).size(
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._rxmatch_MIMARK_GTMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_rxmatch_MIMARK_GTMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_rxmatch_MIMARK_GTMARKstring'] = self.method( :_rxmatch_MIMARK_GTMARKstring_METHOD )
    @_rxmatch_MIMARK_GTMARKstring = 
    trampCall(
          Proc.new { |_regexp,_str,*__rest__| _index = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_index| 
                    begin #makeLet
                      ___lambda = lambda { |_m| 
                          if ( 
                            trampCall(_m)
                           ) then
                                delayCall( '_rxmatch_MIMARKsubstring',  'rxmatch-substring',
                                    trampCall(@_rxmatch_MIMARKsubstring)                                  ,
                                [
                                      trampCall(_m)                                    ,
                                      trampCall(_index)
                                ]
                                             )
                          else
                            false
                          end
                      } ; ___lambda.call(
                              trampCall( self._rxmatch_METHOD(  'rxmatch',
                                  trampCall(@_rxmatch)                                ,
                              [
                                    trampCall(_regexp)                                  ,
                                    trampCall(_str)
                              ]
                                           ))
                                 )
                    end
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40627| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40627)
                                )
                             ) then
                              0
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40627)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
                              trampCall(_index)
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
      def self._export_MIMARKto_MIMARKruby_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_export_MIMARKto_MIMARKruby', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_export_MIMARKto_MIMARKruby'] = self.method( :_export_MIMARKto_MIMARKruby_METHOD )
    @_export_MIMARKto_MIMARKruby = 
    trampCall(
          LispMacro.new { |_funcname| 
                _cons(
                  :"%export-to-ruby"                  ,
                      _cons(
                          trampCall(_funcname).to_s                        ,
                            _cons(
                                trampCall(_funcname)                              ,
                              Cell.new()
                            )
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._load_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_load', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_load'] = self.method( :_load_METHOD )
    @_load = 
    trampCall(
          Proc.new { |_path| 
              if ( 
                  trampCall( self._rxmatch_METHOD(  'rxmatch',
                      trampCall(@_rxmatch)                    ,
                  [
                      Regexp.new( "^([.]\\/|[.][.]\\/|\\/)")                      ,
                        trampCall(_path)
                  ]
                               ))
               ) then
                    delayCall( '__PAMARKload',  '%load',
                        trampCall(@__PAMARKload)                      ,
                    [
                          trampCall(_path)
                    ]
                                 )
              else
                  begin #makeLet
                    ___lambda = lambda { |_lp| 
                        begin #makeLetrec
                          ___lambda = lambda { |_loop| 
                              _loop                               = 
                                Proc.new { |_load_MIMARKpath| 
                                    if ( 
                                        _null_QUMARK(
                                            trampCall(_load_MIMARKpath)
                                        )
                                     ) then
                                          begin raise RuntimeError, 
                                              trampCall( self._sprintf_METHOD(  'sprintf',
                                                  trampCall(@_sprintf)                                                ,
                                              [
                                                  "Error: can't load file [%s]
"                                                  ,
                                                    trampCall(_path)
                                              ]
                                                           ))
                                          rescue => __e 
                                            __e.set_backtrace( [":1"] + __e.backtrace )
                                            raise __e
                                          end 
                                    else
                                        if ( 
                                        true
                                         ) then
                                              begin #makeLet
                                                ___lambda = lambda { |_full_MIMARKpath| 
                                                    if ( 
                                                      trampCall(File).exist?(
                                                            trampCall(_full_MIMARKpath)
                                                        )
                                                     ) then
                                                          if ( 
                                                            if ( 
                                                                _not(
                                                                      _eq_QUMARK(
                                                                        false                                                                        ,
                                                                            trampCall( self._rxmatch_METHOD(  'rxmatch',
                                                                                trampCall(@_rxmatch)                                                                              ,
                                                                            [
                                                                                Regexp.new( "[.]nndc.nc$")                                                                                ,
                                                                                  trampCall(_full_MIMARKpath)
                                                                            ]
                                                                                         ))
                                                                      )
                                                                )
                                                             ) then
                                                                  _not(
                                                                        trampCall( self.__ASMARKruntime_MIMARKcheck_ASMARK_METHOD(  '*runtime-check*',
                                                                            trampCall(@__ASMARKruntime_MIMARKcheck_ASMARK)                                                                          ,
                                                                        [
                                                                        ]
                                                                                     ))
                                                                  )
                                                            else
                                                              false
                                                            end
                                                           ) then
                                                                  delayCall( '__PAMARKload_MIMARKcompiled_MIMARKcode',  '%load-compiled-code',
                                                                      trampCall(@__PAMARKload_MIMARKcompiled_MIMARKcode)                                                                    ,
                                                                  [
                                                                        trampCall(_full_MIMARKpath)
                                                                  ]
                                                                               )
                                                          else
                                                              if ( 
                                                                  trampCall( self._rxmatch_METHOD(  'rxmatch',
                                                                      trampCall(@_rxmatch)                                                                    ,
                                                                  [
                                                                      Regexp.new( "[.]nndc$")                                                                      ,
                                                                        trampCall(_full_MIMARKpath)
                                                                  ]
                                                                               ))
                                                               ) then
                                                                      delayCall( '__PAMARKload_MIMARKcompiled_MIMARKcode',  '%load-compiled-code',
                                                                          trampCall(@__PAMARKload_MIMARKcompiled_MIMARKcode)                                                                        ,
                                                                      [
                                                                            trampCall(_full_MIMARKpath)
                                                                      ]
                                                                                   )
                                                              else
                                                                  if ( 
                                                                  true
                                                                   ) then
                                                                          delayCall( '__PAMARKload',  '%load',
                                                                              trampCall(@__PAMARKload)                                                                            ,
                                                                          [
                                                                                trampCall(_full_MIMARKpath)
                                                                          ]
                                                                                       )
                                                                  else
                                                                      Cell.new()
                                                                  end
                                                              end
                                                          end
                                                    else
                                                        if ( 
                                                          if ( 
                                                              _not(
                                                                    _eq_QUMARK(
                                                                      false                                                                      ,
                                                                        trampCall(File).exist?(
                                                                                ( 
                                                                                  trampCall(_full_MIMARKpath)                                                                                +
                                                                                ".nndc.nc"
                                                                                 ) 
                                                                          )
                                                                    )
                                                              )
                                                           ) then
                                                                _not(
                                                                      trampCall( self.__ASMARKruntime_MIMARKcheck_ASMARK_METHOD(  '*runtime-check*',
                                                                          trampCall(@__ASMARKruntime_MIMARKcheck_ASMARK)                                                                        ,
                                                                      [
                                                                      ]
                                                                                   ))
                                                                )
                                                          else
                                                            false
                                                          end
                                                         ) then
                                                                delayCall( '__PAMARKload_MIMARKcompiled_MIMARKcode',  '%load-compiled-code',
                                                                    trampCall(@__PAMARKload_MIMARKcompiled_MIMARKcode)                                                                  ,
                                                                [
                                                                        ( 
                                                                          trampCall(_full_MIMARKpath)                                                                        +
                                                                        ".nndc.nc"
                                                                         ) 
                                                                ]
                                                                             )
                                                        else
                                                            if ( 
                                                              trampCall(File).exist?(
                                                                      ( 
                                                                        trampCall(_full_MIMARKpath)                                                                      +
                                                                      ".nndc"
                                                                       ) 
                                                                )
                                                             ) then
                                                                    delayCall( '__PAMARKload_MIMARKcompiled_MIMARKcode',  '%load-compiled-code',
                                                                        trampCall(@__PAMARKload_MIMARKcompiled_MIMARKcode)                                                                      ,
                                                                    [
                                                                            ( 
                                                                              trampCall(_full_MIMARKpath)                                                                            +
                                                                            ".nndc"
                                                                             ) 
                                                                    ]
                                                                                 )
                                                            else
                                                                if ( 
                                                                  trampCall(File).exist?(
                                                                          ( 
                                                                            trampCall(_full_MIMARKpath)                                                                          +
                                                                          ".nnd"
                                                                           ) 
                                                                    )
                                                                 ) then
                                                                        delayCall( '__PAMARKload',  '%load',
                                                                            trampCall(@__PAMARKload)                                                                          ,
                                                                        [
                                                                                ( 
                                                                                  trampCall(_full_MIMARKpath)                                                                                +
                                                                                ".nnd"
                                                                                 ) 
                                                                        ]
                                                                                     )
                                                                else
                                                                    if ( 
                                                                    true
                                                                     ) then
                                                                            delayCall( '_loop',  'loop',
                                                                                trampCall(_loop)                                                                              ,
                                                                            [
                                                                                    _cdr(
                                                                                        trampCall(_load_MIMARKpath)
                                                                                    )
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
                                                        ( 
                                                            _car(
                                                                trampCall(_load_MIMARKpath)
                                                            )                                                        +
                                                        "/"                                                        +
                                                          trampCall(_path)
                                                         ) 
                                                           )
                                              end
                                        else
                                            Cell.new()
                                        end
                                    end
                                }
                                delayCall( '_loop',  'loop',
                                    trampCall(_loop)                                  ,
                                [
                                      trampCall(_lp)
                                ]
                                             )
                          } ; ___lambda.call(
                          nil
                                     )
                        end
                    } ; ___lambda.call(
                            trampCall( self._append_METHOD(  'append',
                                trampCall(@_append)                              ,
                            [
                                    trampCall( self._map_METHOD(  'map',
                                        trampCall(@_map)                                      ,
                                    [
                                          Proc.new { |_x| 
                                                ( 
                                                  trampCall(_x)                                                +
                                                "/nendo"
                                                 ) 
                                          }                                        ,
                                          trampCall(@__ASMARKload_MIMARKpath_ASMARK)
                                    ]
                                                 ))                                ,
                                  trampCall(@__ASMARKload_MIMARKpath_ASMARK)
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
      def self._add_MIMARKload_MIMARKpath_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_add_MIMARKload_MIMARKpath', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_add_MIMARKload_MIMARKpath'] = self.method( :_add_MIMARKload_MIMARKpath_METHOD )
    @_add_MIMARKload_MIMARKpath = 
    trampCall(
          Proc.new { |_path,*__rest__| _afterp = __rest__[0] ;  
              begin #execFunc
                  def self.__ASMARKload_MIMARKpath_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKload_MIMARKpath_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                  @global_lisp_binding['__ASMARKload_MIMARKpath_ASMARK'] = self.method( :__ASMARKload_MIMARKpath_ASMARK_METHOD )
                @__ASMARKload_MIMARKpath_ASMARK = 
                trampCall(
                      if ( 
                        begin #makeLet
                          ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40638| 
                              if ( 
                                  _null_QUMARK(
                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40638)
                                  )
                               ) then
                                false
                              else
                                    _car(
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40638)
                                    )
                              end
                          } ; ___lambda.call(
                                trampCall(_afterp)
                                     )
                        end
                       ) then
                            trampCall( self._append_METHOD(  'append',
                                trampCall(@_append)                              ,
                            [
                                  trampCall(@__ASMARKload_MIMARKpath_ASMARK)                                ,
                                    trampCall( self._list_METHOD(  'list',
                                        trampCall(@_list)                                      ,
                                    [
                                          trampCall(_path)
                                    ]
                                                 ))
                            ]
                                         ))
                      else
                            _cons(
                                trampCall(_path)                              ,
                                trampCall(@__ASMARKload_MIMARKpath_ASMARK)
                            )
                      end
                )
              end
              trampCall(@__ASMARKload_MIMARKpath_ASMARK)
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._use_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_use', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_use'] = self.method( :_use_METHOD )
    @_use = 
    trampCall(
          LispMacro.new { |_sym| 
              if ( 
                  _symbol_QUMARK(
                      trampCall(_sym)
                  )
               ) then
                  begin #makeLet
                    ___lambda = lambda { |_str| 
                        begin #makeLet
                          ___lambda = lambda { |_pathname| 
                                _cons(
                                  :"load"                                  ,
                                      _cons(
                                          trampCall(_pathname)                                        ,
                                        Cell.new()
                                      )
                                )
                          } ; ___lambda.call(
                                trampCall(_str).gsub(
                                    "."                                    ,
                                    "/"
                                  )
                                     )
                        end
                    } ; ___lambda.call(
                            _symbol_MIMARK_GTMARKstring(
                                trampCall(_sym)
                            )
                               )
                  end
              else
                  begin raise RuntimeError, 
                      trampCall( self._sprintf_METHOD(  'sprintf',
                          trampCall(@_sprintf)                        ,
                      [
                          "Error: use macro requires a symbol argument."
                      ]
                                   ))
                  rescue => __e 
                    __e.set_backtrace( [":1"] + __e.backtrace )
                    raise __e
                  end 
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._export_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_export', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_export'] = self.method( :_export_METHOD )
    @_export = 
    trampCall(
          LispMacro.new { |_name| 
                _cons(
                  :"define"                  ,
                      _cons(
                          trampCall(_name)                        ,
                            _cons(
                              nil                              ,
                              Cell.new()
                            )
                      )
                )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._global_MIMARKdefined_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_global_MIMARKdefined_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_global_MIMARKdefined_QUMARK'] = self.method( :_global_MIMARKdefined_QUMARK_METHOD )
    @_global_MIMARKdefined_QUMARK = 
    trampCall(
          Proc.new { |_sym| 
                delayCall( '_find',  'find',
                    trampCall(@_find)                  ,
                [
                      Proc.new { |_x| 
                            _eq_QUMARK(
                                trampCall(_sym)                              ,
                                trampCall(_x)
                            )
                      }                    ,
                        trampCall( self._global_MIMARKvariables_METHOD(  'global-variables',
                            trampCall(@_global_MIMARKvariables)                          ,
                        [
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
      def self._compiled_MIMARKcode_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_compiled_MIMARKcode_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_compiled_MIMARKcode_MIMARKstring'] = self.method( :_compiled_MIMARKcode_MIMARKstring_METHOD )
    @_compiled_MIMARKcode_MIMARKstring = 
    trampCall(
          Proc.new { |_compiled_MIMARKcode,_filename| 
              begin #makeLetrec
                ___lambda = lambda { |_compiled_MIMARKbody_MIMARKstring| 
                    _compiled_MIMARKbody_MIMARKstring                     = 
                      Proc.new { |_string_MIMARKlist,_filename| 
                            delayCall( '__PLMARK',  '+',
                                trampCall(@__PLMARK)                              ,
                            [
                                    trampCall( self._string_MIMARKjoin_METHOD(  'string-join',
                                        trampCall(@_string_MIMARKjoin)                                      ,
                                    [
                                          trampCall(_string_MIMARKlist)                                        ,
                                        "
#--------------------
"
                                    ]
                                                 ))                                ,
                                    trampCall( self._string_MIMARKjoin_METHOD(  'string-join',
                                        trampCall(@_string_MIMARKjoin)                                      ,
                                    [
                                            _cons(
                                              "

"                                              ,
                                                  _cons(
                                                    "# -------------------------------------------------------"                                                    ,
                                                        _cons(
                                                          "# [EOF]"                                                          ,
                                                              _cons(
                                                                "# -------------------------------------------------------"                                                                ,
                                                                Cell.new()
                                                              )
                                                        )
                                                  )
                                            )                                        ,
                                        "
"
                                    ]
                                                 ))
                            ]
                                         )
                      }
                    begin #makeLet
                      ___lambda = lambda { |_str_MIMARKlist,_script_MIMARKflag| 
                            delayCall( '_values',  'values',
                                trampCall(@_values)                              ,
                            [
                                  trampCall(_script_MIMARKflag)                                ,
                                    trampCall( callProcedure(  '_compiled_MIMARKbody_MIMARKstring',  'compiled-body-string',
                                        trampCall(_compiled_MIMARKbody_MIMARKstring)                                      ,
                                    [
                                          trampCall(_str_MIMARKlist)                                        ,
                                          trampCall(_filename)
                                    ]
                                                 ))
                            ]
                                         )
                      } ; ___lambda.call(
                              trampCall( self._assv_MIMARKref_METHOD(  'assv-ref',
                                  trampCall(@_assv_MIMARKref)                                ,
                              [
                                    trampCall(_filename)                                  ,
                                    trampCall(_compiled_MIMARKcode)
                              ]
                                           ))                          ,
                            if ( 
                                _not(
                                      _eq_QUMARK(
                                        false                                        ,
                                            trampCall( self._global_MIMARKdefined_QUMARK_METHOD(  'global-defined?',
                                                trampCall(@_global_MIMARKdefined_QUMARK)                                              ,
                                            [
                                                :"main"
                                            ]
                                                         ))
                                      )
                                )
                             ) then
                                  delayCall( '_procedure_QUMARK',  'procedure?',
                                      trampCall(@_procedure_QUMARK)                                    ,
                                  [
                                        trampCall(@_main)
                                  ]
                                               )
                            else
                              false
                            end
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
      def self._print_MIMARKcompiled_MIMARKcode_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_print_MIMARKcompiled_MIMARKcode', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_print_MIMARKcompiled_MIMARKcode'] = self.method( :_print_MIMARKcompiled_MIMARKcode_METHOD )
    @_print_MIMARKcompiled_MIMARKcode = 
    trampCall(
          Proc.new { |_src,*__rest__| _rest = __rest__[0] ;  
              begin #makeLetrec
                ___lambda = lambda { |_print_MIMARKto_MIMARKfile| 
                    _print_MIMARKto_MIMARKfile                     = 
                      Proc.new { |_f| 
                            delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
                                trampCall(@_call_MIMARKwith_MIMARKvalues)                              ,
                            [
                                  Proc.new { || 
                                        trampCall( self._compiled_MIMARKcode_MIMARKstring_METHOD(  'compiled-code-string',
                                            trampCall(@_compiled_MIMARKcode_MIMARKstring)                                          ,
                                        [
                                                trampCall( self._get_MIMARKcompiled_MIMARKcode_METHOD(  'get-compiled-code',
                                                    trampCall(@_get_MIMARKcompiled_MIMARKcode)                                                  ,
                                                [
                                                ]
                                                             ))                                            ,
                                              trampCall(_src)
                                        ]
                                                     ))
                                  }                                ,
                                  Proc.new { |_script_MIMARKflag,_str| 
                                      if ( 
                                        trampCall(_script_MIMARKflag)
                                       ) then
                                            trampCall(_f).puts(
                                                    trampCall( self._string_MIMARKjoin_METHOD(  'string-join',
                                                        trampCall(@_string_MIMARKjoin)                                                      ,
                                                    [
                                                            _cons(
                                                              "#!/usr/local/bin/ruby"                                                              ,
                                                                  _cons(
                                                                    "# -*- encoding: utf-8 -*-"                                                                    ,
                                                                        _cons(
                                                                          "#"                                                                          ,
                                                                              _cons(
                                                                                "#    This file is nendo's compiled script file. "                                                                                ,
                                                                                    _cons(
                                                                                      "#    generated  \"nendo -c src\" command. "                                                                                      ,
                                                                                          _cons(
                                                                                            "#"                                                                                            ,
                                                                                                _cons(
                                                                                                  ""                                                                                                  ,
                                                                                                      _cons(
                                                                                                        "require 'rubygems'"                                                                                                        ,
                                                                                                            _cons(
                                                                                                              "require 'nendo'"                                                                                                              ,
                                                                                                                  _cons(
                                                                                                                    ""                                                                                                                    ,
                                                                                                                        _cons(
                                                                                                                          "core = Nendo::Core.new()"                                                                                                                          ,
                                                                                                                              _cons(
                                                                                                                                "core.loadInitFile()"                                                                                                                                ,
                                                                                                                                    _cons(
                                                                                                                                      "core.setArgv( ARGV )"                                                                                                                                      ,
                                                                                                                                          _cons(
                                                                                                                                            "core.load_compiled_code_from_string( "                                                                                                                                            ,
                                                                                                                                                _cons(
                                                                                                                                                      _write_MIMARKto_MIMARKstring(
                                                                                                                                                          trampCall(_str)
                                                                                                                                                      )                                                                                                                                                  ,
                                                                                                                                                      _cons(
                                                                                                                                                        " ) "                                                                                                                                                        ,
                                                                                                                                                            _cons(
                                                                                                                                                              "core.evalStr( \"(if (and (global-defined? 'main) (procedure? main)) (main *argv*) #f) \" )"                                                                                                                                                              ,
                                                                                                                                                                  _cons(
                                                                                                                                                                    ""                                                                                                                                                                    ,
                                                                                                                                                                    Cell.new()
                                                                                                                                                                  )
                                                                                                                                                            )
                                                                                                                                                      )
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    )
                                                                                                                              )
                                                                                                                        )
                                                                                                                  )
                                                                                                            )
                                                                                                      )
                                                                                                )
                                                                                          )
                                                                                    )
                                                                              )
                                                                        )
                                                                  )
                                                            )                                                        ,
                                                        "
"
                                                    ]
                                                                 ))
                                              )
                                      else
                                          if ( 
                                          true
                                           ) then
                                                trampCall(_f).puts(
                                                        ( 
                                                            trampCall( self._string_MIMARKjoin_METHOD(  'string-join',
                                                                trampCall(@_string_MIMARKjoin)                                                              ,
                                                            [
                                                                Cell.new("#",Cell.new("#    This file is nendo's compiled library file. ",Cell.new("#    generated  \"nendo -c src\" command. ",Cell.new("# "))))                                                                ,
                                                                "
"
                                                            ]
                                                                         ))                                                        +
                                                        "
"                                                        +
                                                          trampCall(_str)
                                                         ) 
                                                  )
                                          else
                                              Cell.new()
                                          end
                                      end
                                  }
                            ]
                                         )
                      }
                    if ( 
                        _not(
                            trampCall(File).exist?(
                                  trampCall(_src)
                              )
                        )
                     ) then
                        begin  #makeBegin
                            begin raise RuntimeError, 
                                trampCall( self._sprintf_METHOD(  'sprintf',
                                    trampCall(@_sprintf)                                  ,
                                [
                                    "Error: file [%s] not found."                                    ,
                                      trampCall(_src)
                                ]
                                             ))
                            rescue => __e 
                              __e.set_backtrace( [":1"] + __e.backtrace )
                              raise __e
                            end 
                              trampCall( self._exit_METHOD(  'exit',
                                  trampCall(@_exit)                                ,
                              [
                                  1
                              ]
                                           ))
                        end
                    end
                      trampCall( self._clean_MIMARKcompiled_MIMARKcode_METHOD(  'clean-compiled-code',
                          trampCall(@_clean_MIMARKcompiled_MIMARKcode)                        ,
                      [
                      ]
                                   ))
                      trampCall( self._load_METHOD(  'load',
                          trampCall(@_load)                        ,
                      [
                            trampCall(_src)
                      ]
                                   ))
                    if ( 
                        _null_QUMARK(
                            trampCall(_rest)
                        )
                     ) then
                          delayCall( '_print_MIMARKto_MIMARKfile',  'print-to-file',
                              trampCall(_print_MIMARKto_MIMARKfile)                            ,
                          [
                                trampCall(STDOUT)
                          ]
                                       )
                    else
                          delayCall( '_with_MIMARKopen',  'with-open',
                              trampCall(@_with_MIMARKopen)                            ,
                          [
                                  _car(
                                      trampCall(_rest)
                                  )                              ,
                                Proc.new { |_f| 
                                      trampCall( callProcedure(  '_print_MIMARKto_MIMARKfile',  'print-to-file',
                                          trampCall(_print_MIMARKto_MIMARKfile)                                        ,
                                      [
                                            trampCall(_f)
                                      ]
                                                   ))
                                }                              ,
                              "w"
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
      def self.__PAMARKcompile_MIMARKphase_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKcompile_MIMARKphase', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKcompile_MIMARKphase'] = self.method( :__PAMARKcompile_MIMARKphase_METHOD )
    @__PAMARKcompile_MIMARKphase = 
    trampCall(
          Proc.new { |_sexp| 
              if ( 
                  trampCall( self._list_QUMARK_METHOD(  'list?',
                      trampCall(@_list_QUMARK)                    ,
                  [
                        trampCall(_sexp)
                  ]
                               ))
               ) then
                  begin  #makeBegin
                        trampCall( self._for_MIMARKeach_METHOD(  'for-each',
                            trampCall(@_for_MIMARKeach)                          ,
                        [
                              Proc.new { |_func| 
                                  begin #execFunc
                                    
                                    _sexp = 
                                    trampCall(
                                            trampCall( callProcedure(  '_func',  'func',
                                                trampCall(_func)                                              ,
                                            [
                                                  trampCall(_sexp)
                                            ]
                                                         ))
                                    )
                                  end
                              }                            ,
                              trampCall(@__PAMARKcompile_MIMARKphase_MIMARKfunctions)
                        ]
                                     ))
                      trampCall(_sexp)
                  end
              else
                  if ( 
                  true
                   ) then
                        trampCall(_sexp)
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
      def self.__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark'] = self.method( :__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark_METHOD )
    @__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark = 
    trampCall(
          Proc.new { |_sexp| 
              begin #makeLetrec
                ___lambda = lambda { |_reserved_QUMARK,_setup_MIMARKlet_MIMARKargs,_setup_MIMARKproc,_setup_MIMARKproc_MIMARKbody| 
                    _reserved_QUMARK                     = 
                      Proc.new { |_sym| 
                          begin #makeLet
                            ___lambda = lambda { |_reserved_MIMARKorig| 
                                begin #makeLet
                                  ___lambda = lambda { |_reserved| 
                                      begin #makeLet
                                        ___lambda = lambda { |_cast_MIMARKsym| 
                                              delayCall( '_memq',  'memq',
                                                  trampCall(@_memq)                                                ,
                                              [
                                                    trampCall(_cast_MIMARKsym)                                                  ,
                                                    trampCall(_reserved)
                                              ]
                                                           )
                                        } ; ___lambda.call(
                                              if ( 
                                                  _eq_QUMARK(
                                                      trampCall(_sym).class                                                    ,
                                                      trampCall(ParsedSymbol)
                                                  )
                                               ) then
                                                    delayCall( '_intern',  'intern',
                                                        trampCall(@_intern)                                                      ,
                                                    [
                                                          trampCall(_sym)
                                                    ]
                                                                 )
                                              else
                                                  trampCall(_sym)
                                              end
                                                   )
                                      end
                                  } ; ___lambda.call(
                                          trampCall( self._append_METHOD(  'append',
                                              trampCall(@_append)                                            ,
                                          [
                                                trampCall(_reserved_MIMARKorig)                                              ,
                                                  trampCall( self._map_METHOD(  'map',
                                                      trampCall(@_map)                                                    ,
                                                  [
                                                        Proc.new { |_orig| 
                                                              _string_MIMARK_GTMARKsymbol(
                                                                    ( 
                                                                    "/nendo/core/"                                                                    +
                                                                        _symbol_MIMARK_GTMARKstring(
                                                                            trampCall(_orig)
                                                                        )
                                                                     ) 
                                                              )
                                                        }                                                      ,
                                                        trampCall(_reserved_MIMARKorig)
                                                  ]
                                                               ))
                                          ]
                                                       ))
                                             )
                                end
                            } ; ___lambda.call(
                                Cell.new(:"quote",Cell.new(:"quote",Cell.new(:"macro",Cell.new(:"%syntax",Cell.new(:"begin",Cell.new(:"lambda",Cell.new(:"if",Cell.new(:"%let",Cell.new(:"letrec",Cell.new(:"define",Cell.new(:"define-syntax",Cell.new(:"%guard"))))))))))))
                                       )
                          end
                      }
                    _setup_MIMARKlet_MIMARKargs                     = 
                      Proc.new { |_args| 
                            delayCall( '_map',  'map',
                                trampCall(@_map)                              ,
                            [
                                  Proc.new { |_arg| 
                                      begin #makeLet
                                        ___lambda = lambda { |_name,_body| 
                                              trampCall( self._list_METHOD(  'list',
                                                  trampCall(@_list)                                                ,
                                              [
                                                    trampCall(_name)                                                  ,
                                                    if ( 
                                                        trampCall( self._list_QUMARK_METHOD(  'list?',
                                                            trampCall(@_list_QUMARK)                                                          ,
                                                        [
                                                              trampCall(_body)
                                                        ]
                                                                     ))
                                                     ) then
                                                        if ( 
                                                            trampCall( callProcedure(  '_reserved_QUMARK',  'reserved?',
                                                                trampCall(_reserved_QUMARK)                                                              ,
                                                            [
                                                                    _car(
                                                                        trampCall(_body)
                                                                    )
                                                            ]
                                                                         ))
                                                         ) then
                                                              trampCall( self.__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark_METHOD(  '%setup-%tailcall-mark',
                                                                  trampCall(@__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark)                                                                ,
                                                              [
                                                                    trampCall(_body)
                                                              ]
                                                                           ))
                                                        else
                                                            trampCall(_body)
                                                        end
                                                    else
                                                        trampCall(_body)
                                                    end
                                              ]
                                                           ))
                                        } ; ___lambda.call(
                                                trampCall( self._first_METHOD(  'first',
                                                    trampCall(@_first)                                                  ,
                                                [
                                                      trampCall(_arg)
                                                ]
                                                             ))                                            ,
                                                trampCall( self._second_METHOD(  'second',
                                                    trampCall(@_second)                                                  ,
                                                [
                                                      trampCall(_arg)
                                                ]
                                                             ))
                                                   )
                                      end
                                  }                                ,
                                  trampCall(_args)
                            ]
                                         )
                      }
                    _setup_MIMARKproc                     = 
                      Proc.new { |_sexp| 
                          if ( 
                              _null_QUMARK(
                                  trampCall(_sexp)
                              )
                           ) then
                                trampCall(_sexp)
                          else
                              if ( 
                                if ( 
                                    _not(
                                          _eq_QUMARK(
                                            false                                            ,
                                                trampCall( self._list_QUMARK_METHOD(  'list?',
                                                    trampCall(@_list_QUMARK)                                                  ,
                                                [
                                                      trampCall(_sexp)
                                                ]
                                                             ))
                                          )
                                    )
                                 ) then
                                      ( 
                                      0                                      <
                                          _length(
                                              trampCall(_sexp)
                                          )
                                       ) 
                                else
                                  false
                                end
                               ) then
                                    if ( 
                                        trampCall( callProcedure(  '_reserved_QUMARK',  'reserved?',
                                            trampCall(_reserved_QUMARK)                                          ,
                                        [
                                                _car(
                                                    trampCall(_sexp)
                                                )
                                        ]
                                                     ))
                                     ) then
                                          delayCall( '__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark',  '%setup-%tailcall-mark',
                                              trampCall(@__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark)                                            ,
                                          [
                                                trampCall(_sexp)
                                          ]
                                                       )
                                    else
                                        if ( 
                                            _pair_QUMARK(
                                                  _car(
                                                      trampCall(_sexp)
                                                  )
                                            )
                                         ) then
                                            trampCall(_sexp)
                                        else
                                              delayCall( '_cons',  'cons',
                                                  trampCall(@_cons)                                                ,
                                              [
                                                  :"%tailcall"                                                  ,
                                                      _cons(
                                                          trampCall(_sexp)                                                        ,
                                                        Cell.new()
                                                      )
                                              ]
                                                           )
                                        end
                                    end
                              else
                                  if ( 
                                  true
                                   ) then
                                        trampCall(_sexp)
                                  else
                                      Cell.new()
                                  end
                              end
                          end
                      }
                    _setup_MIMARKproc_MIMARKbody                     = 
                      Proc.new { |_sexp| 
                          if ( 
                            begin #makeLet
                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40646| 
                                  if ( 
                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40646)
                                   ) then
                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40646)
                                  else
                                      begin #makeLet
                                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40647| 
                                            if ( 
                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40647)
                                             ) then
                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40647)
                                            else
                                              false
                                            end
                                        } ; ___lambda.call(
                                                _null_QUMARK(
                                                    trampCall(_sexp)
                                                )
                                                   )
                                      end
                                  end
                              } ; ___lambda.call(
                                      _not(
                                            trampCall( self._list_QUMARK_METHOD(  'list?',
                                                trampCall(@_list_QUMARK)                                              ,
                                            [
                                                  trampCall(_sexp)
                                            ]
                                                         ))
                                      )
                                         )
                            end
                           ) then
                              trampCall(_sexp)
                          else
                              begin #makeLet
                                ___lambda = lambda { |_r| 
                                    begin #makeLet
                                      ___lambda = lambda { |_last| 
                                          begin #makeLet
                                            ___lambda = lambda { |_other| 
                                                if ( 
                                                    _not(
                                                          _pair_QUMARK(
                                                              trampCall(_last)
                                                          )
                                                    )
                                                 ) then
                                                    trampCall(_sexp)
                                                else
                                                      delayCall( '_reverse',  'reverse',
                                                          trampCall(@_reverse)                                                        ,
                                                      [
                                                              _cons(
                                                                  if ( 
                                                                      trampCall( callProcedure(  '_reserved_QUMARK',  'reserved?',
                                                                          trampCall(_reserved_QUMARK)                                                                        ,
                                                                      [
                                                                              _car(
                                                                                  trampCall(_last)
                                                                              )
                                                                      ]
                                                                                   ))
                                                                   ) then
                                                                        trampCall( self.__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark_METHOD(  '%setup-%tailcall-mark',
                                                                            trampCall(@__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark)                                                                          ,
                                                                        [
                                                                              trampCall(_last)
                                                                        ]
                                                                                     ))
                                                                  else
                                                                        _cons(
                                                                          :"%tailcall"                                                                          ,
                                                                              _cons(
                                                                                  trampCall(_last)                                                                                ,
                                                                                Cell.new()
                                                                              )
                                                                        )
                                                                  end                                                                ,
                                                                  trampCall(_other)
                                                              )
                                                      ]
                                                                   )
                                                end
                                            } ; ___lambda.call(
                                                    _cdr(
                                                        trampCall(_r)
                                                    )
                                                       )
                                          end
                                      } ; ___lambda.call(
                                              _car(
                                                  trampCall(_r)
                                              )
                                                 )
                                    end
                                } ; ___lambda.call(
                                        _reverse(
                                            trampCall(_sexp)
                                        )
                                           )
                              end
                          end
                      }
                    if ( 
                        _not(
                              _pair_QUMARK(
                                  trampCall(_sexp)
                              )
                        )
                     ) then
                          trampCall(_sexp)
                    else
                        if ( 
                            _null_QUMARK(
                                trampCall(_sexp)
                            )
                         ) then
                            Cell.new()
                        else
                            if ( 
                                trampCall( self._list_QUMARK_METHOD(  'list?',
                                    trampCall(@_list_QUMARK)                                  ,
                                [
                                      trampCall(_sexp)
                                ]
                                             ))
                             ) then
                                  begin #makeLet
                                    ___lambda = lambda { |__car| 
                                        begin #makeLet
                                          ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652| 
                                              if ( 
                                                begin #makeLet
                                                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40666| 
                                                      if ( 
                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40666)
                                                       ) then
                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40666)
                                                      else
                                                          begin #makeLet
                                                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40667| 
                                                                if ( 
                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40667)
                                                                 ) then
                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40667)
                                                                else
                                                                  false
                                                                end
                                                            } ; ___lambda.call(
                                                                    trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                        trampCall(@_eqv_QUMARK)                                                                      ,
                                                                    [
                                                                        :"/nendo/core/quote"                                                                        ,
                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                    ]
                                                                                 ))
                                                                       )
                                                          end
                                                      end
                                                  } ; ___lambda.call(
                                                          trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                              trampCall(@_eqv_QUMARK)                                                            ,
                                                          [
                                                              :"quote"                                                              ,
                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                          ]
                                                                       ))
                                                             )
                                                end
                                               ) then
                                                    trampCall(_sexp)
                                              else
                                                  if ( 
                                                    begin #makeLet
                                                      ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40668| 
                                                          if ( 
                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40668)
                                                           ) then
                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40668)
                                                          else
                                                              begin #makeLet
                                                                ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40669| 
                                                                    if ( 
                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40669)
                                                                     ) then
                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40669)
                                                                    else
                                                                      false
                                                                    end
                                                                } ; ___lambda.call(
                                                                        trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                            trampCall(@_eqv_QUMARK)                                                                          ,
                                                                        [
                                                                            :"quote"                                                                            ,
                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                        ]
                                                                                     ))
                                                                           )
                                                              end
                                                          end
                                                      } ; ___lambda.call(
                                                              trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                  trampCall(@_eqv_QUMARK)                                                                ,
                                                              [
                                                                  :"quote"                                                                  ,
                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                              ]
                                                                           ))
                                                                 )
                                                    end
                                                   ) then
                                                        trampCall(_sexp)
                                                  else
                                                      if ( 
                                                        begin #makeLet
                                                          ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40670| 
                                                              if ( 
                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40670)
                                                               ) then
                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40670)
                                                              else
                                                                  begin #makeLet
                                                                    ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40671| 
                                                                        if ( 
                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40671)
                                                                         ) then
                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40671)
                                                                        else
                                                                          false
                                                                        end
                                                                    } ; ___lambda.call(
                                                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                trampCall(@_eqv_QUMARK)                                                                              ,
                                                                            [
                                                                                :"/nendo/core/macro"                                                                                ,
                                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                            ]
                                                                                         ))
                                                                               )
                                                                  end
                                                              end
                                                          } ; ___lambda.call(
                                                                  trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                      trampCall(@_eqv_QUMARK)                                                                    ,
                                                                  [
                                                                      :"macro"                                                                      ,
                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                  ]
                                                                               ))
                                                                     )
                                                        end
                                                       ) then
                                                            trampCall(_sexp)
                                                      else
                                                          if ( 
                                                            begin #makeLet
                                                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40672| 
                                                                  if ( 
                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40672)
                                                                   ) then
                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40672)
                                                                  else
                                                                      begin #makeLet
                                                                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40673| 
                                                                            if ( 
                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40673)
                                                                             ) then
                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40673)
                                                                            else
                                                                              false
                                                                            end
                                                                        } ; ___lambda.call(
                                                                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                    trampCall(@_eqv_QUMARK)                                                                                  ,
                                                                                [
                                                                                    :"/nendo/core/%syntax"                                                                                    ,
                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                ]
                                                                                             ))
                                                                                   )
                                                                      end
                                                                  end
                                                              } ; ___lambda.call(
                                                                      trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                          trampCall(@_eqv_QUMARK)                                                                        ,
                                                                      [
                                                                          :"%syntax"                                                                          ,
                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                      ]
                                                                                   ))
                                                                         )
                                                            end
                                                           ) then
                                                                trampCall(_sexp)
                                                          else
                                                              if ( 
                                                                begin #makeLet
                                                                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40674| 
                                                                      if ( 
                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40674)
                                                                       ) then
                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40674)
                                                                      else
                                                                          begin #makeLet
                                                                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40675| 
                                                                                if ( 
                                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40675)
                                                                                 ) then
                                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40675)
                                                                                else
                                                                                  false
                                                                                end
                                                                            } ; ___lambda.call(
                                                                                    trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                        trampCall(@_eqv_QUMARK)                                                                                      ,
                                                                                    [
                                                                                        :"/nendo/core/%guard"                                                                                        ,
                                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                    ]
                                                                                                 ))
                                                                                       )
                                                                          end
                                                                      end
                                                                  } ; ___lambda.call(
                                                                          trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                              trampCall(@_eqv_QUMARK)                                                                            ,
                                                                          [
                                                                              :"%guard"                                                                              ,
                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                          ]
                                                                                       ))
                                                                             )
                                                                end
                                                               ) then
                                                                    trampCall(_sexp)
                                                              else
                                                                  if ( 
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40676| 
                                                                          if ( 
                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40676)
                                                                           ) then
                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40676)
                                                                          else
                                                                              begin #makeLet
                                                                                ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40677| 
                                                                                    if ( 
                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40677)
                                                                                     ) then
                                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40677)
                                                                                    else
                                                                                      false
                                                                                    end
                                                                                } ; ___lambda.call(
                                                                                        trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                            trampCall(@_eqv_QUMARK)                                                                                          ,
                                                                                        [
                                                                                            :"/nendo/core/begin"                                                                                            ,
                                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                        ]
                                                                                                     ))
                                                                                           )
                                                                              end
                                                                          end
                                                                      } ; ___lambda.call(
                                                                              trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                  trampCall(@_eqv_QUMARK)                                                                                ,
                                                                              [
                                                                                  :"begin"                                                                                  ,
                                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                              ]
                                                                                           ))
                                                                                 )
                                                                    end
                                                                   ) then
                                                                          delayCall( '_cons',  'cons',
                                                                              trampCall(@_cons)                                                                            ,
                                                                          [
                                                                                trampCall(__car)                                                                              ,
                                                                                  trampCall( callProcedure(  '_setup_MIMARKproc_MIMARKbody',  'setup-proc-body',
                                                                                      trampCall(_setup_MIMARKproc_MIMARKbody)                                                                                    ,
                                                                                  [
                                                                                          _cdr(
                                                                                              trampCall(_sexp)
                                                                                          )
                                                                                  ]
                                                                                               ))
                                                                          ]
                                                                                       )
                                                                  else
                                                                      if ( 
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40678| 
                                                                              if ( 
                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40678)
                                                                               ) then
                                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40678)
                                                                              else
                                                                                  begin #makeLet
                                                                                    ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40679| 
                                                                                        if ( 
                                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40679)
                                                                                         ) then
                                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40679)
                                                                                        else
                                                                                          false
                                                                                        end
                                                                                    } ; ___lambda.call(
                                                                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                trampCall(@_eqv_QUMARK)                                                                                              ,
                                                                                            [
                                                                                                :"/nendo/core/lambda"                                                                                                ,
                                                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                            ]
                                                                                                         ))
                                                                                               )
                                                                                  end
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                      trampCall(@_eqv_QUMARK)                                                                                    ,
                                                                                  [
                                                                                      :"lambda"                                                                                      ,
                                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                  ]
                                                                                               ))
                                                                                     )
                                                                        end
                                                                       ) then
                                                                              delayCall( '_cons',  'cons',
                                                                                  trampCall(@_cons)                                                                                ,
                                                                              [
                                                                                    trampCall(__car)                                                                                  ,
                                                                                      _cons(
                                                                                            trampCall( self._second_METHOD(  'second',
                                                                                                trampCall(@_second)                                                                                              ,
                                                                                            [
                                                                                                  trampCall(_sexp)
                                                                                            ]
                                                                                                         ))                                                                                        ,
                                                                                            trampCall( callProcedure(  '_setup_MIMARKproc_MIMARKbody',  'setup-proc-body',
                                                                                                trampCall(_setup_MIMARKproc_MIMARKbody)                                                                                              ,
                                                                                            [
                                                                                                    trampCall( self._cddr_METHOD(  'cddr',
                                                                                                        trampCall(@_cddr)                                                                                                      ,
                                                                                                    [
                                                                                                          trampCall(_sexp)
                                                                                                    ]
                                                                                                                 ))
                                                                                            ]
                                                                                                         ))
                                                                                      )
                                                                              ]
                                                                                           )
                                                                      else
                                                                          if ( 
                                                                            begin #makeLet
                                                                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40680| 
                                                                                  if ( 
                                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40680)
                                                                                   ) then
                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40680)
                                                                                  else
                                                                                      begin #makeLet
                                                                                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40681| 
                                                                                            if ( 
                                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40681)
                                                                                             ) then
                                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40681)
                                                                                            else
                                                                                              false
                                                                                            end
                                                                                        } ; ___lambda.call(
                                                                                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                    trampCall(@_eqv_QUMARK)                                                                                                  ,
                                                                                                [
                                                                                                    :"/nendo/core/if"                                                                                                    ,
                                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                ]
                                                                                                             ))
                                                                                                   )
                                                                                      end
                                                                                  end
                                                                              } ; ___lambda.call(
                                                                                      trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                          trampCall(@_eqv_QUMARK)                                                                                        ,
                                                                                      [
                                                                                          :"if"                                                                                          ,
                                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                      ]
                                                                                                   ))
                                                                                         )
                                                                            end
                                                                           ) then
                                                                                begin #makeLet
                                                                                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40682| 
                                                                                      if ( 
                                                                                        begin #makeLet
                                                                                          ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40695| 
                                                                                              if ( 
                                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40695)
                                                                                               ) then
                                                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40695)
                                                                                              else
                                                                                                false
                                                                                              end
                                                                                          } ; ___lambda.call(
                                                                                                  trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                      trampCall(@_eqv_QUMARK)                                                                                                    ,
                                                                                                  [
                                                                                                      3                                                                                                      ,
                                                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40682)
                                                                                                  ]
                                                                                                               ))
                                                                                                     )
                                                                                        end
                                                                                       ) then
                                                                                              delayCall( '_cons',  'cons',
                                                                                                  trampCall(@_cons)                                                                                                ,
                                                                                              [
                                                                                                    trampCall(__car)                                                                                                  ,
                                                                                                      _cons(
                                                                                                            trampCall( self._second_METHOD(  'second',
                                                                                                                trampCall(@_second)                                                                                                              ,
                                                                                                            [
                                                                                                                  trampCall(_sexp)
                                                                                                            ]
                                                                                                                         ))                                                                                                        ,
                                                                                                            _cons(
                                                                                                                  trampCall( callProcedure(  '_setup_MIMARKproc',  'setup-proc',
                                                                                                                      trampCall(_setup_MIMARKproc)                                                                                                                    ,
                                                                                                                  [
                                                                                                                          trampCall( self._third_METHOD(  'third',
                                                                                                                              trampCall(@_third)                                                                                                                            ,
                                                                                                                          [
                                                                                                                                trampCall(_sexp)
                                                                                                                          ]
                                                                                                                                       ))
                                                                                                                  ]
                                                                                                                               ))                                                                                                              ,
                                                                                                              Cell.new()
                                                                                                            )
                                                                                                      )
                                                                                              ]
                                                                                                           )
                                                                                      else
                                                                                          if ( 
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40696| 
                                                                                                  if ( 
                                                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40696)
                                                                                                   ) then
                                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40696)
                                                                                                  else
                                                                                                    false
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                          trampCall(@_eqv_QUMARK)                                                                                                        ,
                                                                                                      [
                                                                                                          4                                                                                                          ,
                                                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40682)
                                                                                                      ]
                                                                                                                   ))
                                                                                                         )
                                                                                            end
                                                                                           ) then
                                                                                                  delayCall( '_cons',  'cons',
                                                                                                      trampCall(@_cons)                                                                                                    ,
                                                                                                  [
                                                                                                        trampCall(__car)                                                                                                      ,
                                                                                                          _cons(
                                                                                                                trampCall( self._second_METHOD(  'second',
                                                                                                                    trampCall(@_second)                                                                                                                  ,
                                                                                                                [
                                                                                                                      trampCall(_sexp)
                                                                                                                ]
                                                                                                                             ))                                                                                                            ,
                                                                                                                _cons(
                                                                                                                      trampCall( callProcedure(  '_setup_MIMARKproc',  'setup-proc',
                                                                                                                          trampCall(_setup_MIMARKproc)                                                                                                                        ,
                                                                                                                      [
                                                                                                                              trampCall( self._third_METHOD(  'third',
                                                                                                                                  trampCall(@_third)                                                                                                                                ,
                                                                                                                              [
                                                                                                                                    trampCall(_sexp)
                                                                                                                              ]
                                                                                                                                           ))
                                                                                                                      ]
                                                                                                                                   ))                                                                                                                  ,
                                                                                                                      _cons(
                                                                                                                            trampCall( callProcedure(  '_setup_MIMARKproc',  'setup-proc',
                                                                                                                                trampCall(_setup_MIMARKproc)                                                                                                                              ,
                                                                                                                            [
                                                                                                                                    trampCall( self._fourth_METHOD(  'fourth',
                                                                                                                                        trampCall(@_fourth)                                                                                                                                      ,
                                                                                                                                    [
                                                                                                                                          trampCall(_sexp)
                                                                                                                                    ]
                                                                                                                                                 ))
                                                                                                                            ]
                                                                                                                                         ))                                                                                                                        ,
                                                                                                                        Cell.new()
                                                                                                                      )
                                                                                                                )
                                                                                                          )
                                                                                                  ]
                                                                                                               )
                                                                                          else
                                                                                              Cell.new()
                                                                                          end
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          _length(
                                                                                              trampCall(_sexp)
                                                                                          )
                                                                                             )
                                                                                end
                                                                          else
                                                                              if ( 
                                                                                begin #makeLet
                                                                                  ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40683| 
                                                                                      if ( 
                                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40683)
                                                                                       ) then
                                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40683)
                                                                                      else
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40684| 
                                                                                                if ( 
                                                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40684)
                                                                                                 ) then
                                                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40684)
                                                                                                else
                                                                                                  false
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                    trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                        trampCall(@_eqv_QUMARK)                                                                                                      ,
                                                                                                    [
                                                                                                        :"/nendo/core/%let"                                                                                                        ,
                                                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                    ]
                                                                                                                 ))
                                                                                                       )
                                                                                          end
                                                                                      end
                                                                                  } ; ___lambda.call(
                                                                                          trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                              trampCall(@_eqv_QUMARK)                                                                                            ,
                                                                                          [
                                                                                              :"%let"                                                                                              ,
                                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                          ]
                                                                                                       ))
                                                                                             )
                                                                                end
                                                                               ) then
                                                                                      delayCall( '_cons',  'cons',
                                                                                          trampCall(@_cons)                                                                                        ,
                                                                                      [
                                                                                            trampCall(__car)                                                                                          ,
                                                                                              _cons(
                                                                                                    trampCall( callProcedure(  '_setup_MIMARKlet_MIMARKargs',  'setup-let-args',
                                                                                                        trampCall(_setup_MIMARKlet_MIMARKargs)                                                                                                      ,
                                                                                                    [
                                                                                                            trampCall( self._second_METHOD(  'second',
                                                                                                                trampCall(@_second)                                                                                                              ,
                                                                                                            [
                                                                                                                  trampCall(_sexp)
                                                                                                            ]
                                                                                                                         ))
                                                                                                    ]
                                                                                                                 ))                                                                                                ,
                                                                                                    trampCall( callProcedure(  '_setup_MIMARKproc_MIMARKbody',  'setup-proc-body',
                                                                                                        trampCall(_setup_MIMARKproc_MIMARKbody)                                                                                                      ,
                                                                                                    [
                                                                                                            trampCall( self._cddr_METHOD(  'cddr',
                                                                                                                trampCall(@_cddr)                                                                                                              ,
                                                                                                            [
                                                                                                                  trampCall(_sexp)
                                                                                                            ]
                                                                                                                         ))
                                                                                                    ]
                                                                                                                 ))
                                                                                              )
                                                                                      ]
                                                                                                   )
                                                                              else
                                                                                  if ( 
                                                                                    begin #makeLet
                                                                                      ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40685| 
                                                                                          if ( 
                                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40685)
                                                                                           ) then
                                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40685)
                                                                                          else
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40686| 
                                                                                                    if ( 
                                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40686)
                                                                                                     ) then
                                                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40686)
                                                                                                    else
                                                                                                      false
                                                                                                    end
                                                                                                } ; ___lambda.call(
                                                                                                        trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                            trampCall(@_eqv_QUMARK)                                                                                                          ,
                                                                                                        [
                                                                                                            :"/nendo/core/letrec"                                                                                                            ,
                                                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                        ]
                                                                                                                     ))
                                                                                                           )
                                                                                              end
                                                                                          end
                                                                                      } ; ___lambda.call(
                                                                                              trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                  trampCall(@_eqv_QUMARK)                                                                                                ,
                                                                                              [
                                                                                                  :"letrec"                                                                                                  ,
                                                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                              ]
                                                                                                           ))
                                                                                                 )
                                                                                    end
                                                                                   ) then
                                                                                          delayCall( '_cons',  'cons',
                                                                                              trampCall(@_cons)                                                                                            ,
                                                                                          [
                                                                                                trampCall(__car)                                                                                              ,
                                                                                                  _cons(
                                                                                                        trampCall( callProcedure(  '_setup_MIMARKlet_MIMARKargs',  'setup-let-args',
                                                                                                            trampCall(_setup_MIMARKlet_MIMARKargs)                                                                                                          ,
                                                                                                        [
                                                                                                                trampCall( self._second_METHOD(  'second',
                                                                                                                    trampCall(@_second)                                                                                                                  ,
                                                                                                                [
                                                                                                                      trampCall(_sexp)
                                                                                                                ]
                                                                                                                             ))
                                                                                                        ]
                                                                                                                     ))                                                                                                    ,
                                                                                                        trampCall( callProcedure(  '_setup_MIMARKproc_MIMARKbody',  'setup-proc-body',
                                                                                                            trampCall(_setup_MIMARKproc_MIMARKbody)                                                                                                          ,
                                                                                                        [
                                                                                                                trampCall( self._cddr_METHOD(  'cddr',
                                                                                                                    trampCall(@_cddr)                                                                                                                  ,
                                                                                                                [
                                                                                                                      trampCall(_sexp)
                                                                                                                ]
                                                                                                                             ))
                                                                                                        ]
                                                                                                                     ))
                                                                                                  )
                                                                                          ]
                                                                                                       )
                                                                                  else
                                                                                      if ( 
                                                                                        begin #makeLet
                                                                                          ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40687| 
                                                                                              if ( 
                                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40687)
                                                                                               ) then
                                                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40687)
                                                                                              else
                                                                                                  begin #makeLet
                                                                                                    ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40688| 
                                                                                                        if ( 
                                                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40688)
                                                                                                         ) then
                                                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40688)
                                                                                                        else
                                                                                                            begin #makeLet
                                                                                                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40689| 
                                                                                                                  if ( 
                                                                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40689)
                                                                                                                   ) then
                                                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40689)
                                                                                                                  else
                                                                                                                      begin #makeLet
                                                                                                                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40690| 
                                                                                                                            if ( 
                                                                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40690)
                                                                                                                             ) then
                                                                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40690)
                                                                                                                            else
                                                                                                                              false
                                                                                                                            end
                                                                                                                        } ; ___lambda.call(
                                                                                                                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                                                    trampCall(@_eqv_QUMARK)                                                                                                                                  ,
                                                                                                                                [
                                                                                                                                    :"/nendo/core/define-syntax"                                                                                                                                    ,
                                                                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                                                ]
                                                                                                                                             ))
                                                                                                                                   )
                                                                                                                      end
                                                                                                                  end
                                                                                                              } ; ___lambda.call(
                                                                                                                      trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                                          trampCall(@_eqv_QUMARK)                                                                                                                        ,
                                                                                                                      [
                                                                                                                          :"define-syntax"                                                                                                                          ,
                                                                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                                      ]
                                                                                                                                   ))
                                                                                                                         )
                                                                                                            end
                                                                                                        end
                                                                                                    } ; ___lambda.call(
                                                                                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                                trampCall(@_eqv_QUMARK)                                                                                                              ,
                                                                                                            [
                                                                                                                :"/nendo/core/define"                                                                                                                ,
                                                                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                            ]
                                                                                                                         ))
                                                                                                               )
                                                                                                  end
                                                                                              end
                                                                                          } ; ___lambda.call(
                                                                                                  trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                      trampCall(@_eqv_QUMARK)                                                                                                    ,
                                                                                                  [
                                                                                                      :"define"                                                                                                      ,
                                                                                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                  ]
                                                                                                               ))
                                                                                                     )
                                                                                        end
                                                                                       ) then
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |_val| 
                                                                                                    delayCall( '_cons',  'cons',
                                                                                                        trampCall(@_cons)                                                                                                      ,
                                                                                                    [
                                                                                                          trampCall(__car)                                                                                                        ,
                                                                                                            _cons(
                                                                                                                  trampCall( self._second_METHOD(  'second',
                                                                                                                      trampCall(@_second)                                                                                                                    ,
                                                                                                                  [
                                                                                                                        trampCall(_sexp)
                                                                                                                  ]
                                                                                                                               ))                                                                                                              ,
                                                                                                                  _cons(
                                                                                                                      if ( 
                                                                                                                        if ( 
                                                                                                                            _not(
                                                                                                                                  _eq_QUMARK(
                                                                                                                                    false                                                                                                                                    ,
                                                                                                                                        trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                                                            trampCall(@_list_QUMARK)                                                                                                                                          ,
                                                                                                                                        [
                                                                                                                                              trampCall(_val)
                                                                                                                                        ]
                                                                                                                                                     ))
                                                                                                                                  )
                                                                                                                            )
                                                                                                                         ) then
                                                                                                                            if ( 
                                                                                                                                _not(
                                                                                                                                      _eq_QUMARK(
                                                                                                                                        false                                                                                                                                        ,
                                                                                                                                            _not(
                                                                                                                                                  _null_QUMARK(
                                                                                                                                                      trampCall(_val)
                                                                                                                                                  )
                                                                                                                                            )
                                                                                                                                      )
                                                                                                                                )
                                                                                                                             ) then
                                                                                                                                  trampCall( callProcedure(  '_reserved_QUMARK',  'reserved?',
                                                                                                                                      trampCall(_reserved_QUMARK)                                                                                                                                    ,
                                                                                                                                  [
                                                                                                                                          _car(
                                                                                                                                              trampCall(_val)
                                                                                                                                          )
                                                                                                                                  ]
                                                                                                                                               ))
                                                                                                                            else
                                                                                                                              false
                                                                                                                            end
                                                                                                                        else
                                                                                                                          false
                                                                                                                        end
                                                                                                                       ) then
                                                                                                                            trampCall( self.__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark_METHOD(  '%setup-%tailcall-mark',
                                                                                                                                trampCall(@__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark)                                                                                                                              ,
                                                                                                                            [
                                                                                                                                  trampCall(_val)
                                                                                                                            ]
                                                                                                                                         ))
                                                                                                                      else
                                                                                                                          trampCall(_val)
                                                                                                                      end                                                                                                                    ,
                                                                                                                    Cell.new()
                                                                                                                  )
                                                                                                            )
                                                                                                    ]
                                                                                                                 )
                                                                                              } ; ___lambda.call(
                                                                                                      trampCall( self._third_METHOD(  'third',
                                                                                                          trampCall(@_third)                                                                                                        ,
                                                                                                      [
                                                                                                            trampCall(_sexp)
                                                                                                      ]
                                                                                                                   ))
                                                                                                         )
                                                                                            end
                                                                                      else
                                                                                          if ( 
                                                                                            begin #makeLet
                                                                                              ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40691| 
                                                                                                  if ( 
                                                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40691)
                                                                                                   ) then
                                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40691)
                                                                                                  else
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40692| 
                                                                                                            if ( 
                                                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40692)
                                                                                                             ) then
                                                                                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40692)
                                                                                                            else
                                                                                                              false
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                                    trampCall(@_eqv_QUMARK)                                                                                                                  ,
                                                                                                                [
                                                                                                                    :"/nendo/core/set!"                                                                                                                    ,
                                                                                                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                                ]
                                                                                                                             ))
                                                                                                                   )
                                                                                                      end
                                                                                                  end
                                                                                              } ; ___lambda.call(
                                                                                                      trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
                                                                                                          trampCall(@_eqv_QUMARK)                                                                                                        ,
                                                                                                      [
                                                                                                          :"set!"                                                                                                          ,
                                                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40652)
                                                                                                      ]
                                                                                                                   ))
                                                                                                         )
                                                                                            end
                                                                                           ) then
                                                                                                begin #makeLet
                                                                                                  ___lambda = lambda { |_val| 
                                                                                                        delayCall( '_cons',  'cons',
                                                                                                            trampCall(@_cons)                                                                                                          ,
                                                                                                        [
                                                                                                              trampCall(__car)                                                                                                            ,
                                                                                                                _cons(
                                                                                                                      trampCall( self._second_METHOD(  'second',
                                                                                                                          trampCall(@_second)                                                                                                                        ,
                                                                                                                      [
                                                                                                                            trampCall(_sexp)
                                                                                                                      ]
                                                                                                                                   ))                                                                                                                  ,
                                                                                                                      _cons(
                                                                                                                          if ( 
                                                                                                                            if ( 
                                                                                                                                _not(
                                                                                                                                      _eq_QUMARK(
                                                                                                                                        false                                                                                                                                        ,
                                                                                                                                            trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                                                                trampCall(@_list_QUMARK)                                                                                                                                              ,
                                                                                                                                            [
                                                                                                                                                  trampCall(_val)
                                                                                                                                            ]
                                                                                                                                                         ))
                                                                                                                                      )
                                                                                                                                )
                                                                                                                             ) then
                                                                                                                                if ( 
                                                                                                                                    _not(
                                                                                                                                          _eq_QUMARK(
                                                                                                                                            false                                                                                                                                            ,
                                                                                                                                                _not(
                                                                                                                                                      _null_QUMARK(
                                                                                                                                                          trampCall(_val)
                                                                                                                                                      )
                                                                                                                                                )
                                                                                                                                          )
                                                                                                                                    )
                                                                                                                                 ) then
                                                                                                                                      trampCall( callProcedure(  '_reserved_QUMARK',  'reserved?',
                                                                                                                                          trampCall(_reserved_QUMARK)                                                                                                                                        ,
                                                                                                                                      [
                                                                                                                                              _car(
                                                                                                                                                  trampCall(_val)
                                                                                                                                              )
                                                                                                                                      ]
                                                                                                                                                   ))
                                                                                                                                else
                                                                                                                                  false
                                                                                                                                end
                                                                                                                            else
                                                                                                                              false
                                                                                                                            end
                                                                                                                           ) then
                                                                                                                                trampCall( self.__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark_METHOD(  '%setup-%tailcall-mark',
                                                                                                                                    trampCall(@__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark)                                                                                                                                  ,
                                                                                                                                [
                                                                                                                                      trampCall(_val)
                                                                                                                                ]
                                                                                                                                             ))
                                                                                                                          else
                                                                                                                              trampCall(_val)
                                                                                                                          end                                                                                                                        ,
                                                                                                                        Cell.new()
                                                                                                                      )
                                                                                                                )
                                                                                                        ]
                                                                                                                     )
                                                                                                  } ; ___lambda.call(
                                                                                                          trampCall( self._third_METHOD(  'third',
                                                                                                              trampCall(@_third)                                                                                                            ,
                                                                                                          [
                                                                                                                trampCall(_sexp)
                                                                                                          ]
                                                                                                                       ))
                                                                                                             )
                                                                                                end
                                                                                          else
                                                                                              if ( 
                                                                                              true
                                                                                               ) then
                                                                                                    if ( 
                                                                                                        _symbol_QUMARK(
                                                                                                              _car(
                                                                                                                  trampCall(_sexp)
                                                                                                              )
                                                                                                        )
                                                                                                     ) then
                                                                                                          delayCall( '_cons',  'cons',
                                                                                                              trampCall(@_cons)                                                                                                            ,
                                                                                                          [
                                                                                                              :"%tailcall"                                                                                                              ,
                                                                                                                  _cons(
                                                                                                                      trampCall(_sexp)                                                                                                                    ,
                                                                                                                    Cell.new()
                                                                                                                  )
                                                                                                          ]
                                                                                                                       )
                                                                                                    else
                                                                                                        trampCall(_sexp)
                                                                                                    end
                                                                                              else
                                                                                                  Cell.new()
                                                                                              end
                                                                                          end
                                                                                      end
                                                                                  end
                                                                              end
                                                                          end
                                                                      end
                                                                  end
                                                              end
                                                          end
                                                      end
                                                  end
                                              end
                                          } ; ___lambda.call(
                                                trampCall(__car)
                                                     )
                                        end
                                    } ; ___lambda.call(
                                            _car(
                                                trampCall(_sexp)
                                            )
                                               )
                                  end
                            else
                                if ( 
                                true
                                 ) then
                                      trampCall(_sexp)
                                else
                                    Cell.new()
                                end
                            end
                        end
                    end
                } ; ___lambda.call(
                nil,nil,nil,nil
                           )
              end
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__PAMARKcompile_MIMARKphase_MIMARKfunctions_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKcompile_MIMARKphase_MIMARKfunctions', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKcompile_MIMARKphase_MIMARKfunctions'] = self.method( :__PAMARKcompile_MIMARKphase_MIMARKfunctions_METHOD )
    @__PAMARKcompile_MIMARKphase_MIMARKfunctions = 
    trampCall(
            trampCall( self._list_METHOD(  'list',
                trampCall(@_list)              ,
            [
                  trampCall(@__PAMARKsetup_MIMARK_PAMARKtailcall_MIMARKmark)
            ]
                         ))
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._identifier_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_identifier_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_identifier_QUMARK'] = self.method( :_identifier_QUMARK_METHOD )
    @_identifier_QUMARK = 
    trampCall(
          Proc.new { |_x| 
                delayCall( '_symbol_QUMARK',  'symbol?',
                    trampCall(@_symbol_QUMARK)                  ,
                [
                      trampCall(_x)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._identifier_EQMARK_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_identifier_EQMARK_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_identifier_EQMARK_QUMARK'] = self.method( :_identifier_EQMARK_QUMARK_METHOD )
    @_identifier_EQMARK_QUMARK = 
    trampCall(
          Proc.new { |_use_MIMARKenv_MIMARKx,_x,_use_MIMARKenv_MIMARKy,_y| 
                delayCall( '_eq_QUMARK',  'eq?',
                    trampCall(@_eq_QUMARK)                  ,
                [
                      trampCall(_x)                    ,
                      trampCall(_y)
                ]
                             )
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._identifier_MIMARK_GTMARKsymbol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_identifier_MIMARK_GTMARKsymbol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_identifier_MIMARK_GTMARKsymbol'] = self.method( :_identifier_MIMARK_GTMARKsymbol_METHOD )
    @_identifier_MIMARK_GTMARKsymbol = 
    trampCall(
          Proc.new { |_id| 
              if ( 
                  _not(
                        _symbol_QUMARK(
                            trampCall(_id)
                        )
                  )
               ) then
                    begin raise RuntimeError, 
                    "Error: identifier->symbol requires only symbol"
                    rescue => __e 
                      __e.set_backtrace( ["./lib/nendo/init.nnd:1480"] + __e.backtrace )
                      raise __e
                    end 
              end
              trampCall(_id)
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._er_MIMARKmacro_MIMARKtransformer_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_er_MIMARKmacro_MIMARKtransformer', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_er_MIMARKmacro_MIMARKtransformer'] = self.method( :_er_MIMARKmacro_MIMARKtransformer_METHOD )
    @_er_MIMARKmacro_MIMARKtransformer = 
    trampCall(
          Proc.new { |_f| 
              LispSyntax.new { |_expr,_use_MIMARKenv,_mac_MIMARKenv| 
                  begin #execFunc
                      def self._expander_MIMARKmain_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_expander_MIMARKmain', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                      @global_lisp_binding['_expander_MIMARKmain'] = self.method( :_expander_MIMARKmain_METHOD )
                    @_expander_MIMARKmain = 
                    trampCall(
                          Proc.new { |_rename,_compare| 
                                trampCall( callProcedure(  '_f',  'f',
                                    trampCall(_f)                                  ,
                                [
                                      trampCall(_expr)                                    ,
                                      trampCall(_rename)                                    ,
                                      trampCall(_compare)
                                ]
                                             ))
                          }
                    )
                  end
                  begin #execFunc
                      def self.__rename_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__rename', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                      @global_lisp_binding['__rename'] = self.method( :__rename_METHOD )
                    @__rename = 
                    trampCall(
                          Proc.new { |_renames| 
                              Proc.new { |_identifier| 
                                  begin #makeLet
                                    ___lambda = lambda { |_cell| 
                                        if ( 
                                          trampCall(_cell)
                                         ) then
                                              _cdr(
                                                  trampCall(_cell)
                                              )
                                        else
                                            trampCall( callProcedure( nil, 'anonymouse', 
                                                Proc.new { |_name| 
                                                    begin #execFunc
                                                      
                                                      _renames = 
                                                      trampCall(
                                                              _cons(
                                                                    _cons(
                                                                        trampCall(_identifier)                                                                      ,
                                                                        trampCall(_name)
                                                                    )                                                                ,
                                                                  trampCall(_renames)
                                                              )
                                                      )
                                                    end
                                                    trampCall(_name)
                                                }                                              ,
                                            [
                                                    trampCall( self._make_MIMARKsyntactic_MIMARKclosure_METHOD(  'make-syntactic-closure',
                                                        trampCall(@_make_MIMARKsyntactic_MIMARKclosure)                                                      ,
                                                    [
                                                          trampCall(_mac_MIMARKenv)                                                        ,
                                                        Cell.new()                                                        ,
                                                          trampCall(_identifier)
                                                    ]
                                                                 ))
                                            ]
                                                      ))
                                        end
                                    } ; ___lambda.call(
                                            trampCall( self._assq_METHOD(  'assq',
                                                trampCall(@_assq)                                              ,
                                            [
                                                  trampCall(_identifier)                                                ,
                                                  trampCall(_renames)
                                            ]
                                                         ))
                                               )
                                  end
                              }
                          }
                    )
                  end
                  begin #execFunc
                      def self.__compare_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__compare', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                      @global_lisp_binding['__compare'] = self.method( :__compare_METHOD )
                    @__compare = 
                    trampCall(
                          Proc.new { |_x,_y| 
                                trampCall( self._identifier_EQMARK_QUMARK_METHOD(  'identifier=?',
                                    trampCall(@_identifier_EQMARK_QUMARK)                                  ,
                                [
                                      trampCall(_use_MIMARKenv)                                    ,
                                      trampCall(_x)                                    ,
                                      trampCall(_use_MIMARKenv)                                    ,
                                      trampCall(_y)
                                ]
                                             ))
                          }
                    )
                  end
                    trampCall( self._expander_MIMARKmain_METHOD(  'expander-main',
                        trampCall(@_expander_MIMARKmain)                      ,
                    [
                            trampCall( self.__rename_METHOD(  '_rename',
                                trampCall(@__rename)                              ,
                            [
                                Cell.new()
                            ]
                                         ))                        ,
                          trampCall(@__compare)
                    ]
                                 ))
              }
          }
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self.__DOTDOTDOT_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__DOTDOTDOT', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__DOTDOTDOT'] = self.method( :__DOTDOTDOT_METHOD )
    @__DOTDOTDOT = 
    trampCall(
        :"..."
    )
  end
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._syntax_MIMARKrules_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_syntax_MIMARKrules', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_syntax_MIMARKrules'] = self.method( :_syntax_MIMARKrules_METHOD )
    @_syntax_MIMARKrules = 
    trampCall(
            trampCall( self._er_MIMARKmacro_MIMARKtransformer_METHOD(  'er-macro-transformer',
                trampCall(@_er_MIMARKmacro_MIMARKtransformer)              ,
            [
                  Proc.new { |_expr,_rename,_compare| 
                      if ( 
                          _not(
                                _pair_QUMARK(
                                      _cdr(
                                          trampCall(_expr)
                                      )
                                )
                          )
                       ) then
                            begin raise RuntimeError, 
                              "syntax-rules requires: (syntax-rules (ellipses...) ..patterns..) form (1). but got: " ' ' + 
                              _write_MIMARKto_MIMARKstring(
                                trampCall(_expr)
                              )
                            rescue => __e 
                              __e.set_backtrace( ["./lib/nendo/init.nnd:1513"] + __e.backtrace )
                              raise __e
                            end 
                      end
                      if ( 
                          _not(
                              begin #makeLet
                                ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40697| 
                                    if ( 
                                      trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40697)
                                     ) then
                                        trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40697)
                                    else
                                        begin #makeLet
                                          ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40698| 
                                              if ( 
                                                trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40698)
                                               ) then
                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40698)
                                              else
                                                false
                                              end
                                          } ; ___lambda.call(
                                                  trampCall( self._list_QUMARK_METHOD(  'list?',
                                                      trampCall(@_list_QUMARK)                                                    ,
                                                  [
                                                          trampCall( self._cadr_METHOD(  'cadr',
                                                              trampCall(@_cadr)                                                            ,
                                                          [
                                                                trampCall(_expr)
                                                          ]
                                                                       ))
                                                  ]
                                                               ))
                                                     )
                                        end
                                    end
                                } ; ___lambda.call(
                                        _null_QUMARK(
                                              trampCall( self._cadr_METHOD(  'cadr',
                                                  trampCall(@_cadr)                                                ,
                                              [
                                                    trampCall(_expr)
                                              ]
                                                           ))
                                        )
                                           )
                              end
                          )
                       ) then
                            begin raise RuntimeError, 
                              "syntax-rules requires: (syntax-rules (ellipses...) ..patterns..) form (2). but got: " ' ' + 
                              _write_MIMARKto_MIMARKstring(
                                trampCall(_expr)
                              )
                            rescue => __e 
                              __e.set_backtrace( ["./lib/nendo/init.nnd:1515"] + __e.backtrace )
                              raise __e
                            end 
                      end
                      if ( 
                          ( 
                          3                          >
                              _length(
                                  trampCall(_expr)
                              )
                           ) 
                       ) then
                            begin raise RuntimeError, 
                              "syntax-rules requires: (syntax-rules (ellipses...) ..patterns..) form (3). but got: " ' ' + 
                              _write_MIMARKto_MIMARKstring(
                                trampCall(_expr)
                              )
                            rescue => __e 
                              __e.set_backtrace( ["./lib/nendo/init.nnd:1517"] + __e.backtrace )
                              raise __e
                            end 
                      end
                      begin #makeLet
                        ___lambda = lambda { |_ellipse_MIMARKspecified_QUMARK,_count,__er_MIMARKmacro_MIMARKtransformer,__lambda,__let,__begin,__if,__and,__or,__eq_QUMARK,__equal_QUMARK,__car,__cdr,__cons,__pair_QUMARK,__null_QUMARK,__expr,__rename,__compare,__quote,__apply,__append,__map,__vector_QUMARK,__list_QUMARK,__lp,__reverse,__len,__length,___MIMARK,___GTMARK_EQMARK,__error,__ls,__res,__i,__vector_MIMARK_GTMARKlist,__list_MIMARK_GTMARKvector,__list| 
                            begin #execFunc
                                def self._ellipse_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ellipse', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_ellipse'] = self.method( :_ellipse_METHOD )
                              @_ellipse = 
                              trampCall(
                                      trampCall( callProcedure(  '_rename',  'rename',
                                          trampCall(_rename)                                        ,
                                      [
                                            if ( 
                                              trampCall(_ellipse_MIMARKspecified_QUMARK)
                                             ) then
                                                  trampCall( self._cadr_METHOD(  'cadr',
                                                      trampCall(@_cadr)                                                    ,
                                                  [
                                                        trampCall(_expr)
                                                  ]
                                                               ))
                                            else
                                              :"..."
                                            end
                                      ]
                                                   ))
                              )
                            end
                            begin #execFunc
                                def self._lits_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_lits', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_lits'] = self.method( :_lits_METHOD )
                              @_lits = 
                              trampCall(
                                    if ( 
                                      trampCall(_ellipse_MIMARKspecified_QUMARK)
                                     ) then
                                          trampCall( self._caddr_METHOD(  'caddr',
                                              trampCall(@_caddr)                                            ,
                                          [
                                                trampCall(_expr)
                                          ]
                                                       ))
                                    else
                                          trampCall( self._cadr_METHOD(  'cadr',
                                              trampCall(@_cadr)                                            ,
                                          [
                                                trampCall(_expr)
                                          ]
                                                       ))
                                    end
                              )
                            end
                            begin #execFunc
                                def self._forms_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_forms', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_forms'] = self.method( :_forms_METHOD )
                              @_forms = 
                              trampCall(
                                    if ( 
                                      trampCall(_ellipse_MIMARKspecified_QUMARK)
                                     ) then
                                          trampCall( self._cdddr_METHOD(  'cdddr',
                                              trampCall(@_cdddr)                                            ,
                                          [
                                                trampCall(_expr)
                                          ]
                                                       ))
                                    else
                                          trampCall( self._cddr_METHOD(  'cddr',
                                              trampCall(@_cddr)                                            ,
                                          [
                                                trampCall(_expr)
                                          ]
                                                       ))
                                    end
                              )
                            end
                            begin #execFunc
                                def self._next_MIMARKv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_next_MIMARKv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_next_MIMARKv'] = self.method( :_next_MIMARKv_METHOD )
                              @_next_MIMARKv = 
                              trampCall(
                                    Proc.new { || 
                                        begin #execFunc
                                          
                                          _count = 
                                          trampCall(
                                                  ( 
                                                    trampCall(_count)                                                  +
                                                  1
                                                   ) 
                                          )
                                        end
                                          trampCall( callProcedure(  '_rename',  'rename',
                                              trampCall(_rename)                                            ,
                                          [
                                                  _string_MIMARK_GTMARKsymbol(
                                                        trampCall( self._string_MIMARKappend_METHOD(  'string-append',
                                                            trampCall(@_string_MIMARKappend)                                                          ,
                                                        [
                                                            "v__"                                                            ,
                                                                trampCall( self._number_MIMARK_GTMARKstring_METHOD(  'number->string',
                                                                    trampCall(@_number_MIMARK_GTMARKstring)                                                                  ,
                                                                [
                                                                      trampCall(_count)
                                                                ]
                                                                             ))
                                                        ]
                                                                     ))
                                                  )
                                          ]
                                                       ))
                                    }
                              )
                            end
                            begin #execFunc
                                def self._expand_MIMARKpattern_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_expand_MIMARKpattern', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_expand_MIMARKpattern'] = self.method( :_expand_MIMARKpattern_METHOD )
                              @_expand_MIMARKpattern = 
                              trampCall(
                                    Proc.new { |_pat,_tmpl| 
                                        begin #makeLetrec
                                          ___lambda = lambda { |_lp| 
                                              _lp                                               = 
                                                Proc.new { |_p,_x,_dim,_vars,_k| 
                                                    begin #makeLet
                                                      ___lambda = lambda { |_v| 
                                                            trampCall( self._list_METHOD(  'list',
                                                                trampCall(@_list)                                                              ,
                                                            [
                                                                  trampCall(__let)                                                                ,
                                                                    trampCall( self._list_METHOD(  'list',
                                                                        trampCall(@_list)                                                                      ,
                                                                    [
                                                                            trampCall( self._list_METHOD(  'list',
                                                                                trampCall(@_list)                                                                              ,
                                                                            [
                                                                                  trampCall(_v)                                                                                ,
                                                                                  trampCall(_x)
                                                                            ]
                                                                                         ))
                                                                    ]
                                                                                 ))                                                                ,
                                                                  if ( 
                                                                      trampCall( self._identifier_QUMARK_METHOD(  'identifier?',
                                                                          trampCall(@_identifier_QUMARK)                                                                        ,
                                                                      [
                                                                            trampCall(_p)
                                                                      ]
                                                                                   ))
                                                                   ) then
                                                                        if ( 
                                                                            trampCall( self._find_METHOD(  'find',
                                                                                trampCall(@_find)                                                                              ,
                                                                            [
                                                                                  Proc.new { |_l| 
                                                                                        trampCall( callProcedure(  '_compare',  'compare',
                                                                                            trampCall(_compare)                                                                                          ,
                                                                                        [
                                                                                              trampCall(_p)                                                                                            ,
                                                                                              trampCall(_l)
                                                                                        ]
                                                                                                     ))
                                                                                  }                                                                                ,
                                                                                  trampCall(@_lits)
                                                                            ]
                                                                                         ))
                                                                         ) then
                                                                              trampCall( self._list_METHOD(  'list',
                                                                                  trampCall(@_list)                                                                                ,
                                                                              [
                                                                                    trampCall(__and)                                                                                  ,
                                                                                      trampCall( self._list_METHOD(  'list',
                                                                                          trampCall(@_list)                                                                                        ,
                                                                                      [
                                                                                            trampCall(__compare)                                                                                          ,
                                                                                            trampCall(_v)                                                                                          ,
                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                  trampCall(@_list)                                                                                                ,
                                                                                              [
                                                                                                    trampCall(__quote)                                                                                                  ,
                                                                                                    trampCall(_p)
                                                                                              ]
                                                                                                           ))
                                                                                      ]
                                                                                                   ))                                                                                  ,
                                                                                      trampCall( callProcedure(  '_k',  'k',
                                                                                          trampCall(_k)                                                                                        ,
                                                                                      [
                                                                                            trampCall(_vars)
                                                                                      ]
                                                                                                   ))
                                                                              ]
                                                                                           ))
                                                                        else
                                                                              trampCall( self._list_METHOD(  'list',
                                                                                  trampCall(@_list)                                                                                ,
                                                                              [
                                                                                    trampCall(__let)                                                                                  ,
                                                                                      trampCall( self._list_METHOD(  'list',
                                                                                          trampCall(@_list)                                                                                        ,
                                                                                      [
                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                  trampCall(@_list)                                                                                                ,
                                                                                              [
                                                                                                    trampCall(_p)                                                                                                  ,
                                                                                                    trampCall(_v)
                                                                                              ]
                                                                                                           ))
                                                                                      ]
                                                                                                   ))                                                                                  ,
                                                                                      trampCall( callProcedure(  '_k',  'k',
                                                                                          trampCall(_k)                                                                                        ,
                                                                                      [
                                                                                              _cons(
                                                                                                    _cons(
                                                                                                        trampCall(_p)                                                                                                      ,
                                                                                                        trampCall(_dim)
                                                                                                    )                                                                                                ,
                                                                                                  trampCall(_vars)
                                                                                              )
                                                                                      ]
                                                                                                   ))
                                                                              ]
                                                                                           ))
                                                                        end
                                                                  else
                                                                      if ( 
                                                                          trampCall( self._ellipse_QUMARK_METHOD(  'ellipse?',
                                                                              trampCall(@_ellipse_QUMARK)                                                                            ,
                                                                          [
                                                                                trampCall(_p)
                                                                          ]
                                                                                       ))
                                                                       ) then
                                                                            if ( 
                                                                                _not(
                                                                                      _null_QUMARK(
                                                                                            trampCall( self._cddr_METHOD(  'cddr',
                                                                                                trampCall(@_cddr)                                                                                              ,
                                                                                            [
                                                                                                  trampCall(_p)
                                                                                            ]
                                                                                                         ))
                                                                                      )
                                                                                )
                                                                             ) then
                                                                                  if ( 
                                                                                      _not(
                                                                                            trampCall( self._list_QUMARK_METHOD(  'list?',
                                                                                                trampCall(@_list_QUMARK)                                                                                              ,
                                                                                            [
                                                                                                    trampCall( self._cddr_METHOD(  'cddr',
                                                                                                        trampCall(@_cddr)                                                                                                      ,
                                                                                                    [
                                                                                                          trampCall(_p)
                                                                                                    ]
                                                                                                                 ))
                                                                                            ]
                                                                                                         ))
                                                                                      )
                                                                                   ) then
                                                                                        begin raise RuntimeError, 
                                                                                          "dotted ellipse" ' ' + 
                                                                                          _write_MIMARKto_MIMARKstring(
                                                                                            trampCall(_p)
                                                                                          )
                                                                                        rescue => __e 
                                                                                          __e.set_backtrace( ["./lib/nendo/init.nnd:1566"] + __e.backtrace )
                                                                                          raise __e
                                                                                        end 
                                                                                  else
                                                                                      if ( 
                                                                                          trampCall( self._find_METHOD(  'find',
                                                                                              trampCall(@_find)                                                                                            ,
                                                                                          [
                                                                                                Proc.new { |_x| 
                                                                                                    if ( 
                                                                                                        _not(
                                                                                                              _eq_QUMARK(
                                                                                                                false                                                                                                                ,
                                                                                                                    trampCall( self._identifier_QUMARK_METHOD(  'identifier?',
                                                                                                                        trampCall(@_identifier_QUMARK)                                                                                                                      ,
                                                                                                                    [
                                                                                                                          trampCall(_x)
                                                                                                                    ]
                                                                                                                                 ))
                                                                                                              )
                                                                                                        )
                                                                                                     ) then
                                                                                                          trampCall( callProcedure(  '_compare',  'compare',
                                                                                                              trampCall(_compare)                                                                                                            ,
                                                                                                          [
                                                                                                                trampCall(_x)                                                                                                              ,
                                                                                                                trampCall(@_ellipse)
                                                                                                          ]
                                                                                                                       ))
                                                                                                    else
                                                                                                      false
                                                                                                    end
                                                                                                }                                                                                              ,
                                                                                                  trampCall( self._cddr_METHOD(  'cddr',
                                                                                                      trampCall(@_cddr)                                                                                                    ,
                                                                                                  [
                                                                                                        trampCall(_p)
                                                                                                  ]
                                                                                                               ))
                                                                                          ]
                                                                                                       ))
                                                                                       ) then
                                                                                            begin raise RuntimeError, 
                                                                                              "multiple ellipses" ' ' + 
                                                                                              _write_MIMARKto_MIMARKstring(
                                                                                                trampCall(_p)
                                                                                              )
                                                                                            rescue => __e 
                                                                                              __e.set_backtrace( ["./lib/nendo/init.nnd:1569"] + __e.backtrace )
                                                                                              raise __e
                                                                                            end 
                                                                                      else
                                                                                          if ( 
                                                                                          true
                                                                                           ) then
                                                                                                begin #makeLet
                                                                                                  ___lambda = lambda { |_len| 
                                                                                                        _cons(
                                                                                                            trampCall(__let)                                                                                                          ,
                                                                                                              _cons(
                                                                                                                    _cons(
                                                                                                                          _cons(
                                                                                                                              trampCall(__len)                                                                                                                            ,
                                                                                                                                _cons(
                                                                                                                                      _cons(
                                                                                                                                          trampCall(__length)                                                                                                                                        ,
                                                                                                                                            _cons(
                                                                                                                                                trampCall(_v)                                                                                                                                              ,
                                                                                                                                              Cell.new()
                                                                                                                                            )
                                                                                                                                      )                                                                                                                                  ,
                                                                                                                                  Cell.new()
                                                                                                                                )
                                                                                                                          )                                                                                                                      ,
                                                                                                                      Cell.new()
                                                                                                                    )                                                                                                                ,
                                                                                                                    _cons(
                                                                                                                          _cons(
                                                                                                                              trampCall(__and)                                                                                                                            ,
                                                                                                                                _cons(
                                                                                                                                      _cons(
                                                                                                                                          trampCall(___GTMARK_EQMARK)                                                                                                                                        ,
                                                                                                                                            _cons(
                                                                                                                                                trampCall(__len)                                                                                                                                              ,
                                                                                                                                                  _cons(
                                                                                                                                                      trampCall(_len)                                                                                                                                                    ,
                                                                                                                                                    Cell.new()
                                                                                                                                                  )
                                                                                                                                            )
                                                                                                                                      )                                                                                                                                  ,
                                                                                                                                      _cons(
                                                                                                                                            _cons(
                                                                                                                                                trampCall(__let)                                                                                                                                              ,
                                                                                                                                                  _cons(
                                                                                                                                                      trampCall(__lp)                                                                                                                                                    ,
                                                                                                                                                        _cons(
                                                                                                                                                              _cons(
                                                                                                                                                                    _cons(
                                                                                                                                                                        trampCall(__ls)                                                                                                                                                                      ,
                                                                                                                                                                          _cons(
                                                                                                                                                                              trampCall(_v)                                                                                                                                                                            ,
                                                                                                                                                                            Cell.new()
                                                                                                                                                                          )
                                                                                                                                                                    )                                                                                                                                                                ,
                                                                                                                                                                    _cons(
                                                                                                                                                                          _cons(
                                                                                                                                                                              trampCall(__i)                                                                                                                                                                            ,
                                                                                                                                                                                _cons(
                                                                                                                                                                                      _cons(
                                                                                                                                                                                          trampCall(___MIMARK)                                                                                                                                                                                        ,
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                trampCall(__len)                                                                                                                                                                                              ,
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                      trampCall(_len)                                                                                                                                                                                                    ,
                                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                                  )
                                                                                                                                                                                            )
                                                                                                                                                                                      )                                                                                                                                                                                  ,
                                                                                                                                                                                  Cell.new()
                                                                                                                                                                                )
                                                                                                                                                                          )                                                                                                                                                                      ,
                                                                                                                                                                          _cons(
                                                                                                                                                                                _cons(
                                                                                                                                                                                    trampCall(__res)                                                                                                                                                                                  ,
                                                                                                                                                                                      _cons(
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                trampCall(__quote)                                                                                                                                                                                              ,
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                    Cell.new()                                                                                                                                                                                                    ,
                                                                                                                                                                                                    Cell.new()
                                                                                                                                                                                                  )
                                                                                                                                                                                            )                                                                                                                                                                                        ,
                                                                                                                                                                                        Cell.new()
                                                                                                                                                                                      )
                                                                                                                                                                                )                                                                                                                                                                            ,
                                                                                                                                                                            Cell.new()
                                                                                                                                                                          )
                                                                                                                                                                    )
                                                                                                                                                              )                                                                                                                                                          ,
                                                                                                                                                              _cons(
                                                                                                                                                                    _cons(
                                                                                                                                                                        trampCall(__if)                                                                                                                                                                      ,
                                                                                                                                                                          _cons(
                                                                                                                                                                                _cons(
                                                                                                                                                                                    trampCall(___GTMARK_EQMARK)                                                                                                                                                                                  ,
                                                                                                                                                                                      _cons(
                                                                                                                                                                                        0                                                                                                                                                                                        ,
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                trampCall(__i)                                                                                                                                                                                              ,
                                                                                                                                                                                              Cell.new()
                                                                                                                                                                                            )
                                                                                                                                                                                      )
                                                                                                                                                                                )                                                                                                                                                                            ,
                                                                                                                                                                                _cons(
                                                                                                                                                                                      trampCall( callProcedure(  '_lp',  'lp',
                                                                                                                                                                                          trampCall(_lp)                                                                                                                                                                                        ,
                                                                                                                                                                                      [
                                                                                                                                                                                              trampCall( self._append_METHOD(  'append',
                                                                                                                                                                                                  trampCall(@_append)                                                                                                                                                                                                ,
                                                                                                                                                                                              [
                                                                                                                                                                                                      _cdr(
                                                                                                                                                                                                            _cdr(
                                                                                                                                                                                                                trampCall(_p)
                                                                                                                                                                                                            )
                                                                                                                                                                                                      )                                                                                                                                                                                                  ,
                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                            _car(
                                                                                                                                                                                                                trampCall(_p)
                                                                                                                                                                                                            )                                                                                                                                                                                                        ,
                                                                                                                                                                                                            _cons(
                                                                                                                                                                                                                  _car(
                                                                                                                                                                                                                        _cdr(
                                                                                                                                                                                                                            trampCall(_p)
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                  )                                                                                                                                                                                                              ,
                                                                                                                                                                                                              Cell.new()
                                                                                                                                                                                                            )
                                                                                                                                                                                                      )
                                                                                                                                                                                              ]
                                                                                                                                                                                                           ))                                                                                                                                                                                          ,
                                                                                                                                                                                              _cons(
                                                                                                                                                                                                  trampCall(__append)                                                                                                                                                                                                ,
                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                        trampCall(__ls)                                                                                                                                                                                                      ,
                                                                                                                                                                                                          _cons(
                                                                                                                                                                                                                _cons(
                                                                                                                                                                                                                    trampCall(__reverse)                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                                          trampCall(__res)                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                        Cell.new()
                                                                                                                                                                                                                      )
                                                                                                                                                                                                                )                                                                                                                                                                                                            ,
                                                                                                                                                                                                            Cell.new()
                                                                                                                                                                                                          )
                                                                                                                                                                                                    )
                                                                                                                                                                                              )                                                                                                                                                                                          ,
                                                                                                                                                                                            trampCall(_dim)                                                                                                                                                                                          ,
                                                                                                                                                                                            trampCall(_vars)                                                                                                                                                                                          ,
                                                                                                                                                                                            trampCall(_k)
                                                                                                                                                                                      ]
                                                                                                                                                                                                   ))                                                                                                                                                                                  ,
                                                                                                                                                                                      _cons(
                                                                                                                                                                                            _cons(
                                                                                                                                                                                                trampCall(__lp)                                                                                                                                                                                              ,
                                                                                                                                                                                                  _cons(
                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                            trampCall(__cdr)                                                                                                                                                                                                          ,
                                                                                                                                                                                                              _cons(
                                                                                                                                                                                                                  trampCall(__ls)                                                                                                                                                                                                                ,
                                                                                                                                                                                                                Cell.new()
                                                                                                                                                                                                              )
                                                                                                                                                                                                        )                                                                                                                                                                                                    ,
                                                                                                                                                                                                        _cons(
                                                                                                                                                                                                              _cons(
                                                                                                                                                                                                                  trampCall(___MIMARK)                                                                                                                                                                                                                ,
                                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                                        trampCall(__i)                                                                                                                                                                                                                      ,
                                                                                                                                                                                                                          _cons(
                                                                                                                                                                                                                            1                                                                                                                                                                                                                            ,
                                                                                                                                                                                                                            Cell.new()
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                              )                                                                                                                                                                                                          ,
                                                                                                                                                                                                              _cons(
                                                                                                                                                                                                                    _cons(
                                                                                                                                                                                                                        trampCall(__cons)                                                                                                                                                                                                                      ,
                                                                                                                                                                                                                          _cons(
                                                                                                                                                                                                                                _cons(
                                                                                                                                                                                                                                    trampCall(__car)                                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                                      _cons(
                                                                                                                                                                                                                                          trampCall(__ls)                                                                                                                                                                                                                                        ,
                                                                                                                                                                                                                                        Cell.new()
                                                                                                                                                                                                                                      )
                                                                                                                                                                                                                                )                                                                                                                                                                                                                            ,
                                                                                                                                                                                                                                _cons(
                                                                                                                                                                                                                                    trampCall(__res)                                                                                                                                                                                                                                  ,
                                                                                                                                                                                                                                  Cell.new()
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                          )
                                                                                                                                                                                                                    )                                                                                                                                                                                                                ,
                                                                                                                                                                                                                Cell.new()
                                                                                                                                                                                                              )
                                                                                                                                                                                                        )
                                                                                                                                                                                                  )
                                                                                                                                                                                            )                                                                                                                                                                                        ,
                                                                                                                                                                                        Cell.new()
                                                                                                                                                                                      )
                                                                                                                                                                                )
                                                                                                                                                                          )
                                                                                                                                                                    )                                                                                                                                                                ,
                                                                                                                                                                Cell.new()
                                                                                                                                                              )
                                                                                                                                                        )
                                                                                                                                                  )
                                                                                                                                            )                                                                                                                                        ,
                                                                                                                                        Cell.new()
                                                                                                                                      )
                                                                                                                                )
                                                                                                                          )                                                                                                                      ,
                                                                                                                      Cell.new()
                                                                                                                    )
                                                                                                              )
                                                                                                        )
                                                                                                  } ; ___lambda.call(
                                                                                                          _length(
                                                                                                                _cdr(
                                                                                                                      _cdr(
                                                                                                                          trampCall(_p)
                                                                                                                      )
                                                                                                                )
                                                                                                          )
                                                                                                             )
                                                                                                end
                                                                                          else
                                                                                              Cell.new()
                                                                                          end
                                                                                      end
                                                                                  end
                                                                            else
                                                                                if ( 
                                                                                    trampCall( self._identifier_QUMARK_METHOD(  'identifier?',
                                                                                        trampCall(@_identifier_QUMARK)                                                                                      ,
                                                                                    [
                                                                                            _car(
                                                                                                trampCall(_p)
                                                                                            )
                                                                                    ]
                                                                                                 ))
                                                                                 ) then
                                                                                        trampCall( self._list_METHOD(  'list',
                                                                                            trampCall(@_list)                                                                                          ,
                                                                                        [
                                                                                              trampCall(__and)                                                                                            ,
                                                                                                trampCall( self._list_METHOD(  'list',
                                                                                                    trampCall(@_list)                                                                                                  ,
                                                                                                [
                                                                                                      trampCall(__list_QUMARK)                                                                                                    ,
                                                                                                      trampCall(_v)
                                                                                                ]
                                                                                                             ))                                                                                            ,
                                                                                                trampCall( self._list_METHOD(  'list',
                                                                                                    trampCall(@_list)                                                                                                  ,
                                                                                                [
                                                                                                      trampCall(__let)                                                                                                    ,
                                                                                                        trampCall( self._list_METHOD(  'list',
                                                                                                            trampCall(@_list)                                                                                                          ,
                                                                                                        [
                                                                                                                trampCall( self._list_METHOD(  'list',
                                                                                                                    trampCall(@_list)                                                                                                                  ,
                                                                                                                [
                                                                                                                        _car(
                                                                                                                            trampCall(_p)
                                                                                                                        )                                                                                                                    ,
                                                                                                                      trampCall(_v)
                                                                                                                ]
                                                                                                                             ))
                                                                                                        ]
                                                                                                                     ))                                                                                                    ,
                                                                                                        trampCall( callProcedure(  '_k',  'k',
                                                                                                            trampCall(_k)                                                                                                          ,
                                                                                                        [
                                                                                                                _cons(
                                                                                                                      _cons(
                                                                                                                            _car(
                                                                                                                                trampCall(_p)
                                                                                                                            )                                                                                                                        ,
                                                                                                                            ( 
                                                                                                                            1                                                                                                                            +
                                                                                                                              trampCall(_dim)
                                                                                                                             ) 
                                                                                                                      )                                                                                                                  ,
                                                                                                                    trampCall(_vars)
                                                                                                                )
                                                                                                        ]
                                                                                                                     ))
                                                                                                ]
                                                                                                             ))
                                                                                        ]
                                                                                                     ))
                                                                                else
                                                                                    if ( 
                                                                                    true
                                                                                     ) then
                                                                                          begin #makeLet
                                                                                            ___lambda = lambda { |_w| 
                                                                                                begin #makeLet
                                                                                                  ___lambda = lambda { |_new_MIMARKvars| 
                                                                                                      begin #makeLet
                                                                                                        ___lambda = lambda { |_ls_MIMARKvars| 
                                                                                                            begin #makeLet
                                                                                                              ___lambda = lambda { |_once| 
                                                                                                                    trampCall( self._list_METHOD(  'list',
                                                                                                                        trampCall(@_list)                                                                                                                      ,
                                                                                                                    [
                                                                                                                          trampCall(__let)                                                                                                                        ,
                                                                                                                          trampCall(__lp)                                                                                                                        ,
                                                                                                                            _cons(
                                                                                                                                  trampCall( self._list_METHOD(  'list',
                                                                                                                                      trampCall(@_list)                                                                                                                                    ,
                                                                                                                                  [
                                                                                                                                        trampCall(_w)                                                                                                                                      ,
                                                                                                                                        trampCall(_v)
                                                                                                                                  ]
                                                                                                                                               ))                                                                                                                              ,
                                                                                                                                  trampCall( self._map_METHOD(  'map',
                                                                                                                                      trampCall(@_map)                                                                                                                                    ,
                                                                                                                                  [
                                                                                                                                        Proc.new { |_x| 
                                                                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                                                                  trampCall(@_list)                                                                                                                                                ,
                                                                                                                                              [
                                                                                                                                                    trampCall(_x)                                                                                                                                                  ,
                                                                                                                                                  Cell.new()
                                                                                                                                              ]
                                                                                                                                                           ))
                                                                                                                                        }                                                                                                                                      ,
                                                                                                                                        trampCall(_ls_MIMARKvars)
                                                                                                                                  ]
                                                                                                                                               ))
                                                                                                                            )                                                                                                                        ,
                                                                                                                            trampCall( self._list_METHOD(  'list',
                                                                                                                                trampCall(@_list)                                                                                                                              ,
                                                                                                                            [
                                                                                                                                  trampCall(__if)                                                                                                                                ,
                                                                                                                                    trampCall( self._list_METHOD(  'list',
                                                                                                                                        trampCall(@_list)                                                                                                                                      ,
                                                                                                                                    [
                                                                                                                                          trampCall(__null_QUMARK)                                                                                                                                        ,
                                                                                                                                          trampCall(_w)
                                                                                                                                    ]
                                                                                                                                                 ))                                                                                                                                ,
                                                                                                                                    trampCall( self._list_METHOD(  'list',
                                                                                                                                        trampCall(@_list)                                                                                                                                      ,
                                                                                                                                    [
                                                                                                                                          trampCall(__let)                                                                                                                                        ,
                                                                                                                                            trampCall( self._map_METHOD(  'map',
                                                                                                                                                trampCall(@_map)                                                                                                                                              ,
                                                                                                                                            [
                                                                                                                                                  Proc.new { |_x,_l| 
                                                                                                                                                        trampCall( self._list_METHOD(  'list',
                                                                                                                                                            trampCall(@_list)                                                                                                                                                          ,
                                                                                                                                                        [
                                                                                                                                                                _car(
                                                                                                                                                                    trampCall(_x)
                                                                                                                                                                )                                                                                                                                                            ,
                                                                                                                                                                trampCall( self._list_METHOD(  'list',
                                                                                                                                                                    trampCall(@_list)                                                                                                                                                                  ,
                                                                                                                                                                [
                                                                                                                                                                      trampCall(__reverse)                                                                                                                                                                    ,
                                                                                                                                                                      trampCall(_l)
                                                                                                                                                                ]
                                                                                                                                                                             ))
                                                                                                                                                        ]
                                                                                                                                                                     ))
                                                                                                                                                  }                                                                                                                                                ,
                                                                                                                                                  trampCall(_new_MIMARKvars)                                                                                                                                                ,
                                                                                                                                                  trampCall(_ls_MIMARKvars)
                                                                                                                                            ]
                                                                                                                                                         ))                                                                                                                                        ,
                                                                                                                                            trampCall( callProcedure(  '_k',  'k',
                                                                                                                                                trampCall(_k)                                                                                                                                              ,
                                                                                                                                            [
                                                                                                                                                    trampCall( self._append_METHOD(  'append',
                                                                                                                                                        trampCall(@_append)                                                                                                                                                      ,
                                                                                                                                                    [
                                                                                                                                                          trampCall(_new_MIMARKvars)                                                                                                                                                        ,
                                                                                                                                                          trampCall(_vars)
                                                                                                                                                    ]
                                                                                                                                                                 ))
                                                                                                                                            ]
                                                                                                                                                         ))
                                                                                                                                    ]
                                                                                                                                                 ))                                                                                                                                ,
                                                                                                                                    trampCall( self._list_METHOD(  'list',
                                                                                                                                        trampCall(@_list)                                                                                                                                      ,
                                                                                                                                    [
                                                                                                                                          trampCall(__and)                                                                                                                                        ,
                                                                                                                                            trampCall( self._list_METHOD(  'list',
                                                                                                                                                trampCall(@_list)                                                                                                                                              ,
                                                                                                                                            [
                                                                                                                                                  trampCall(__pair_QUMARK)                                                                                                                                                ,
                                                                                                                                                  trampCall(_w)
                                                                                                                                            ]
                                                                                                                                                         ))                                                                                                                                        ,
                                                                                                                                          trampCall(_once)
                                                                                                                                    ]
                                                                                                                                                 ))
                                                                                                                            ]
                                                                                                                                         ))
                                                                                                                    ]
                                                                                                                                 ))
                                                                                                              } ; ___lambda.call(
                                                                                                                      trampCall( callProcedure(  '_lp',  'lp',
                                                                                                                          trampCall(_lp)                                                                                                                        ,
                                                                                                                      [
                                                                                                                              _car(
                                                                                                                                  trampCall(_p)
                                                                                                                              )                                                                                                                          ,
                                                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                                                  trampCall(@_list)                                                                                                                                ,
                                                                                                                              [
                                                                                                                                    trampCall(__car)                                                                                                                                  ,
                                                                                                                                    trampCall(_w)
                                                                                                                              ]
                                                                                                                                           ))                                                                                                                          ,
                                                                                                                              ( 
                                                                                                                                trampCall(_dim)                                                                                                                              +
                                                                                                                              1
                                                                                                                               )                                                                                                                           ,
                                                                                                                          Cell.new()                                                                                                                          ,
                                                                                                                            Proc.new { |__| 
                                                                                                                                  _cons(
                                                                                                                                      trampCall(__lp)                                                                                                                                    ,
                                                                                                                                        _cons(
                                                                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                                                                  trampCall(@_list)                                                                                                                                                ,
                                                                                                                                              [
                                                                                                                                                    trampCall(__cdr)                                                                                                                                                  ,
                                                                                                                                                    trampCall(_w)
                                                                                                                                              ]
                                                                                                                                                           ))                                                                                                                                          ,
                                                                                                                                              trampCall( self._map_METHOD(  'map',
                                                                                                                                                  trampCall(@_map)                                                                                                                                                ,
                                                                                                                                              [
                                                                                                                                                    Proc.new { |_x,_l| 
                                                                                                                                                          trampCall( self._list_METHOD(  'list',
                                                                                                                                                              trampCall(@_list)                                                                                                                                                            ,
                                                                                                                                                          [
                                                                                                                                                                trampCall(__cons)                                                                                                                                                              ,
                                                                                                                                                                  _car(
                                                                                                                                                                      trampCall(_x)
                                                                                                                                                                  )                                                                                                                                                              ,
                                                                                                                                                                trampCall(_l)
                                                                                                                                                          ]
                                                                                                                                                                       ))
                                                                                                                                                    }                                                                                                                                                  ,
                                                                                                                                                    trampCall(_new_MIMARKvars)                                                                                                                                                  ,
                                                                                                                                                    trampCall(_ls_MIMARKvars)
                                                                                                                                              ]
                                                                                                                                                           ))
                                                                                                                                        )
                                                                                                                                  )
                                                                                                                            }
                                                                                                                      ]
                                                                                                                                   ))
                                                                                                                         )
                                                                                                            end
                                                                                                        } ; ___lambda.call(
                                                                                                                trampCall( self._map_METHOD(  'map',
                                                                                                                    trampCall(@_map)                                                                                                                  ,
                                                                                                                [
                                                                                                                      Proc.new { |_x| 
                                                                                                                            trampCall( callProcedure(  '_rename',  'rename',
                                                                                                                                trampCall(_rename)                                                                                                                              ,
                                                                                                                            [
                                                                                                                                    _string_MIMARK_GTMARKsymbol(
                                                                                                                                          trampCall( self._string_MIMARKappend_METHOD(  'string-append',
                                                                                                                                              trampCall(@_string_MIMARKappend)                                                                                                                                            ,
                                                                                                                                          [
                                                                                                                                                  _symbol_MIMARK_GTMARKstring(
                                                                                                                                                        trampCall( self._identifier_MIMARK_GTMARKsymbol_METHOD(  'identifier->symbol',
                                                                                                                                                            trampCall(@_identifier_MIMARK_GTMARKsymbol)                                                                                                                                                          ,
                                                                                                                                                        [
                                                                                                                                                                _car(
                                                                                                                                                                    trampCall(_x)
                                                                                                                                                                )
                                                                                                                                                        ]
                                                                                                                                                                     ))
                                                                                                                                                  )                                                                                                                                              ,
                                                                                                                                              "-ls"
                                                                                                                                          ]
                                                                                                                                                       ))
                                                                                                                                    )
                                                                                                                            ]
                                                                                                                                         ))
                                                                                                                      }                                                                                                                    ,
                                                                                                                      trampCall(_new_MIMARKvars)
                                                                                                                ]
                                                                                                                             ))
                                                                                                                   )
                                                                                                      end
                                                                                                  } ; ___lambda.call(
                                                                                                          trampCall( self._all_MIMARKvars_METHOD(  'all-vars',
                                                                                                              trampCall(@_all_MIMARKvars)                                                                                                            ,
                                                                                                          [
                                                                                                                  _car(
                                                                                                                      trampCall(_p)
                                                                                                                  )                                                                                                              ,
                                                                                                                  ( 
                                                                                                                    trampCall(_dim)                                                                                                                  +
                                                                                                                  1
                                                                                                                   ) 
                                                                                                          ]
                                                                                                                       ))
                                                                                                             )
                                                                                                end
                                                                                            } ; ___lambda.call(
                                                                                                    trampCall( self._next_MIMARKv_METHOD(  'next-v',
                                                                                                        trampCall(@_next_MIMARKv)                                                                                                      ,
                                                                                                    [
                                                                                                    ]
                                                                                                                 ))
                                                                                                       )
                                                                                          end
                                                                                    else
                                                                                        Cell.new()
                                                                                    end
                                                                                end
                                                                            end
                                                                      else
                                                                          if ( 
                                                                              _pair_QUMARK(
                                                                                  trampCall(_p)
                                                                              )
                                                                           ) then
                                                                                  trampCall( self._list_METHOD(  'list',
                                                                                      trampCall(@_list)                                                                                    ,
                                                                                  [
                                                                                        trampCall(__and)                                                                                      ,
                                                                                          trampCall( self._list_METHOD(  'list',
                                                                                              trampCall(@_list)                                                                                            ,
                                                                                          [
                                                                                                trampCall(__pair_QUMARK)                                                                                              ,
                                                                                                trampCall(_v)
                                                                                          ]
                                                                                                       ))                                                                                      ,
                                                                                          trampCall( callProcedure(  '_lp',  'lp',
                                                                                              trampCall(_lp)                                                                                            ,
                                                                                          [
                                                                                                  _car(
                                                                                                      trampCall(_p)
                                                                                                  )                                                                                              ,
                                                                                                  trampCall( self._list_METHOD(  'list',
                                                                                                      trampCall(@_list)                                                                                                    ,
                                                                                                  [
                                                                                                        trampCall(__car)                                                                                                      ,
                                                                                                        trampCall(_v)
                                                                                                  ]
                                                                                                               ))                                                                                              ,
                                                                                                trampCall(_dim)                                                                                              ,
                                                                                                trampCall(_vars)                                                                                              ,
                                                                                                Proc.new { |_vars| 
                                                                                                      trampCall( callProcedure(  '_lp',  'lp',
                                                                                                          trampCall(_lp)                                                                                                        ,
                                                                                                      [
                                                                                                              _cdr(
                                                                                                                  trampCall(_p)
                                                                                                              )                                                                                                          ,
                                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                                  trampCall(@_list)                                                                                                                ,
                                                                                                              [
                                                                                                                    trampCall(__cdr)                                                                                                                  ,
                                                                                                                    trampCall(_v)
                                                                                                              ]
                                                                                                                           ))                                                                                                          ,
                                                                                                            trampCall(_dim)                                                                                                          ,
                                                                                                            trampCall(_vars)                                                                                                          ,
                                                                                                            trampCall(_k)
                                                                                                      ]
                                                                                                                   ))
                                                                                                }
                                                                                          ]
                                                                                                       ))
                                                                                  ]
                                                                                               ))
                                                                          else
                                                                              if ( 
                                                                                  trampCall( self._vector_QUMARK_METHOD(  'vector?',
                                                                                      trampCall(@_vector_QUMARK)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_p)
                                                                                  ]
                                                                                               ))
                                                                               ) then
                                                                                      trampCall( self._list_METHOD(  'list',
                                                                                          trampCall(@_list)                                                                                        ,
                                                                                      [
                                                                                            trampCall(__and)                                                                                          ,
                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                  trampCall(@_list)                                                                                                ,
                                                                                              [
                                                                                                    trampCall(__vector_QUMARK)                                                                                                  ,
                                                                                                    trampCall(_v)
                                                                                              ]
                                                                                                           ))                                                                                          ,
                                                                                              trampCall( callProcedure(  '_lp',  'lp',
                                                                                                  trampCall(_lp)                                                                                                ,
                                                                                              [
                                                                                                      trampCall( self._vector_MIMARK_GTMARKlist_METHOD(  'vector->list',
                                                                                                          trampCall(@_vector_MIMARK_GTMARKlist)                                                                                                        ,
                                                                                                      [
                                                                                                            trampCall(_p)
                                                                                                      ]
                                                                                                                   ))                                                                                                  ,
                                                                                                      trampCall( self._list_METHOD(  'list',
                                                                                                          trampCall(@_list)                                                                                                        ,
                                                                                                      [
                                                                                                            trampCall(__vector_MIMARK_GTMARKlist)                                                                                                          ,
                                                                                                            trampCall(_v)
                                                                                                      ]
                                                                                                                   ))                                                                                                  ,
                                                                                                    trampCall(_dim)                                                                                                  ,
                                                                                                    trampCall(_vars)                                                                                                  ,
                                                                                                    trampCall(_k)
                                                                                              ]
                                                                                                           ))
                                                                                      ]
                                                                                                   ))
                                                                              else
                                                                                  if ( 
                                                                                      _null_QUMARK(
                                                                                          trampCall(_p)
                                                                                      )
                                                                                   ) then
                                                                                          trampCall( self._list_METHOD(  'list',
                                                                                              trampCall(@_list)                                                                                            ,
                                                                                          [
                                                                                                trampCall(__and)                                                                                              ,
                                                                                                  trampCall( self._list_METHOD(  'list',
                                                                                                      trampCall(@_list)                                                                                                    ,
                                                                                                  [
                                                                                                        trampCall(__null_QUMARK)                                                                                                      ,
                                                                                                        trampCall(_v)
                                                                                                  ]
                                                                                                               ))                                                                                              ,
                                                                                                  trampCall( callProcedure(  '_k',  'k',
                                                                                                      trampCall(_k)                                                                                                    ,
                                                                                                  [
                                                                                                        trampCall(_vars)
                                                                                                  ]
                                                                                                               ))
                                                                                          ]
                                                                                                       ))
                                                                                  else
                                                                                      if ( 
                                                                                      true
                                                                                       ) then
                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                  trampCall(@_list)                                                                                                ,
                                                                                              [
                                                                                                    trampCall(__and)                                                                                                  ,
                                                                                                      trampCall( self._list_METHOD(  'list',
                                                                                                          trampCall(@_list)                                                                                                        ,
                                                                                                      [
                                                                                                            trampCall(__equal_QUMARK)                                                                                                          ,
                                                                                                            trampCall(_v)                                                                                                          ,
                                                                                                            trampCall(_p)
                                                                                                      ]
                                                                                                                   ))                                                                                                  ,
                                                                                                      trampCall( callProcedure(  '_k',  'k',
                                                                                                          trampCall(_k)                                                                                                        ,
                                                                                                      [
                                                                                                            trampCall(_vars)
                                                                                                      ]
                                                                                                                   ))
                                                                                              ]
                                                                                                           ))
                                                                                      else
                                                                                          Cell.new()
                                                                                      end
                                                                                  end
                                                                              end
                                                                          end
                                                                      end
                                                                  end
                                                            ]
                                                                         ))
                                                      } ; ___lambda.call(
                                                              trampCall( self._next_MIMARKv_METHOD(  'next-v',
                                                                  trampCall(@_next_MIMARKv)                                                                ,
                                                              [
                                                              ]
                                                                           ))
                                                                 )
                                                    end
                                                }
                                                trampCall( callProcedure(  '_lp',  'lp',
                                                    trampCall(_lp)                                                  ,
                                                [
                                                        _cdr(
                                                            trampCall(_pat)
                                                        )                                                    ,
                                                        trampCall( self._list_METHOD(  'list',
                                                            trampCall(@_list)                                                          ,
                                                        [
                                                              trampCall(__cdr)                                                            ,
                                                              trampCall(__expr)
                                                        ]
                                                                     ))                                                    ,
                                                    0                                                    ,
                                                    Cell.new()                                                    ,
                                                      Proc.new { |_vars| 
                                                          begin #makeLet
                                                            ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40699| 
                                                                if ( 
                                                                  trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40699)
                                                                 ) then
                                                                    trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40699)
                                                                else
                                                                    begin #makeLet
                                                                      ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40700| 
                                                                          if ( 
                                                                            trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40700)
                                                                           ) then
                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40700)
                                                                          else
                                                                            false
                                                                          end
                                                                      } ; ___lambda.call(
                                                                              trampCall( self._list_METHOD(  'list',
                                                                                  trampCall(@_list)                                                                                ,
                                                                              [
                                                                                    trampCall(__begin)                                                                                  ,
                                                                                  false
                                                                              ]
                                                                                           ))
                                                                                 )
                                                                    end
                                                                end
                                                            } ; ___lambda.call(
                                                                    trampCall( self._expand_MIMARKtemplate_METHOD(  'expand-template',
                                                                        trampCall(@_expand_MIMARKtemplate)                                                                      ,
                                                                    [
                                                                          trampCall(_tmpl)                                                                        ,
                                                                          trampCall(_vars)
                                                                    ]
                                                                                 ))
                                                                       )
                                                          end
                                                      }
                                                ]
                                                             ))
                                          } ; ___lambda.call(
                                          nil
                                                     )
                                        end
                                    }
                              )
                            end
                            begin #execFunc
                                def self._ellipse_MIMARKescape_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ellipse_MIMARKescape_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_ellipse_MIMARKescape_QUMARK'] = self.method( :_ellipse_MIMARKescape_QUMARK_METHOD )
                              @_ellipse_MIMARKescape_QUMARK = 
                              trampCall(
                                    Proc.new { |_x| 
                                        if ( 
                                            _not(
                                                  _eq_QUMARK(
                                                    false                                                    ,
                                                        _pair_QUMARK(
                                                            trampCall(_x)
                                                        )
                                                  )
                                            )
                                         ) then
                                              trampCall( callProcedure(  '_compare',  'compare',
                                                  trampCall(_compare)                                                ,
                                              [
                                                    trampCall(@_ellipse)                                                  ,
                                                      _car(
                                                          trampCall(_x)
                                                      )
                                              ]
                                                           ))
                                        else
                                          false
                                        end
                                    }
                              )
                            end
                            begin #execFunc
                                def self._ellipse_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ellipse_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_ellipse_QUMARK'] = self.method( :_ellipse_QUMARK_METHOD )
                              @_ellipse_QUMARK = 
                              trampCall(
                                    Proc.new { |_x| 
                                        if ( 
                                            _not(
                                                  _eq_QUMARK(
                                                    false                                                    ,
                                                        _pair_QUMARK(
                                                            trampCall(_x)
                                                        )
                                                  )
                                            )
                                         ) then
                                            if ( 
                                                _not(
                                                      _eq_QUMARK(
                                                        false                                                        ,
                                                            _pair_QUMARK(
                                                                  _cdr(
                                                                      trampCall(_x)
                                                                  )
                                                            )
                                                      )
                                                )
                                             ) then
                                                  trampCall( callProcedure(  '_compare',  'compare',
                                                      trampCall(_compare)                                                    ,
                                                  [
                                                        trampCall(@_ellipse)                                                      ,
                                                          trampCall( self._cadr_METHOD(  'cadr',
                                                              trampCall(@_cadr)                                                            ,
                                                          [
                                                                trampCall(_x)
                                                          ]
                                                                       ))
                                                  ]
                                                               ))
                                            else
                                              false
                                            end
                                        else
                                          false
                                        end
                                    }
                              )
                            end
                            begin #execFunc
                                def self._ellipse_MIMARKdepth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ellipse_MIMARKdepth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_ellipse_MIMARKdepth'] = self.method( :_ellipse_MIMARKdepth_METHOD )
                              @_ellipse_MIMARKdepth = 
                              trampCall(
                                    Proc.new { |_x| 
                                        if ( 
                                            trampCall( self._ellipse_QUMARK_METHOD(  'ellipse?',
                                                trampCall(@_ellipse_QUMARK)                                              ,
                                            [
                                                  trampCall(_x)
                                            ]
                                                         ))
                                         ) then
                                              ( 
                                              1                                              +
                                                  trampCall( self._ellipse_MIMARKdepth_METHOD(  'ellipse-depth',
                                                      trampCall(@_ellipse_MIMARKdepth)                                                    ,
                                                  [
                                                          _cdr(
                                                              trampCall(_x)
                                                          )
                                                  ]
                                                               ))
                                               ) 
                                        else
                                          0
                                        end
                                    }
                              )
                            end
                            begin #execFunc
                                def self._ellipse_MIMARKtail_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_ellipse_MIMARKtail', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_ellipse_MIMARKtail'] = self.method( :_ellipse_MIMARKtail_METHOD )
                              @_ellipse_MIMARKtail = 
                              trampCall(
                                    Proc.new { |_x| 
                                        if ( 
                                            trampCall( self._ellipse_QUMARK_METHOD(  'ellipse?',
                                                trampCall(@_ellipse_QUMARK)                                              ,
                                            [
                                                  trampCall(_x)
                                            ]
                                                         ))
                                         ) then
                                              trampCall( self._ellipse_MIMARKtail_METHOD(  'ellipse-tail',
                                                  trampCall(@_ellipse_MIMARKtail)                                                ,
                                              [
                                                      _cdr(
                                                          trampCall(_x)
                                                      )
                                              ]
                                                           ))
                                        else
                                              _cdr(
                                                  trampCall(_x)
                                              )
                                        end
                                    }
                              )
                            end
                            begin #execFunc
                                def self._all_MIMARKvars_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_all_MIMARKvars', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_all_MIMARKvars'] = self.method( :_all_MIMARKvars_METHOD )
                              @_all_MIMARKvars = 
                              trampCall(
                                    Proc.new { |_x,_dim| 
                                        begin #makeLetrec
                                          ___lambda = lambda { |_lp| 
                                              _lp                                               = 
                                                Proc.new { |_x,_dim,_vars| 
                                                    if ( 
                                                        trampCall( self._identifier_QUMARK_METHOD(  'identifier?',
                                                            trampCall(@_identifier_QUMARK)                                                          ,
                                                        [
                                                              trampCall(_x)
                                                        ]
                                                                     ))
                                                     ) then
                                                          if ( 
                                                              trampCall( self._find_METHOD(  'find',
                                                                  trampCall(@_find)                                                                ,
                                                              [
                                                                    Proc.new { |_lit| 
                                                                          trampCall( callProcedure(  '_compare',  'compare',
                                                                              trampCall(_compare)                                                                            ,
                                                                          [
                                                                                trampCall(_x)                                                                              ,
                                                                                trampCall(_lit)
                                                                          ]
                                                                                       ))
                                                                    }                                                                  ,
                                                                    trampCall(@_lits)
                                                              ]
                                                                           ))
                                                           ) then
                                                              trampCall(_vars)
                                                          else
                                                                _cons(
                                                                      _cons(
                                                                          trampCall(_x)                                                                        ,
                                                                          trampCall(_dim)
                                                                      )                                                                  ,
                                                                    trampCall(_vars)
                                                                )
                                                          end
                                                    else
                                                        if ( 
                                                            trampCall( self._ellipse_QUMARK_METHOD(  'ellipse?',
                                                                trampCall(@_ellipse_QUMARK)                                                              ,
                                                            [
                                                                  trampCall(_x)
                                                            ]
                                                                         ))
                                                         ) then
                                                                trampCall( callProcedure(  '_lp',  'lp',
                                                                    trampCall(_lp)                                                                  ,
                                                                [
                                                                        _car(
                                                                            trampCall(_x)
                                                                        )                                                                    ,
                                                                        ( 
                                                                          trampCall(_dim)                                                                        +
                                                                        1
                                                                         )                                                                     ,
                                                                      trampCall(_vars)
                                                                ]
                                                                             ))
                                                        else
                                                            if ( 
                                                                _pair_QUMARK(
                                                                    trampCall(_x)
                                                                )
                                                             ) then
                                                                    trampCall( callProcedure(  '_lp',  'lp',
                                                                        trampCall(_lp)                                                                      ,
                                                                    [
                                                                            _car(
                                                                                trampCall(_x)
                                                                            )                                                                        ,
                                                                          trampCall(_dim)                                                                        ,
                                                                            trampCall( callProcedure(  '_lp',  'lp',
                                                                                trampCall(_lp)                                                                              ,
                                                                            [
                                                                                    _cdr(
                                                                                        trampCall(_x)
                                                                                    )                                                                                ,
                                                                                  trampCall(_dim)                                                                                ,
                                                                                  trampCall(_vars)
                                                                            ]
                                                                                         ))
                                                                    ]
                                                                                 ))
                                                            else
                                                                if ( 
                                                                    trampCall( self._vector_QUMARK_METHOD(  'vector?',
                                                                        trampCall(@_vector_QUMARK)                                                                      ,
                                                                    [
                                                                          trampCall(_x)
                                                                    ]
                                                                                 ))
                                                                 ) then
                                                                        trampCall( callProcedure(  '_lp',  'lp',
                                                                            trampCall(_lp)                                                                          ,
                                                                        [
                                                                                trampCall( self._vector_MIMARK_GTMARKlist_METHOD(  'vector->list',
                                                                                    trampCall(@_vector_MIMARK_GTMARKlist)                                                                                  ,
                                                                                [
                                                                                      trampCall(_x)
                                                                                ]
                                                                                             ))                                                                            ,
                                                                              trampCall(_dim)                                                                            ,
                                                                              trampCall(_vars)
                                                                        ]
                                                                                     ))
                                                                else
                                                                    if ( 
                                                                    true
                                                                     ) then
                                                                          trampCall(_vars)
                                                                    else
                                                                        Cell.new()
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                }
                                                trampCall( callProcedure(  '_lp',  'lp',
                                                    trampCall(_lp)                                                  ,
                                                [
                                                      trampCall(_x)                                                    ,
                                                      trampCall(_dim)                                                    ,
                                                    Cell.new()
                                                ]
                                                             ))
                                          } ; ___lambda.call(
                                          nil
                                                     )
                                        end
                                    }
                              )
                            end
                            begin #execFunc
                                def self._free_MIMARKvars_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_free_MIMARKvars', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_free_MIMARKvars'] = self.method( :_free_MIMARKvars_METHOD )
                              @_free_MIMARKvars = 
                              trampCall(
                                    Proc.new { |_x,_vars,_dim| 
                                        begin #makeLetrec
                                          ___lambda = lambda { |_lp| 
                                              _lp                                               = 
                                                Proc.new { |_x,_free| 
                                                    if ( 
                                                        trampCall( self._identifier_QUMARK_METHOD(  'identifier?',
                                                            trampCall(@_identifier_QUMARK)                                                          ,
                                                        [
                                                              trampCall(_x)
                                                        ]
                                                                     ))
                                                     ) then
                                                          if ( 
                                                            if ( 
                                                                _not(
                                                                      _eq_QUMARK(
                                                                        false                                                                        ,
                                                                            _not(
                                                                                  trampCall( self._memq_METHOD(  'memq',
                                                                                      trampCall(@_memq)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_x)                                                                                      ,
                                                                                        trampCall(_free)
                                                                                  ]
                                                                                               ))
                                                                            )
                                                                      )
                                                                )
                                                             ) then
                                                                if ( 
                                                                  begin #execFunc
                                                                      def self.___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40730_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40730', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                                                      @global_lisp_binding['___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40730'] = self.method( :___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40730_METHOD )
                                                                    @___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40730 = 
                                                                    trampCall(
                                                                            trampCall( self._assq_METHOD(  'assq',
                                                                                trampCall(@_assq)                                                                              ,
                                                                            [
                                                                                  trampCall(_x)                                                                                ,
                                                                                  trampCall(_vars)
                                                                            ]
                                                                                         ))
                                                                    )
                                                                  end
                                                                 ) then
                                                                    trampCall( callProcedure( nil, 'anonymouse', 
                                                                        Proc.new { |_cell| 
                                                                              ( 
                                                                                  _cdr(
                                                                                      trampCall(_cell)
                                                                                  )                                                                              >=
                                                                                trampCall(_dim)
                                                                               ) 
                                                                        }                                                                      ,
                                                                    [
                                                                          trampCall(@___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40730)
                                                                    ]
                                                                              ))
                                                                else
                                                                    if ( 
                                                                    true
                                                                     ) then
                                                                        false
                                                                    else
                                                                        Cell.new()
                                                                    end
                                                                end
                                                            else
                                                              false
                                                            end
                                                           ) then
                                                                _cons(
                                                                    trampCall(_x)                                                                  ,
                                                                    trampCall(_free)
                                                                )
                                                          else
                                                              trampCall(_free)
                                                          end
                                                    else
                                                        if ( 
                                                            _pair_QUMARK(
                                                                trampCall(_x)
                                                            )
                                                         ) then
                                                                trampCall( callProcedure(  '_lp',  'lp',
                                                                    trampCall(_lp)                                                                  ,
                                                                [
                                                                        _car(
                                                                            trampCall(_x)
                                                                        )                                                                    ,
                                                                        trampCall( callProcedure(  '_lp',  'lp',
                                                                            trampCall(_lp)                                                                          ,
                                                                        [
                                                                                _cdr(
                                                                                    trampCall(_x)
                                                                                )                                                                            ,
                                                                              trampCall(_free)
                                                                        ]
                                                                                     ))
                                                                ]
                                                                             ))
                                                        else
                                                            if ( 
                                                                trampCall( self._vector_QUMARK_METHOD(  'vector?',
                                                                    trampCall(@_vector_QUMARK)                                                                  ,
                                                                [
                                                                      trampCall(_x)
                                                                ]
                                                                             ))
                                                             ) then
                                                                    trampCall( callProcedure(  '_lp',  'lp',
                                                                        trampCall(_lp)                                                                      ,
                                                                    [
                                                                            trampCall( self._vector_MIMARK_GTMARKlist_METHOD(  'vector->list',
                                                                                trampCall(@_vector_MIMARK_GTMARKlist)                                                                              ,
                                                                            [
                                                                                  trampCall(_x)
                                                                            ]
                                                                                         ))                                                                        ,
                                                                          trampCall(_free)
                                                                    ]
                                                                                 ))
                                                            else
                                                                if ( 
                                                                true
                                                                 ) then
                                                                      trampCall(_free)
                                                                else
                                                                    Cell.new()
                                                                end
                                                            end
                                                        end
                                                    end
                                                }
                                                trampCall( callProcedure(  '_lp',  'lp',
                                                    trampCall(_lp)                                                  ,
                                                [
                                                      trampCall(_x)                                                    ,
                                                    Cell.new()
                                                ]
                                                             ))
                                          } ; ___lambda.call(
                                          nil
                                                     )
                                        end
                                    }
                              )
                            end
                            begin #execFunc
                                def self._expand_MIMARKtemplate_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_expand_MIMARKtemplate', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                @global_lisp_binding['_expand_MIMARKtemplate'] = self.method( :_expand_MIMARKtemplate_METHOD )
                              @_expand_MIMARKtemplate = 
                              trampCall(
                                    Proc.new { |_tmpl,_vars| 
                                        begin #makeLetrec
                                          ___lambda = lambda { |_lp| 
                                              _lp                                               = 
                                                Proc.new { |_t,_dim| 
                                                    if ( 
                                                        trampCall( self._identifier_QUMARK_METHOD(  'identifier?',
                                                            trampCall(@_identifier_QUMARK)                                                          ,
                                                        [
                                                              trampCall(_t)
                                                        ]
                                                                     ))
                                                     ) then
                                                          if ( 
                                                            begin #execFunc
                                                                def self.___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40722_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40722', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
                                                                @global_lisp_binding['___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40722'] = self.method( :___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40722_METHOD )
                                                              @___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40722 = 
                                                              trampCall(
                                                                      trampCall( self._find_METHOD(  'find',
                                                                          trampCall(@_find)                                                                        ,
                                                                      [
                                                                            Proc.new { |_v| 
                                                                                  trampCall( callProcedure(  '_compare',  'compare',
                                                                                      trampCall(_compare)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_t)                                                                                      ,
                                                                                          _car(
                                                                                              trampCall(_v)
                                                                                          )
                                                                                  ]
                                                                                               ))
                                                                            }                                                                          ,
                                                                            trampCall(_vars)
                                                                      ]
                                                                                   ))
                                                              )
                                                            end
                                                           ) then
                                                              trampCall( callProcedure( nil, 'anonymouse', 
                                                                  Proc.new { |_cell| 
                                                                      if ( 
                                                                          ( 
                                                                              _cdr(
                                                                                  trampCall(_cell)
                                                                              )                                                                          <=
                                                                            trampCall(_dim)
                                                                           ) 
                                                                       ) then
                                                                          trampCall(_t)
                                                                      else
                                                                          begin raise RuntimeError, 
                                                                          "too few ...'s"
                                                                          rescue => __e 
                                                                            __e.set_backtrace( ["./lib/nendo/init.nnd:1679"] + __e.backtrace )
                                                                            raise __e
                                                                          end 
                                                                      end
                                                                  }                                                                ,
                                                              [
                                                                    trampCall(@___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40722)
                                                              ]
                                                                        ))
                                                          else
                                                              if ( 
                                                              true
                                                               ) then
                                                                      trampCall( self._list_METHOD(  'list',
                                                                          trampCall(@_list)                                                                        ,
                                                                      [
                                                                            trampCall(__rename)                                                                          ,
                                                                              trampCall( self._list_METHOD(  'list',
                                                                                  trampCall(@_list)                                                                                ,
                                                                              [
                                                                                    trampCall(__quote)                                                                                  ,
                                                                                    trampCall(_t)
                                                                              ]
                                                                                           ))
                                                                      ]
                                                                                   ))
                                                              else
                                                                  Cell.new()
                                                              end
                                                          end
                                                    else
                                                        if ( 
                                                            _pair_QUMARK(
                                                                trampCall(_t)
                                                            )
                                                         ) then
                                                              if ( 
                                                                  trampCall( self._ellipse_MIMARKescape_QUMARK_METHOD(  'ellipse-escape?',
                                                                      trampCall(@_ellipse_MIMARKescape_QUMARK)                                                                    ,
                                                                  [
                                                                        trampCall(_t)
                                                                  ]
                                                                               ))
                                                               ) then
                                                                    if ( 
                                                                        _pair_QUMARK(
                                                                              _cdr(
                                                                                  trampCall(_t)
                                                                              )
                                                                        )
                                                                     ) then
                                                                        if ( 
                                                                            _pair_QUMARK(
                                                                                  trampCall( self._cddr_METHOD(  'cddr',
                                                                                      trampCall(@_cddr)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_t)
                                                                                  ]
                                                                                               ))
                                                                            )
                                                                         ) then
                                                                              trampCall( self._cddr_METHOD(  'cddr',
                                                                                  trampCall(@_cddr)                                                                                ,
                                                                              [
                                                                                    trampCall(_t)
                                                                              ]
                                                                                           ))
                                                                        else
                                                                              trampCall( self._cadr_METHOD(  'cadr',
                                                                                  trampCall(@_cadr)                                                                                ,
                                                                              [
                                                                                    trampCall(_t)
                                                                              ]
                                                                                           ))
                                                                        end
                                                                    else
                                                                          _cdr(
                                                                              trampCall(_t)
                                                                          )
                                                                    end
                                                              else
                                                                  if ( 
                                                                      trampCall( self._ellipse_QUMARK_METHOD(  'ellipse?',
                                                                          trampCall(@_ellipse_QUMARK)                                                                        ,
                                                                      [
                                                                            trampCall(_t)
                                                                      ]
                                                                                   ))
                                                                   ) then
                                                                        begin #makeLet
                                                                          ___lambda = lambda { |_depth| 
                                                                              begin #makeLet
                                                                                ___lambda = lambda { |_ell_MIMARKdim| 
                                                                                    begin #makeLet
                                                                                      ___lambda = lambda { |_ell_MIMARKvars| 
                                                                                          if ( 
                                                                                              _null_QUMARK(
                                                                                                  trampCall(_ell_MIMARKvars)
                                                                                              )
                                                                                           ) then
                                                                                              begin raise RuntimeError, 
                                                                                              "too many ...'s"
                                                                                              rescue => __e 
                                                                                                __e.set_backtrace( ["./lib/nendo/init.nnd:1693"] + __e.backtrace )
                                                                                                raise __e
                                                                                              end 
                                                                                          else
                                                                                              begin #makeLet
                                                                                                ___lambda = lambda { |_once| 
                                                                                                    begin #makeLet
                                                                                                      ___lambda = lambda { |_nest| 
                                                                                                          begin #makeLet
                                                                                                            ___lambda = lambda { |_many| 
                                                                                                                if ( 
                                                                                                                    _null_QUMARK(
                                                                                                                          trampCall( self._ellipse_MIMARKtail_METHOD(  'ellipse-tail',
                                                                                                                              trampCall(@_ellipse_MIMARKtail)                                                                                                                            ,
                                                                                                                          [
                                                                                                                                trampCall(_t)
                                                                                                                          ]
                                                                                                                                       ))
                                                                                                                    )
                                                                                                                 ) then
                                                                                                                    trampCall(_many)
                                                                                                                else
                                                                                                                      trampCall( self._list_METHOD(  'list',
                                                                                                                          trampCall(@_list)                                                                                                                        ,
                                                                                                                      [
                                                                                                                            trampCall(__append)                                                                                                                          ,
                                                                                                                            trampCall(_many)                                                                                                                          ,
                                                                                                                              trampCall( callProcedure(  '_lp',  'lp',
                                                                                                                                  trampCall(_lp)                                                                                                                                ,
                                                                                                                              [
                                                                                                                                      trampCall( self._ellipse_MIMARKtail_METHOD(  'ellipse-tail',
                                                                                                                                          trampCall(@_ellipse_MIMARKtail)                                                                                                                                        ,
                                                                                                                                      [
                                                                                                                                            trampCall(_t)
                                                                                                                                      ]
                                                                                                                                                   ))                                                                                                                                  ,
                                                                                                                                    trampCall(_dim)
                                                                                                                              ]
                                                                                                                                           ))
                                                                                                                      ]
                                                                                                                                   ))
                                                                                                                end
                                                                                                            } ; ___lambda.call(
                                                                                                                  begin #makeLetrec
                                                                                                                    ___lambda = lambda { |___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40734| 
                                                                                                                        ___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40734                                                                                                                         = 
                                                                                                                          Proc.new { |_d,_many| 
                                                                                                                              if ( 
                                                                                                                                  __EQMARK(
                                                                                                                                      trampCall(_d)                                                                                                                                    ,
                                                                                                                                    1
                                                                                                                                  )
                                                                                                                               ) then
                                                                                                                                    trampCall(_many)
                                                                                                                              else
                                                                                                                                      trampCall( callProcedure(  '___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40734',  '__gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40734',
                                                                                                                                          trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40734)                                                                                                                                        ,
                                                                                                                                      [
                                                                                                                                              ( 
                                                                                                                                                trampCall(_d)                                                                                                                                              -
                                                                                                                                              1
                                                                                                                                               )                                                                                                                                           ,
                                                                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                                                                  trampCall(@_list)                                                                                                                                                ,
                                                                                                                                              [
                                                                                                                                                    trampCall(__apply)                                                                                                                                                  ,
                                                                                                                                                    trampCall(__append)                                                                                                                                                  ,
                                                                                                                                                    trampCall(_many)
                                                                                                                                              ]
                                                                                                                                                           ))
                                                                                                                                      ]
                                                                                                                                                   ))
                                                                                                                              end
                                                                                                                          }
                                                                                                                          trampCall( callProcedure(  '___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40734',  '__gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40734',
                                                                                                                              trampCall(___gensym__f28d97254eae7310ad1652f5536a07a6f8508817_40734)                                                                                                                            ,
                                                                                                                          [
                                                                                                                                trampCall(_depth)                                                                                                                              ,
                                                                                                                                trampCall(_nest)
                                                                                                                          ]
                                                                                                                                       ))
                                                                                                                    } ; ___lambda.call(
                                                                                                                    nil
                                                                                                                               )
                                                                                                                  end
                                                                                                                       )
                                                                                                          end
                                                                                                      } ; ___lambda.call(
                                                                                                            if ( 
                                                                                                              if ( 
                                                                                                                  _not(
                                                                                                                        _eq_QUMARK(
                                                                                                                          false                                                                                                                          ,
                                                                                                                              _null_QUMARK(
                                                                                                                                    _cdr(
                                                                                                                                        trampCall(_ell_MIMARKvars)
                                                                                                                                    )
                                                                                                                              )
                                                                                                                        )
                                                                                                                  )
                                                                                                               ) then
                                                                                                                  if ( 
                                                                                                                      _not(
                                                                                                                            _eq_QUMARK(
                                                                                                                              false                                                                                                                              ,
                                                                                                                                  trampCall( self._identifier_QUMARK_METHOD(  'identifier?',
                                                                                                                                      trampCall(@_identifier_QUMARK)                                                                                                                                    ,
                                                                                                                                  [
                                                                                                                                        trampCall(_once)
                                                                                                                                  ]
                                                                                                                                               ))
                                                                                                                            )
                                                                                                                      )
                                                                                                                   ) then
                                                                                                                        _eq_QUMARK(
                                                                                                                            trampCall(_once)                                                                                                                          ,
                                                                                                                              _car(
                                                                                                                                  trampCall(_vars)
                                                                                                                              )
                                                                                                                        )
                                                                                                                  else
                                                                                                                    false
                                                                                                                  end
                                                                                                              else
                                                                                                                false
                                                                                                              end
                                                                                                             ) then
                                                                                                                trampCall(_once)
                                                                                                            else
                                                                                                                  _cons(
                                                                                                                      trampCall(__map)                                                                                                                    ,
                                                                                                                        _cons(
                                                                                                                              trampCall( self._list_METHOD(  'list',
                                                                                                                                  trampCall(@_list)                                                                                                                                ,
                                                                                                                              [
                                                                                                                                    trampCall(__lambda)                                                                                                                                  ,
                                                                                                                                    trampCall(_ell_MIMARKvars)                                                                                                                                  ,
                                                                                                                                    trampCall(_once)
                                                                                                                              ]
                                                                                                                                           ))                                                                                                                          ,
                                                                                                                            trampCall(_ell_MIMARKvars)
                                                                                                                        )
                                                                                                                  )
                                                                                                            end
                                                                                                                 )
                                                                                                    end
                                                                                                } ; ___lambda.call(
                                                                                                        trampCall( callProcedure(  '_lp',  'lp',
                                                                                                            trampCall(_lp)                                                                                                          ,
                                                                                                        [
                                                                                                                _car(
                                                                                                                    trampCall(_t)
                                                                                                                )                                                                                                            ,
                                                                                                              trampCall(_ell_MIMARKdim)
                                                                                                        ]
                                                                                                                     ))
                                                                                                           )
                                                                                              end
                                                                                          end
                                                                                      } ; ___lambda.call(
                                                                                              trampCall( self._free_MIMARKvars_METHOD(  'free-vars',
                                                                                                  trampCall(@_free_MIMARKvars)                                                                                                ,
                                                                                              [
                                                                                                      _car(
                                                                                                          trampCall(_t)
                                                                                                      )                                                                                                  ,
                                                                                                    trampCall(_vars)                                                                                                  ,
                                                                                                    trampCall(_ell_MIMARKdim)
                                                                                              ]
                                                                                                           ))
                                                                                                 )
                                                                                    end
                                                                                } ; ___lambda.call(
                                                                                        ( 
                                                                                          trampCall(_dim)                                                                                        +
                                                                                          trampCall(_depth)
                                                                                         ) 
                                                                                           )
                                                                              end
                                                                          } ; ___lambda.call(
                                                                                  trampCall( self._ellipse_MIMARKdepth_METHOD(  'ellipse-depth',
                                                                                      trampCall(@_ellipse_MIMARKdepth)                                                                                    ,
                                                                                  [
                                                                                        trampCall(_t)
                                                                                  ]
                                                                                               ))
                                                                                     )
                                                                        end
                                                                  else
                                                                      if ( 
                                                                      true
                                                                       ) then
                                                                              trampCall( self._list_METHOD(  'list',
                                                                                  trampCall(@_list)                                                                                ,
                                                                              [
                                                                                    trampCall(__cons)                                                                                  ,
                                                                                      trampCall( callProcedure(  '_lp',  'lp',
                                                                                          trampCall(_lp)                                                                                        ,
                                                                                      [
                                                                                              _car(
                                                                                                  trampCall(_t)
                                                                                              )                                                                                          ,
                                                                                            trampCall(_dim)
                                                                                      ]
                                                                                                   ))                                                                                  ,
                                                                                      trampCall( callProcedure(  '_lp',  'lp',
                                                                                          trampCall(_lp)                                                                                        ,
                                                                                      [
                                                                                              _cdr(
                                                                                                  trampCall(_t)
                                                                                              )                                                                                          ,
                                                                                            trampCall(_dim)
                                                                                      ]
                                                                                                   ))
                                                                              ]
                                                                                           ))
                                                                      else
                                                                          Cell.new()
                                                                      end
                                                                  end
                                                              end
                                                        else
                                                            if ( 
                                                                trampCall( self._vector_QUMARK_METHOD(  'vector?',
                                                                    trampCall(@_vector_QUMARK)                                                                  ,
                                                                [
                                                                      trampCall(_t)
                                                                ]
                                                                             ))
                                                             ) then
                                                                    trampCall( self._list_METHOD(  'list',
                                                                        trampCall(@_list)                                                                      ,
                                                                    [
                                                                          trampCall(__list_MIMARK_GTMARKvector)                                                                        ,
                                                                            trampCall( callProcedure(  '_lp',  'lp',
                                                                                trampCall(_lp)                                                                              ,
                                                                            [
                                                                                    trampCall( self._vector_MIMARK_GTMARKlist_METHOD(  'vector->list',
                                                                                        trampCall(@_vector_MIMARK_GTMARKlist)                                                                                      ,
                                                                                    [
                                                                                          trampCall(_t)
                                                                                    ]
                                                                                                 ))                                                                                ,
                                                                                  trampCall(_dim)
                                                                            ]
                                                                                         ))
                                                                    ]
                                                                                 ))
                                                            else
                                                                if ( 
                                                                    _null_QUMARK(
                                                                        trampCall(_t)
                                                                    )
                                                                 ) then
                                                                        trampCall( self._list_METHOD(  'list',
                                                                            trampCall(@_list)                                                                          ,
                                                                        [
                                                                              trampCall(__quote)                                                                            ,
                                                                            Cell.new()
                                                                        ]
                                                                                     ))
                                                                else
                                                                    if ( 
                                                                    true
                                                                     ) then
                                                                          trampCall(_t)
                                                                    else
                                                                        Cell.new()
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                }
                                                trampCall( callProcedure(  '_lp',  'lp',
                                                    trampCall(_lp)                                                  ,
                                                [
                                                      trampCall(_tmpl)                                                    ,
                                                    0
                                                ]
                                                             ))
                                          } ; ___lambda.call(
                                          nil
                                                     )
                                        end
                                    }
                              )
                            end
                              trampCall( self._list_METHOD(  'list',
                                  trampCall(@_list)                                ,
                              [
                                    trampCall(__er_MIMARKmacro_MIMARKtransformer)                                  ,
                                      trampCall( self._list_METHOD(  'list',
                                          trampCall(@_list)                                        ,
                                      [
                                            trampCall(__lambda)                                          ,
                                              trampCall( self._list_METHOD(  'list',
                                                  trampCall(@_list)                                                ,
                                              [
                                                    trampCall(__expr)                                                  ,
                                                    trampCall(__rename)                                                  ,
                                                    trampCall(__compare)
                                              ]
                                                           ))                                          ,
                                              _cons(
                                                  trampCall(__or)                                                ,
                                                    trampCall( self._append_METHOD(  'append',
                                                        trampCall(@_append)                                                      ,
                                                    [
                                                            trampCall( self._map_METHOD(  'map',
                                                                trampCall(@_map)                                                              ,
                                                            [
                                                                  Proc.new { |_clause| 
                                                                        trampCall( self._expand_MIMARKpattern_METHOD(  'expand-pattern',
                                                                            trampCall(@_expand_MIMARKpattern)                                                                          ,
                                                                        [
                                                                                _car(
                                                                                    trampCall(_clause)
                                                                                )                                                                            ,
                                                                                trampCall( self._cadr_METHOD(  'cadr',
                                                                                    trampCall(@_cadr)                                                                                  ,
                                                                                [
                                                                                      trampCall(_clause)
                                                                                ]
                                                                                             ))
                                                                        ]
                                                                                     ))
                                                                  }                                                                ,
                                                                  trampCall(@_forms)
                                                            ]
                                                                         ))                                                        ,
                                                            trampCall( self._list_METHOD(  'list',
                                                                trampCall(@_list)                                                              ,
                                                            [
                                                                    trampCall( self._list_METHOD(  'list',
                                                                        trampCall(@_list)                                                                      ,
                                                                    [
                                                                          trampCall(__error)                                                                        ,
                                                                        "no expansion for"                                                                        ,
                                                                            trampCall( self._list_METHOD(  'list',
                                                                                trampCall(@_list)                                                                              ,
                                                                            [
                                                                                    trampCall( callProcedure(  '_rename',  'rename',
                                                                                        trampCall(_rename)                                                                                      ,
                                                                                    [
                                                                                        :"strip-syntactic-closures"
                                                                                    ]
                                                                                                 ))                                                                                ,
                                                                                  trampCall(__expr)
                                                                            ]
                                                                                         ))
                                                                    ]
                                                                                 ))
                                                            ]
                                                                         ))
                                                    ]
                                                                 ))
                                              )
                                      ]
                                                   ))
                              ]
                                           ))
                        } ; ___lambda.call(
                                trampCall( self._identifier_QUMARK_METHOD(  'identifier?',
                                    trampCall(@_identifier_QUMARK)                                  ,
                                [
                                        trampCall( self._cadr_METHOD(  'cadr',
                                            trampCall(@_cadr)                                          ,
                                        [
                                              trampCall(_expr)
                                        ]
                                                     ))
                                ]
                                             ))                            ,
                            0                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"er-macro-transformer"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"lambda"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"let"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"begin"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"if"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"and"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"or"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"eq?"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"equal?"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"car"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"cdr"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"cons"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"pair?"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"null?"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"expr"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"rename"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"compare"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"quote"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"apply"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"append"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"map"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"vector?"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"list?"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"lp"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"reverse"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"len"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"length"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"-"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :">="
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"error"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"ls"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"res"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"i"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"vector->list"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"list->vector"
                                ]
                                             ))                            ,
                                trampCall( callProcedure(  '_rename',  'rename',
                                    trampCall(_rename)                                  ,
                                [
                                    :"list"
                                ]
                                             ))
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
      def self.__PAMARKsyntax_MIMARKrules_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKsyntax_MIMARKrules', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['__PAMARKsyntax_MIMARKrules'] = self.method( :__PAMARKsyntax_MIMARKrules_METHOD )
    @__PAMARKsyntax_MIMARKrules = 
    trampCall(
          trampCall(@_syntax_MIMARKrules)
    )
  end
 )
#--------------------

trampCall( 
    delayCall( '_load',  'load',
        trampCall(@_load)      ,
    [
        "nendo/experimental"
    ]
                 )
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------
