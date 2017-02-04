#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 40 curLineno=3900 compiledLineno=3900

trampCall( 
#line 40 curLineno=3900 compiledLineno=3903

  begin 
#line 40 curLineno=3900 compiledLineno=3906

    #execFunc
#line 40 curLineno=3900 compiledLineno=3909

#line 40 curLineno=3900 compiledLineno=3911

      def self._html_MIMARKescape_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKescape', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_html_MIMARKescape'] = self.method( :_html_MIMARKescape_METHOD )
#line 40 curLineno=3900 compiledLineno=3915

      #execFunc(funcname=define)
    @_html_MIMARKescape = 
    trampCall(
#line 40 curLineno=3900 compiledLineno=3920

#line 40 curLineno=3900 compiledLineno=3922

#line 40 curLineno=3900 compiledLineno=3924

          Proc.new { |_c| 
#line 40 curLineno=3900 compiledLineno=3927

#line 40 curLineno=3900 compiledLineno=3929

              begin
#line 40 curLineno=3900 compiledLineno=3932

                #makeLet
#line 40 curLineno=3900 compiledLineno=3935

                ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192| 
#line 40 curLineno=3900 compiledLineno=3938

#line 40 curLineno=3900 compiledLineno=3940

                    if ( 
#line 40 curLineno=3900 compiledLineno=3943

                      begin
#line 40 curLineno=3900 compiledLineno=3946

                        #makeLet
#line 40 curLineno=3900 compiledLineno=3949

                        ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198| 
#line 40 curLineno=3900 compiledLineno=3952

#line 40 curLineno=3900 compiledLineno=3954

                            if ( 
#line 40 curLineno=3900 compiledLineno=3957

                              trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198)
                             ) then
#line 40 curLineno=3900 compiledLineno=3961

#line 40 curLineno=3900 compiledLineno=3963

                                trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198)
                            else
#line 40 curLineno=3900 compiledLineno=3967

                              false
                            end
                        } ; ___lambda.call(
#line 40 curLineno=3900 compiledLineno=3972

#line 40 curLineno=3900 compiledLineno=3974

#line 40 curLineno=3900 compiledLineno=3976

#line 40 curLineno=3900 compiledLineno=3978

                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 40 curLineno=3900 compiledLineno=3981

#line 40 curLineno=3900 compiledLineno=3983

                                    trampCall(@_eqv_QUMARK)                                  ,
                                [
#line 40 curLineno=3900 compiledLineno=3987

#line 40 curLineno=3900 compiledLineno=3989

                                    "<"                                    ,
#line 40 curLineno=3900 compiledLineno=3992

#line 40 curLineno=3900 compiledLineno=3994

                                      trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                ]
                                             ))
                                   )
                      end
                     ) then
#line 40 curLineno=3900 compiledLineno=4002

#line 40 curLineno=3900 compiledLineno=4004

                        "&lt;"
                    else
#line 40 curLineno=3900 compiledLineno=4008

#line 40 curLineno=3900 compiledLineno=4010

                        if ( 
#line 40 curLineno=3900 compiledLineno=4013

                          begin
#line 40 curLineno=3900 compiledLineno=4016

                            #makeLet
#line 40 curLineno=3900 compiledLineno=4019

                            ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199| 
#line 40 curLineno=3900 compiledLineno=4022

#line 40 curLineno=3900 compiledLineno=4024

                                if ( 
#line 40 curLineno=3900 compiledLineno=4027

                                  trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199)
                                 ) then
#line 40 curLineno=3900 compiledLineno=4031

#line 40 curLineno=3900 compiledLineno=4033

                                    trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199)
                                else
#line 40 curLineno=3900 compiledLineno=4037

                                  false
                                end
                            } ; ___lambda.call(
#line 40 curLineno=3900 compiledLineno=4042

#line 40 curLineno=3900 compiledLineno=4044

#line 40 curLineno=3900 compiledLineno=4046

#line 40 curLineno=3900 compiledLineno=4048

                                    trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 40 curLineno=3900 compiledLineno=4051

#line 40 curLineno=3900 compiledLineno=4053

                                        trampCall(@_eqv_QUMARK)                                      ,
                                    [
#line 40 curLineno=3900 compiledLineno=4057

#line 40 curLineno=3900 compiledLineno=4059

                                        ">"                                        ,
#line 40 curLineno=3900 compiledLineno=4062

#line 40 curLineno=3900 compiledLineno=4064

                                          trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                    ]
                                                 ))
                                       )
                          end
                         ) then
#line 40 curLineno=3900 compiledLineno=4072

#line 40 curLineno=3900 compiledLineno=4074

                            "&gt;"
                        else
#line 40 curLineno=3900 compiledLineno=4078

#line 40 curLineno=3900 compiledLineno=4080

                            if ( 
#line 40 curLineno=3900 compiledLineno=4083

                              begin
#line 40 curLineno=3900 compiledLineno=4086

                                #makeLet
#line 40 curLineno=3900 compiledLineno=4089

                                ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200| 
#line 40 curLineno=3900 compiledLineno=4092

#line 40 curLineno=3900 compiledLineno=4094

                                    if ( 
#line 40 curLineno=3900 compiledLineno=4097

                                      trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200)
                                     ) then
#line 40 curLineno=3900 compiledLineno=4101

#line 40 curLineno=3900 compiledLineno=4103

                                        trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200)
                                    else
#line 40 curLineno=3900 compiledLineno=4107

                                      false
                                    end
                                } ; ___lambda.call(
#line 40 curLineno=3900 compiledLineno=4112

#line 40 curLineno=3900 compiledLineno=4114

#line 40 curLineno=3900 compiledLineno=4116

#line 40 curLineno=3900 compiledLineno=4118

                                        trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 40 curLineno=3900 compiledLineno=4121

#line 40 curLineno=3900 compiledLineno=4123

                                            trampCall(@_eqv_QUMARK)                                          ,
                                        [
#line 40 curLineno=3900 compiledLineno=4127

#line 40 curLineno=3900 compiledLineno=4129

                                            "&"                                            ,
#line 40 curLineno=3900 compiledLineno=4132

#line 40 curLineno=3900 compiledLineno=4134

                                              trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                        ]
                                                     ))
                                           )
                              end
                             ) then
#line 40 curLineno=3900 compiledLineno=4142

#line 40 curLineno=3900 compiledLineno=4144

                                "&amp;"
                            else
#line 40 curLineno=3900 compiledLineno=4148

#line 40 curLineno=3900 compiledLineno=4150

                                if ( 
#line 40 curLineno=3900 compiledLineno=4153

                                  begin
#line 40 curLineno=3900 compiledLineno=4156

                                    #makeLet
#line 40 curLineno=3900 compiledLineno=4159

                                    ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201| 
#line 40 curLineno=3900 compiledLineno=4162

#line 40 curLineno=3900 compiledLineno=4164

                                        if ( 
#line 40 curLineno=3900 compiledLineno=4167

                                          trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201)
                                         ) then
#line 40 curLineno=3900 compiledLineno=4171

#line 40 curLineno=3900 compiledLineno=4173

                                            trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201)
                                        else
#line 40 curLineno=3900 compiledLineno=4177

                                          false
                                        end
                                    } ; ___lambda.call(
#line 40 curLineno=3900 compiledLineno=4182

#line 40 curLineno=3900 compiledLineno=4184

#line 40 curLineno=3900 compiledLineno=4186

#line 40 curLineno=3900 compiledLineno=4188

                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 40 curLineno=3900 compiledLineno=4191

#line 40 curLineno=3900 compiledLineno=4193

                                                trampCall(@_eqv_QUMARK)                                              ,
                                            [
#line 40 curLineno=3900 compiledLineno=4197

#line 40 curLineno=3900 compiledLineno=4199

                                                "\""                                                ,
#line 40 curLineno=3900 compiledLineno=4202

#line 40 curLineno=3900 compiledLineno=4204

                                                  trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                            ]
                                                         ))
                                               )
                                  end
                                 ) then
#line 40 curLineno=3900 compiledLineno=4212

#line 40 curLineno=3900 compiledLineno=4214

                                    "&quot;"
                                else
#line 40 curLineno=3900 compiledLineno=4218

#line 40 curLineno=3900 compiledLineno=4220

                                    if ( 
                                    true
                                     ) then
#line 40 curLineno=3900 compiledLineno=4225

#line 40 curLineno=3900 compiledLineno=4227

#line 40 curLineno=3900 compiledLineno=4229

                                          trampCall(_c)
                                    else
#line 40 curLineno=3900 compiledLineno=4233

#line 40 curLineno=3900 compiledLineno=4235

                                        Cell.new()
                                    end
                                end
                            end
                        end
                    end
                } ; ___lambda.call(
#line 40 curLineno=3900 compiledLineno=4244

#line 40 curLineno=3900 compiledLineno=4246

#line 40 curLineno=3900 compiledLineno=4248

                      trampCall(_c)
                           )
              end
          }
    )
  end
 )



























































































































































































































































































































































































































































#line 48 curLineno=4700 compiledLineno=4700

trampCall( 
#line 48 curLineno=4700 compiledLineno=4703

  begin 
#line 48 curLineno=4700 compiledLineno=4706

    #execFunc
#line 48 curLineno=4700 compiledLineno=4709

#line 48 curLineno=4700 compiledLineno=4711

      def self._html_MIMARKescape_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKescape_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_html_MIMARKescape_MIMARKstring'] = self.method( :_html_MIMARKescape_MIMARKstring_METHOD )
#line 48 curLineno=4700 compiledLineno=4715

      #execFunc(funcname=define)
    @_html_MIMARKescape_MIMARKstring = 
    trampCall(
#line 48 curLineno=4700 compiledLineno=4720

#line 48 curLineno=4700 compiledLineno=4722

#line 48 curLineno=4700 compiledLineno=4724

          Proc.new { |_string| 
#line 48 curLineno=4700 compiledLineno=4727

#line 48 curLineno=4700 compiledLineno=4729

#line 48 curLineno=4700 compiledLineno=4731

                delayCall( '_string_MIMARKjoin',  'string-join',
#line 48 curLineno=4700 compiledLineno=4734

#line 48 curLineno=4700 compiledLineno=4736

                    trampCall(@_string_MIMARKjoin)                  ,
                [
#line 48 curLineno=4700 compiledLineno=4740

#line 48 curLineno=4700 compiledLineno=4742

#line 48 curLineno=4700 compiledLineno=4744

#line 48 curLineno=4700 compiledLineno=4746

                        trampCall( self._map_METHOD(  'map',
#line 48 curLineno=4700 compiledLineno=4749

#line 48 curLineno=4700 compiledLineno=4751

                            trampCall(@_map)                          ,
                        [
#line 48 curLineno=4700 compiledLineno=4755

#line 48 curLineno=4700 compiledLineno=4757

#line 48 curLineno=4700 compiledLineno=4759

                              trampCall(@_html_MIMARKescape)                            ,
#line 48 curLineno=4700 compiledLineno=4762

#line 48 curLineno=4700 compiledLineno=4764

#line 48 curLineno=4700 compiledLineno=4766

                                _to_MIMARKlist(
#line 48 curLineno=4700 compiledLineno=4769

#line 48 curLineno=4700 compiledLineno=4771

                                    trampCall(_string).to_s.split(
#line 48 curLineno=4700 compiledLineno=4774

#line 48 curLineno=4700 compiledLineno=4776

                                        ""
                                      )
                                )
                        ]
                                     ))                    ,
#line 48 curLineno=4700 compiledLineno=4783

                    ""
                ]
                             )
          }
    )
  end
 )




























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 62 curLineno=6100 compiledLineno=6100

