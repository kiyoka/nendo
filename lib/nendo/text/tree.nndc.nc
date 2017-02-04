#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 






























































































































































































































































































































































































































































#line 10 curLineno=450 compiledLineno=450

trampCall( 
#line 10 curLineno=450 compiledLineno=453

#line 10 curLineno=450 compiledLineno=455

    delayCall( '_require',  'require',
#line 10 curLineno=450 compiledLineno=458

#line 10 curLineno=450 compiledLineno=460

        trampCall(@_require)      ,
    [
#line 10 curLineno=450 compiledLineno=464

#line 10 curLineno=450 compiledLineno=466

        "stringio"
    ]
                 )
 )
#--------------------















































































#line 12 curLineno=550 compiledLineno=550

trampCall( 
#line 12 curLineno=550 compiledLineno=553

  begin 
#line 12 curLineno=550 compiledLineno=556

    #execFunc
#line 12 curLineno=550 compiledLineno=559

#line 12 curLineno=550 compiledLineno=561

      def self._write_MIMARKtree_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_write_MIMARKtree', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_write_MIMARKtree'] = self.method( :_write_MIMARKtree_METHOD )
#line 12 curLineno=550 compiledLineno=565

      #execFunc(funcname=define)
    @_write_MIMARKtree = 
    trampCall(
#line 12 curLineno=550 compiledLineno=570

#line 12 curLineno=550 compiledLineno=572

#line 12 curLineno=550 compiledLineno=574

          Proc.new { |_tree,*__rest__| _out = __rest__[0] ;  
#line 12 curLineno=550 compiledLineno=577

#line 12 curLineno=550 compiledLineno=579

              begin
#line 12 curLineno=550 compiledLineno=582

                #makeLet
#line 12 curLineno=550 compiledLineno=585

                ___lambda = lambda { |_out| 
#line 12 curLineno=550 compiledLineno=588

#line 12 curLineno=550 compiledLineno=590

                    begin 
#line 12 curLineno=550 compiledLineno=593

                      #makeLetrec
#line 12 curLineno=550 compiledLineno=596

                      ___lambda = lambda { |_loop| 
#line 12 curLineno=550 compiledLineno=599

#line 12 curLineno=550 compiledLineno=601

                          _loop                           = 
#line 12 curLineno=550 compiledLineno=604

                            Proc.new { |_tree| 
#line 12 curLineno=550 compiledLineno=607

#line 12 curLineno=550 compiledLineno=609

                                if ( 
#line 12 curLineno=550 compiledLineno=612

#line 12 curLineno=550 compiledLineno=614

                                    _null_QUMARK(
#line 12 curLineno=550 compiledLineno=617

#line 12 curLineno=550 compiledLineno=619

                                        trampCall(_tree)
                                    )
                                 ) then
#line 12 curLineno=550 compiledLineno=624

#line 12 curLineno=550 compiledLineno=626

                                    true
                                else
#line 12 curLineno=550 compiledLineno=630

#line 12 curLineno=550 compiledLineno=632

                                    if ( 
#line 12 curLineno=550 compiledLineno=635

#line 12 curLineno=550 compiledLineno=637

                                        _pair_QUMARK(
#line 12 curLineno=550 compiledLineno=640

#line 12 curLineno=550 compiledLineno=642

                                            trampCall(_tree)
                                        )
                                     ) then
#line 12 curLineno=550 compiledLineno=647

#line 12 curLineno=550 compiledLineno=649

                                        begin 
#line 12 curLineno=550 compiledLineno=652

                                          #makeBegin
#line 12 curLineno=550 compiledLineno=655

#line 12 curLineno=550 compiledLineno=657

#line 12 curLineno=550 compiledLineno=659

                                              trampCall( self._write_MIMARKtree_METHOD(  'write-tree',
#line 12 curLineno=550 compiledLineno=662

#line 12 curLineno=550 compiledLineno=664

                                                  trampCall(@_write_MIMARKtree)                                                ,
                                              [
#line 12 curLineno=550 compiledLineno=668

#line 12 curLineno=550 compiledLineno=670

#line 12 curLineno=550 compiledLineno=672

#line 12 curLineno=550 compiledLineno=674

                                                      _car(
#line 12 curLineno=550 compiledLineno=677

#line 12 curLineno=550 compiledLineno=679

                                                          trampCall(_tree)
                                                      )                                                  ,
#line 12 curLineno=550 compiledLineno=683

#line 12 curLineno=550 compiledLineno=685

                                                    trampCall(_out)
                                              ]
                                                           ))
#line 12 curLineno=550 compiledLineno=690

#line 12 curLineno=550 compiledLineno=692

                                              delayCall( '_loop',  'loop',
#line 12 curLineno=550 compiledLineno=695

#line 12 curLineno=550 compiledLineno=697

                                                  trampCall(_loop)                                                ,
                                              [
#line 12 curLineno=550 compiledLineno=701

#line 12 curLineno=550 compiledLineno=703

#line 12 curLineno=550 compiledLineno=705

#line 12 curLineno=550 compiledLineno=707

                                                      _cdr(
#line 12 curLineno=550 compiledLineno=710

#line 12 curLineno=550 compiledLineno=712

                                                          trampCall(_tree)
                                                      )
                                              ]
                                                           )
                                        end
                                    else
#line 12 curLineno=550 compiledLineno=720

#line 12 curLineno=550 compiledLineno=722

                                        if ( 
                                        true
                                         ) then
#line 12 curLineno=550 compiledLineno=727

#line 12 curLineno=550 compiledLineno=729

#line 12 curLineno=550 compiledLineno=731

                                              trampCall(_out).print(
#line 12 curLineno=550 compiledLineno=734

#line 12 curLineno=550 compiledLineno=736

#line 12 curLineno=550 compiledLineno=738

                                                    trampCall(_tree)
                                                )
                                        else
#line 12 curLineno=550 compiledLineno=743

#line 12 curLineno=550 compiledLineno=745

                                            Cell.new()
                                        end
                                    end
                                end
                            }
#line 12 curLineno=550 compiledLineno=752

#line 12 curLineno=550 compiledLineno=754

#line 12 curLineno=550 compiledLineno=756

                            delayCall( '_loop',  'loop',
#line 12 curLineno=550 compiledLineno=759

#line 12 curLineno=550 compiledLineno=761

                                trampCall(_loop)                              ,
                            [
#line 12 curLineno=550 compiledLineno=765

#line 12 curLineno=550 compiledLineno=767

#line 12 curLineno=550 compiledLineno=769

                                  trampCall(_tree)
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
#line 12 curLineno=550 compiledLineno=779

#line 12 curLineno=550 compiledLineno=781

#line 12 curLineno=550 compiledLineno=783

                      if ( 
#line 12 curLineno=550 compiledLineno=786

#line 12 curLineno=550 compiledLineno=788

                          _null_QUMARK(
#line 12 curLineno=550 compiledLineno=791

#line 12 curLineno=550 compiledLineno=793

                              trampCall(_out)
                          )
                       ) then
#line 12 curLineno=550 compiledLineno=798

#line 12 curLineno=550 compiledLineno=800

                          trampCall(STDOUT)
                      else
#line 12 curLineno=550 compiledLineno=804

#line 12 curLineno=550 compiledLineno=806

#line 12 curLineno=550 compiledLineno=808

                            delayCall( '_car',  'car',
#line 12 curLineno=550 compiledLineno=811

#line 12 curLineno=550 compiledLineno=813

                                trampCall(@_car)                              ,
                            [
#line 12 curLineno=550 compiledLineno=817

#line 12 curLineno=550 compiledLineno=819

#line 12 curLineno=550 compiledLineno=821

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


























































































































































































































#line 22 curLineno=1050 compiledLineno=1050

trampCall( 
#line 22 curLineno=1050 compiledLineno=1053

  begin 
#line 22 curLineno=1050 compiledLineno=1056

    #execFunc
#line 22 curLineno=1050 compiledLineno=1059

#line 22 curLineno=1050 compiledLineno=1061

      def self._tree_MIMARK_GTMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_tree_MIMARK_GTMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_tree_MIMARK_GTMARKstring'] = self.method( :_tree_MIMARK_GTMARKstring_METHOD )
#line 22 curLineno=1050 compiledLineno=1065

      #execFunc(funcname=define)
    @_tree_MIMARK_GTMARKstring = 
    trampCall(
#line 22 curLineno=1050 compiledLineno=1070

#line 22 curLineno=1050 compiledLineno=1072

#line 22 curLineno=1050 compiledLineno=1074

          Proc.new { |_tree| 
#line 22 curLineno=1050 compiledLineno=1077

#line 22 curLineno=1050 compiledLineno=1079

              begin
#line 22 curLineno=1050 compiledLineno=1082

                #makeLet
#line 22 curLineno=1050 compiledLineno=1085

                ___lambda = lambda { |_sio| 
#line 22 curLineno=1050 compiledLineno=1088

#line 22 curLineno=1050 compiledLineno=1090

#line 22 curLineno=1050 compiledLineno=1092

                      trampCall( self._write_MIMARKtree_METHOD(  'write-tree',
#line 22 curLineno=1050 compiledLineno=1095

#line 22 curLineno=1050 compiledLineno=1097

                          trampCall(@_write_MIMARKtree)                        ,
                      [
#line 22 curLineno=1050 compiledLineno=1101

#line 22 curLineno=1050 compiledLineno=1103

#line 22 curLineno=1050 compiledLineno=1105

                            trampCall(_tree)                          ,
#line 22 curLineno=1050 compiledLineno=1108

#line 22 curLineno=1050 compiledLineno=1110

                            trampCall(_sio)
                      ]
                                   ))
#line 22 curLineno=1050 compiledLineno=1115

                    trampCall(_sio).string(
#line 22 curLineno=1050 compiledLineno=1118

                      )
                } ; ___lambda.call(
#line 22 curLineno=1050 compiledLineno=1122

#line 22 curLineno=1050 compiledLineno=1124

#line 22 curLineno=1050 compiledLineno=1126

                      trampCall(StringIO).new(
#line 22 curLineno=1050 compiledLineno=1129

#line 22 curLineno=1050 compiledLineno=1131

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
