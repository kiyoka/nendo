#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
    delayCall( '_require',  'require',
        trampCall(@_require)      ,
    [
        "stringio"
    ]
                 )
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._write_MIMARKtree_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_write_MIMARKtree', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_write_MIMARKtree'] = self.method( :_write_MIMARKtree_METHOD )
    @_write_MIMARKtree = 
    trampCall(
          Proc.new { |_tree,*__rest__| _out = __rest__[0] ;  
              begin #makeLet
                ___lambda = lambda { |_out| 
                    begin #makeLetrec
                      ___lambda = lambda { |_loop| 
                          _loop                           = 
                            Proc.new { |_tree| 
                                if ( 
                                    _null_QUMARK(
                                        trampCall(_tree)
                                    )
                                 ) then
                                    true
                                else
                                    if ( 
                                        _pair_QUMARK(
                                            trampCall(_tree)
                                        )
                                     ) then
                                        begin  #makeBegin
                                              trampCall( self._write_MIMARKtree_METHOD(  'write-tree',
                                                  trampCall(@_write_MIMARKtree)                                                ,
                                              [
                                                      _car(
                                                          trampCall(_tree)
                                                      )                                                  ,
                                                    trampCall(_out)
                                              ]
                                                           ))
                                              delayCall( '_loop',  'loop',
                                                  trampCall(_loop)                                                ,
                                              [
                                                      _cdr(
                                                          trampCall(_tree)
                                                      )
                                              ]
                                                           )
                                        end
                                    else
                                        if ( 
                                        true
                                         ) then
                                              trampCall(_out).print(
                                                    trampCall(_tree)
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
                                  trampCall(_tree)
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
                      if ( 
                          _null_QUMARK(
                              trampCall(_out)
                          )
                       ) then
                          trampCall(STDOUT)
                      else
                            delayCall( '_car',  'car',
                                trampCall(@_car)                              ,
                            [
                                  trampCall(_out)
                            ]
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
      def self._tree_MIMARK_GTMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_tree_MIMARK_GTMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_tree_MIMARK_GTMARKstring'] = self.method( :_tree_MIMARK_GTMARKstring_METHOD )
    @_tree_MIMARK_GTMARKstring = 
    trampCall(
          Proc.new { |_tree| 
              begin #makeLet
                ___lambda = lambda { |_sio| 
                      trampCall( self._write_MIMARKtree_METHOD(  'write-tree',
                          trampCall(@_write_MIMARKtree)                        ,
                      [
                            trampCall(_tree)                          ,
                            trampCall(_sio)
                      ]
                                   ))
                    trampCall(_sio).string(
                      )
                } ; ___lambda.call(
                      trampCall(StringIO).new(
                          ""
                        )
                           )
              end
          }
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------