trampCall( 
#line 62 curLineno=6100 compiledLineno=6103

  begin 
#line 62 curLineno=6100 compiledLineno=6106

    #execFunc
#line 62 curLineno=6100 compiledLineno=6109

#line 62 curLineno=6100 compiledLineno=6111

      def self.__ASMARKdoctype_MIMARKalist_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKdoctype_MIMARKalist_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['__ASMARKdoctype_MIMARKalist_ASMARK'] = self.method( :__ASMARKdoctype_MIMARKalist_ASMARK_METHOD )
#line 62 curLineno=6100 compiledLineno=6115

      #execFunc(funcname=define)
    @__ASMARKdoctype_MIMARKalist_ASMARK = 
    trampCall(
#line 62 curLineno=6100 compiledLineno=6120

#line 62 curLineno=6100 compiledLineno=6122

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


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 93 curLineno=9200 compiledLineno=9200

trampCall( 
#line 93 curLineno=9200 compiledLineno=9203

  begin 
#line 93 curLineno=9200 compiledLineno=9206

    #execFunc
#line 93 curLineno=9200 compiledLineno=9209

#line 93 curLineno=9200 compiledLineno=9211

      def self._html_MIMARKdoctype_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKdoctype', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_html_MIMARKdoctype'] = self.method( :_html_MIMARKdoctype_METHOD )
#line 93 curLineno=9200 compiledLineno=9215

      #execFunc(funcname=define)
    @_html_MIMARKdoctype = 
    trampCall(
#line 93 curLineno=9200 compiledLineno=9220

#line 93 curLineno=9200 compiledLineno=9222

#line 93 curLineno=9200 compiledLineno=9224

          Proc.new { |*__rest__| _type = __rest__[0] ;  
#line 93 curLineno=9200 compiledLineno=9227

#line 93 curLineno=9200 compiledLineno=9229

              begin
#line 93 curLineno=9200 compiledLineno=9232

                #makeLet
#line 93 curLineno=9200 compiledLineno=9235

                ___lambda = lambda { |_type| 
#line 93 curLineno=9200 compiledLineno=9238

#line 93 curLineno=9200 compiledLineno=9240

                    if ( 
#line 93 curLineno=9200 compiledLineno=9243

                      begin 
#line 93 curLineno=9200 compiledLineno=9246

                        #execFunc
#line 93 curLineno=9200 compiledLineno=9249

#line 93 curLineno=9200 compiledLineno=9251

                          def self.___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
                          @global_lisp_binding['___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203'] = self.method( :___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203_METHOD )
#line 93 curLineno=9200 compiledLineno=9255

                          #execFunc(funcname=set!)
                        @___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203 = 
                        trampCall(
#line 93 curLineno=9200 compiledLineno=9260

#line 93 curLineno=9200 compiledLineno=9262

#line 93 curLineno=9200 compiledLineno=9264

#line 93 curLineno=9200 compiledLineno=9266

                                trampCall( self._find_METHOD(  'find',
#line 93 curLineno=9200 compiledLineno=9269

#line 93 curLineno=9200 compiledLineno=9271

                                    trampCall(@_find)                                  ,
                                [
#line 93 curLineno=9200 compiledLineno=9275

#line 93 curLineno=9200 compiledLineno=9277

#line 93 curLineno=9200 compiledLineno=9279

                                      Proc.new { |_e| 
#line 93 curLineno=9200 compiledLineno=9282

#line 93 curLineno=9200 compiledLineno=9284

#line 93 curLineno=9200 compiledLineno=9286

                                            trampCall( self._memq_METHOD(  'memq',
#line 93 curLineno=9200 compiledLineno=9289

#line 93 curLineno=9200 compiledLineno=9291

                                                trampCall(@_memq)                                              ,
                                            [
#line 93 curLineno=9200 compiledLineno=9295

#line 93 curLineno=9200 compiledLineno=9297

#line 93 curLineno=9200 compiledLineno=9299

                                                  trampCall(_type)                                                ,
#line 93 curLineno=9200 compiledLineno=9302

#line 93 curLineno=9200 compiledLineno=9304

#line 93 curLineno=9200 compiledLineno=9306

                                                    _car(
#line 93 curLineno=9200 compiledLineno=9309

#line 93 curLineno=9200 compiledLineno=9311

                                                        trampCall(_e)
                                                    )
                                            ]
                                                         ))
                                      }                                    ,
#line 93 curLineno=9200 compiledLineno=9318

#line 93 curLineno=9200 compiledLineno=9320

                                      trampCall(@__ASMARKdoctype_MIMARKalist_ASMARK)
                                ]
                                             ))
                        )
                      end
                     ) then
#line 93 curLineno=9200 compiledLineno=9328

#line 93 curLineno=9200 compiledLineno=9330

#line 93 curLineno=9200 compiledLineno=9332

                          delayCall( '_caddr',  'caddr',
#line 93 curLineno=9200 compiledLineno=9335

#line 93 curLineno=9200 compiledLineno=9337

                              trampCall(@_caddr)                            ,
                          [
#line 93 curLineno=9200 compiledLineno=9341

#line 93 curLineno=9200 compiledLineno=9343

#line 93 curLineno=9200 compiledLineno=9345

                                trampCall(@___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203)
                          ]
                                       )
                    else
#line 93 curLineno=9200 compiledLineno=9351

#line 93 curLineno=9200 compiledLineno=9353

                        if ( 
                        true
                         ) then
#line 93 curLineno=9200 compiledLineno=9358

#line 93 curLineno=9200 compiledLineno=9360

#line 93 curLineno=9200 compiledLineno=9362

                              begin raise RuntimeError, 
#line 93 curLineno=9200 compiledLineno=9365

                                "Unknown doctype type spec" ' ' + 
                                _write_MIMARKto_MIMARKstring(
#line 93 curLineno=9200 compiledLineno=9369

                                  trampCall(_type)
                                )
                              rescue => __e 
                                __e.set_backtrace( ["./lib/nendo/text/html-lite.nnd:99"] + __e.backtrace )
                                raise __e
                              end
                        else
#line 93 curLineno=9200 compiledLineno=9378

#line 93 curLineno=9200 compiledLineno=9380

                            Cell.new()
                        end
                    end
                } ; ___lambda.call(
#line 93 curLineno=9200 compiledLineno=9386

#line 93 curLineno=9200 compiledLineno=9388

#line 93 curLineno=9200 compiledLineno=9390

                      if ( 
#line 93 curLineno=9200 compiledLineno=9393

#line 93 curLineno=9200 compiledLineno=9395

                          _null_QUMARK(
#line 93 curLineno=9200 compiledLineno=9398

#line 93 curLineno=9200 compiledLineno=9400

                              trampCall(_type)
                          )
                       ) then
#line 93 curLineno=9200 compiledLineno=9405

                        LispKeyword.new( "html-4.01-strict" )
                      else
#line 93 curLineno=9200 compiledLineno=9409

#line 93 curLineno=9200 compiledLineno=9411

                          trampCall(_type)
                      end
                           )
              end
          }
    )
  end
 )











































































































































































































































































































































































































































































































































































































































































































































































































#line 103 curLineno=10200 compiledLineno=10200

trampCall( 
#line 103 curLineno=10200 compiledLineno=10203

  begin 
#line 103 curLineno=10200 compiledLineno=10206

    #execFunc
#line 103 curLineno=10200 compiledLineno=10209

#line 103 curLineno=10200 compiledLineno=10211

      def self._make_MIMARKhtml_MIMARKelement_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_make_MIMARKhtml_MIMARKelement', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_make_MIMARKhtml_MIMARKelement'] = self.method( :_make_MIMARKhtml_MIMARKelement_METHOD )
#line 103 curLineno=10200 compiledLineno=10215

      #execFunc(funcname=define)
    @_make_MIMARKhtml_MIMARKelement = 
    trampCall(
#line 103 curLineno=10200 compiledLineno=10220

#line 103 curLineno=10200 compiledLineno=10222

#line 103 curLineno=10200 compiledLineno=10224

          Proc.new { |_name,*__rest__| _args = __rest__[0] ;  
#line 103 curLineno=10200 compiledLineno=10227

#line 103 curLineno=10200 compiledLineno=10229

              begin 
#line 103 curLineno=10200 compiledLineno=10232

                #makeLetrec
#line 103 curLineno=10200 compiledLineno=10235

                ___lambda = lambda { |_get_MIMARKattr| 
#line 103 curLineno=10200 compiledLineno=10238

#line 103 curLineno=10200 compiledLineno=10240

                    _get_MIMARKattr                     = 
#line 103 curLineno=10200 compiledLineno=10243

                      Proc.new { |_args,_attrs| 
#line 103 curLineno=10200 compiledLineno=10246

#line 103 curLineno=10200 compiledLineno=10248

                          if ( 
#line 103 curLineno=10200 compiledLineno=10251

#line 103 curLineno=10200 compiledLineno=10253

                              _null_QUMARK(
#line 103 curLineno=10200 compiledLineno=10256

#line 103 curLineno=10200 compiledLineno=10258

                                  trampCall(_args)
                              )
                           ) then
#line 103 curLineno=10200 compiledLineno=10263

#line 103 curLineno=10200 compiledLineno=10265

#line 103 curLineno=10200 compiledLineno=10267

#line 103 curLineno=10200 compiledLineno=10269

                                  delayCall( '_values',  'values',
#line 103 curLineno=10200 compiledLineno=10272

#line 103 curLineno=10200 compiledLineno=10274

                                      trampCall(@_values)                                    ,
                                  [
#line 103 curLineno=10200 compiledLineno=10278

#line 103 curLineno=10200 compiledLineno=10280

#line 103 curLineno=10200 compiledLineno=10282

#line 103 curLineno=10200 compiledLineno=10284

                                          _reverse(
#line 103 curLineno=10200 compiledLineno=10287

#line 103 curLineno=10200 compiledLineno=10289

                                              trampCall(_attrs)
                                          )                                      ,
#line 103 curLineno=10200 compiledLineno=10293

#line 103 curLineno=10200 compiledLineno=10295

                                        trampCall(_args)
                                  ]
                                               )
                          else
#line 103 curLineno=10200 compiledLineno=10301

#line 103 curLineno=10200 compiledLineno=10303

                              if ( 
#line 103 curLineno=10200 compiledLineno=10306

#line 103 curLineno=10200 compiledLineno=10308

                                  _keyword_QUMARK(
#line 103 curLineno=10200 compiledLineno=10311

#line 103 curLineno=10200 compiledLineno=10313

#line 103 curLineno=10200 compiledLineno=10315

                                        _car(
#line 103 curLineno=10200 compiledLineno=10318

#line 103 curLineno=10200 compiledLineno=10320

                                            trampCall(_args)
                                        )
                                  )
                               ) then
#line 103 curLineno=10200 compiledLineno=10326

#line 103 curLineno=10200 compiledLineno=10328

#line 103 curLineno=10200 compiledLineno=10330

                                    if ( 
#line 103 curLineno=10200 compiledLineno=10333

#line 103 curLineno=10200 compiledLineno=10335

                                        _null_QUMARK(
#line 103 curLineno=10200 compiledLineno=10338

#line 103 curLineno=10200 compiledLineno=10340

#line 103 curLineno=10200 compiledLineno=10342

                                              _cdr(
#line 103 curLineno=10200 compiledLineno=10345

#line 103 curLineno=10200 compiledLineno=10347

                                                  trampCall(_args)
                                              )
                                        )
                                     ) then
#line 103 curLineno=10200 compiledLineno=10353

#line 103 curLineno=10200 compiledLineno=10355

#line 103 curLineno=10200 compiledLineno=10357

#line 103 curLineno=10200 compiledLineno=10359

                                            delayCall( '_values',  'values',
#line 103 curLineno=10200 compiledLineno=10362

#line 103 curLineno=10200 compiledLineno=10364

                                                trampCall(@_values)                                              ,
                                            [
#line 103 curLineno=10200 compiledLineno=10368

#line 103 curLineno=10200 compiledLineno=10370

#line 103 curLineno=10200 compiledLineno=10372

#line 103 curLineno=10200 compiledLineno=10374

                                                    _reverse(
#line 103 curLineno=10200 compiledLineno=10377

#line 103 curLineno=10200 compiledLineno=10379

#line 103 curLineno=10200 compiledLineno=10381

                                                          trampCall( self._list_ASMARK_METHOD(  'list*',
#line 103 curLineno=10200 compiledLineno=10384

#line 103 curLineno=10200 compiledLineno=10386

                                                              trampCall(@_list_ASMARK)                                                            ,
                                                          [
#line 103 curLineno=10200 compiledLineno=10390

#line 103 curLineno=10200 compiledLineno=10392

#line 103 curLineno=10200 compiledLineno=10394

#line 103 curLineno=10200 compiledLineno=10396

                                                                  _car(
#line 103 curLineno=10200 compiledLineno=10399

#line 103 curLineno=10200 compiledLineno=10401

                                                                      trampCall(_args)
                                                                  )                                                              ,
#line 103 curLineno=10200 compiledLineno=10405

                                                              " "                                                              ,
#line 103 curLineno=10200 compiledLineno=10408

#line 103 curLineno=10200 compiledLineno=10410

                                                                trampCall(_attrs)
                                                          ]
                                                                       ))
                                                    )                                                ,
#line 103 curLineno=10200 compiledLineno=10416

#line 103 curLineno=10200 compiledLineno=10418

                                                  trampCall(_args)
                                            ]
                                                         )
                                    else
#line 103 curLineno=10200 compiledLineno=10424

#line 103 curLineno=10200 compiledLineno=10426

                                        if ( 
#line 103 curLineno=10200 compiledLineno=10429

#line 103 curLineno=10200 compiledLineno=10431

                                            _eq_QUMARK(
#line 103 curLineno=10200 compiledLineno=10434

#line 103 curLineno=10200 compiledLineno=10436

#line 103 curLineno=10200 compiledLineno=10438

                                                  trampCall( self._cadr_METHOD(  'cadr',
#line 103 curLineno=10200 compiledLineno=10441

#line 103 curLineno=10200 compiledLineno=10443

                                                      trampCall(@_cadr)                                                    ,
                                                  [
#line 103 curLineno=10200 compiledLineno=10447

#line 103 curLineno=10200 compiledLineno=10449

#line 103 curLineno=10200 compiledLineno=10451

                                                        trampCall(_args)
                                                  ]
                                                               ))                                              ,
#line 103 curLineno=10200 compiledLineno=10456

                                              false
                                            )
                                         ) then
#line 103 curLineno=10200 compiledLineno=10461

#line 103 curLineno=10200 compiledLineno=10463

#line 103 curLineno=10200 compiledLineno=10465

#line 103 curLineno=10200 compiledLineno=10467

                                                delayCall( '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=10200 compiledLineno=10470

#line 103 curLineno=10200 compiledLineno=10472

                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
#line 103 curLineno=10200 compiledLineno=10476

#line 103 curLineno=10200 compiledLineno=10478

#line 103 curLineno=10200 compiledLineno=10480

#line 103 curLineno=10200 compiledLineno=10482

                                                        trampCall( self._cddr_METHOD(  'cddr',
#line 103 curLineno=10200 compiledLineno=10485

#line 103 curLineno=10200 compiledLineno=10487

                                                            trampCall(@_cddr)                                                          ,
                                                        [
#line 103 curLineno=10200 compiledLineno=10491

#line 103 curLineno=10200 compiledLineno=10493

#line 103 curLineno=10200 compiledLineno=10495

                                                              trampCall(_args)
                                                        ]
                                                                     ))                                                    ,
#line 103 curLineno=10200 compiledLineno=10500

#line 103 curLineno=10200 compiledLineno=10502

                                                      trampCall(_attrs)
                                                ]
                                                             )
                                        else
#line 103 curLineno=10200 compiledLineno=10508

#line 103 curLineno=10200 compiledLineno=10510

                                            if ( 
#line 103 curLineno=10200 compiledLineno=10513

#line 103 curLineno=10200 compiledLineno=10515

                                                _eq_QUMARK(
#line 103 curLineno=10200 compiledLineno=10518

#line 103 curLineno=10200 compiledLineno=10520

#line 103 curLineno=10200 compiledLineno=10522

                                                      trampCall( self._cadr_METHOD(  'cadr',
#line 103 curLineno=10200 compiledLineno=10525

#line 103 curLineno=10200 compiledLineno=10527

                                                          trampCall(@_cadr)                                                        ,
                                                      [
#line 103 curLineno=10200 compiledLineno=10531

#line 103 curLineno=10200 compiledLineno=10533

#line 103 curLineno=10200 compiledLineno=10535

                                                            trampCall(_args)
                                                      ]
                                                                   ))                                                  ,
#line 103 curLineno=10200 compiledLineno=10540

                                                  true
                                                )
                                             ) then
#line 103 curLineno=10200 compiledLineno=10545

#line 103 curLineno=10200 compiledLineno=10547

#line 103 curLineno=10200 compiledLineno=10549

#line 103 curLineno=10200 compiledLineno=10551

                                                    delayCall( '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=10200 compiledLineno=10554

#line 103 curLineno=10200 compiledLineno=10556

                                                        trampCall(_get_MIMARKattr)                                                      ,
                                                    [
#line 103 curLineno=10200 compiledLineno=10560

#line 103 curLineno=10200 compiledLineno=10562

#line 103 curLineno=10200 compiledLineno=10564

#line 103 curLineno=10200 compiledLineno=10566

                                                            trampCall( self._cddr_METHOD(  'cddr',
#line 103 curLineno=10200 compiledLineno=10569

#line 103 curLineno=10200 compiledLineno=10571

                                                                trampCall(@_cddr)                                                              ,
                                                            [
#line 103 curLineno=10200 compiledLineno=10575

#line 103 curLineno=10200 compiledLineno=10577

#line 103 curLineno=10200 compiledLineno=10579

                                                                  trampCall(_args)
                                                            ]
                                                                         ))                                                        ,
#line 103 curLineno=10200 compiledLineno=10584

#line 103 curLineno=10200 compiledLineno=10586

#line 103 curLineno=10200 compiledLineno=10588

                                                            trampCall( self._list_ASMARK_METHOD(  'list*',
#line 103 curLineno=10200 compiledLineno=10591

#line 103 curLineno=10200 compiledLineno=10593

                                                                trampCall(@_list_ASMARK)                                                              ,
                                                            [
#line 103 curLineno=10200 compiledLineno=10597

#line 103 curLineno=10200 compiledLineno=10599

#line 103 curLineno=10200 compiledLineno=10601

#line 103 curLineno=10200 compiledLineno=10603

                                                                    _car(
#line 103 curLineno=10200 compiledLineno=10606

#line 103 curLineno=10200 compiledLineno=10608

                                                                        trampCall(_args)
                                                                    )                                                                ,
#line 103 curLineno=10200 compiledLineno=10612

                                                                " "                                                                ,
#line 103 curLineno=10200 compiledLineno=10615

#line 103 curLineno=10200 compiledLineno=10617

                                                                  trampCall(_attrs)
                                                            ]
                                                                         ))
                                                    ]
                                                                 )
                                            else
#line 103 curLineno=10200 compiledLineno=10625

#line 103 curLineno=10200 compiledLineno=10627

                                                if ( 
                                                true
                                                 ) then
#line 103 curLineno=10200 compiledLineno=10632

#line 103 curLineno=10200 compiledLineno=10634

#line 103 curLineno=10200 compiledLineno=10636

#line 103 curLineno=10200 compiledLineno=10638

                                                        delayCall( '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=10200 compiledLineno=10641

#line 103 curLineno=10200 compiledLineno=10643

                                                            trampCall(_get_MIMARKattr)                                                          ,
                                                        [
#line 103 curLineno=10200 compiledLineno=10647

#line 103 curLineno=10200 compiledLineno=10649

#line 103 curLineno=10200 compiledLineno=10651

#line 103 curLineno=10200 compiledLineno=10653

                                                                trampCall( self._cddr_METHOD(  'cddr',
#line 103 curLineno=10200 compiledLineno=10656

#line 103 curLineno=10200 compiledLineno=10658

                                                                    trampCall(@_cddr)                                                                  ,
                                                                [
#line 103 curLineno=10200 compiledLineno=10662

#line 103 curLineno=10200 compiledLineno=10664

#line 103 curLineno=10200 compiledLineno=10666

                                                                      trampCall(_args)
                                                                ]
                                                                             ))                                                            ,
#line 103 curLineno=10200 compiledLineno=10671

#line 103 curLineno=10200 compiledLineno=10673

#line 103 curLineno=10200 compiledLineno=10675

                                                                trampCall( self._list_ASMARK_METHOD(  'list*',
#line 103 curLineno=10200 compiledLineno=10678

#line 103 curLineno=10200 compiledLineno=10680

                                                                    trampCall(@_list_ASMARK)                                                                  ,
                                                                [
#line 103 curLineno=10200 compiledLineno=10684

#line 103 curLineno=10200 compiledLineno=10686

#line 103 curLineno=10200 compiledLineno=10688

#line 103 curLineno=10200 compiledLineno=10690

                                                                        trampCall( self._sprintf_METHOD(  'sprintf',
#line 103 curLineno=10200 compiledLineno=10693

#line 103 curLineno=10200 compiledLineno=10695

                                                                            trampCall(@_sprintf)                                                                          ,
                                                                        [
#line 103 curLineno=10200 compiledLineno=10699

#line 103 curLineno=10200 compiledLineno=10701

                                                                            "=\"%s\""                                                                            ,
#line 103 curLineno=10200 compiledLineno=10704

#line 103 curLineno=10200 compiledLineno=10706

#line 103 curLineno=10200 compiledLineno=10708

                                                                                trampCall( self._html_MIMARKescape_MIMARKstring_METHOD(  'html-escape-string',
#line 103 curLineno=10200 compiledLineno=10711

#line 103 curLineno=10200 compiledLineno=10713

                                                                                    trampCall(@_html_MIMARKescape_MIMARKstring)                                                                                  ,
                                                                                [
#line 103 curLineno=10200 compiledLineno=10717

#line 103 curLineno=10200 compiledLineno=10719

#line 103 curLineno=10200 compiledLineno=10721

#line 103 curLineno=10200 compiledLineno=10723

                                                                                        trampCall( self._x_MIMARK_GTMARKstring_METHOD(  'x->string',
#line 103 curLineno=10200 compiledLineno=10726

#line 103 curLineno=10200 compiledLineno=10728

                                                                                            trampCall(@_x_MIMARK_GTMARKstring)                                                                                          ,
                                                                                        [
#line 103 curLineno=10200 compiledLineno=10732

#line 103 curLineno=10200 compiledLineno=10734

#line 103 curLineno=10200 compiledLineno=10736

#line 103 curLineno=10200 compiledLineno=10738

                                                                                                trampCall( self._cadr_METHOD(  'cadr',
#line 103 curLineno=10200 compiledLineno=10741

#line 103 curLineno=10200 compiledLineno=10743

                                                                                                    trampCall(@_cadr)                                                                                                  ,
                                                                                                [
#line 103 curLineno=10200 compiledLineno=10747

#line 103 curLineno=10200 compiledLineno=10749

#line 103 curLineno=10200 compiledLineno=10751

                                                                                                      trampCall(_args)
                                                                                                ]
                                                                                                             ))
                                                                                        ]
                                                                                                     ))
                                                                                ]
                                                                                             ))
                                                                        ]
                                                                                     ))                                                                    ,
#line 103 curLineno=10200 compiledLineno=10762

#line 103 curLineno=10200 compiledLineno=10764

#line 103 curLineno=10200 compiledLineno=10766

                                                                        _car(
#line 103 curLineno=10200 compiledLineno=10769

#line 103 curLineno=10200 compiledLineno=10771

                                                                            trampCall(_args)
                                                                        )                                                                    ,
#line 103 curLineno=10200 compiledLineno=10775

                                                                    " "                                                                    ,
#line 103 curLineno=10200 compiledLineno=10778

#line 103 curLineno=10200 compiledLineno=10780

                                                                      trampCall(_attrs)
                                                                ]
                                                                             ))
                                                        ]
                                                                     )
                                                else
#line 103 curLineno=10200 compiledLineno=10788

#line 103 curLineno=10200 compiledLineno=10790

                                                    Cell.new()
                                                end
                                            end
                                        end
                                    end
                              else
#line 103 curLineno=10200 compiledLineno=10798

#line 103 curLineno=10200 compiledLineno=10800

                                  if ( 
                                  true
                                   ) then
#line 103 curLineno=10200 compiledLineno=10805

#line 103 curLineno=10200 compiledLineno=10807

#line 103 curLineno=10200 compiledLineno=10809

#line 103 curLineno=10200 compiledLineno=10811

                                          delayCall( '_values',  'values',
#line 103 curLineno=10200 compiledLineno=10814

#line 103 curLineno=10200 compiledLineno=10816

                                              trampCall(@_values)                                            ,
                                          [
#line 103 curLineno=10200 compiledLineno=10820

#line 103 curLineno=10200 compiledLineno=10822

#line 103 curLineno=10200 compiledLineno=10824

#line 103 curLineno=10200 compiledLineno=10826

                                                  _reverse(
#line 103 curLineno=10200 compiledLineno=10829

#line 103 curLineno=10200 compiledLineno=10831

                                                      trampCall(_attrs)
                                                  )                                              ,
#line 103 curLineno=10200 compiledLineno=10835

#line 103 curLineno=10200 compiledLineno=10837

                                                trampCall(_args)
                                          ]
                                                       )
                                  else
#line 103 curLineno=10200 compiledLineno=10843

#line 103 curLineno=10200 compiledLineno=10845

                                      Cell.new()
                                  end
                              end
                          end
                      }
#line 103 curLineno=10200 compiledLineno=10852

#line 103 curLineno=10200 compiledLineno=10854

                    begin
#line 103 curLineno=10200 compiledLineno=10857

                      #makeLet
#line 103 curLineno=10200 compiledLineno=10860

                      ___lambda = lambda { |_empty_QUMARK| 
#line 103 curLineno=10200 compiledLineno=10863

#line 103 curLineno=10200 compiledLineno=10865

                          if ( 
#line 103 curLineno=10200 compiledLineno=10868

                            trampCall(_empty_QUMARK)
                           ) then
#line 103 curLineno=10200 compiledLineno=10872

#line 103 curLineno=10200 compiledLineno=10874

                              Proc.new { |*__rest__| _args = __rest__[0] ;  
#line 103 curLineno=10200 compiledLineno=10877

#line 103 curLineno=10200 compiledLineno=10879

#line 103 curLineno=10200 compiledLineno=10881

                                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
#line 103 curLineno=10200 compiledLineno=10884

#line 103 curLineno=10200 compiledLineno=10886

                                        trampCall(@_call_MIMARKwith_MIMARKvalues)                                      ,
                                    [
#line 103 curLineno=10200 compiledLineno=10890

#line 103 curLineno=10200 compiledLineno=10892

#line 103 curLineno=10200 compiledLineno=10894

                                          Proc.new { || 
#line 103 curLineno=10200 compiledLineno=10897

#line 103 curLineno=10200 compiledLineno=10899

#line 103 curLineno=10200 compiledLineno=10901

                                                trampCall( callProcedure(  '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=10200 compiledLineno=10904

#line 103 curLineno=10200 compiledLineno=10906

                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
#line 103 curLineno=10200 compiledLineno=10910

#line 103 curLineno=10200 compiledLineno=10912

#line 103 curLineno=10200 compiledLineno=10914

                                                      trampCall(_args)                                                    ,
#line 103 curLineno=10200 compiledLineno=10917

                                                    Cell.new()
                                                ]
                                                             ))
                                          }                                        ,
#line 103 curLineno=10200 compiledLineno=10923

#line 103 curLineno=10200 compiledLineno=10925

                                          Proc.new { |_attr,_args| 
#line 103 curLineno=10200 compiledLineno=10928

#line 103 curLineno=10200 compiledLineno=10930

                                              if ( 
#line 103 curLineno=10200 compiledLineno=10933

#line 103 curLineno=10200 compiledLineno=10935

                                                  _not(
#line 103 curLineno=10200 compiledLineno=10938

#line 103 curLineno=10200 compiledLineno=10940

#line 103 curLineno=10200 compiledLineno=10942

                                                        _null_QUMARK(
#line 103 curLineno=10200 compiledLineno=10945

#line 103 curLineno=10200 compiledLineno=10947

                                                            trampCall(_args)
                                                        )
                                                  )
                                               ) then
#line 103 curLineno=10200 compiledLineno=10953

#line 103 curLineno=10200 compiledLineno=10955

#line 103 curLineno=10200 compiledLineno=10957

                                                    begin raise RuntimeError, 
#line 103 curLineno=10200 compiledLineno=10960

#line 103 curLineno=10200 compiledLineno=10962

                                                        trampCall( self._sprintf_METHOD(  'sprintf',
#line 103 curLineno=10200 compiledLineno=10965

#line 103 curLineno=10200 compiledLineno=10967

                                                            trampCall(@_sprintf)                                                          ,
                                                        [
#line 103 curLineno=10200 compiledLineno=10971

#line 103 curLineno=10200 compiledLineno=10973

                                                            "element %s can't have content: %s"                                                            ,
#line 103 curLineno=10200 compiledLineno=10976

#line 103 curLineno=10200 compiledLineno=10978

                                                              trampCall(_name)                                                            ,
#line 103 curLineno=10200 compiledLineno=10981

#line 103 curLineno=10200 compiledLineno=10983

#line 103 curLineno=10200 compiledLineno=10985

                                                                _write_MIMARKto_MIMARKstring(
#line 103 curLineno=10200 compiledLineno=10988

#line 103 curLineno=10200 compiledLineno=10990

                                                                    trampCall(_args)
                                                                )
                                                        ]
                                                                     ))
                                                    rescue => __e 
                                                      __e.set_backtrace( [":1"] + __e.backtrace )
                                                      raise __e
                                                    end
                                              end
#line 103 curLineno=10200 compiledLineno=11001

#line 103 curLineno=10200 compiledLineno=11003

                                                trampCall( self._list_METHOD(  'list',
#line 103 curLineno=10200 compiledLineno=11006

#line 103 curLineno=10200 compiledLineno=11008

                                                    trampCall(@_list)                                                  ,
                                                [
#line 103 curLineno=10200 compiledLineno=11012

#line 103 curLineno=10200 compiledLineno=11014

                                                    "<"                                                    ,
#line 103 curLineno=10200 compiledLineno=11017

#line 103 curLineno=10200 compiledLineno=11019

                                                      trampCall(_name)                                                    ,
#line 103 curLineno=10200 compiledLineno=11022

#line 103 curLineno=10200 compiledLineno=11024

                                                      trampCall(_attr)                                                    ,
#line 103 curLineno=10200 compiledLineno=11027

                                                    " />"
                                                ]
                                                             ))
                                          }
                                    ]
                                                 )
                              }
                          else
#line 103 curLineno=10200 compiledLineno=11037

#line 103 curLineno=10200 compiledLineno=11039

                              Proc.new { |*__rest__| _args = __rest__[0] ;  
#line 103 curLineno=10200 compiledLineno=11042

#line 103 curLineno=10200 compiledLineno=11044

#line 103 curLineno=10200 compiledLineno=11046

                                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
#line 103 curLineno=10200 compiledLineno=11049

#line 103 curLineno=10200 compiledLineno=11051

                                        trampCall(@_call_MIMARKwith_MIMARKvalues)                                      ,
                                    [
#line 103 curLineno=10200 compiledLineno=11055

#line 103 curLineno=10200 compiledLineno=11057

#line 103 curLineno=10200 compiledLineno=11059

                                          Proc.new { || 
#line 103 curLineno=10200 compiledLineno=11062

#line 103 curLineno=10200 compiledLineno=11064

#line 103 curLineno=10200 compiledLineno=11066

                                                trampCall( callProcedure(  '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=10200 compiledLineno=11069

#line 103 curLineno=10200 compiledLineno=11071

                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
#line 103 curLineno=10200 compiledLineno=11075

#line 103 curLineno=10200 compiledLineno=11077

#line 103 curLineno=10200 compiledLineno=11079

                                                      trampCall(_args)                                                    ,
#line 103 curLineno=10200 compiledLineno=11082

                                                    Cell.new()
                                                ]
                                                             ))
                                          }                                        ,
#line 103 curLineno=10200 compiledLineno=11088

#line 103 curLineno=10200 compiledLineno=11090

                                          Proc.new { |_attr,_args| 
#line 103 curLineno=10200 compiledLineno=11093

#line 103 curLineno=10200 compiledLineno=11095

#line 103 curLineno=10200 compiledLineno=11097

                                                trampCall( self._list_METHOD(  'list',
#line 103 curLineno=10200 compiledLineno=11100

#line 103 curLineno=10200 compiledLineno=11102

                                                    trampCall(@_list)                                                  ,
                                                [
#line 103 curLineno=10200 compiledLineno=11106

#line 103 curLineno=10200 compiledLineno=11108

                                                    "<"                                                    ,
#line 103 curLineno=10200 compiledLineno=11111

#line 103 curLineno=10200 compiledLineno=11113

                                                      trampCall(_name)                                                    ,
#line 103 curLineno=10200 compiledLineno=11116

#line 103 curLineno=10200 compiledLineno=11118

                                                      trampCall(_attr)                                                    ,
#line 103 curLineno=10200 compiledLineno=11121

                                                    ">"                                                    ,
#line 103 curLineno=10200 compiledLineno=11124

#line 103 curLineno=10200 compiledLineno=11126

                                                      trampCall(_args)                                                    ,
#line 103 curLineno=10200 compiledLineno=11129

                                                    "</"                                                    ,
#line 103 curLineno=10200 compiledLineno=11132

#line 103 curLineno=10200 compiledLineno=11134

                                                      trampCall(_name)                                                    ,
#line 103 curLineno=10200 compiledLineno=11137

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
#line 103 curLineno=10200 compiledLineno=11149

#line 103 curLineno=10200 compiledLineno=11151

#line 103 curLineno=10200 compiledLineno=11153

#line 103 curLineno=10200 compiledLineno=11155

                              trampCall( self._get_MIMARKkeyword_METHOD(  'get-keyword',
#line 103 curLineno=10200 compiledLineno=11158

#line 103 curLineno=10200 compiledLineno=11160

                                  trampCall(@_get_MIMARKkeyword)                                ,
                              [
#line 103 curLineno=10200 compiledLineno=11164

#line 103 curLineno=10200 compiledLineno=11166

                                  LispKeyword.new( "empty?" )                                  ,
#line 103 curLineno=10200 compiledLineno=11169

#line 103 curLineno=10200 compiledLineno=11171

                                    trampCall(_args)                                  ,
#line 103 curLineno=10200 compiledLineno=11174

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































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 134 curLineno=13300 compiledLineno=13300

trampCall( 
#line 134 curLineno=13300 compiledLineno=13303

  begin 
#line 134 curLineno=13300 compiledLineno=13306

    #execFunc
#line 134 curLineno=13300 compiledLineno=13309

#line 134 curLineno=13300 compiledLineno=13311

      def self._define_MIMARKhtml_MIMARKelements_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_define_MIMARKhtml_MIMARKelements', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_define_MIMARKhtml_MIMARKelements'] = self.method( :_define_MIMARKhtml_MIMARKelements_METHOD )
#line 134 curLineno=13300 compiledLineno=13315

      #execFunc(funcname=define)
    @_define_MIMARKhtml_MIMARKelements = 
    trampCall(
#line 134 curLineno=13300 compiledLineno=13320

#line 134 curLineno=13300 compiledLineno=13322

#line 134 curLineno=13300 compiledLineno=13324

          LispMacro.new { |*__rest__| _elements = __rest__[0] ;  
#line 134 curLineno=13300 compiledLineno=13327

#line 134 curLineno=13300 compiledLineno=13329

              begin 
#line 134 curLineno=13300 compiledLineno=13332

                #makeLetrec
#line 134 curLineno=13300 compiledLineno=13335

                ___lambda = lambda { |_make_MIMARKscheme_MIMARKname| 
#line 134 curLineno=13300 compiledLineno=13338

#line 134 curLineno=13300 compiledLineno=13340

                    _make_MIMARKscheme_MIMARKname                     = 
#line 134 curLineno=13300 compiledLineno=13343

                      Proc.new { |_name| 
#line 134 curLineno=13300 compiledLineno=13346

#line 134 curLineno=13300 compiledLineno=13348

#line 134 curLineno=13300 compiledLineno=13350

                            _string_MIMARK_GTMARKsymbol(
#line 134 curLineno=13300 compiledLineno=13353

#line 134 curLineno=13300 compiledLineno=13355

#line 134 curLineno=13300 compiledLineno=13357

                                  trampCall( self._sprintf_METHOD(  'sprintf',
#line 134 curLineno=13300 compiledLineno=13360

#line 134 curLineno=13300 compiledLineno=13362

                                      trampCall(@_sprintf)                                    ,
                                  [
#line 134 curLineno=13300 compiledLineno=13366

#line 134 curLineno=13300 compiledLineno=13368

                                      "html:%s"                                      ,
#line 134 curLineno=13300 compiledLineno=13371

#line 134 curLineno=13300 compiledLineno=13373

                                        trampCall(_name)
                                  ]
                                               ))
                            )
                      }
#line 134 curLineno=13300 compiledLineno=13380

#line 134 curLineno=13300 compiledLineno=13382

                    begin 
#line 134 curLineno=13300 compiledLineno=13385

                      #makeLetrec
#line 134 curLineno=13300 compiledLineno=13388

                      ___lambda = lambda { |_loop| 
#line 134 curLineno=13300 compiledLineno=13391

#line 134 curLineno=13300 compiledLineno=13393

                          _loop                           = 
#line 134 curLineno=13300 compiledLineno=13396

                            Proc.new { |_elements,_r| 
#line 134 curLineno=13300 compiledLineno=13399

#line 134 curLineno=13300 compiledLineno=13401

                                if ( 
#line 134 curLineno=13300 compiledLineno=13404

#line 134 curLineno=13300 compiledLineno=13406

                                    _null_QUMARK(
#line 134 curLineno=13300 compiledLineno=13409

#line 134 curLineno=13300 compiledLineno=13411

                                        trampCall(_elements)
                                    )
                                 ) then
#line 134 curLineno=13300 compiledLineno=13416

#line 134 curLineno=13300 compiledLineno=13418

#line 134 curLineno=13300 compiledLineno=13420

#line 134 curLineno=13300 compiledLineno=13422

                                        _cons(
#line 134 curLineno=13300 compiledLineno=13425

                                          :"begin"                                          ,
#line 134 curLineno=13300 compiledLineno=13428

#line 134 curLineno=13300 compiledLineno=13430

#line 134 curLineno=13300 compiledLineno=13432

                                              _reverse(
#line 134 curLineno=13300 compiledLineno=13435

#line 134 curLineno=13300 compiledLineno=13437

                                                  trampCall(_r)
                                              )
                                        )
                                else
#line 134 curLineno=13300 compiledLineno=13443

#line 134 curLineno=13300 compiledLineno=13445

                                    if ( 
#line 134 curLineno=13300 compiledLineno=13448

                                      if ( 
#line 134 curLineno=13300 compiledLineno=13451

#line 134 curLineno=13300 compiledLineno=13453

                                          _not(
#line 134 curLineno=13300 compiledLineno=13456

#line 134 curLineno=13300 compiledLineno=13458

#line 134 curLineno=13300 compiledLineno=13460

                                                _eq_QUMARK(
#line 134 curLineno=13300 compiledLineno=13463

                                                  false                                                  ,
#line 134 curLineno=13300 compiledLineno=13466

#line 134 curLineno=13300 compiledLineno=13468

#line 134 curLineno=13300 compiledLineno=13470

                                                      _pair_QUMARK(
#line 134 curLineno=13300 compiledLineno=13473

#line 134 curLineno=13300 compiledLineno=13475

#line 134 curLineno=13300 compiledLineno=13477

                                                            _cdr(
#line 134 curLineno=13300 compiledLineno=13480

#line 134 curLineno=13300 compiledLineno=13482

                                                                trampCall(_elements)
                                                            )
                                                      )
                                                )
                                          )
                                       ) then
#line 134 curLineno=13300 compiledLineno=13490

#line 134 curLineno=13300 compiledLineno=13492

#line 134 curLineno=13300 compiledLineno=13494

                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 134 curLineno=13300 compiledLineno=13497

#line 134 curLineno=13300 compiledLineno=13499

                                                trampCall(@_eqv_QUMARK)                                              ,
                                            [
#line 134 curLineno=13300 compiledLineno=13503

#line 134 curLineno=13300 compiledLineno=13505

#line 134 curLineno=13300 compiledLineno=13507

#line 134 curLineno=13300 compiledLineno=13509

                                                    trampCall( self._cadr_METHOD(  'cadr',
#line 134 curLineno=13300 compiledLineno=13512

#line 134 curLineno=13300 compiledLineno=13514

                                                        trampCall(@_cadr)                                                      ,
                                                    [
#line 134 curLineno=13300 compiledLineno=13518

#line 134 curLineno=13300 compiledLineno=13520

#line 134 curLineno=13300 compiledLineno=13522

                                                          trampCall(_elements)
                                                    ]
                                                                 ))                                                ,
#line 134 curLineno=13300 compiledLineno=13527

                                                LispKeyword.new( "empty" )
                                            ]
                                                         ))
                                      else
#line 134 curLineno=13300 compiledLineno=13533

                                        false
                                      end
                                     ) then
#line 134 curLineno=13300 compiledLineno=13538

#line 134 curLineno=13300 compiledLineno=13540

#line 134 curLineno=13300 compiledLineno=13542

#line 134 curLineno=13300 compiledLineno=13544

                                            trampCall( callProcedure(  '_loop',  'loop',
#line 134 curLineno=13300 compiledLineno=13547

#line 134 curLineno=13300 compiledLineno=13549

                                                trampCall(_loop)                                              ,
                                            [
#line 134 curLineno=13300 compiledLineno=13553

#line 134 curLineno=13300 compiledLineno=13555

#line 134 curLineno=13300 compiledLineno=13557

#line 134 curLineno=13300 compiledLineno=13559

                                                    trampCall( self._cddr_METHOD(  'cddr',
#line 134 curLineno=13300 compiledLineno=13562

#line 134 curLineno=13300 compiledLineno=13564

                                                        trampCall(@_cddr)                                                      ,
                                                    [
#line 134 curLineno=13300 compiledLineno=13568

#line 134 curLineno=13300 compiledLineno=13570

#line 134 curLineno=13300 compiledLineno=13572

                                                          trampCall(_elements)
                                                    ]
                                                                 ))                                                ,
#line 134 curLineno=13300 compiledLineno=13577

#line 134 curLineno=13300 compiledLineno=13579

#line 134 curLineno=13300 compiledLineno=13581

                                                    trampCall( self._list_ASMARK_METHOD(  'list*',
#line 134 curLineno=13300 compiledLineno=13584

#line 134 curLineno=13300 compiledLineno=13586

                                                        trampCall(@_list_ASMARK)                                                      ,
                                                    [
#line 134 curLineno=13300 compiledLineno=13590

#line 134 curLineno=13300 compiledLineno=13592

#line 134 curLineno=13300 compiledLineno=13594

#line 134 curLineno=13300 compiledLineno=13596

                                                            _cons(
#line 134 curLineno=13300 compiledLineno=13599

                                                              :"define"                                                              ,
#line 134 curLineno=13300 compiledLineno=13602

#line 134 curLineno=13300 compiledLineno=13604

#line 134 curLineno=13300 compiledLineno=13606

                                                                  _cons(
#line 134 curLineno=13300 compiledLineno=13609

#line 134 curLineno=13300 compiledLineno=13611

#line 134 curLineno=13300 compiledLineno=13613

                                                                        trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
#line 134 curLineno=13300 compiledLineno=13616

#line 134 curLineno=13300 compiledLineno=13618

                                                                            trampCall(_make_MIMARKscheme_MIMARKname)                                                                          ,
                                                                        [
#line 134 curLineno=13300 compiledLineno=13622

#line 134 curLineno=13300 compiledLineno=13624

#line 134 curLineno=13300 compiledLineno=13626

#line 134 curLineno=13300 compiledLineno=13628

                                                                                _car(
#line 134 curLineno=13300 compiledLineno=13631

#line 134 curLineno=13300 compiledLineno=13633

                                                                                    trampCall(_elements)
                                                                                )
                                                                        ]
                                                                                     ))                                                                    ,
#line 134 curLineno=13300 compiledLineno=13639

#line 134 curLineno=13300 compiledLineno=13641

#line 134 curLineno=13300 compiledLineno=13643

                                                                        _cons(
#line 134 curLineno=13300 compiledLineno=13646

#line 134 curLineno=13300 compiledLineno=13648

#line 134 curLineno=13300 compiledLineno=13650

                                                                              _cons(
#line 134 curLineno=13300 compiledLineno=13653

                                                                                :"make-html-element"                                                                                ,
#line 134 curLineno=13300 compiledLineno=13656

#line 134 curLineno=13300 compiledLineno=13658

#line 134 curLineno=13300 compiledLineno=13660

                                                                                    _cons(
#line 134 curLineno=13300 compiledLineno=13663

#line 134 curLineno=13300 compiledLineno=13665

#line 134 curLineno=13300 compiledLineno=13667

                                                                                          _cons(
#line 134 curLineno=13300 compiledLineno=13670

                                                                                            :"quote"                                                                                            ,
#line 134 curLineno=13300 compiledLineno=13673

#line 134 curLineno=13300 compiledLineno=13675

#line 134 curLineno=13300 compiledLineno=13677

                                                                                                _cons(
#line 134 curLineno=13300 compiledLineno=13680

#line 134 curLineno=13300 compiledLineno=13682

#line 134 curLineno=13300 compiledLineno=13684

                                                                                                      _car(
#line 134 curLineno=13300 compiledLineno=13687

#line 134 curLineno=13300 compiledLineno=13689

                                                                                                          trampCall(_elements)
                                                                                                      )                                                                                                  ,
#line 134 curLineno=13300 compiledLineno=13693

                                                                                                  Cell.new()
                                                                                                )
                                                                                          )                                                                                      ,
#line 134 curLineno=13300 compiledLineno=13698

#line 134 curLineno=13300 compiledLineno=13700

#line 134 curLineno=13300 compiledLineno=13702

                                                                                          _cons(
#line 134 curLineno=13300 compiledLineno=13705

                                                                                            LispKeyword.new( "empty?" )                                                                                            ,
#line 134 curLineno=13300 compiledLineno=13708

#line 134 curLineno=13300 compiledLineno=13710

#line 134 curLineno=13300 compiledLineno=13712

                                                                                                _cons(
#line 134 curLineno=13300 compiledLineno=13715

                                                                                                  true                                                                                                  ,
#line 134 curLineno=13300 compiledLineno=13718

                                                                                                  Cell.new()
                                                                                                )
                                                                                          )
                                                                                    )
                                                                              )                                                                          ,
#line 134 curLineno=13300 compiledLineno=13725

                                                                          Cell.new()
                                                                        )
                                                                  )
                                                            )                                                        ,
#line 134 curLineno=13300 compiledLineno=13731

#line 134 curLineno=13300 compiledLineno=13733

#line 134 curLineno=13300 compiledLineno=13735

                                                            _cons(
#line 134 curLineno=13300 compiledLineno=13738

                                                              :"export"                                                              ,
#line 134 curLineno=13300 compiledLineno=13741

#line 134 curLineno=13300 compiledLineno=13743

#line 134 curLineno=13300 compiledLineno=13745

                                                                  _cons(
#line 134 curLineno=13300 compiledLineno=13748

#line 134 curLineno=13300 compiledLineno=13750

#line 134 curLineno=13300 compiledLineno=13752

                                                                        trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
#line 134 curLineno=13300 compiledLineno=13755

#line 134 curLineno=13300 compiledLineno=13757

                                                                            trampCall(_make_MIMARKscheme_MIMARKname)                                                                          ,
                                                                        [
#line 134 curLineno=13300 compiledLineno=13761

#line 134 curLineno=13300 compiledLineno=13763

#line 134 curLineno=13300 compiledLineno=13765

#line 134 curLineno=13300 compiledLineno=13767

                                                                                _car(
#line 134 curLineno=13300 compiledLineno=13770

#line 134 curLineno=13300 compiledLineno=13772

                                                                                    trampCall(_elements)
                                                                                )
                                                                        ]
                                                                                     ))                                                                    ,
#line 134 curLineno=13300 compiledLineno=13778

                                                                    Cell.new()
                                                                  )
                                                            )                                                        ,
#line 134 curLineno=13300 compiledLineno=13783

#line 134 curLineno=13300 compiledLineno=13785

                                                          trampCall(_r)
                                                    ]
                                                                 ))
                                            ]
                                                         ))
                                    else
#line 134 curLineno=13300 compiledLineno=13793

#line 134 curLineno=13300 compiledLineno=13795

                                        if ( 
                                        true
                                         ) then
#line 134 curLineno=13300 compiledLineno=13800

#line 134 curLineno=13300 compiledLineno=13802

#line 134 curLineno=13300 compiledLineno=13804

#line 134 curLineno=13300 compiledLineno=13806

                                                trampCall( callProcedure(  '_loop',  'loop',
#line 134 curLineno=13300 compiledLineno=13809

#line 134 curLineno=13300 compiledLineno=13811

                                                    trampCall(_loop)                                                  ,
                                                [
#line 134 curLineno=13300 compiledLineno=13815

#line 134 curLineno=13300 compiledLineno=13817

#line 134 curLineno=13300 compiledLineno=13819

#line 134 curLineno=13300 compiledLineno=13821

                                                        _cdr(
#line 134 curLineno=13300 compiledLineno=13824

#line 134 curLineno=13300 compiledLineno=13826

                                                            trampCall(_elements)
                                                        )                                                    ,
#line 134 curLineno=13300 compiledLineno=13830

#line 134 curLineno=13300 compiledLineno=13832

#line 134 curLineno=13300 compiledLineno=13834

                                                        trampCall( self._list_ASMARK_METHOD(  'list*',
#line 134 curLineno=13300 compiledLineno=13837

#line 134 curLineno=13300 compiledLineno=13839

                                                            trampCall(@_list_ASMARK)                                                          ,
                                                        [
#line 134 curLineno=13300 compiledLineno=13843

#line 134 curLineno=13300 compiledLineno=13845

#line 134 curLineno=13300 compiledLineno=13847

#line 134 curLineno=13300 compiledLineno=13849

                                                                _cons(
#line 134 curLineno=13300 compiledLineno=13852

                                                                  :"define"                                                                  ,
#line 134 curLineno=13300 compiledLineno=13855

#line 134 curLineno=13300 compiledLineno=13857

#line 134 curLineno=13300 compiledLineno=13859

                                                                      _cons(
#line 134 curLineno=13300 compiledLineno=13862

#line 134 curLineno=13300 compiledLineno=13864

#line 134 curLineno=13300 compiledLineno=13866

                                                                            trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
#line 134 curLineno=13300 compiledLineno=13869

#line 134 curLineno=13300 compiledLineno=13871

                                                                                trampCall(_make_MIMARKscheme_MIMARKname)                                                                              ,
                                                                            [
#line 134 curLineno=13300 compiledLineno=13875

#line 134 curLineno=13300 compiledLineno=13877

#line 134 curLineno=13300 compiledLineno=13879

#line 134 curLineno=13300 compiledLineno=13881

                                                                                    _car(
#line 134 curLineno=13300 compiledLineno=13884

#line 134 curLineno=13300 compiledLineno=13886

                                                                                        trampCall(_elements)
                                                                                    )
                                                                            ]
                                                                                         ))                                                                        ,
#line 134 curLineno=13300 compiledLineno=13892

#line 134 curLineno=13300 compiledLineno=13894

#line 134 curLineno=13300 compiledLineno=13896

                                                                            _cons(
#line 134 curLineno=13300 compiledLineno=13899

#line 134 curLineno=13300 compiledLineno=13901

#line 134 curLineno=13300 compiledLineno=13903

                                                                                  _cons(
#line 134 curLineno=13300 compiledLineno=13906

                                                                                    :"make-html-element"                                                                                    ,
#line 134 curLineno=13300 compiledLineno=13909

#line 134 curLineno=13300 compiledLineno=13911

#line 134 curLineno=13300 compiledLineno=13913

                                                                                        _cons(
#line 134 curLineno=13300 compiledLineno=13916

#line 134 curLineno=13300 compiledLineno=13918

#line 134 curLineno=13300 compiledLineno=13920

                                                                                              _cons(
#line 134 curLineno=13300 compiledLineno=13923

                                                                                                :"quote"                                                                                                ,
#line 134 curLineno=13300 compiledLineno=13926

#line 134 curLineno=13300 compiledLineno=13928

#line 134 curLineno=13300 compiledLineno=13930

                                                                                                    _cons(
#line 134 curLineno=13300 compiledLineno=13933

#line 134 curLineno=13300 compiledLineno=13935

#line 134 curLineno=13300 compiledLineno=13937

                                                                                                          _car(
#line 134 curLineno=13300 compiledLineno=13940

#line 134 curLineno=13300 compiledLineno=13942

                                                                                                              trampCall(_elements)
                                                                                                          )                                                                                                      ,
#line 134 curLineno=13300 compiledLineno=13946

                                                                                                      Cell.new()
                                                                                                    )
                                                                                              )                                                                                          ,
#line 134 curLineno=13300 compiledLineno=13951

                                                                                          Cell.new()
                                                                                        )
                                                                                  )                                                                              ,
#line 134 curLineno=13300 compiledLineno=13956

                                                                              Cell.new()
                                                                            )
                                                                      )
                                                                )                                                            ,
#line 134 curLineno=13300 compiledLineno=13962

#line 134 curLineno=13300 compiledLineno=13964

#line 134 curLineno=13300 compiledLineno=13966

                                                                _cons(
#line 134 curLineno=13300 compiledLineno=13969

                                                                  :"export"                                                                  ,
#line 134 curLineno=13300 compiledLineno=13972

#line 134 curLineno=13300 compiledLineno=13974

#line 134 curLineno=13300 compiledLineno=13976

                                                                      _cons(
#line 134 curLineno=13300 compiledLineno=13979

#line 134 curLineno=13300 compiledLineno=13981

#line 134 curLineno=13300 compiledLineno=13983

                                                                            trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
#line 134 curLineno=13300 compiledLineno=13986

#line 134 curLineno=13300 compiledLineno=13988

                                                                                trampCall(_make_MIMARKscheme_MIMARKname)                                                                              ,
                                                                            [
#line 134 curLineno=13300 compiledLineno=13992

#line 134 curLineno=13300 compiledLineno=13994

#line 134 curLineno=13300 compiledLineno=13996

#line 134 curLineno=13300 compiledLineno=13998

                                                                                    _car(
#line 134 curLineno=13300 compiledLineno=14001

#line 134 curLineno=13300 compiledLineno=14003

                                                                                        trampCall(_elements)
                                                                                    )
                                                                            ]
                                                                                         ))                                                                        ,
#line 134 curLineno=13300 compiledLineno=14009

                                                                        Cell.new()
                                                                      )
                                                                )                                                            ,
#line 134 curLineno=13300 compiledLineno=14014

#line 134 curLineno=13300 compiledLineno=14016

                                                              trampCall(_r)
                                                        ]
                                                                     ))
                                                ]
                                                             ))
                                        else
#line 134 curLineno=13300 compiledLineno=14024

#line 134 curLineno=13300 compiledLineno=14026

                                            Cell.new()
                                        end
                                    end
                                end
                            }
#line 134 curLineno=13300 compiledLineno=14033

#line 134 curLineno=13300 compiledLineno=14035

#line 134 curLineno=13300 compiledLineno=14037

                            trampCall( callProcedure(  '_loop',  'loop',
#line 134 curLineno=13300 compiledLineno=14040

#line 134 curLineno=13300 compiledLineno=14042

                                trampCall(_loop)                              ,
                            [
#line 134 curLineno=13300 compiledLineno=14046

#line 134 curLineno=13300 compiledLineno=14048

#line 134 curLineno=13300 compiledLineno=14050

                                  trampCall(_elements)                                ,
#line 134 curLineno=13300 compiledLineno=14053

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


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 163 curLineno=16200 compiledLineno=16200

trampCall( 
#line 163 curLineno=16200 compiledLineno=16203

  begin 
#line 163 curLineno=16200 compiledLineno=16206

    #makeBegin
#line 163 curLineno=16200 compiledLineno=16209

#line 163 curLineno=16200 compiledLineno=16211

      begin 
#line 163 curLineno=16200 compiledLineno=16214

        #execFunc
#line 163 curLineno=16200 compiledLineno=16217

#line 163 curLineno=16200 compiledLineno=16219

          def self._html_COMARKtt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtt'] = self.method( :_html_COMARKtt_METHOD )
#line 163 curLineno=16200 compiledLineno=16223

          #execFunc(funcname=define)
        @_html_COMARKtt = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16228

#line 163 curLineno=16200 compiledLineno=16230

            nil
        )
      end
#line 163 curLineno=16200 compiledLineno=16235

      begin 
#line 163 curLineno=16200 compiledLineno=16238

        #execFunc
#line 163 curLineno=16200 compiledLineno=16241

#line 163 curLineno=16200 compiledLineno=16243

          def self._html_COMARKtt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtt'] = self.method( :_html_COMARKtt_METHOD )
#line 163 curLineno=16200 compiledLineno=16247

          #execFunc(funcname=define)
        @_html_COMARKtt = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16252

#line 163 curLineno=16200 compiledLineno=16254

#line 163 curLineno=16200 compiledLineno=16256

#line 163 curLineno=16200 compiledLineno=16258

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=16200 compiledLineno=16261

#line 163 curLineno=16200 compiledLineno=16263

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=16200 compiledLineno=16267

#line 163 curLineno=16200 compiledLineno=16269

                    :"tt"
                ]
                             ))
        )
      end
#line 163 curLineno=16200 compiledLineno=16276

      begin 
#line 163 curLineno=16200 compiledLineno=16279

        #execFunc
#line 163 curLineno=16200 compiledLineno=16282

#line 163 curLineno=16200 compiledLineno=16284

          def self._html_COMARKi_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKi', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKi'] = self.method( :_html_COMARKi_METHOD )
#line 163 curLineno=16200 compiledLineno=16288

          #execFunc(funcname=define)
        @_html_COMARKi = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16293

#line 163 curLineno=16200 compiledLineno=16295

            nil
        )
      end
#line 163 curLineno=16200 compiledLineno=16300

      begin 
#line 163 curLineno=16200 compiledLineno=16303

        #execFunc
#line 163 curLineno=16200 compiledLineno=16306

#line 163 curLineno=16200 compiledLineno=16308

          def self._html_COMARKi_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKi', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKi'] = self.method( :_html_COMARKi_METHOD )
