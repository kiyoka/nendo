#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
    delayCall( '_require',  'require',
        trampCall(@_require)      ,
    [
        "yaml"
    ]
                 )
 )
#--------------------

trampCall( 
    delayCall( '_load',  'load',
        trampCall(@_load)      ,
    [
        "rfc/json"
    ]
                 )
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._parse_MIMARKyaml_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_parse_MIMARKyaml_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_parse_MIMARKyaml_MIMARKstring'] = self.method( :_parse_MIMARKyaml_MIMARKstring_METHOD )
    @_parse_MIMARKyaml_MIMARKstring = 
    trampCall(
          Proc.new { |_str| 
                delayCall( '__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist',  '%json:hash-table->alist',
                    trampCall(@__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist)                  ,
                [
                      trampCall(YAML).load(
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
      def self._parse_MIMARKyaml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_parse_MIMARKyaml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_parse_MIMARKyaml'] = self.method( :_parse_MIMARKyaml_METHOD )
    @_parse_MIMARKyaml = 
    trampCall(
          Proc.new { |*__rest__| _io = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__| 
                    begin #makeLet
                      ___lambda = lambda { |_str| 
                            delayCall( '_parse_MIMARKyaml_MIMARKstring',  'parse-yaml-string',
                                trampCall(@_parse_MIMARKyaml_MIMARKstring)                              ,
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
                        ___lambda = lambda { |___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110172| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110172)
                                )
                             ) then
                                trampCall(STDIN)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110172)
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
      def self._construct_MIMARKyaml_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_construct_MIMARKyaml_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_construct_MIMARKyaml_MIMARKstring'] = self.method( :_construct_MIMARKyaml_MIMARKstring_METHOD )
    @_construct_MIMARKyaml_MIMARKstring = 
    trampCall(
          Proc.new { |_obj| 
              trampCall(YAML).dump(
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
      def self._construct_MIMARKyaml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_construct_MIMARKyaml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_construct_MIMARKyaml'] = self.method( :_construct_MIMARKyaml_METHOD )
    @_construct_MIMARKyaml = 
    trampCall(
          Proc.new { |_obj,*__rest__| _io = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |__| 
                    trampCall(__).print(
                            trampCall( self._construct_MIMARKyaml_MIMARKstring_METHOD(  'construct-yaml-string',
                                trampCall(@_construct_MIMARKyaml_MIMARKstring)                              ,
                            [
                                  trampCall(_obj)
                            ]
                                         ))
                      )
                } ; ___lambda.call(
                      begin #makeLet
                        ___lambda = lambda { |___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110173| 
                            if ( 
                                _null_QUMARK(
                                    trampCall(___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110173)
                                )
                             ) then
                                trampCall(STDOUT)
                            else
                                  delayCall( '_car',  'car',
                                      trampCall(@_car)                                    ,
                                  [
                                        trampCall(___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110173)
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