#line 163 curLineno=16200 compiledLineno=16312

          #execFunc(funcname=define)
        @_html_COMARKi = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16317

#line 163 curLineno=16200 compiledLineno=16319

#line 163 curLineno=16200 compiledLineno=16321

#line 163 curLineno=16200 compiledLineno=16323

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=16200 compiledLineno=16326

#line 163 curLineno=16200 compiledLineno=16328

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=16200 compiledLineno=16332

#line 163 curLineno=16200 compiledLineno=16334

                    :"i"
                ]
                             ))
        )
      end
#line 163 curLineno=16200 compiledLineno=16341

      begin 
#line 163 curLineno=16200 compiledLineno=16344

        #execFunc
#line 163 curLineno=16200 compiledLineno=16347

#line 163 curLineno=16200 compiledLineno=16349

          def self._html_COMARKb_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKb', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKb'] = self.method( :_html_COMARKb_METHOD )
#line 163 curLineno=16200 compiledLineno=16353

          #execFunc(funcname=define)
        @_html_COMARKb = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16358

#line 163 curLineno=16200 compiledLineno=16360

            nil
        )
      end
#line 163 curLineno=16200 compiledLineno=16365

      begin 
#line 163 curLineno=16200 compiledLineno=16368

        #execFunc
#line 163 curLineno=16200 compiledLineno=16371

#line 163 curLineno=16200 compiledLineno=16373

          def self._html_COMARKb_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKb', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKb'] = self.method( :_html_COMARKb_METHOD )
#line 163 curLineno=16200 compiledLineno=16377

          #execFunc(funcname=define)
        @_html_COMARKb = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16382

#line 163 curLineno=16200 compiledLineno=16384

#line 163 curLineno=16200 compiledLineno=16386

#line 163 curLineno=16200 compiledLineno=16388

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=16200 compiledLineno=16391

#line 163 curLineno=16200 compiledLineno=16393

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=16200 compiledLineno=16397

#line 163 curLineno=16200 compiledLineno=16399

                    :"b"
                ]
                             ))
        )
      end
#line 163 curLineno=16200 compiledLineno=16406

      begin 
#line 163 curLineno=16200 compiledLineno=16409

        #execFunc
#line 163 curLineno=16200 compiledLineno=16412

#line 163 curLineno=16200 compiledLineno=16414

          def self._html_COMARKbig_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbig', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbig'] = self.method( :_html_COMARKbig_METHOD )
#line 163 curLineno=16200 compiledLineno=16418

          #execFunc(funcname=define)
        @_html_COMARKbig = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16423

#line 163 curLineno=16200 compiledLineno=16425

            nil
        )
      end
#line 163 curLineno=16200 compiledLineno=16430

      begin 
#line 163 curLineno=16200 compiledLineno=16433

        #execFunc
#line 163 curLineno=16200 compiledLineno=16436

#line 163 curLineno=16200 compiledLineno=16438

          def self._html_COMARKbig_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbig', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbig'] = self.method( :_html_COMARKbig_METHOD )
#line 163 curLineno=16200 compiledLineno=16442

          #execFunc(funcname=define)
        @_html_COMARKbig = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16447

#line 163 curLineno=16200 compiledLineno=16449

#line 163 curLineno=16200 compiledLineno=16451

#line 163 curLineno=16200 compiledLineno=16453

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=16200 compiledLineno=16456

#line 163 curLineno=16200 compiledLineno=16458

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=16200 compiledLineno=16462

#line 163 curLineno=16200 compiledLineno=16464

                    :"big"
                ]
                             ))
        )
      end
#line 163 curLineno=16200 compiledLineno=16471

      begin 
#line 163 curLineno=16200 compiledLineno=16474

        #execFunc
#line 163 curLineno=16200 compiledLineno=16477

#line 163 curLineno=16200 compiledLineno=16479

          def self._html_COMARKsmall_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsmall', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsmall'] = self.method( :_html_COMARKsmall_METHOD )
#line 163 curLineno=16200 compiledLineno=16483

          #execFunc(funcname=define)
        @_html_COMARKsmall = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16488

#line 163 curLineno=16200 compiledLineno=16490

            nil
        )
      end
#line 163 curLineno=16200 compiledLineno=16495

      begin 
#line 163 curLineno=16200 compiledLineno=16498

        #execFunc
#line 163 curLineno=16200 compiledLineno=16501

#line 163 curLineno=16200 compiledLineno=16503

          def self._html_COMARKsmall_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsmall', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsmall'] = self.method( :_html_COMARKsmall_METHOD )
#line 163 curLineno=16200 compiledLineno=16507

          #execFunc(funcname=define)
        @_html_COMARKsmall = 
        trampCall(
#line 163 curLineno=16200 compiledLineno=16512

#line 163 curLineno=16200 compiledLineno=16514

#line 163 curLineno=16200 compiledLineno=16516

#line 163 curLineno=16200 compiledLineno=16518

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=16200 compiledLineno=16521

#line 163 curLineno=16200 compiledLineno=16523

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=16200 compiledLineno=16527

#line 163 curLineno=16200 compiledLineno=16529

                    :"small"
                ]
                             ))
        )
      end
  end
 )
#line 166 curLineno=16500 compiledLineno=16538

trampCall( 
#line 166 curLineno=16500 compiledLineno=16541

  begin 
#line 166 curLineno=16500 compiledLineno=16544

    #makeBegin
#line 166 curLineno=16500 compiledLineno=16547

#line 166 curLineno=16500 compiledLineno=16549

      begin 
#line 166 curLineno=16500 compiledLineno=16552

        #execFunc
#line 166 curLineno=16500 compiledLineno=16555

#line 166 curLineno=16500 compiledLineno=16557

          def self._html_COMARKem_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKem', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKem'] = self.method( :_html_COMARKem_METHOD )
#line 166 curLineno=16500 compiledLineno=16561

          #execFunc(funcname=define)
        @_html_COMARKem = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16566

#line 166 curLineno=16500 compiledLineno=16568

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=16573

      begin 
#line 166 curLineno=16500 compiledLineno=16576

        #execFunc
#line 166 curLineno=16500 compiledLineno=16579

#line 166 curLineno=16500 compiledLineno=16581

          def self._html_COMARKem_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKem', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKem'] = self.method( :_html_COMARKem_METHOD )
#line 166 curLineno=16500 compiledLineno=16585

          #execFunc(funcname=define)
        @_html_COMARKem = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16590

#line 166 curLineno=16500 compiledLineno=16592

#line 166 curLineno=16500 compiledLineno=16594

#line 166 curLineno=16500 compiledLineno=16596

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=16599

#line 166 curLineno=16500 compiledLineno=16601

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=16605

#line 166 curLineno=16500 compiledLineno=16607

                    :"em"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=16614

      begin 
#line 166 curLineno=16500 compiledLineno=16617

        #execFunc
#line 166 curLineno=16500 compiledLineno=16620

#line 166 curLineno=16500 compiledLineno=16622

          def self._html_COMARKstrong_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstrong', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKstrong'] = self.method( :_html_COMARKstrong_METHOD )
#line 166 curLineno=16500 compiledLineno=16626

          #execFunc(funcname=define)
        @_html_COMARKstrong = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16631

#line 166 curLineno=16500 compiledLineno=16633

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=16638

      begin 
#line 166 curLineno=16500 compiledLineno=16641

        #execFunc
#line 166 curLineno=16500 compiledLineno=16644

#line 166 curLineno=16500 compiledLineno=16646

          def self._html_COMARKstrong_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstrong', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKstrong'] = self.method( :_html_COMARKstrong_METHOD )
#line 166 curLineno=16500 compiledLineno=16650

          #execFunc(funcname=define)
        @_html_COMARKstrong = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16655

#line 166 curLineno=16500 compiledLineno=16657

#line 166 curLineno=16500 compiledLineno=16659

#line 166 curLineno=16500 compiledLineno=16661

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=16664

#line 166 curLineno=16500 compiledLineno=16666

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=16670

#line 166 curLineno=16500 compiledLineno=16672

                    :"strong"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=16679

      begin 
#line 166 curLineno=16500 compiledLineno=16682

        #execFunc
#line 166 curLineno=16500 compiledLineno=16685

#line 166 curLineno=16500 compiledLineno=16687

          def self._html_COMARKdfn_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdfn', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdfn'] = self.method( :_html_COMARKdfn_METHOD )
#line 166 curLineno=16500 compiledLineno=16691

          #execFunc(funcname=define)
        @_html_COMARKdfn = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16696

#line 166 curLineno=16500 compiledLineno=16698

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=16703

      begin 
#line 166 curLineno=16500 compiledLineno=16706

        #execFunc
#line 166 curLineno=16500 compiledLineno=16709

#line 166 curLineno=16500 compiledLineno=16711

          def self._html_COMARKdfn_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdfn', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdfn'] = self.method( :_html_COMARKdfn_METHOD )
#line 166 curLineno=16500 compiledLineno=16715

          #execFunc(funcname=define)
        @_html_COMARKdfn = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16720

#line 166 curLineno=16500 compiledLineno=16722

#line 166 curLineno=16500 compiledLineno=16724

#line 166 curLineno=16500 compiledLineno=16726

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=16729

#line 166 curLineno=16500 compiledLineno=16731

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=16735

#line 166 curLineno=16500 compiledLineno=16737

                    :"dfn"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=16744

      begin 
#line 166 curLineno=16500 compiledLineno=16747

        #execFunc
#line 166 curLineno=16500 compiledLineno=16750

#line 166 curLineno=16500 compiledLineno=16752

          def self._html_COMARKcode_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcode', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcode'] = self.method( :_html_COMARKcode_METHOD )
#line 166 curLineno=16500 compiledLineno=16756

          #execFunc(funcname=define)
        @_html_COMARKcode = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16761

#line 166 curLineno=16500 compiledLineno=16763

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=16768

      begin 
#line 166 curLineno=16500 compiledLineno=16771

        #execFunc
#line 166 curLineno=16500 compiledLineno=16774

#line 166 curLineno=16500 compiledLineno=16776

          def self._html_COMARKcode_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcode', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcode'] = self.method( :_html_COMARKcode_METHOD )
#line 166 curLineno=16500 compiledLineno=16780

          #execFunc(funcname=define)
        @_html_COMARKcode = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16785

#line 166 curLineno=16500 compiledLineno=16787

#line 166 curLineno=16500 compiledLineno=16789

#line 166 curLineno=16500 compiledLineno=16791

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=16794

#line 166 curLineno=16500 compiledLineno=16796

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=16800

#line 166 curLineno=16500 compiledLineno=16802

                    :"code"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=16809

      begin 
#line 166 curLineno=16500 compiledLineno=16812

        #execFunc
#line 166 curLineno=16500 compiledLineno=16815

#line 166 curLineno=16500 compiledLineno=16817

          def self._html_COMARKsamp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsamp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsamp'] = self.method( :_html_COMARKsamp_METHOD )
#line 166 curLineno=16500 compiledLineno=16821

          #execFunc(funcname=define)
        @_html_COMARKsamp = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16826

#line 166 curLineno=16500 compiledLineno=16828

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=16833

      begin 
#line 166 curLineno=16500 compiledLineno=16836

        #execFunc
#line 166 curLineno=16500 compiledLineno=16839

#line 166 curLineno=16500 compiledLineno=16841

          def self._html_COMARKsamp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsamp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsamp'] = self.method( :_html_COMARKsamp_METHOD )
#line 166 curLineno=16500 compiledLineno=16845

          #execFunc(funcname=define)
        @_html_COMARKsamp = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16850

#line 166 curLineno=16500 compiledLineno=16852

#line 166 curLineno=16500 compiledLineno=16854

#line 166 curLineno=16500 compiledLineno=16856

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=16859

#line 166 curLineno=16500 compiledLineno=16861

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=16865

#line 166 curLineno=16500 compiledLineno=16867

                    :"samp"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=16874

      begin 
#line 166 curLineno=16500 compiledLineno=16877

        #execFunc
#line 166 curLineno=16500 compiledLineno=16880

#line 166 curLineno=16500 compiledLineno=16882

          def self._html_COMARKkbd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKkbd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKkbd'] = self.method( :_html_COMARKkbd_METHOD )
#line 166 curLineno=16500 compiledLineno=16886

          #execFunc(funcname=define)
        @_html_COMARKkbd = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16891

#line 166 curLineno=16500 compiledLineno=16893

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=16898

      begin 
#line 166 curLineno=16500 compiledLineno=16901

        #execFunc
#line 166 curLineno=16500 compiledLineno=16904

#line 166 curLineno=16500 compiledLineno=16906

          def self._html_COMARKkbd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKkbd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKkbd'] = self.method( :_html_COMARKkbd_METHOD )
#line 166 curLineno=16500 compiledLineno=16910

          #execFunc(funcname=define)
        @_html_COMARKkbd = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16915

#line 166 curLineno=16500 compiledLineno=16917

#line 166 curLineno=16500 compiledLineno=16919

#line 166 curLineno=16500 compiledLineno=16921

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=16924

#line 166 curLineno=16500 compiledLineno=16926

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=16930

#line 166 curLineno=16500 compiledLineno=16932

                    :"kbd"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=16939

      begin 
#line 166 curLineno=16500 compiledLineno=16942

        #execFunc
#line 166 curLineno=16500 compiledLineno=16945

#line 166 curLineno=16500 compiledLineno=16947

          def self._html_COMARKvar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKvar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKvar'] = self.method( :_html_COMARKvar_METHOD )
#line 166 curLineno=16500 compiledLineno=16951

          #execFunc(funcname=define)
        @_html_COMARKvar = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16956

#line 166 curLineno=16500 compiledLineno=16958

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=16963

      begin 
#line 166 curLineno=16500 compiledLineno=16966

        #execFunc
#line 166 curLineno=16500 compiledLineno=16969

#line 166 curLineno=16500 compiledLineno=16971

          def self._html_COMARKvar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKvar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKvar'] = self.method( :_html_COMARKvar_METHOD )
#line 166 curLineno=16500 compiledLineno=16975

          #execFunc(funcname=define)
        @_html_COMARKvar = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=16980

#line 166 curLineno=16500 compiledLineno=16982

#line 166 curLineno=16500 compiledLineno=16984

#line 166 curLineno=16500 compiledLineno=16986

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=16989

#line 166 curLineno=16500 compiledLineno=16991

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=16995

#line 166 curLineno=16500 compiledLineno=16997

                    :"var"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=17004

      begin 
#line 166 curLineno=16500 compiledLineno=17007

        #execFunc
#line 166 curLineno=16500 compiledLineno=17010

#line 166 curLineno=16500 compiledLineno=17012

          def self._html_COMARKcite_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcite', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcite'] = self.method( :_html_COMARKcite_METHOD )
#line 166 curLineno=16500 compiledLineno=17016

          #execFunc(funcname=define)
        @_html_COMARKcite = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=17021

#line 166 curLineno=16500 compiledLineno=17023

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=17028

      begin 
#line 166 curLineno=16500 compiledLineno=17031

        #execFunc
#line 166 curLineno=16500 compiledLineno=17034

#line 166 curLineno=16500 compiledLineno=17036

          def self._html_COMARKcite_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcite', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcite'] = self.method( :_html_COMARKcite_METHOD )
#line 166 curLineno=16500 compiledLineno=17040

          #execFunc(funcname=define)
        @_html_COMARKcite = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=17045

#line 166 curLineno=16500 compiledLineno=17047

#line 166 curLineno=16500 compiledLineno=17049

#line 166 curLineno=16500 compiledLineno=17051

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=17054

#line 166 curLineno=16500 compiledLineno=17056

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=17060

#line 166 curLineno=16500 compiledLineno=17062

                    :"cite"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=17069

      begin 
#line 166 curLineno=16500 compiledLineno=17072

        #execFunc
#line 166 curLineno=16500 compiledLineno=17075

#line 166 curLineno=16500 compiledLineno=17077

          def self._html_COMARKabbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKabbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKabbr'] = self.method( :_html_COMARKabbr_METHOD )
#line 166 curLineno=16500 compiledLineno=17081

          #execFunc(funcname=define)
        @_html_COMARKabbr = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=17086

#line 166 curLineno=16500 compiledLineno=17088

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=17093

      begin 
#line 166 curLineno=16500 compiledLineno=17096

        #execFunc
#line 166 curLineno=16500 compiledLineno=17099

#line 166 curLineno=16500 compiledLineno=17101

          def self._html_COMARKabbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKabbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKabbr'] = self.method( :_html_COMARKabbr_METHOD )
#line 166 curLineno=16500 compiledLineno=17105

          #execFunc(funcname=define)
        @_html_COMARKabbr = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=17110

#line 166 curLineno=16500 compiledLineno=17112

#line 166 curLineno=16500 compiledLineno=17114

#line 166 curLineno=16500 compiledLineno=17116

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=17119

#line 166 curLineno=16500 compiledLineno=17121

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=17125

#line 166 curLineno=16500 compiledLineno=17127

                    :"abbr"
                ]
                             ))
        )
      end
#line 166 curLineno=16500 compiledLineno=17134

      begin 
#line 166 curLineno=16500 compiledLineno=17137

        #execFunc
#line 166 curLineno=16500 compiledLineno=17140

#line 166 curLineno=16500 compiledLineno=17142

          def self._html_COMARKacronym_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKacronym', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKacronym'] = self.method( :_html_COMARKacronym_METHOD )
#line 166 curLineno=16500 compiledLineno=17146

          #execFunc(funcname=define)
        @_html_COMARKacronym = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=17151

#line 166 curLineno=16500 compiledLineno=17153

            nil
        )
      end
#line 166 curLineno=16500 compiledLineno=17158

      begin 
#line 166 curLineno=16500 compiledLineno=17161

        #execFunc
#line 166 curLineno=16500 compiledLineno=17164

#line 166 curLineno=16500 compiledLineno=17166

          def self._html_COMARKacronym_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKacronym', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKacronym'] = self.method( :_html_COMARKacronym_METHOD )
#line 166 curLineno=16500 compiledLineno=17170

          #execFunc(funcname=define)
        @_html_COMARKacronym = 
        trampCall(
#line 166 curLineno=16500 compiledLineno=17175

#line 166 curLineno=16500 compiledLineno=17177

#line 166 curLineno=16500 compiledLineno=17179

#line 166 curLineno=16500 compiledLineno=17181

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=16500 compiledLineno=17184

#line 166 curLineno=16500 compiledLineno=17186

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=16500 compiledLineno=17190

#line 166 curLineno=16500 compiledLineno=17192

                    :"acronym"
                ]
                             ))
        )
      end
  end
 )
#line 168 curLineno=16700 compiledLineno=17201

trampCall( 
#line 168 curLineno=16700 compiledLineno=17204

  begin 
#line 168 curLineno=16700 compiledLineno=17207

    #makeBegin
#line 168 curLineno=16700 compiledLineno=17210

#line 168 curLineno=16700 compiledLineno=17212

      begin 
#line 168 curLineno=16700 compiledLineno=17215

        #execFunc
#line 168 curLineno=16700 compiledLineno=17218

#line 168 curLineno=16700 compiledLineno=17220

          def self._html_COMARKsub_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsub', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsub'] = self.method( :_html_COMARKsub_METHOD )
#line 168 curLineno=16700 compiledLineno=17224

          #execFunc(funcname=define)
        @_html_COMARKsub = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17229

#line 168 curLineno=16700 compiledLineno=17231

            nil
        )
      end
#line 168 curLineno=16700 compiledLineno=17236

      begin 
#line 168 curLineno=16700 compiledLineno=17239

        #execFunc
#line 168 curLineno=16700 compiledLineno=17242

#line 168 curLineno=16700 compiledLineno=17244

          def self._html_COMARKsub_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsub', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsub'] = self.method( :_html_COMARKsub_METHOD )
#line 168 curLineno=16700 compiledLineno=17248

          #execFunc(funcname=define)
        @_html_COMARKsub = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17253

#line 168 curLineno=16700 compiledLineno=17255

#line 168 curLineno=16700 compiledLineno=17257

#line 168 curLineno=16700 compiledLineno=17259

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=16700 compiledLineno=17262

#line 168 curLineno=16700 compiledLineno=17264

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=16700 compiledLineno=17268

#line 168 curLineno=16700 compiledLineno=17270

                    :"sub"
                ]
                             ))
        )
      end
#line 168 curLineno=16700 compiledLineno=17277

      begin 
#line 168 curLineno=16700 compiledLineno=17280

        #execFunc
#line 168 curLineno=16700 compiledLineno=17283

#line 168 curLineno=16700 compiledLineno=17285

          def self._html_COMARKsup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsup'] = self.method( :_html_COMARKsup_METHOD )
#line 168 curLineno=16700 compiledLineno=17289

          #execFunc(funcname=define)
        @_html_COMARKsup = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17294

#line 168 curLineno=16700 compiledLineno=17296

            nil
        )
      end
#line 168 curLineno=16700 compiledLineno=17301

      begin 
#line 168 curLineno=16700 compiledLineno=17304

        #execFunc
#line 168 curLineno=16700 compiledLineno=17307

#line 168 curLineno=16700 compiledLineno=17309

          def self._html_COMARKsup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsup'] = self.method( :_html_COMARKsup_METHOD )
#line 168 curLineno=16700 compiledLineno=17313

          #execFunc(funcname=define)
        @_html_COMARKsup = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17318

#line 168 curLineno=16700 compiledLineno=17320

#line 168 curLineno=16700 compiledLineno=17322

#line 168 curLineno=16700 compiledLineno=17324

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=16700 compiledLineno=17327

#line 168 curLineno=16700 compiledLineno=17329

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=16700 compiledLineno=17333

#line 168 curLineno=16700 compiledLineno=17335

                    :"sup"
                ]
                             ))
        )
      end
#line 168 curLineno=16700 compiledLineno=17342

      begin 
#line 168 curLineno=16700 compiledLineno=17345

        #execFunc
#line 168 curLineno=16700 compiledLineno=17348

#line 168 curLineno=16700 compiledLineno=17350

          def self._html_COMARKspan_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKspan', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKspan'] = self.method( :_html_COMARKspan_METHOD )
#line 168 curLineno=16700 compiledLineno=17354

          #execFunc(funcname=define)
        @_html_COMARKspan = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17359

#line 168 curLineno=16700 compiledLineno=17361

            nil
        )
      end
#line 168 curLineno=16700 compiledLineno=17366

      begin 
#line 168 curLineno=16700 compiledLineno=17369

        #execFunc
#line 168 curLineno=16700 compiledLineno=17372

#line 168 curLineno=16700 compiledLineno=17374

          def self._html_COMARKspan_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKspan', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKspan'] = self.method( :_html_COMARKspan_METHOD )
#line 168 curLineno=16700 compiledLineno=17378

          #execFunc(funcname=define)
        @_html_COMARKspan = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17383

#line 168 curLineno=16700 compiledLineno=17385

#line 168 curLineno=16700 compiledLineno=17387

#line 168 curLineno=16700 compiledLineno=17389

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=16700 compiledLineno=17392

#line 168 curLineno=16700 compiledLineno=17394

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=16700 compiledLineno=17398

#line 168 curLineno=16700 compiledLineno=17400

                    :"span"
                ]
                             ))
        )
      end
#line 168 curLineno=16700 compiledLineno=17407

      begin 
#line 168 curLineno=16700 compiledLineno=17410

        #execFunc
#line 168 curLineno=16700 compiledLineno=17413

#line 168 curLineno=16700 compiledLineno=17415

          def self._html_COMARKbdo_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbdo', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbdo'] = self.method( :_html_COMARKbdo_METHOD )
#line 168 curLineno=16700 compiledLineno=17419

          #execFunc(funcname=define)
        @_html_COMARKbdo = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17424

#line 168 curLineno=16700 compiledLineno=17426

            nil
        )
      end
#line 168 curLineno=16700 compiledLineno=17431

      begin 
#line 168 curLineno=16700 compiledLineno=17434

        #execFunc
#line 168 curLineno=16700 compiledLineno=17437

#line 168 curLineno=16700 compiledLineno=17439

          def self._html_COMARKbdo_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbdo', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbdo'] = self.method( :_html_COMARKbdo_METHOD )
#line 168 curLineno=16700 compiledLineno=17443

          #execFunc(funcname=define)
        @_html_COMARKbdo = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17448

#line 168 curLineno=16700 compiledLineno=17450

#line 168 curLineno=16700 compiledLineno=17452

#line 168 curLineno=16700 compiledLineno=17454

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=16700 compiledLineno=17457

#line 168 curLineno=16700 compiledLineno=17459

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=16700 compiledLineno=17463

#line 168 curLineno=16700 compiledLineno=17465

                    :"bdo"
                ]
                             ))
        )
      end
#line 168 curLineno=16700 compiledLineno=17472

      begin 
#line 168 curLineno=16700 compiledLineno=17475

        #execFunc
#line 168 curLineno=16700 compiledLineno=17478

#line 168 curLineno=16700 compiledLineno=17480

          def self._html_COMARKbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbr'] = self.method( :_html_COMARKbr_METHOD )
#line 168 curLineno=16700 compiledLineno=17484

          #execFunc(funcname=define)
        @_html_COMARKbr = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17489

#line 168 curLineno=16700 compiledLineno=17491

            nil
        )
      end
#line 168 curLineno=16700 compiledLineno=17496

      begin 
#line 168 curLineno=16700 compiledLineno=17499

        #execFunc
#line 168 curLineno=16700 compiledLineno=17502

#line 168 curLineno=16700 compiledLineno=17504

          def self._html_COMARKbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbr'] = self.method( :_html_COMARKbr_METHOD )
#line 168 curLineno=16700 compiledLineno=17508

          #execFunc(funcname=define)
        @_html_COMARKbr = 
        trampCall(
#line 168 curLineno=16700 compiledLineno=17513

#line 168 curLineno=16700 compiledLineno=17515

#line 168 curLineno=16700 compiledLineno=17517

#line 168 curLineno=16700 compiledLineno=17519

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=16700 compiledLineno=17522

#line 168 curLineno=16700 compiledLineno=17524

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=16700 compiledLineno=17528

#line 168 curLineno=16700 compiledLineno=17530

                    :"br"                    ,
#line 168 curLineno=16700 compiledLineno=17533

                    LispKeyword.new( "empty?" )                    ,
#line 168 curLineno=16700 compiledLineno=17536

                    true
                ]
                             ))
        )
      end
  end
 )
#line 174 curLineno=17300 compiledLineno=17545

trampCall( 
#line 174 curLineno=17300 compiledLineno=17548

  begin 
#line 174 curLineno=17300 compiledLineno=17551

    #makeBegin
#line 174 curLineno=17300 compiledLineno=17554

#line 174 curLineno=17300 compiledLineno=17556

      begin 
#line 174 curLineno=17300 compiledLineno=17559

        #execFunc
#line 174 curLineno=17300 compiledLineno=17562

#line 174 curLineno=17300 compiledLineno=17564

          def self._html_COMARKbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbody'] = self.method( :_html_COMARKbody_METHOD )
#line 174 curLineno=17300 compiledLineno=17568

          #execFunc(funcname=define)
        @_html_COMARKbody = 
        trampCall(
#line 174 curLineno=17300 compiledLineno=17573

#line 174 curLineno=17300 compiledLineno=17575

            nil
        )
      end
#line 174 curLineno=17300 compiledLineno=17580

      begin 
#line 174 curLineno=17300 compiledLineno=17583

        #execFunc
#line 174 curLineno=17300 compiledLineno=17586

#line 174 curLineno=17300 compiledLineno=17588

          def self._html_COMARKbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbody'] = self.method( :_html_COMARKbody_METHOD )
#line 174 curLineno=17300 compiledLineno=17592

          #execFunc(funcname=define)
        @_html_COMARKbody = 
        trampCall(
#line 174 curLineno=17300 compiledLineno=17597

#line 174 curLineno=17300 compiledLineno=17599

#line 174 curLineno=17300 compiledLineno=17601

#line 174 curLineno=17300 compiledLineno=17603

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 174 curLineno=17300 compiledLineno=17606

#line 174 curLineno=17300 compiledLineno=17608

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 174 curLineno=17300 compiledLineno=17612

#line 174 curLineno=17300 compiledLineno=17614

                    :"body"
                ]
                             ))
        )
      end
#line 174 curLineno=17300 compiledLineno=17621

      begin 
#line 174 curLineno=17300 compiledLineno=17624

        #execFunc
#line 174 curLineno=17300 compiledLineno=17627

#line 174 curLineno=17300 compiledLineno=17629

          def self._html_COMARKaddress_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKaddress', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKaddress'] = self.method( :_html_COMARKaddress_METHOD )
#line 174 curLineno=17300 compiledLineno=17633

          #execFunc(funcname=define)
        @_html_COMARKaddress = 
        trampCall(
#line 174 curLineno=17300 compiledLineno=17638

#line 174 curLineno=17300 compiledLineno=17640

            nil
        )
      end
#line 174 curLineno=17300 compiledLineno=17645

      begin 
#line 174 curLineno=17300 compiledLineno=17648

        #execFunc
#line 174 curLineno=17300 compiledLineno=17651

#line 174 curLineno=17300 compiledLineno=17653

          def self._html_COMARKaddress_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKaddress', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKaddress'] = self.method( :_html_COMARKaddress_METHOD )
#line 174 curLineno=17300 compiledLineno=17657

          #execFunc(funcname=define)
        @_html_COMARKaddress = 
        trampCall(
#line 174 curLineno=17300 compiledLineno=17662

#line 174 curLineno=17300 compiledLineno=17664

#line 174 curLineno=17300 compiledLineno=17666

#line 174 curLineno=17300 compiledLineno=17668

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 174 curLineno=17300 compiledLineno=17671

#line 174 curLineno=17300 compiledLineno=17673

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 174 curLineno=17300 compiledLineno=17677

#line 174 curLineno=17300 compiledLineno=17679

                    :"address"
                ]
                             ))
        )
      end
#line 174 curLineno=17300 compiledLineno=17686

      begin 
#line 174 curLineno=17300 compiledLineno=17689

        #execFunc
#line 174 curLineno=17300 compiledLineno=17692

#line 174 curLineno=17300 compiledLineno=17694

          def self._html_COMARKdiv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdiv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdiv'] = self.method( :_html_COMARKdiv_METHOD )
#line 174 curLineno=17300 compiledLineno=17698

          #execFunc(funcname=define)
        @_html_COMARKdiv = 
        trampCall(
#line 174 curLineno=17300 compiledLineno=17703

#line 174 curLineno=17300 compiledLineno=17705

            nil
        )
      end
#line 174 curLineno=17300 compiledLineno=17710

      begin 
#line 174 curLineno=17300 compiledLineno=17713

        #execFunc
#line 174 curLineno=17300 compiledLineno=17716

#line 174 curLineno=17300 compiledLineno=17718

          def self._html_COMARKdiv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdiv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdiv'] = self.method( :_html_COMARKdiv_METHOD )
#line 174 curLineno=17300 compiledLineno=17722

          #execFunc(funcname=define)
        @_html_COMARKdiv = 
        trampCall(
#line 174 curLineno=17300 compiledLineno=17727

#line 174 curLineno=17300 compiledLineno=17729

#line 174 curLineno=17300 compiledLineno=17731

#line 174 curLineno=17300 compiledLineno=17733

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 174 curLineno=17300 compiledLineno=17736

#line 174 curLineno=17300 compiledLineno=17738

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 174 curLineno=17300 compiledLineno=17742

#line 174 curLineno=17300 compiledLineno=17744

                    :"div"
                ]
                             ))
        )
      end
  end
 )
#line 177 curLineno=17600 compiledLineno=17753

trampCall( 
#line 177 curLineno=17600 compiledLineno=17756

  begin 
#line 177 curLineno=17600 compiledLineno=17759

    #makeBegin
#line 177 curLineno=17600 compiledLineno=17762

#line 177 curLineno=17600 compiledLineno=17764

      begin 
#line 177 curLineno=17600 compiledLineno=17767

        #execFunc
#line 177 curLineno=17600 compiledLineno=17770

#line 177 curLineno=17600 compiledLineno=17772

          def self._html_COMARKa_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKa', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKa'] = self.method( :_html_COMARKa_METHOD )
#line 177 curLineno=17600 compiledLineno=17776

          #execFunc(funcname=define)
        @_html_COMARKa = 
        trampCall(
#line 177 curLineno=17600 compiledLineno=17781

#line 177 curLineno=17600 compiledLineno=17783

            nil
        )
      end
#line 177 curLineno=17600 compiledLineno=17788

      begin 
#line 177 curLineno=17600 compiledLineno=17791

        #execFunc
#line 177 curLineno=17600 compiledLineno=17794

#line 177 curLineno=17600 compiledLineno=17796

          def self._html_COMARKa_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKa', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKa'] = self.method( :_html_COMARKa_METHOD )
#line 177 curLineno=17600 compiledLineno=17800

          #execFunc(funcname=define)
        @_html_COMARKa = 
        trampCall(
#line 177 curLineno=17600 compiledLineno=17805

#line 177 curLineno=17600 compiledLineno=17807

#line 177 curLineno=17600 compiledLineno=17809

#line 177 curLineno=17600 compiledLineno=17811

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 177 curLineno=17600 compiledLineno=17814

#line 177 curLineno=17600 compiledLineno=17816

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 177 curLineno=17600 compiledLineno=17820

#line 177 curLineno=17600 compiledLineno=17822

                    :"a"
                ]
                             ))
        )
      end
  end
 )





































































#line 180 curLineno=17900 compiledLineno=17900

trampCall( 
#line 180 curLineno=17900 compiledLineno=17903

  begin 
#line 180 curLineno=17900 compiledLineno=17906

    #makeBegin
#line 180 curLineno=17900 compiledLineno=17909

#line 180 curLineno=17900 compiledLineno=17911

      begin 
#line 180 curLineno=17900 compiledLineno=17914

        #execFunc
#line 180 curLineno=17900 compiledLineno=17917

#line 180 curLineno=17900 compiledLineno=17919

          def self._html_COMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKmap'] = self.method( :_html_COMARKmap_METHOD )
#line 180 curLineno=17900 compiledLineno=17923

          #execFunc(funcname=define)
        @_html_COMARKmap = 
        trampCall(
#line 180 curLineno=17900 compiledLineno=17928

#line 180 curLineno=17900 compiledLineno=17930

            nil
        )
      end
#line 180 curLineno=17900 compiledLineno=17935

      begin 
#line 180 curLineno=17900 compiledLineno=17938

        #execFunc
#line 180 curLineno=17900 compiledLineno=17941

#line 180 curLineno=17900 compiledLineno=17943

          def self._html_COMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKmap'] = self.method( :_html_COMARKmap_METHOD )
#line 180 curLineno=17900 compiledLineno=17947

          #execFunc(funcname=define)
        @_html_COMARKmap = 
        trampCall(
#line 180 curLineno=17900 compiledLineno=17952

#line 180 curLineno=17900 compiledLineno=17954

#line 180 curLineno=17900 compiledLineno=17956

#line 180 curLineno=17900 compiledLineno=17958

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 180 curLineno=17900 compiledLineno=17961

#line 180 curLineno=17900 compiledLineno=17963

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 180 curLineno=17900 compiledLineno=17967

#line 180 curLineno=17900 compiledLineno=17969

                    :"map"
                ]
                             ))
        )
      end
#line 180 curLineno=17900 compiledLineno=17976

      begin 
#line 180 curLineno=17900 compiledLineno=17979

        #execFunc
#line 180 curLineno=17900 compiledLineno=17982

#line 180 curLineno=17900 compiledLineno=17984

          def self._html_COMARKarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKarea'] = self.method( :_html_COMARKarea_METHOD )
#line 180 curLineno=17900 compiledLineno=17988

          #execFunc(funcname=define)
        @_html_COMARKarea = 
        trampCall(
#line 180 curLineno=17900 compiledLineno=17993

#line 180 curLineno=17900 compiledLineno=17995

            nil
        )
      end
#line 180 curLineno=17900 compiledLineno=18000

      begin 
#line 180 curLineno=17900 compiledLineno=18003

        #execFunc
#line 180 curLineno=17900 compiledLineno=18006

#line 180 curLineno=17900 compiledLineno=18008

          def self._html_COMARKarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKarea'] = self.method( :_html_COMARKarea_METHOD )
#line 180 curLineno=17900 compiledLineno=18012

          #execFunc(funcname=define)
        @_html_COMARKarea = 
        trampCall(
#line 180 curLineno=17900 compiledLineno=18017

#line 180 curLineno=17900 compiledLineno=18019

#line 180 curLineno=17900 compiledLineno=18021

#line 180 curLineno=17900 compiledLineno=18023

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 180 curLineno=17900 compiledLineno=18026

#line 180 curLineno=17900 compiledLineno=18028

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 180 curLineno=17900 compiledLineno=18032

#line 180 curLineno=17900 compiledLineno=18034

                    :"area"                    ,
#line 180 curLineno=17900 compiledLineno=18037

                    LispKeyword.new( "empty?" )                    ,
#line 180 curLineno=17900 compiledLineno=18040

                    true
                ]
                             ))
        )
      end
  end
 )























































































































































#line 183 curLineno=18200 compiledLineno=18200

trampCall( 
#line 183 curLineno=18200 compiledLineno=18203

  begin 
#line 183 curLineno=18200 compiledLineno=18206

    #makeBegin
#line 183 curLineno=18200 compiledLineno=18209

#line 183 curLineno=18200 compiledLineno=18211

      begin 
#line 183 curLineno=18200 compiledLineno=18214

        #execFunc
#line 183 curLineno=18200 compiledLineno=18217

#line 183 curLineno=18200 compiledLineno=18219

          def self._html_COMARKlink_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlink', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlink'] = self.method( :_html_COMARKlink_METHOD )
#line 183 curLineno=18200 compiledLineno=18223

          #execFunc(funcname=define)
        @_html_COMARKlink = 
        trampCall(
#line 183 curLineno=18200 compiledLineno=18228

#line 183 curLineno=18200 compiledLineno=18230

            nil
        )
      end
#line 183 curLineno=18200 compiledLineno=18235

      begin 
#line 183 curLineno=18200 compiledLineno=18238

        #execFunc
#line 183 curLineno=18200 compiledLineno=18241

#line 183 curLineno=18200 compiledLineno=18243

          def self._html_COMARKlink_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlink', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlink'] = self.method( :_html_COMARKlink_METHOD )
#line 183 curLineno=18200 compiledLineno=18247

          #execFunc(funcname=define)
        @_html_COMARKlink = 
        trampCall(
#line 183 curLineno=18200 compiledLineno=18252

#line 183 curLineno=18200 compiledLineno=18254

#line 183 curLineno=18200 compiledLineno=18256

#line 183 curLineno=18200 compiledLineno=18258

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 183 curLineno=18200 compiledLineno=18261

#line 183 curLineno=18200 compiledLineno=18263

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 183 curLineno=18200 compiledLineno=18267

#line 183 curLineno=18200 compiledLineno=18269

                    :"link"                    ,
#line 183 curLineno=18200 compiledLineno=18272

                    LispKeyword.new( "empty?" )                    ,
#line 183 curLineno=18200 compiledLineno=18275

                    true
                ]
                             ))
        )
      end
  end
 )
























































































































































































































#line 186 curLineno=18500 compiledLineno=18500

trampCall( 
#line 186 curLineno=18500 compiledLineno=18503

  begin 
#line 186 curLineno=18500 compiledLineno=18506

    #makeBegin
#line 186 curLineno=18500 compiledLineno=18509

#line 186 curLineno=18500 compiledLineno=18511

      begin 
#line 186 curLineno=18500 compiledLineno=18514

        #execFunc
#line 186 curLineno=18500 compiledLineno=18517

#line 186 curLineno=18500 compiledLineno=18519

          def self._html_COMARKimg_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKimg', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKimg'] = self.method( :_html_COMARKimg_METHOD )
#line 186 curLineno=18500 compiledLineno=18523

          #execFunc(funcname=define)
        @_html_COMARKimg = 
        trampCall(
#line 186 curLineno=18500 compiledLineno=18528

#line 186 curLineno=18500 compiledLineno=18530

            nil
        )
      end
#line 186 curLineno=18500 compiledLineno=18535

      begin 
#line 186 curLineno=18500 compiledLineno=18538

        #execFunc
#line 186 curLineno=18500 compiledLineno=18541

#line 186 curLineno=18500 compiledLineno=18543

          def self._html_COMARKimg_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKimg', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKimg'] = self.method( :_html_COMARKimg_METHOD )
#line 186 curLineno=18500 compiledLineno=18547

          #execFunc(funcname=define)
        @_html_COMARKimg = 
        trampCall(
#line 186 curLineno=18500 compiledLineno=18552

#line 186 curLineno=18500 compiledLineno=18554

#line 186 curLineno=18500 compiledLineno=18556

#line 186 curLineno=18500 compiledLineno=18558

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 186 curLineno=18500 compiledLineno=18561

#line 186 curLineno=18500 compiledLineno=18563

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 186 curLineno=18500 compiledLineno=18567

#line 186 curLineno=18500 compiledLineno=18569

                    :"img"                    ,
#line 186 curLineno=18500 compiledLineno=18572

                    LispKeyword.new( "empty?" )                    ,
#line 186 curLineno=18500 compiledLineno=18575

                    true
                ]
                             ))
        )
      end
  end
 )
























































































































































































































#line 189 curLineno=18800 compiledLineno=18800

trampCall( 
#line 189 curLineno=18800 compiledLineno=18803

  begin 
#line 189 curLineno=18800 compiledLineno=18806

    #makeBegin
#line 189 curLineno=18800 compiledLineno=18809

#line 189 curLineno=18800 compiledLineno=18811

      begin 
#line 189 curLineno=18800 compiledLineno=18814

        #execFunc
#line 189 curLineno=18800 compiledLineno=18817

#line 189 curLineno=18800 compiledLineno=18819

          def self._html_COMARKobject_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKobject', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKobject'] = self.method( :_html_COMARKobject_METHOD )
#line 189 curLineno=18800 compiledLineno=18823

          #execFunc(funcname=define)
        @_html_COMARKobject = 
        trampCall(
#line 189 curLineno=18800 compiledLineno=18828

#line 189 curLineno=18800 compiledLineno=18830

            nil
        )
      end
#line 189 curLineno=18800 compiledLineno=18835

      begin 
#line 189 curLineno=18800 compiledLineno=18838

        #execFunc
#line 189 curLineno=18800 compiledLineno=18841

#line 189 curLineno=18800 compiledLineno=18843

          def self._html_COMARKobject_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKobject', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKobject'] = self.method( :_html_COMARKobject_METHOD )
#line 189 curLineno=18800 compiledLineno=18847

          #execFunc(funcname=define)
        @_html_COMARKobject = 
        trampCall(
#line 189 curLineno=18800 compiledLineno=18852

#line 189 curLineno=18800 compiledLineno=18854

#line 189 curLineno=18800 compiledLineno=18856

#line 189 curLineno=18800 compiledLineno=18858

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 189 curLineno=18800 compiledLineno=18861

#line 189 curLineno=18800 compiledLineno=18863

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 189 curLineno=18800 compiledLineno=18867

#line 189 curLineno=18800 compiledLineno=18869

                    :"object"
                ]
                             ))
        )
      end
#line 189 curLineno=18800 compiledLineno=18876

      begin 
#line 189 curLineno=18800 compiledLineno=18879

        #execFunc
#line 189 curLineno=18800 compiledLineno=18882

#line 189 curLineno=18800 compiledLineno=18884

          def self._html_COMARKparam_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKparam', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKparam'] = self.method( :_html_COMARKparam_METHOD )
#line 189 curLineno=18800 compiledLineno=18888

          #execFunc(funcname=define)
        @_html_COMARKparam = 
        trampCall(
#line 189 curLineno=18800 compiledLineno=18893

#line 189 curLineno=18800 compiledLineno=18895

            nil
        )
      end
#line 189 curLineno=18800 compiledLineno=18900

      begin 
#line 189 curLineno=18800 compiledLineno=18903

        #execFunc
#line 189 curLineno=18800 compiledLineno=18906

#line 189 curLineno=18800 compiledLineno=18908

          def self._html_COMARKparam_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKparam', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKparam'] = self.method( :_html_COMARKparam_METHOD )
#line 189 curLineno=18800 compiledLineno=18912

          #execFunc(funcname=define)
        @_html_COMARKparam = 
        trampCall(
#line 189 curLineno=18800 compiledLineno=18917

#line 189 curLineno=18800 compiledLineno=18919

#line 189 curLineno=18800 compiledLineno=18921

#line 189 curLineno=18800 compiledLineno=18923

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 189 curLineno=18800 compiledLineno=18926

#line 189 curLineno=18800 compiledLineno=18928

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 189 curLineno=18800 compiledLineno=18932

#line 189 curLineno=18800 compiledLineno=18934

                    :"param"                    ,
#line 189 curLineno=18800 compiledLineno=18937

                    LispKeyword.new( "empty?" )                    ,
#line 189 curLineno=18800 compiledLineno=18940

                    true
                ]
                             ))
        )
      end
  end
 )























































































































































#line 192 curLineno=19100 compiledLineno=19100

trampCall( 
#line 192 curLineno=19100 compiledLineno=19103

  begin 
#line 192 curLineno=19100 compiledLineno=19106

    #makeBegin
#line 192 curLineno=19100 compiledLineno=19109

#line 192 curLineno=19100 compiledLineno=19111

      begin 
#line 192 curLineno=19100 compiledLineno=19114

        #execFunc
#line 192 curLineno=19100 compiledLineno=19117

#line 192 curLineno=19100 compiledLineno=19119

          def self._html_COMARKhr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhr'] = self.method( :_html_COMARKhr_METHOD )
#line 192 curLineno=19100 compiledLineno=19123

          #execFunc(funcname=define)
        @_html_COMARKhr = 
        trampCall(
#line 192 curLineno=19100 compiledLineno=19128

#line 192 curLineno=19100 compiledLineno=19130

            nil
        )
      end
#line 192 curLineno=19100 compiledLineno=19135

      begin 
#line 192 curLineno=19100 compiledLineno=19138

        #execFunc
#line 192 curLineno=19100 compiledLineno=19141

#line 192 curLineno=19100 compiledLineno=19143

          def self._html_COMARKhr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhr'] = self.method( :_html_COMARKhr_METHOD )
#line 192 curLineno=19100 compiledLineno=19147

          #execFunc(funcname=define)
        @_html_COMARKhr = 
        trampCall(
#line 192 curLineno=19100 compiledLineno=19152

#line 192 curLineno=19100 compiledLineno=19154

#line 192 curLineno=19100 compiledLineno=19156

#line 192 curLineno=19100 compiledLineno=19158

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 192 curLineno=19100 compiledLineno=19161

#line 192 curLineno=19100 compiledLineno=19163

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 192 curLineno=19100 compiledLineno=19167

#line 192 curLineno=19100 compiledLineno=19169

                    :"hr"                    ,
#line 192 curLineno=19100 compiledLineno=19172

                    LispKeyword.new( "empty?" )                    ,
#line 192 curLineno=19100 compiledLineno=19175

                    true
                ]
                             ))
        )
      end
  end
 )
























































































































































































































#line 195 curLineno=19400 compiledLineno=19400

trampCall( 
#line 195 curLineno=19400 compiledLineno=19403

  begin 
#line 195 curLineno=19400 compiledLineno=19406

    #makeBegin
#line 195 curLineno=19400 compiledLineno=19409

#line 195 curLineno=19400 compiledLineno=19411

      begin 
#line 195 curLineno=19400 compiledLineno=19414

        #execFunc
#line 195 curLineno=19400 compiledLineno=19417

#line 195 curLineno=19400 compiledLineno=19419

          def self._html_COMARKp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKp'] = self.method( :_html_COMARKp_METHOD )
#line 195 curLineno=19400 compiledLineno=19423

          #execFunc(funcname=define)
        @_html_COMARKp = 
        trampCall(
#line 195 curLineno=19400 compiledLineno=19428

#line 195 curLineno=19400 compiledLineno=19430

            nil
        )
      end
#line 195 curLineno=19400 compiledLineno=19435

      begin 
#line 195 curLineno=19400 compiledLineno=19438

        #execFunc
#line 195 curLineno=19400 compiledLineno=19441

#line 195 curLineno=19400 compiledLineno=19443

          def self._html_COMARKp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKp'] = self.method( :_html_COMARKp_METHOD )
#line 195 curLineno=19400 compiledLineno=19447

          #execFunc(funcname=define)
        @_html_COMARKp = 
        trampCall(
#line 195 curLineno=19400 compiledLineno=19452

#line 195 curLineno=19400 compiledLineno=19454

#line 195 curLineno=19400 compiledLineno=19456

#line 195 curLineno=19400 compiledLineno=19458

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 195 curLineno=19400 compiledLineno=19461

#line 195 curLineno=19400 compiledLineno=19463

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 195 curLineno=19400 compiledLineno=19467

#line 195 curLineno=19400 compiledLineno=19469

                    :"p"
                ]
                             ))
        )
      end
  end
 )






























































































































































































































#line 198 curLineno=19700 compiledLineno=19700

trampCall( 
#line 198 curLineno=19700 compiledLineno=19703

  begin 
#line 198 curLineno=19700 compiledLineno=19706

    #makeBegin
#line 198 curLineno=19700 compiledLineno=19709

#line 198 curLineno=19700 compiledLineno=19711

      begin 
#line 198 curLineno=19700 compiledLineno=19714

        #execFunc
#line 198 curLineno=19700 compiledLineno=19717

#line 198 curLineno=19700 compiledLineno=19719

          def self._html_COMARKh1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh1'] = self.method( :_html_COMARKh1_METHOD )
#line 198 curLineno=19700 compiledLineno=19723

          #execFunc(funcname=define)
        @_html_COMARKh1 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19728

#line 198 curLineno=19700 compiledLineno=19730

            nil
        )
      end
#line 198 curLineno=19700 compiledLineno=19735

      begin 
#line 198 curLineno=19700 compiledLineno=19738

        #execFunc
#line 198 curLineno=19700 compiledLineno=19741

#line 198 curLineno=19700 compiledLineno=19743

          def self._html_COMARKh1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh1'] = self.method( :_html_COMARKh1_METHOD )
#line 198 curLineno=19700 compiledLineno=19747

          #execFunc(funcname=define)
        @_html_COMARKh1 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19752

#line 198 curLineno=19700 compiledLineno=19754

#line 198 curLineno=19700 compiledLineno=19756

#line 198 curLineno=19700 compiledLineno=19758

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=19700 compiledLineno=19761

#line 198 curLineno=19700 compiledLineno=19763

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=19700 compiledLineno=19767

#line 198 curLineno=19700 compiledLineno=19769

                    :"h1"
                ]
                             ))
        )
      end
#line 198 curLineno=19700 compiledLineno=19776

      begin 
#line 198 curLineno=19700 compiledLineno=19779

        #execFunc
#line 198 curLineno=19700 compiledLineno=19782

#line 198 curLineno=19700 compiledLineno=19784

          def self._html_COMARKh2_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh2', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh2'] = self.method( :_html_COMARKh2_METHOD )
#line 198 curLineno=19700 compiledLineno=19788

          #execFunc(funcname=define)
        @_html_COMARKh2 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19793

#line 198 curLineno=19700 compiledLineno=19795

            nil
        )
      end
#line 198 curLineno=19700 compiledLineno=19800

      begin 
#line 198 curLineno=19700 compiledLineno=19803

        #execFunc
#line 198 curLineno=19700 compiledLineno=19806

#line 198 curLineno=19700 compiledLineno=19808

          def self._html_COMARKh2_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh2', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh2'] = self.method( :_html_COMARKh2_METHOD )
#line 198 curLineno=19700 compiledLineno=19812

          #execFunc(funcname=define)
        @_html_COMARKh2 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19817

#line 198 curLineno=19700 compiledLineno=19819

#line 198 curLineno=19700 compiledLineno=19821

#line 198 curLineno=19700 compiledLineno=19823

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=19700 compiledLineno=19826

#line 198 curLineno=19700 compiledLineno=19828

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=19700 compiledLineno=19832

#line 198 curLineno=19700 compiledLineno=19834

                    :"h2"
                ]
                             ))
        )
      end
#line 198 curLineno=19700 compiledLineno=19841

      begin 
#line 198 curLineno=19700 compiledLineno=19844

        #execFunc
#line 198 curLineno=19700 compiledLineno=19847

#line 198 curLineno=19700 compiledLineno=19849

          def self._html_COMARKh3_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh3', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh3'] = self.method( :_html_COMARKh3_METHOD )
#line 198 curLineno=19700 compiledLineno=19853

          #execFunc(funcname=define)
        @_html_COMARKh3 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19858

#line 198 curLineno=19700 compiledLineno=19860

            nil
        )
      end
#line 198 curLineno=19700 compiledLineno=19865

      begin 
#line 198 curLineno=19700 compiledLineno=19868

        #execFunc
#line 198 curLineno=19700 compiledLineno=19871

#line 198 curLineno=19700 compiledLineno=19873

          def self._html_COMARKh3_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh3', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh3'] = self.method( :_html_COMARKh3_METHOD )
#line 198 curLineno=19700 compiledLineno=19877

          #execFunc(funcname=define)
        @_html_COMARKh3 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19882

#line 198 curLineno=19700 compiledLineno=19884

#line 198 curLineno=19700 compiledLineno=19886

#line 198 curLineno=19700 compiledLineno=19888

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=19700 compiledLineno=19891

#line 198 curLineno=19700 compiledLineno=19893

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=19700 compiledLineno=19897

#line 198 curLineno=19700 compiledLineno=19899

                    :"h3"
                ]
                             ))
        )
      end
#line 198 curLineno=19700 compiledLineno=19906

      begin 
#line 198 curLineno=19700 compiledLineno=19909

        #execFunc
#line 198 curLineno=19700 compiledLineno=19912

#line 198 curLineno=19700 compiledLineno=19914

          def self._html_COMARKh4_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh4', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh4'] = self.method( :_html_COMARKh4_METHOD )
#line 198 curLineno=19700 compiledLineno=19918

          #execFunc(funcname=define)
        @_html_COMARKh4 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19923

#line 198 curLineno=19700 compiledLineno=19925

            nil
        )
      end
#line 198 curLineno=19700 compiledLineno=19930

      begin 
#line 198 curLineno=19700 compiledLineno=19933

        #execFunc
#line 198 curLineno=19700 compiledLineno=19936

#line 198 curLineno=19700 compiledLineno=19938

          def self._html_COMARKh4_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh4', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh4'] = self.method( :_html_COMARKh4_METHOD )
#line 198 curLineno=19700 compiledLineno=19942

          #execFunc(funcname=define)
        @_html_COMARKh4 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19947

#line 198 curLineno=19700 compiledLineno=19949

#line 198 curLineno=19700 compiledLineno=19951

#line 198 curLineno=19700 compiledLineno=19953

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=19700 compiledLineno=19956

#line 198 curLineno=19700 compiledLineno=19958

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=19700 compiledLineno=19962

#line 198 curLineno=19700 compiledLineno=19964

                    :"h4"
                ]
                             ))
        )
      end
#line 198 curLineno=19700 compiledLineno=19971

      begin 
#line 198 curLineno=19700 compiledLineno=19974

        #execFunc
#line 198 curLineno=19700 compiledLineno=19977

#line 198 curLineno=19700 compiledLineno=19979

          def self._html_COMARKh5_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh5', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh5'] = self.method( :_html_COMARKh5_METHOD )
#line 198 curLineno=19700 compiledLineno=19983

          #execFunc(funcname=define)
        @_html_COMARKh5 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=19988

#line 198 curLineno=19700 compiledLineno=19990

            nil
        )
      end
#line 198 curLineno=19700 compiledLineno=19995

      begin 
#line 198 curLineno=19700 compiledLineno=19998

        #execFunc
#line 198 curLineno=19700 compiledLineno=20001

#line 198 curLineno=19700 compiledLineno=20003

          def self._html_COMARKh5_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh5', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh5'] = self.method( :_html_COMARKh5_METHOD )
#line 198 curLineno=19700 compiledLineno=20007

          #execFunc(funcname=define)
        @_html_COMARKh5 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=20012

#line 198 curLineno=19700 compiledLineno=20014

#line 198 curLineno=19700 compiledLineno=20016

#line 198 curLineno=19700 compiledLineno=20018

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=19700 compiledLineno=20021

#line 198 curLineno=19700 compiledLineno=20023

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=19700 compiledLineno=20027

#line 198 curLineno=19700 compiledLineno=20029

                    :"h5"
                ]
                             ))
        )
      end
#line 198 curLineno=19700 compiledLineno=20036

      begin 
#line 198 curLineno=19700 compiledLineno=20039

        #execFunc
#line 198 curLineno=19700 compiledLineno=20042

#line 198 curLineno=19700 compiledLineno=20044

          def self._html_COMARKh6_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh6', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh6'] = self.method( :_html_COMARKh6_METHOD )
#line 198 curLineno=19700 compiledLineno=20048

          #execFunc(funcname=define)
        @_html_COMARKh6 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=20053

#line 198 curLineno=19700 compiledLineno=20055

            nil
        )
      end
#line 198 curLineno=19700 compiledLineno=20060

      begin 
#line 198 curLineno=19700 compiledLineno=20063

        #execFunc
#line 198 curLineno=19700 compiledLineno=20066

#line 198 curLineno=19700 compiledLineno=20068

          def self._html_COMARKh6_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh6', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh6'] = self.method( :_html_COMARKh6_METHOD )
#line 198 curLineno=19700 compiledLineno=20072

          #execFunc(funcname=define)
        @_html_COMARKh6 = 
        trampCall(
#line 198 curLineno=19700 compiledLineno=20077

#line 198 curLineno=19700 compiledLineno=20079

#line 198 curLineno=19700 compiledLineno=20081

#line 198 curLineno=19700 compiledLineno=20083

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=19700 compiledLineno=20086

#line 198 curLineno=19700 compiledLineno=20088

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=19700 compiledLineno=20092

#line 198 curLineno=19700 compiledLineno=20094

                    :"h6"
                ]
                             ))
        )
      end
  end
 )
#line 201 curLineno=20000 compiledLineno=20103

trampCall( 
#line 201 curLineno=20000 compiledLineno=20106

  begin 
#line 201 curLineno=20000 compiledLineno=20109

    #makeBegin
#line 201 curLineno=20000 compiledLineno=20112

#line 201 curLineno=20000 compiledLineno=20114

      begin 
#line 201 curLineno=20000 compiledLineno=20117

        #execFunc
#line 201 curLineno=20000 compiledLineno=20120

#line 201 curLineno=20000 compiledLineno=20122

          def self._html_COMARKpre_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKpre', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKpre'] = self.method( :_html_COMARKpre_METHOD )
#line 201 curLineno=20000 compiledLineno=20126

          #execFunc(funcname=define)
        @_html_COMARKpre = 
        trampCall(
#line 201 curLineno=20000 compiledLineno=20131

#line 201 curLineno=20000 compiledLineno=20133

            nil
        )
      end
#line 201 curLineno=20000 compiledLineno=20138

      begin 
#line 201 curLineno=20000 compiledLineno=20141

        #execFunc
#line 201 curLineno=20000 compiledLineno=20144

#line 201 curLineno=20000 compiledLineno=20146

          def self._html_COMARKpre_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKpre', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKpre'] = self.method( :_html_COMARKpre_METHOD )
#line 201 curLineno=20000 compiledLineno=20150

          #execFunc(funcname=define)
        @_html_COMARKpre = 
        trampCall(
#line 201 curLineno=20000 compiledLineno=20155

#line 201 curLineno=20000 compiledLineno=20157

#line 201 curLineno=20000 compiledLineno=20159

#line 201 curLineno=20000 compiledLineno=20161

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 201 curLineno=20000 compiledLineno=20164

#line 201 curLineno=20000 compiledLineno=20166

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 201 curLineno=20000 compiledLineno=20170

#line 201 curLineno=20000 compiledLineno=20172

                    :"pre"
                ]
                             ))
        )
      end
  end
 )























































































































#line 204 curLineno=20300 compiledLineno=20300

trampCall( 
#line 204 curLineno=20300 compiledLineno=20303

  begin 
#line 204 curLineno=20300 compiledLineno=20306

    #makeBegin
#line 204 curLineno=20300 compiledLineno=20309

#line 204 curLineno=20300 compiledLineno=20311

      begin 
#line 204 curLineno=20300 compiledLineno=20314

        #execFunc
#line 204 curLineno=20300 compiledLineno=20317

#line 204 curLineno=20300 compiledLineno=20319

          def self._html_COMARKq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKq'] = self.method( :_html_COMARKq_METHOD )
#line 204 curLineno=20300 compiledLineno=20323

          #execFunc(funcname=define)
        @_html_COMARKq = 
        trampCall(
#line 204 curLineno=20300 compiledLineno=20328

#line 204 curLineno=20300 compiledLineno=20330

            nil
        )
      end
#line 204 curLineno=20300 compiledLineno=20335

      begin 
#line 204 curLineno=20300 compiledLineno=20338

        #execFunc
#line 204 curLineno=20300 compiledLineno=20341

#line 204 curLineno=20300 compiledLineno=20343

          def self._html_COMARKq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKq'] = self.method( :_html_COMARKq_METHOD )
#line 204 curLineno=20300 compiledLineno=20347

          #execFunc(funcname=define)
        @_html_COMARKq = 
        trampCall(
#line 204 curLineno=20300 compiledLineno=20352

#line 204 curLineno=20300 compiledLineno=20354

#line 204 curLineno=20300 compiledLineno=20356

#line 204 curLineno=20300 compiledLineno=20358

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 204 curLineno=20300 compiledLineno=20361

#line 204 curLineno=20300 compiledLineno=20363

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 204 curLineno=20300 compiledLineno=20367

#line 204 curLineno=20300 compiledLineno=20369

                    :"q"
                ]
                             ))
        )
      end
  end
 )






























































































































































































































#line 207 curLineno=20600 compiledLineno=20600

trampCall( 
#line 207 curLineno=20600 compiledLineno=20603

  begin 
#line 207 curLineno=20600 compiledLineno=20606

    #makeBegin
#line 207 curLineno=20600 compiledLineno=20609

#line 207 curLineno=20600 compiledLineno=20611

      begin 
#line 207 curLineno=20600 compiledLineno=20614

        #execFunc
#line 207 curLineno=20600 compiledLineno=20617

#line 207 curLineno=20600 compiledLineno=20619

          def self._html_COMARKblockquote_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKblockquote', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKblockquote'] = self.method( :_html_COMARKblockquote_METHOD )
#line 207 curLineno=20600 compiledLineno=20623

          #execFunc(funcname=define)
        @_html_COMARKblockquote = 
        trampCall(
#line 207 curLineno=20600 compiledLineno=20628

#line 207 curLineno=20600 compiledLineno=20630

            nil
        )
      end
#line 207 curLineno=20600 compiledLineno=20635

      begin 
#line 207 curLineno=20600 compiledLineno=20638

        #execFunc
#line 207 curLineno=20600 compiledLineno=20641

#line 207 curLineno=20600 compiledLineno=20643

          def self._html_COMARKblockquote_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKblockquote', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKblockquote'] = self.method( :_html_COMARKblockquote_METHOD )
#line 207 curLineno=20600 compiledLineno=20647

          #execFunc(funcname=define)
        @_html_COMARKblockquote = 
        trampCall(
#line 207 curLineno=20600 compiledLineno=20652

#line 207 curLineno=20600 compiledLineno=20654

#line 207 curLineno=20600 compiledLineno=20656

#line 207 curLineno=20600 compiledLineno=20658

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 207 curLineno=20600 compiledLineno=20661

#line 207 curLineno=20600 compiledLineno=20663

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 207 curLineno=20600 compiledLineno=20667

#line 207 curLineno=20600 compiledLineno=20669

                    :"blockquote"
                ]
                             ))
        )
      end
  end
 )






























































































































































































































#line 210 curLineno=20900 compiledLineno=20900

trampCall( 
#line 210 curLineno=20900 compiledLineno=20903

  begin 
#line 210 curLineno=20900 compiledLineno=20906

    #makeBegin
#line 210 curLineno=20900 compiledLineno=20909

#line 210 curLineno=20900 compiledLineno=20911

      begin 
#line 210 curLineno=20900 compiledLineno=20914

        #execFunc
#line 210 curLineno=20900 compiledLineno=20917

#line 210 curLineno=20900 compiledLineno=20919

          def self._html_COMARKins_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKins', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKins'] = self.method( :_html_COMARKins_METHOD )
#line 210 curLineno=20900 compiledLineno=20923

          #execFunc(funcname=define)
        @_html_COMARKins = 
        trampCall(
#line 210 curLineno=20900 compiledLineno=20928

#line 210 curLineno=20900 compiledLineno=20930

            nil
        )
      end
#line 210 curLineno=20900 compiledLineno=20935

      begin 
#line 210 curLineno=20900 compiledLineno=20938

        #execFunc
#line 210 curLineno=20900 compiledLineno=20941

#line 210 curLineno=20900 compiledLineno=20943

          def self._html_COMARKins_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKins', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKins'] = self.method( :_html_COMARKins_METHOD )
#line 210 curLineno=20900 compiledLineno=20947

          #execFunc(funcname=define)
        @_html_COMARKins = 
        trampCall(
#line 210 curLineno=20900 compiledLineno=20952

#line 210 curLineno=20900 compiledLineno=20954

#line 210 curLineno=20900 compiledLineno=20956

#line 210 curLineno=20900 compiledLineno=20958

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 210 curLineno=20900 compiledLineno=20961

#line 210 curLineno=20900 compiledLineno=20963

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 210 curLineno=20900 compiledLineno=20967

#line 210 curLineno=20900 compiledLineno=20969

                    :"ins"
                ]
                             ))
        )
      end
#line 210 curLineno=20900 compiledLineno=20976

      begin 
#line 210 curLineno=20900 compiledLineno=20979

        #execFunc
#line 210 curLineno=20900 compiledLineno=20982

#line 210 curLineno=20900 compiledLineno=20984

          def self._html_COMARKdel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdel'] = self.method( :_html_COMARKdel_METHOD )
#line 210 curLineno=20900 compiledLineno=20988

          #execFunc(funcname=define)
        @_html_COMARKdel = 
        trampCall(
#line 210 curLineno=20900 compiledLineno=20993

#line 210 curLineno=20900 compiledLineno=20995

            nil
        )
      end
#line 210 curLineno=20900 compiledLineno=21000

      begin 
#line 210 curLineno=20900 compiledLineno=21003

        #execFunc
#line 210 curLineno=20900 compiledLineno=21006

#line 210 curLineno=20900 compiledLineno=21008

          def self._html_COMARKdel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdel'] = self.method( :_html_COMARKdel_METHOD )
#line 210 curLineno=20900 compiledLineno=21012

          #execFunc(funcname=define)
        @_html_COMARKdel = 
        trampCall(
#line 210 curLineno=20900 compiledLineno=21017

#line 210 curLineno=20900 compiledLineno=21019

#line 210 curLineno=20900 compiledLineno=21021

#line 210 curLineno=20900 compiledLineno=21023

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 210 curLineno=20900 compiledLineno=21026

#line 210 curLineno=20900 compiledLineno=21028

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 210 curLineno=20900 compiledLineno=21032

#line 210 curLineno=20900 compiledLineno=21034

                    :"del"
                ]
                             ))
        )
      end
  end
 )





























































































































































#line 213 curLineno=21200 compiledLineno=21200

trampCall( 
#line 213 curLineno=21200 compiledLineno=21203

  begin 
#line 213 curLineno=21200 compiledLineno=21206

    #makeBegin
#line 213 curLineno=21200 compiledLineno=21209

#line 213 curLineno=21200 compiledLineno=21211

      begin 
#line 213 curLineno=21200 compiledLineno=21214

        #execFunc
#line 213 curLineno=21200 compiledLineno=21217

#line 213 curLineno=21200 compiledLineno=21219

          def self._html_COMARKdl_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdl', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdl'] = self.method( :_html_COMARKdl_METHOD )
#line 213 curLineno=21200 compiledLineno=21223

          #execFunc(funcname=define)
        @_html_COMARKdl = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21228

#line 213 curLineno=21200 compiledLineno=21230

            nil
        )
      end
#line 213 curLineno=21200 compiledLineno=21235

      begin 
#line 213 curLineno=21200 compiledLineno=21238

        #execFunc
#line 213 curLineno=21200 compiledLineno=21241

#line 213 curLineno=21200 compiledLineno=21243

          def self._html_COMARKdl_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdl', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdl'] = self.method( :_html_COMARKdl_METHOD )
#line 213 curLineno=21200 compiledLineno=21247

          #execFunc(funcname=define)
        @_html_COMARKdl = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21252

#line 213 curLineno=21200 compiledLineno=21254

#line 213 curLineno=21200 compiledLineno=21256

#line 213 curLineno=21200 compiledLineno=21258

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=21200 compiledLineno=21261

#line 213 curLineno=21200 compiledLineno=21263

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=21200 compiledLineno=21267

#line 213 curLineno=21200 compiledLineno=21269

                    :"dl"
                ]
                             ))
        )
      end
#line 213 curLineno=21200 compiledLineno=21276

      begin 
#line 213 curLineno=21200 compiledLineno=21279

        #execFunc
#line 213 curLineno=21200 compiledLineno=21282

#line 213 curLineno=21200 compiledLineno=21284

          def self._html_COMARKdt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdt'] = self.method( :_html_COMARKdt_METHOD )
#line 213 curLineno=21200 compiledLineno=21288

          #execFunc(funcname=define)
        @_html_COMARKdt = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21293

#line 213 curLineno=21200 compiledLineno=21295

            nil
        )
      end
#line 213 curLineno=21200 compiledLineno=21300

      begin 
#line 213 curLineno=21200 compiledLineno=21303

        #execFunc
#line 213 curLineno=21200 compiledLineno=21306

#line 213 curLineno=21200 compiledLineno=21308

          def self._html_COMARKdt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdt'] = self.method( :_html_COMARKdt_METHOD )
#line 213 curLineno=21200 compiledLineno=21312

          #execFunc(funcname=define)
        @_html_COMARKdt = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21317

#line 213 curLineno=21200 compiledLineno=21319

#line 213 curLineno=21200 compiledLineno=21321

#line 213 curLineno=21200 compiledLineno=21323

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=21200 compiledLineno=21326

#line 213 curLineno=21200 compiledLineno=21328

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=21200 compiledLineno=21332

#line 213 curLineno=21200 compiledLineno=21334

                    :"dt"
                ]
                             ))
        )
      end
#line 213 curLineno=21200 compiledLineno=21341

      begin 
#line 213 curLineno=21200 compiledLineno=21344

        #execFunc
#line 213 curLineno=21200 compiledLineno=21347

#line 213 curLineno=21200 compiledLineno=21349

          def self._html_COMARKdd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdd'] = self.method( :_html_COMARKdd_METHOD )
#line 213 curLineno=21200 compiledLineno=21353

          #execFunc(funcname=define)
        @_html_COMARKdd = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21358

#line 213 curLineno=21200 compiledLineno=21360

            nil
        )
      end
#line 213 curLineno=21200 compiledLineno=21365

      begin 
#line 213 curLineno=21200 compiledLineno=21368

        #execFunc
#line 213 curLineno=21200 compiledLineno=21371

#line 213 curLineno=21200 compiledLineno=21373

          def self._html_COMARKdd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdd'] = self.method( :_html_COMARKdd_METHOD )
#line 213 curLineno=21200 compiledLineno=21377

          #execFunc(funcname=define)
        @_html_COMARKdd = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21382

#line 213 curLineno=21200 compiledLineno=21384

#line 213 curLineno=21200 compiledLineno=21386

#line 213 curLineno=21200 compiledLineno=21388

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=21200 compiledLineno=21391

#line 213 curLineno=21200 compiledLineno=21393

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=21200 compiledLineno=21397

#line 213 curLineno=21200 compiledLineno=21399

                    :"dd"
                ]
                             ))
        )
      end
#line 213 curLineno=21200 compiledLineno=21406

      begin 
#line 213 curLineno=21200 compiledLineno=21409

        #execFunc
#line 213 curLineno=21200 compiledLineno=21412

#line 213 curLineno=21200 compiledLineno=21414

          def self._html_COMARKol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKol'] = self.method( :_html_COMARKol_METHOD )
#line 213 curLineno=21200 compiledLineno=21418

          #execFunc(funcname=define)
        @_html_COMARKol = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21423

#line 213 curLineno=21200 compiledLineno=21425

            nil
        )
      end
#line 213 curLineno=21200 compiledLineno=21430

      begin 
#line 213 curLineno=21200 compiledLineno=21433

        #execFunc
#line 213 curLineno=21200 compiledLineno=21436

#line 213 curLineno=21200 compiledLineno=21438

          def self._html_COMARKol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKol'] = self.method( :_html_COMARKol_METHOD )
#line 213 curLineno=21200 compiledLineno=21442

          #execFunc(funcname=define)
        @_html_COMARKol = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21447

#line 213 curLineno=21200 compiledLineno=21449

#line 213 curLineno=21200 compiledLineno=21451

#line 213 curLineno=21200 compiledLineno=21453

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=21200 compiledLineno=21456

#line 213 curLineno=21200 compiledLineno=21458

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=21200 compiledLineno=21462

#line 213 curLineno=21200 compiledLineno=21464

                    :"ol"
                ]
                             ))
        )
      end
#line 213 curLineno=21200 compiledLineno=21471

      begin 
#line 213 curLineno=21200 compiledLineno=21474

        #execFunc
#line 213 curLineno=21200 compiledLineno=21477

#line 213 curLineno=21200 compiledLineno=21479

          def self._html_COMARKul_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKul', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKul'] = self.method( :_html_COMARKul_METHOD )
#line 213 curLineno=21200 compiledLineno=21483

          #execFunc(funcname=define)
        @_html_COMARKul = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21488

#line 213 curLineno=21200 compiledLineno=21490

            nil
        )
      end
#line 213 curLineno=21200 compiledLineno=21495

      begin 
#line 213 curLineno=21200 compiledLineno=21498

        #execFunc
#line 213 curLineno=21200 compiledLineno=21501

#line 213 curLineno=21200 compiledLineno=21503

          def self._html_COMARKul_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKul', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKul'] = self.method( :_html_COMARKul_METHOD )
#line 213 curLineno=21200 compiledLineno=21507

          #execFunc(funcname=define)
        @_html_COMARKul = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21512

#line 213 curLineno=21200 compiledLineno=21514

#line 213 curLineno=21200 compiledLineno=21516

#line 213 curLineno=21200 compiledLineno=21518

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=21200 compiledLineno=21521

#line 213 curLineno=21200 compiledLineno=21523

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=21200 compiledLineno=21527

#line 213 curLineno=21200 compiledLineno=21529

                    :"ul"
                ]
                             ))
        )
      end
#line 213 curLineno=21200 compiledLineno=21536

      begin 
#line 213 curLineno=21200 compiledLineno=21539

        #execFunc
#line 213 curLineno=21200 compiledLineno=21542

#line 213 curLineno=21200 compiledLineno=21544

          def self._html_COMARKli_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKli', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKli'] = self.method( :_html_COMARKli_METHOD )
#line 213 curLineno=21200 compiledLineno=21548

          #execFunc(funcname=define)
        @_html_COMARKli = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21553

#line 213 curLineno=21200 compiledLineno=21555

            nil
        )
      end
#line 213 curLineno=21200 compiledLineno=21560

      begin 
#line 213 curLineno=21200 compiledLineno=21563

        #execFunc
#line 213 curLineno=21200 compiledLineno=21566

#line 213 curLineno=21200 compiledLineno=21568

          def self._html_COMARKli_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKli', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKli'] = self.method( :_html_COMARKli_METHOD )
#line 213 curLineno=21200 compiledLineno=21572

          #execFunc(funcname=define)
        @_html_COMARKli = 
        trampCall(
#line 213 curLineno=21200 compiledLineno=21577

#line 213 curLineno=21200 compiledLineno=21579

#line 213 curLineno=21200 compiledLineno=21581

#line 213 curLineno=21200 compiledLineno=21583

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=21200 compiledLineno=21586

#line 213 curLineno=21200 compiledLineno=21588

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=21200 compiledLineno=21592

#line 213 curLineno=21200 compiledLineno=21594

                    :"li"
                ]
                             ))
        )
      end
  end
 )
#line 216 curLineno=21500 compiledLineno=21603

trampCall( 
#line 216 curLineno=21500 compiledLineno=21606

  begin 
#line 216 curLineno=21500 compiledLineno=21609

    #makeBegin
#line 216 curLineno=21500 compiledLineno=21612

#line 216 curLineno=21500 compiledLineno=21614

      begin 
#line 216 curLineno=21500 compiledLineno=21617

        #execFunc
#line 216 curLineno=21500 compiledLineno=21620

#line 216 curLineno=21500 compiledLineno=21622

          def self._html_COMARKform_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKform', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKform'] = self.method( :_html_COMARKform_METHOD )
#line 216 curLineno=21500 compiledLineno=21626

          #execFunc(funcname=define)
        @_html_COMARKform = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21631

#line 216 curLineno=21500 compiledLineno=21633

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=21638

      begin 
#line 216 curLineno=21500 compiledLineno=21641

        #execFunc
#line 216 curLineno=21500 compiledLineno=21644

#line 216 curLineno=21500 compiledLineno=21646

          def self._html_COMARKform_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKform', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKform'] = self.method( :_html_COMARKform_METHOD )
#line 216 curLineno=21500 compiledLineno=21650

          #execFunc(funcname=define)
        @_html_COMARKform = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21655

#line 216 curLineno=21500 compiledLineno=21657

#line 216 curLineno=21500 compiledLineno=21659

#line 216 curLineno=21500 compiledLineno=21661

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=21664

#line 216 curLineno=21500 compiledLineno=21666

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=21670

#line 216 curLineno=21500 compiledLineno=21672

                    :"form"
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=21679

      begin 
#line 216 curLineno=21500 compiledLineno=21682

        #execFunc
#line 216 curLineno=21500 compiledLineno=21685

#line 216 curLineno=21500 compiledLineno=21687

          def self._html_COMARKlabel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlabel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlabel'] = self.method( :_html_COMARKlabel_METHOD )
#line 216 curLineno=21500 compiledLineno=21691

          #execFunc(funcname=define)
        @_html_COMARKlabel = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21696

#line 216 curLineno=21500 compiledLineno=21698

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=21703

      begin 
#line 216 curLineno=21500 compiledLineno=21706

        #execFunc
#line 216 curLineno=21500 compiledLineno=21709

#line 216 curLineno=21500 compiledLineno=21711

          def self._html_COMARKlabel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlabel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlabel'] = self.method( :_html_COMARKlabel_METHOD )
#line 216 curLineno=21500 compiledLineno=21715

          #execFunc(funcname=define)
        @_html_COMARKlabel = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21720

#line 216 curLineno=21500 compiledLineno=21722

#line 216 curLineno=21500 compiledLineno=21724

#line 216 curLineno=21500 compiledLineno=21726

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=21729

#line 216 curLineno=21500 compiledLineno=21731

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=21735

#line 216 curLineno=21500 compiledLineno=21737

                    :"label"
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=21744

      begin 
#line 216 curLineno=21500 compiledLineno=21747

        #execFunc
#line 216 curLineno=21500 compiledLineno=21750

#line 216 curLineno=21500 compiledLineno=21752

          def self._html_COMARKinput_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKinput', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKinput'] = self.method( :_html_COMARKinput_METHOD )
#line 216 curLineno=21500 compiledLineno=21756

          #execFunc(funcname=define)
        @_html_COMARKinput = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21761

#line 216 curLineno=21500 compiledLineno=21763

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=21768

      begin 
#line 216 curLineno=21500 compiledLineno=21771

        #execFunc
#line 216 curLineno=21500 compiledLineno=21774

#line 216 curLineno=21500 compiledLineno=21776

          def self._html_COMARKinput_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKinput', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKinput'] = self.method( :_html_COMARKinput_METHOD )
#line 216 curLineno=21500 compiledLineno=21780

          #execFunc(funcname=define)
        @_html_COMARKinput = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21785

#line 216 curLineno=21500 compiledLineno=21787

#line 216 curLineno=21500 compiledLineno=21789

#line 216 curLineno=21500 compiledLineno=21791

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=21794

#line 216 curLineno=21500 compiledLineno=21796

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=21800

#line 216 curLineno=21500 compiledLineno=21802

                    :"input"                    ,
#line 216 curLineno=21500 compiledLineno=21805

                    LispKeyword.new( "empty?" )                    ,
#line 216 curLineno=21500 compiledLineno=21808

                    true
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=21815

      begin 
#line 216 curLineno=21500 compiledLineno=21818

        #execFunc
#line 216 curLineno=21500 compiledLineno=21821

#line 216 curLineno=21500 compiledLineno=21823

          def self._html_COMARKselect_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKselect', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKselect'] = self.method( :_html_COMARKselect_METHOD )
#line 216 curLineno=21500 compiledLineno=21827

          #execFunc(funcname=define)
        @_html_COMARKselect = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21832

#line 216 curLineno=21500 compiledLineno=21834

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=21839

      begin 
#line 216 curLineno=21500 compiledLineno=21842

        #execFunc
#line 216 curLineno=21500 compiledLineno=21845

#line 216 curLineno=21500 compiledLineno=21847

          def self._html_COMARKselect_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKselect', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKselect'] = self.method( :_html_COMARKselect_METHOD )
#line 216 curLineno=21500 compiledLineno=21851

          #execFunc(funcname=define)
        @_html_COMARKselect = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21856

#line 216 curLineno=21500 compiledLineno=21858

#line 216 curLineno=21500 compiledLineno=21860

#line 216 curLineno=21500 compiledLineno=21862

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=21865

#line 216 curLineno=21500 compiledLineno=21867

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=21871

#line 216 curLineno=21500 compiledLineno=21873

                    :"select"
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=21880

      begin 
#line 216 curLineno=21500 compiledLineno=21883

        #execFunc
#line 216 curLineno=21500 compiledLineno=21886

#line 216 curLineno=21500 compiledLineno=21888

          def self._html_COMARKoptgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoptgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKoptgroup'] = self.method( :_html_COMARKoptgroup_METHOD )
#line 216 curLineno=21500 compiledLineno=21892

          #execFunc(funcname=define)
        @_html_COMARKoptgroup = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21897

#line 216 curLineno=21500 compiledLineno=21899

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=21904

      begin 
#line 216 curLineno=21500 compiledLineno=21907

        #execFunc
#line 216 curLineno=21500 compiledLineno=21910

#line 216 curLineno=21500 compiledLineno=21912

          def self._html_COMARKoptgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoptgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKoptgroup'] = self.method( :_html_COMARKoptgroup_METHOD )
#line 216 curLineno=21500 compiledLineno=21916

          #execFunc(funcname=define)
        @_html_COMARKoptgroup = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21921

#line 216 curLineno=21500 compiledLineno=21923

#line 216 curLineno=21500 compiledLineno=21925

#line 216 curLineno=21500 compiledLineno=21927

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=21930

#line 216 curLineno=21500 compiledLineno=21932

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=21936

#line 216 curLineno=21500 compiledLineno=21938

                    :"optgroup"
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=21945

      begin 
#line 216 curLineno=21500 compiledLineno=21948

        #execFunc
#line 216 curLineno=21500 compiledLineno=21951

#line 216 curLineno=21500 compiledLineno=21953

          def self._html_COMARKoption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKoption'] = self.method( :_html_COMARKoption_METHOD )
#line 216 curLineno=21500 compiledLineno=21957

          #execFunc(funcname=define)
        @_html_COMARKoption = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21962

#line 216 curLineno=21500 compiledLineno=21964

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=21969

      begin 
#line 216 curLineno=21500 compiledLineno=21972

        #execFunc
#line 216 curLineno=21500 compiledLineno=21975

#line 216 curLineno=21500 compiledLineno=21977

          def self._html_COMARKoption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKoption'] = self.method( :_html_COMARKoption_METHOD )
#line 216 curLineno=21500 compiledLineno=21981

          #execFunc(funcname=define)
        @_html_COMARKoption = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=21986

#line 216 curLineno=21500 compiledLineno=21988

#line 216 curLineno=21500 compiledLineno=21990

#line 216 curLineno=21500 compiledLineno=21992

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=21995

#line 216 curLineno=21500 compiledLineno=21997

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=22001

#line 216 curLineno=21500 compiledLineno=22003

                    :"option"
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=22010

      begin 
#line 216 curLineno=21500 compiledLineno=22013

        #execFunc
#line 216 curLineno=21500 compiledLineno=22016

#line 216 curLineno=21500 compiledLineno=22018

          def self._html_COMARKtextarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtextarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtextarea'] = self.method( :_html_COMARKtextarea_METHOD )
#line 216 curLineno=21500 compiledLineno=22022

          #execFunc(funcname=define)
        @_html_COMARKtextarea = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=22027

#line 216 curLineno=21500 compiledLineno=22029

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=22034

      begin 
#line 216 curLineno=21500 compiledLineno=22037

        #execFunc
#line 216 curLineno=21500 compiledLineno=22040

#line 216 curLineno=21500 compiledLineno=22042

          def self._html_COMARKtextarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtextarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtextarea'] = self.method( :_html_COMARKtextarea_METHOD )
#line 216 curLineno=21500 compiledLineno=22046

          #execFunc(funcname=define)
        @_html_COMARKtextarea = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=22051

#line 216 curLineno=21500 compiledLineno=22053

#line 216 curLineno=21500 compiledLineno=22055

#line 216 curLineno=21500 compiledLineno=22057

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=22060

#line 216 curLineno=21500 compiledLineno=22062

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=22066

#line 216 curLineno=21500 compiledLineno=22068

                    :"textarea"
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=22075

      begin 
#line 216 curLineno=21500 compiledLineno=22078

        #execFunc
#line 216 curLineno=21500 compiledLineno=22081

#line 216 curLineno=21500 compiledLineno=22083

          def self._html_COMARKfieldset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKfieldset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKfieldset'] = self.method( :_html_COMARKfieldset_METHOD )
#line 216 curLineno=21500 compiledLineno=22087

          #execFunc(funcname=define)
        @_html_COMARKfieldset = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=22092

#line 216 curLineno=21500 compiledLineno=22094

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=22099

      begin 
#line 216 curLineno=21500 compiledLineno=22102

        #execFunc
#line 216 curLineno=21500 compiledLineno=22105

#line 216 curLineno=21500 compiledLineno=22107

          def self._html_COMARKfieldset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKfieldset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKfieldset'] = self.method( :_html_COMARKfieldset_METHOD )
#line 216 curLineno=21500 compiledLineno=22111

          #execFunc(funcname=define)
        @_html_COMARKfieldset = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=22116

#line 216 curLineno=21500 compiledLineno=22118

#line 216 curLineno=21500 compiledLineno=22120

#line 216 curLineno=21500 compiledLineno=22122

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=22125

#line 216 curLineno=21500 compiledLineno=22127

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=22131

#line 216 curLineno=21500 compiledLineno=22133

                    :"fieldset"
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=22140

      begin 
#line 216 curLineno=21500 compiledLineno=22143

        #execFunc
#line 216 curLineno=21500 compiledLineno=22146

#line 216 curLineno=21500 compiledLineno=22148

          def self._html_COMARKlegend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlegend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlegend'] = self.method( :_html_COMARKlegend_METHOD )
#line 216 curLineno=21500 compiledLineno=22152

          #execFunc(funcname=define)
        @_html_COMARKlegend = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=22157

#line 216 curLineno=21500 compiledLineno=22159

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=22164

      begin 
#line 216 curLineno=21500 compiledLineno=22167

        #execFunc
#line 216 curLineno=21500 compiledLineno=22170

#line 216 curLineno=21500 compiledLineno=22172

          def self._html_COMARKlegend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlegend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlegend'] = self.method( :_html_COMARKlegend_METHOD )
#line 216 curLineno=21500 compiledLineno=22176

          #execFunc(funcname=define)
        @_html_COMARKlegend = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=22181

#line 216 curLineno=21500 compiledLineno=22183

#line 216 curLineno=21500 compiledLineno=22185

#line 216 curLineno=21500 compiledLineno=22187

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=22190

#line 216 curLineno=21500 compiledLineno=22192

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=22196

#line 216 curLineno=21500 compiledLineno=22198

                    :"legend"
                ]
                             ))
        )
      end
#line 216 curLineno=21500 compiledLineno=22205

      begin 
#line 216 curLineno=21500 compiledLineno=22208

        #execFunc
#line 216 curLineno=21500 compiledLineno=22211

#line 216 curLineno=21500 compiledLineno=22213

          def self._html_COMARKbutton_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbutton', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbutton'] = self.method( :_html_COMARKbutton_METHOD )
#line 216 curLineno=21500 compiledLineno=22217

          #execFunc(funcname=define)
        @_html_COMARKbutton = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=22222

#line 216 curLineno=21500 compiledLineno=22224

            nil
        )
      end
#line 216 curLineno=21500 compiledLineno=22229

      begin 
#line 216 curLineno=21500 compiledLineno=22232

        #execFunc
#line 216 curLineno=21500 compiledLineno=22235

#line 216 curLineno=21500 compiledLineno=22237

          def self._html_COMARKbutton_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbutton', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbutton'] = self.method( :_html_COMARKbutton_METHOD )
#line 216 curLineno=21500 compiledLineno=22241

          #execFunc(funcname=define)
        @_html_COMARKbutton = 
        trampCall(
#line 216 curLineno=21500 compiledLineno=22246

#line 216 curLineno=21500 compiledLineno=22248

#line 216 curLineno=21500 compiledLineno=22250

#line 216 curLineno=21500 compiledLineno=22252

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=21500 compiledLineno=22255

#line 216 curLineno=21500 compiledLineno=22257

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=21500 compiledLineno=22261

#line 216 curLineno=21500 compiledLineno=22263

                    :"button"
                ]
                             ))
        )
      end
  end
 )
#line 220 curLineno=21900 compiledLineno=22272

trampCall( 
#line 220 curLineno=21900 compiledLineno=22275

  begin 
#line 220 curLineno=21900 compiledLineno=22278

    #makeBegin
#line 220 curLineno=21900 compiledLineno=22281

#line 220 curLineno=21900 compiledLineno=22283

      begin 
#line 220 curLineno=21900 compiledLineno=22286

        #execFunc
#line 220 curLineno=21900 compiledLineno=22289

#line 220 curLineno=21900 compiledLineno=22291

          def self._html_COMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtable'] = self.method( :_html_COMARKtable_METHOD )
#line 220 curLineno=21900 compiledLineno=22295

          #execFunc(funcname=define)
        @_html_COMARKtable = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22300

#line 220 curLineno=21900 compiledLineno=22302

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22307

      begin 
#line 220 curLineno=21900 compiledLineno=22310

        #execFunc
#line 220 curLineno=21900 compiledLineno=22313

#line 220 curLineno=21900 compiledLineno=22315

          def self._html_COMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtable'] = self.method( :_html_COMARKtable_METHOD )
#line 220 curLineno=21900 compiledLineno=22319

          #execFunc(funcname=define)
        @_html_COMARKtable = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22324

#line 220 curLineno=21900 compiledLineno=22326

#line 220 curLineno=21900 compiledLineno=22328

#line 220 curLineno=21900 compiledLineno=22330

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22333

#line 220 curLineno=21900 compiledLineno=22335

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22339

#line 220 curLineno=21900 compiledLineno=22341

                    :"table"
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22348

      begin 
#line 220 curLineno=21900 compiledLineno=22351

        #execFunc
#line 220 curLineno=21900 compiledLineno=22354

#line 220 curLineno=21900 compiledLineno=22356

          def self._html_COMARKcaption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcaption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcaption'] = self.method( :_html_COMARKcaption_METHOD )
#line 220 curLineno=21900 compiledLineno=22360

          #execFunc(funcname=define)
        @_html_COMARKcaption = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22365

#line 220 curLineno=21900 compiledLineno=22367

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22372

      begin 
#line 220 curLineno=21900 compiledLineno=22375

        #execFunc
#line 220 curLineno=21900 compiledLineno=22378

#line 220 curLineno=21900 compiledLineno=22380

          def self._html_COMARKcaption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcaption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcaption'] = self.method( :_html_COMARKcaption_METHOD )
#line 220 curLineno=21900 compiledLineno=22384

          #execFunc(funcname=define)
        @_html_COMARKcaption = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22389

#line 220 curLineno=21900 compiledLineno=22391

#line 220 curLineno=21900 compiledLineno=22393

#line 220 curLineno=21900 compiledLineno=22395

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22398

#line 220 curLineno=21900 compiledLineno=22400

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22404

#line 220 curLineno=21900 compiledLineno=22406

                    :"caption"
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22413

      begin 
#line 220 curLineno=21900 compiledLineno=22416

        #execFunc
#line 220 curLineno=21900 compiledLineno=22419

#line 220 curLineno=21900 compiledLineno=22421

          def self._html_COMARKthead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKthead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKthead'] = self.method( :_html_COMARKthead_METHOD )
#line 220 curLineno=21900 compiledLineno=22425

          #execFunc(funcname=define)
        @_html_COMARKthead = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22430

#line 220 curLineno=21900 compiledLineno=22432

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22437

      begin 
#line 220 curLineno=21900 compiledLineno=22440

        #execFunc
#line 220 curLineno=21900 compiledLineno=22443

#line 220 curLineno=21900 compiledLineno=22445

          def self._html_COMARKthead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKthead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKthead'] = self.method( :_html_COMARKthead_METHOD )
#line 220 curLineno=21900 compiledLineno=22449

          #execFunc(funcname=define)
        @_html_COMARKthead = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22454

#line 220 curLineno=21900 compiledLineno=22456

#line 220 curLineno=21900 compiledLineno=22458

#line 220 curLineno=21900 compiledLineno=22460

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22463

#line 220 curLineno=21900 compiledLineno=22465

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22469

#line 220 curLineno=21900 compiledLineno=22471

                    :"thead"
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22478

      begin 
#line 220 curLineno=21900 compiledLineno=22481

        #execFunc
#line 220 curLineno=21900 compiledLineno=22484

#line 220 curLineno=21900 compiledLineno=22486

          def self._html_COMARKtfoot_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtfoot', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtfoot'] = self.method( :_html_COMARKtfoot_METHOD )
#line 220 curLineno=21900 compiledLineno=22490

          #execFunc(funcname=define)
        @_html_COMARKtfoot = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22495

#line 220 curLineno=21900 compiledLineno=22497

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22502

      begin 
#line 220 curLineno=21900 compiledLineno=22505

        #execFunc
#line 220 curLineno=21900 compiledLineno=22508

#line 220 curLineno=21900 compiledLineno=22510

          def self._html_COMARKtfoot_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtfoot', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtfoot'] = self.method( :_html_COMARKtfoot_METHOD )
#line 220 curLineno=21900 compiledLineno=22514

          #execFunc(funcname=define)
        @_html_COMARKtfoot = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22519

#line 220 curLineno=21900 compiledLineno=22521

#line 220 curLineno=21900 compiledLineno=22523

#line 220 curLineno=21900 compiledLineno=22525

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22528

#line 220 curLineno=21900 compiledLineno=22530

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22534

#line 220 curLineno=21900 compiledLineno=22536

                    :"tfoot"
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22543

      begin 
#line 220 curLineno=21900 compiledLineno=22546

        #execFunc
#line 220 curLineno=21900 compiledLineno=22549

#line 220 curLineno=21900 compiledLineno=22551

          def self._html_COMARKtbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtbody'] = self.method( :_html_COMARKtbody_METHOD )
#line 220 curLineno=21900 compiledLineno=22555

          #execFunc(funcname=define)
        @_html_COMARKtbody = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22560

#line 220 curLineno=21900 compiledLineno=22562

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22567

      begin 
#line 220 curLineno=21900 compiledLineno=22570

        #execFunc
#line 220 curLineno=21900 compiledLineno=22573

#line 220 curLineno=21900 compiledLineno=22575

          def self._html_COMARKtbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtbody'] = self.method( :_html_COMARKtbody_METHOD )
#line 220 curLineno=21900 compiledLineno=22579

          #execFunc(funcname=define)
        @_html_COMARKtbody = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22584

#line 220 curLineno=21900 compiledLineno=22586

#line 220 curLineno=21900 compiledLineno=22588

#line 220 curLineno=21900 compiledLineno=22590

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22593

#line 220 curLineno=21900 compiledLineno=22595

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22599

#line 220 curLineno=21900 compiledLineno=22601

                    :"tbody"
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22608

      begin 
#line 220 curLineno=21900 compiledLineno=22611

        #execFunc
#line 220 curLineno=21900 compiledLineno=22614

#line 220 curLineno=21900 compiledLineno=22616

          def self._html_COMARKcolgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcolgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcolgroup'] = self.method( :_html_COMARKcolgroup_METHOD )
#line 220 curLineno=21900 compiledLineno=22620

          #execFunc(funcname=define)
        @_html_COMARKcolgroup = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22625

#line 220 curLineno=21900 compiledLineno=22627

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22632

      begin 
#line 220 curLineno=21900 compiledLineno=22635

        #execFunc
#line 220 curLineno=21900 compiledLineno=22638

#line 220 curLineno=21900 compiledLineno=22640

          def self._html_COMARKcolgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcolgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcolgroup'] = self.method( :_html_COMARKcolgroup_METHOD )
#line 220 curLineno=21900 compiledLineno=22644

          #execFunc(funcname=define)
        @_html_COMARKcolgroup = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22649

#line 220 curLineno=21900 compiledLineno=22651

#line 220 curLineno=21900 compiledLineno=22653

#line 220 curLineno=21900 compiledLineno=22655

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22658

#line 220 curLineno=21900 compiledLineno=22660

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22664

#line 220 curLineno=21900 compiledLineno=22666

                    :"colgroup"
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22673

      begin 
#line 220 curLineno=21900 compiledLineno=22676

        #execFunc
#line 220 curLineno=21900 compiledLineno=22679

#line 220 curLineno=21900 compiledLineno=22681

          def self._html_COMARKcol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcol'] = self.method( :_html_COMARKcol_METHOD )
#line 220 curLineno=21900 compiledLineno=22685

          #execFunc(funcname=define)
        @_html_COMARKcol = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22690

#line 220 curLineno=21900 compiledLineno=22692

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22697

      begin 
#line 220 curLineno=21900 compiledLineno=22700

        #execFunc
#line 220 curLineno=21900 compiledLineno=22703

#line 220 curLineno=21900 compiledLineno=22705

          def self._html_COMARKcol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcol'] = self.method( :_html_COMARKcol_METHOD )
#line 220 curLineno=21900 compiledLineno=22709

          #execFunc(funcname=define)
        @_html_COMARKcol = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22714

#line 220 curLineno=21900 compiledLineno=22716

#line 220 curLineno=21900 compiledLineno=22718

#line 220 curLineno=21900 compiledLineno=22720

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22723

#line 220 curLineno=21900 compiledLineno=22725

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22729

#line 220 curLineno=21900 compiledLineno=22731

                    :"col"                    ,
#line 220 curLineno=21900 compiledLineno=22734

                    LispKeyword.new( "empty?" )                    ,
#line 220 curLineno=21900 compiledLineno=22737

                    true
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22744

      begin 
#line 220 curLineno=21900 compiledLineno=22747

        #execFunc
#line 220 curLineno=21900 compiledLineno=22750

#line 220 curLineno=21900 compiledLineno=22752

          def self._html_COMARKtr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtr'] = self.method( :_html_COMARKtr_METHOD )
#line 220 curLineno=21900 compiledLineno=22756

          #execFunc(funcname=define)
        @_html_COMARKtr = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22761

#line 220 curLineno=21900 compiledLineno=22763

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22768

      begin 
#line 220 curLineno=21900 compiledLineno=22771

        #execFunc
#line 220 curLineno=21900 compiledLineno=22774

#line 220 curLineno=21900 compiledLineno=22776

          def self._html_COMARKtr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtr'] = self.method( :_html_COMARKtr_METHOD )
#line 220 curLineno=21900 compiledLineno=22780

          #execFunc(funcname=define)
        @_html_COMARKtr = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22785

#line 220 curLineno=21900 compiledLineno=22787

#line 220 curLineno=21900 compiledLineno=22789

#line 220 curLineno=21900 compiledLineno=22791

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22794

#line 220 curLineno=21900 compiledLineno=22796

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22800

#line 220 curLineno=21900 compiledLineno=22802

                    :"tr"
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22809

      begin 
#line 220 curLineno=21900 compiledLineno=22812

        #execFunc
#line 220 curLineno=21900 compiledLineno=22815

#line 220 curLineno=21900 compiledLineno=22817

          def self._html_COMARKth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKth'] = self.method( :_html_COMARKth_METHOD )
#line 220 curLineno=21900 compiledLineno=22821

          #execFunc(funcname=define)
        @_html_COMARKth = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22826

#line 220 curLineno=21900 compiledLineno=22828

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22833

      begin 
#line 220 curLineno=21900 compiledLineno=22836

        #execFunc
#line 220 curLineno=21900 compiledLineno=22839

#line 220 curLineno=21900 compiledLineno=22841

          def self._html_COMARKth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKth'] = self.method( :_html_COMARKth_METHOD )
#line 220 curLineno=21900 compiledLineno=22845

          #execFunc(funcname=define)
        @_html_COMARKth = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22850

#line 220 curLineno=21900 compiledLineno=22852

#line 220 curLineno=21900 compiledLineno=22854

#line 220 curLineno=21900 compiledLineno=22856

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22859

#line 220 curLineno=21900 compiledLineno=22861

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22865

#line 220 curLineno=21900 compiledLineno=22867

                    :"th"
                ]
                             ))
        )
      end
#line 220 curLineno=21900 compiledLineno=22874

      begin 
#line 220 curLineno=21900 compiledLineno=22877

        #execFunc
#line 220 curLineno=21900 compiledLineno=22880

#line 220 curLineno=21900 compiledLineno=22882

          def self._html_COMARKtd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtd'] = self.method( :_html_COMARKtd_METHOD )
#line 220 curLineno=21900 compiledLineno=22886

          #execFunc(funcname=define)
        @_html_COMARKtd = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22891

#line 220 curLineno=21900 compiledLineno=22893

            nil
        )
      end
#line 220 curLineno=21900 compiledLineno=22898

      begin 
#line 220 curLineno=21900 compiledLineno=22901

        #execFunc
#line 220 curLineno=21900 compiledLineno=22904

#line 220 curLineno=21900 compiledLineno=22906

          def self._html_COMARKtd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtd'] = self.method( :_html_COMARKtd_METHOD )
#line 220 curLineno=21900 compiledLineno=22910

          #execFunc(funcname=define)
        @_html_COMARKtd = 
        trampCall(
#line 220 curLineno=21900 compiledLineno=22915

#line 220 curLineno=21900 compiledLineno=22917

#line 220 curLineno=21900 compiledLineno=22919

#line 220 curLineno=21900 compiledLineno=22921

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=21900 compiledLineno=22924

#line 220 curLineno=21900 compiledLineno=22926

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=21900 compiledLineno=22930

#line 220 curLineno=21900 compiledLineno=22932

                    :"td"
                ]
                             ))
        )
      end
  end
 )
#line 224 curLineno=22300 compiledLineno=22941

trampCall( 
#line 224 curLineno=22300 compiledLineno=22944

  begin 
#line 224 curLineno=22300 compiledLineno=22947

    #makeBegin
#line 224 curLineno=22300 compiledLineno=22950

#line 224 curLineno=22300 compiledLineno=22952

      begin 
#line 224 curLineno=22300 compiledLineno=22955

        #execFunc
#line 224 curLineno=22300 compiledLineno=22958

#line 224 curLineno=22300 compiledLineno=22960

          def self._html_COMARKhead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhead'] = self.method( :_html_COMARKhead_METHOD )
#line 224 curLineno=22300 compiledLineno=22964

          #execFunc(funcname=define)
        @_html_COMARKhead = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=22969

#line 224 curLineno=22300 compiledLineno=22971

            nil
        )
      end
#line 224 curLineno=22300 compiledLineno=22976

      begin 
#line 224 curLineno=22300 compiledLineno=22979

        #execFunc
#line 224 curLineno=22300 compiledLineno=22982

#line 224 curLineno=22300 compiledLineno=22984

          def self._html_COMARKhead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhead'] = self.method( :_html_COMARKhead_METHOD )
#line 224 curLineno=22300 compiledLineno=22988

          #execFunc(funcname=define)
        @_html_COMARKhead = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=22993

#line 224 curLineno=22300 compiledLineno=22995

#line 224 curLineno=22300 compiledLineno=22997

#line 224 curLineno=22300 compiledLineno=22999

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=22300 compiledLineno=23002

#line 224 curLineno=22300 compiledLineno=23004

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=22300 compiledLineno=23008

#line 224 curLineno=22300 compiledLineno=23010

                    :"head"
                ]
                             ))
        )
      end
#line 224 curLineno=22300 compiledLineno=23017

      begin 
#line 224 curLineno=22300 compiledLineno=23020

        #execFunc
#line 224 curLineno=22300 compiledLineno=23023

#line 224 curLineno=22300 compiledLineno=23025

          def self._html_COMARKtitle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtitle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtitle'] = self.method( :_html_COMARKtitle_METHOD )
#line 224 curLineno=22300 compiledLineno=23029

          #execFunc(funcname=define)
        @_html_COMARKtitle = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23034

#line 224 curLineno=22300 compiledLineno=23036

            nil
        )
      end
#line 224 curLineno=22300 compiledLineno=23041

      begin 
#line 224 curLineno=22300 compiledLineno=23044

        #execFunc
#line 224 curLineno=22300 compiledLineno=23047

#line 224 curLineno=22300 compiledLineno=23049

          def self._html_COMARKtitle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtitle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtitle'] = self.method( :_html_COMARKtitle_METHOD )
#line 224 curLineno=22300 compiledLineno=23053

          #execFunc(funcname=define)
        @_html_COMARKtitle = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23058

#line 224 curLineno=22300 compiledLineno=23060

#line 224 curLineno=22300 compiledLineno=23062

#line 224 curLineno=22300 compiledLineno=23064

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=22300 compiledLineno=23067

#line 224 curLineno=22300 compiledLineno=23069

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=22300 compiledLineno=23073

#line 224 curLineno=22300 compiledLineno=23075

                    :"title"
                ]
                             ))
        )
      end
#line 224 curLineno=22300 compiledLineno=23082

      begin 
#line 224 curLineno=22300 compiledLineno=23085

        #execFunc
#line 224 curLineno=22300 compiledLineno=23088

#line 224 curLineno=22300 compiledLineno=23090

          def self._html_COMARKbase_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbase', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbase'] = self.method( :_html_COMARKbase_METHOD )
#line 224 curLineno=22300 compiledLineno=23094

          #execFunc(funcname=define)
        @_html_COMARKbase = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23099

#line 224 curLineno=22300 compiledLineno=23101

            nil
        )
      end
#line 224 curLineno=22300 compiledLineno=23106

      begin 
#line 224 curLineno=22300 compiledLineno=23109

        #execFunc
#line 224 curLineno=22300 compiledLineno=23112

#line 224 curLineno=22300 compiledLineno=23114

          def self._html_COMARKbase_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbase', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbase'] = self.method( :_html_COMARKbase_METHOD )
#line 224 curLineno=22300 compiledLineno=23118

          #execFunc(funcname=define)
        @_html_COMARKbase = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23123

#line 224 curLineno=22300 compiledLineno=23125

#line 224 curLineno=22300 compiledLineno=23127

#line 224 curLineno=22300 compiledLineno=23129

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=22300 compiledLineno=23132

#line 224 curLineno=22300 compiledLineno=23134

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=22300 compiledLineno=23138

#line 224 curLineno=22300 compiledLineno=23140

                    :"base"                    ,
#line 224 curLineno=22300 compiledLineno=23143

                    LispKeyword.new( "empty?" )                    ,
#line 224 curLineno=22300 compiledLineno=23146

                    true
                ]
                             ))
        )
      end
#line 224 curLineno=22300 compiledLineno=23153

      begin 
#line 224 curLineno=22300 compiledLineno=23156

        #execFunc
#line 224 curLineno=22300 compiledLineno=23159

#line 224 curLineno=22300 compiledLineno=23161

          def self._html_COMARKmeta_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmeta', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKmeta'] = self.method( :_html_COMARKmeta_METHOD )
#line 224 curLineno=22300 compiledLineno=23165

          #execFunc(funcname=define)
        @_html_COMARKmeta = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23170

#line 224 curLineno=22300 compiledLineno=23172

            nil
        )
      end
#line 224 curLineno=22300 compiledLineno=23177

      begin 
#line 224 curLineno=22300 compiledLineno=23180

        #execFunc
#line 224 curLineno=22300 compiledLineno=23183

#line 224 curLineno=22300 compiledLineno=23185

          def self._html_COMARKmeta_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmeta', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKmeta'] = self.method( :_html_COMARKmeta_METHOD )
#line 224 curLineno=22300 compiledLineno=23189

          #execFunc(funcname=define)
        @_html_COMARKmeta = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23194

#line 224 curLineno=22300 compiledLineno=23196

#line 224 curLineno=22300 compiledLineno=23198

#line 224 curLineno=22300 compiledLineno=23200

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=22300 compiledLineno=23203

#line 224 curLineno=22300 compiledLineno=23205

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=22300 compiledLineno=23209

#line 224 curLineno=22300 compiledLineno=23211

                    :"meta"                    ,
#line 224 curLineno=22300 compiledLineno=23214

                    LispKeyword.new( "empty?" )                    ,
#line 224 curLineno=22300 compiledLineno=23217

                    true
                ]
                             ))
        )
      end
#line 224 curLineno=22300 compiledLineno=23224

      begin 
#line 224 curLineno=22300 compiledLineno=23227

        #execFunc
#line 224 curLineno=22300 compiledLineno=23230

#line 224 curLineno=22300 compiledLineno=23232

          def self._html_COMARKstyle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstyle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKstyle'] = self.method( :_html_COMARKstyle_METHOD )
#line 224 curLineno=22300 compiledLineno=23236

          #execFunc(funcname=define)
        @_html_COMARKstyle = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23241

#line 224 curLineno=22300 compiledLineno=23243

            nil
        )
      end
#line 224 curLineno=22300 compiledLineno=23248

      begin 
#line 224 curLineno=22300 compiledLineno=23251

        #execFunc
#line 224 curLineno=22300 compiledLineno=23254

#line 224 curLineno=22300 compiledLineno=23256

          def self._html_COMARKstyle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstyle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKstyle'] = self.method( :_html_COMARKstyle_METHOD )
#line 224 curLineno=22300 compiledLineno=23260

          #execFunc(funcname=define)
        @_html_COMARKstyle = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23265

#line 224 curLineno=22300 compiledLineno=23267

#line 224 curLineno=22300 compiledLineno=23269

#line 224 curLineno=22300 compiledLineno=23271

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=22300 compiledLineno=23274

#line 224 curLineno=22300 compiledLineno=23276

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=22300 compiledLineno=23280

#line 224 curLineno=22300 compiledLineno=23282

                    :"style"
                ]
                             ))
        )
      end
#line 224 curLineno=22300 compiledLineno=23289

      begin 
#line 224 curLineno=22300 compiledLineno=23292

        #execFunc
#line 224 curLineno=22300 compiledLineno=23295

#line 224 curLineno=22300 compiledLineno=23297

          def self._html_COMARKscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKscript'] = self.method( :_html_COMARKscript_METHOD )
#line 224 curLineno=22300 compiledLineno=23301

          #execFunc(funcname=define)
        @_html_COMARKscript = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23306

#line 224 curLineno=22300 compiledLineno=23308

            nil
        )
      end
#line 224 curLineno=22300 compiledLineno=23313

      begin 
#line 224 curLineno=22300 compiledLineno=23316

        #execFunc
#line 224 curLineno=22300 compiledLineno=23319

#line 224 curLineno=22300 compiledLineno=23321

          def self._html_COMARKscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKscript'] = self.method( :_html_COMARKscript_METHOD )
#line 224 curLineno=22300 compiledLineno=23325

          #execFunc(funcname=define)
        @_html_COMARKscript = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23330

#line 224 curLineno=22300 compiledLineno=23332

#line 224 curLineno=22300 compiledLineno=23334

#line 224 curLineno=22300 compiledLineno=23336

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=22300 compiledLineno=23339

#line 224 curLineno=22300 compiledLineno=23341

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=22300 compiledLineno=23345

#line 224 curLineno=22300 compiledLineno=23347

                    :"script"
                ]
                             ))
        )
      end
#line 224 curLineno=22300 compiledLineno=23354

      begin 
#line 224 curLineno=22300 compiledLineno=23357

        #execFunc
#line 224 curLineno=22300 compiledLineno=23360

#line 224 curLineno=22300 compiledLineno=23362

          def self._html_COMARKnoscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKnoscript'] = self.method( :_html_COMARKnoscript_METHOD )
#line 224 curLineno=22300 compiledLineno=23366

          #execFunc(funcname=define)
        @_html_COMARKnoscript = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23371

#line 224 curLineno=22300 compiledLineno=23373

            nil
        )
      end
#line 224 curLineno=22300 compiledLineno=23378

      begin 
#line 224 curLineno=22300 compiledLineno=23381

        #execFunc
#line 224 curLineno=22300 compiledLineno=23384

#line 224 curLineno=22300 compiledLineno=23386

          def self._html_COMARKnoscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKnoscript'] = self.method( :_html_COMARKnoscript_METHOD )
#line 224 curLineno=22300 compiledLineno=23390

          #execFunc(funcname=define)
        @_html_COMARKnoscript = 
        trampCall(
#line 224 curLineno=22300 compiledLineno=23395

#line 224 curLineno=22300 compiledLineno=23397

#line 224 curLineno=22300 compiledLineno=23399

#line 224 curLineno=22300 compiledLineno=23401

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=22300 compiledLineno=23404

#line 224 curLineno=22300 compiledLineno=23406

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=22300 compiledLineno=23410

#line 224 curLineno=22300 compiledLineno=23412

                    :"noscript"
                ]
                             ))
        )
      end
  end
 )
#line 228 curLineno=22700 compiledLineno=23421

trampCall( 
#line 228 curLineno=22700 compiledLineno=23424

  begin 
#line 228 curLineno=22700 compiledLineno=23427

    #makeBegin
#line 228 curLineno=22700 compiledLineno=23430

#line 228 curLineno=22700 compiledLineno=23432

      begin 
#line 228 curLineno=22700 compiledLineno=23435

        #execFunc
#line 228 curLineno=22700 compiledLineno=23438

#line 228 curLineno=22700 compiledLineno=23440

          def self._html_COMARKhtml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhtml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhtml'] = self.method( :_html_COMARKhtml_METHOD )
#line 228 curLineno=22700 compiledLineno=23444

          #execFunc(funcname=define)
        @_html_COMARKhtml = 
        trampCall(
#line 228 curLineno=22700 compiledLineno=23449

#line 228 curLineno=22700 compiledLineno=23451

            nil
        )
      end
#line 228 curLineno=22700 compiledLineno=23456

      begin 
#line 228 curLineno=22700 compiledLineno=23459

        #execFunc
#line 228 curLineno=22700 compiledLineno=23462

#line 228 curLineno=22700 compiledLineno=23464

          def self._html_COMARKhtml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhtml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhtml'] = self.method( :_html_COMARKhtml_METHOD )
#line 228 curLineno=22700 compiledLineno=23468

          #execFunc(funcname=define)
        @_html_COMARKhtml = 
        trampCall(
#line 228 curLineno=22700 compiledLineno=23473

#line 228 curLineno=22700 compiledLineno=23475

#line 228 curLineno=22700 compiledLineno=23477

#line 228 curLineno=22700 compiledLineno=23479

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 228 curLineno=22700 compiledLineno=23482

#line 228 curLineno=22700 compiledLineno=23484

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 228 curLineno=22700 compiledLineno=23488

#line 228 curLineno=22700 compiledLineno=23490

                    :"html"
                ]
                             ))
        )
      end
  end
 )
#line 231 curLineno=23000 compiledLineno=23499

trampCall( 
#line 231 curLineno=23000 compiledLineno=23502

  begin 
#line 231 curLineno=23000 compiledLineno=23505

    #makeBegin
#line 231 curLineno=23000 compiledLineno=23508

#line 231 curLineno=23000 compiledLineno=23510

      begin 
#line 231 curLineno=23000 compiledLineno=23513

        #execFunc
#line 231 curLineno=23000 compiledLineno=23516

#line 231 curLineno=23000 compiledLineno=23518

          def self._html_COMARKframeset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframeset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKframeset'] = self.method( :_html_COMARKframeset_METHOD )
#line 231 curLineno=23000 compiledLineno=23522

          #execFunc(funcname=define)
        @_html_COMARKframeset = 
        trampCall(
#line 231 curLineno=23000 compiledLineno=23527

#line 231 curLineno=23000 compiledLineno=23529

            nil
        )
      end
#line 231 curLineno=23000 compiledLineno=23534

      begin 
#line 231 curLineno=23000 compiledLineno=23537

        #execFunc
#line 231 curLineno=23000 compiledLineno=23540

#line 231 curLineno=23000 compiledLineno=23542

          def self._html_COMARKframeset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframeset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKframeset'] = self.method( :_html_COMARKframeset_METHOD )
#line 231 curLineno=23000 compiledLineno=23546

          #execFunc(funcname=define)
        @_html_COMARKframeset = 
        trampCall(
#line 231 curLineno=23000 compiledLineno=23551

#line 231 curLineno=23000 compiledLineno=23553

#line 231 curLineno=23000 compiledLineno=23555

#line 231 curLineno=23000 compiledLineno=23557

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 231 curLineno=23000 compiledLineno=23560

#line 231 curLineno=23000 compiledLineno=23562

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 231 curLineno=23000 compiledLineno=23566

#line 231 curLineno=23000 compiledLineno=23568

                    :"frameset"
                ]
                             ))
        )
      end
#line 231 curLineno=23000 compiledLineno=23575

      begin 
#line 231 curLineno=23000 compiledLineno=23578

        #execFunc
#line 231 curLineno=23000 compiledLineno=23581

#line 231 curLineno=23000 compiledLineno=23583

          def self._html_COMARKframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKframe'] = self.method( :_html_COMARKframe_METHOD )
#line 231 curLineno=23000 compiledLineno=23587

          #execFunc(funcname=define)
        @_html_COMARKframe = 
        trampCall(
#line 231 curLineno=23000 compiledLineno=23592

#line 231 curLineno=23000 compiledLineno=23594

            nil
        )
      end
#line 231 curLineno=23000 compiledLineno=23599

      begin 
#line 231 curLineno=23000 compiledLineno=23602

        #execFunc
#line 231 curLineno=23000 compiledLineno=23605

#line 231 curLineno=23000 compiledLineno=23607

          def self._html_COMARKframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKframe'] = self.method( :_html_COMARKframe_METHOD )
#line 231 curLineno=23000 compiledLineno=23611

          #execFunc(funcname=define)
        @_html_COMARKframe = 
        trampCall(
#line 231 curLineno=23000 compiledLineno=23616

#line 231 curLineno=23000 compiledLineno=23618

#line 231 curLineno=23000 compiledLineno=23620

#line 231 curLineno=23000 compiledLineno=23622

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 231 curLineno=23000 compiledLineno=23625

#line 231 curLineno=23000 compiledLineno=23627

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 231 curLineno=23000 compiledLineno=23631

#line 231 curLineno=23000 compiledLineno=23633

                    :"frame"
                ]
                             ))
        )
      end
#line 231 curLineno=23000 compiledLineno=23640

      begin 
#line 231 curLineno=23000 compiledLineno=23643

        #execFunc
#line 231 curLineno=23000 compiledLineno=23646

#line 231 curLineno=23000 compiledLineno=23648

          def self._html_COMARKnoframes_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoframes', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKnoframes'] = self.method( :_html_COMARKnoframes_METHOD )
#line 231 curLineno=23000 compiledLineno=23652

          #execFunc(funcname=define)
        @_html_COMARKnoframes = 
        trampCall(
#line 231 curLineno=23000 compiledLineno=23657

#line 231 curLineno=23000 compiledLineno=23659

            nil
        )
      end
#line 231 curLineno=23000 compiledLineno=23664

      begin 
#line 231 curLineno=23000 compiledLineno=23667

        #execFunc
#line 231 curLineno=23000 compiledLineno=23670

#line 231 curLineno=23000 compiledLineno=23672

          def self._html_COMARKnoframes_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoframes', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKnoframes'] = self.method( :_html_COMARKnoframes_METHOD )
#line 231 curLineno=23000 compiledLineno=23676

          #execFunc(funcname=define)
        @_html_COMARKnoframes = 
        trampCall(
#line 231 curLineno=23000 compiledLineno=23681

#line 231 curLineno=23000 compiledLineno=23683

#line 231 curLineno=23000 compiledLineno=23685

#line 231 curLineno=23000 compiledLineno=23687

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 231 curLineno=23000 compiledLineno=23690

#line 231 curLineno=23000 compiledLineno=23692

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 231 curLineno=23000 compiledLineno=23696

#line 231 curLineno=23000 compiledLineno=23698

                    :"noframes"
                ]
                             ))
        )
      end
#line 231 curLineno=23000 compiledLineno=23705

      begin 
#line 231 curLineno=23000 compiledLineno=23708

        #execFunc
#line 231 curLineno=23000 compiledLineno=23711

#line 231 curLineno=23000 compiledLineno=23713

          def self._html_COMARKiframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKiframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKiframe'] = self.method( :_html_COMARKiframe_METHOD )
#line 231 curLineno=23000 compiledLineno=23717

          #execFunc(funcname=define)
        @_html_COMARKiframe = 
        trampCall(
#line 231 curLineno=23000 compiledLineno=23722

#line 231 curLineno=23000 compiledLineno=23724

            nil
        )
      end
#line 231 curLineno=23000 compiledLineno=23729

      begin 
#line 231 curLineno=23000 compiledLineno=23732

        #execFunc
#line 231 curLineno=23000 compiledLineno=23735

#line 231 curLineno=23000 compiledLineno=23737

          def self._html_COMARKiframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKiframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKiframe'] = self.method( :_html_COMARKiframe_METHOD )
#line 231 curLineno=23000 compiledLineno=23741

          #execFunc(funcname=define)
        @_html_COMARKiframe = 
        trampCall(
#line 231 curLineno=23000 compiledLineno=23746

#line 231 curLineno=23000 compiledLineno=23748

#line 231 curLineno=23000 compiledLineno=23750

#line 231 curLineno=23000 compiledLineno=23752

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 231 curLineno=23000 compiledLineno=23755

#line 231 curLineno=23000 compiledLineno=23757

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 231 curLineno=23000 compiledLineno=23761

#line 231 curLineno=23000 compiledLineno=23763

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
