#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 


























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 40 curLineno=1950 compiledLineno=1950

trampCall( 
#line 40 curLineno=1950 compiledLineno=1953

  begin 
#line 40 curLineno=1950 compiledLineno=1956

    #execFunc
#line 40 curLineno=1950 compiledLineno=1959

#line 40 curLineno=1950 compiledLineno=1961

      def self._html_MIMARKescape_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKescape', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_html_MIMARKescape'] = self.method( :_html_MIMARKescape_METHOD )
#line 40 curLineno=1950 compiledLineno=1965

      #execFunc(funcname=define)
    @_html_MIMARKescape = 
    trampCall(
#line 40 curLineno=1950 compiledLineno=1970

#line 40 curLineno=1950 compiledLineno=1972

#line 40 curLineno=1950 compiledLineno=1974

          Proc.new { |_c| 
#line 40 curLineno=1950 compiledLineno=1977

#line 40 curLineno=1950 compiledLineno=1979

              begin
#line 40 curLineno=1950 compiledLineno=1982

                #makeLet
#line 40 curLineno=1950 compiledLineno=1985

                ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192| 
#line 40 curLineno=1950 compiledLineno=1988

#line 40 curLineno=1950 compiledLineno=1990

                    if ( 
#line 40 curLineno=1950 compiledLineno=1993

                      begin
#line 40 curLineno=1950 compiledLineno=1996

                        #makeLet
#line 40 curLineno=1950 compiledLineno=1999

                        ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198| 
#line 40 curLineno=1950 compiledLineno=2002

#line 40 curLineno=1950 compiledLineno=2004

                            if ( 
#line 40 curLineno=1950 compiledLineno=2007

                              trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198)
                             ) then
#line 40 curLineno=1950 compiledLineno=2011

#line 40 curLineno=1950 compiledLineno=2013

                                trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30198)
                            else
#line 40 curLineno=1950 compiledLineno=2017

                              false
                            end
                        } ; ___lambda.call(
#line 40 curLineno=1950 compiledLineno=2022

#line 40 curLineno=1950 compiledLineno=2024

#line 40 curLineno=1950 compiledLineno=2026

#line 40 curLineno=1950 compiledLineno=2028

                                trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 40 curLineno=1950 compiledLineno=2031

#line 40 curLineno=1950 compiledLineno=2033

                                    trampCall(@_eqv_QUMARK)                                  ,
                                [
#line 40 curLineno=1950 compiledLineno=2037

#line 40 curLineno=1950 compiledLineno=2039

                                    "<"                                    ,
#line 40 curLineno=1950 compiledLineno=2042

#line 40 curLineno=1950 compiledLineno=2044

                                      trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                ]
                                             ))
                                   )
                      end
                     ) then
#line 40 curLineno=1950 compiledLineno=2052

#line 40 curLineno=1950 compiledLineno=2054

                        "&lt;"
                    else
#line 40 curLineno=1950 compiledLineno=2058

#line 40 curLineno=1950 compiledLineno=2060

                        if ( 
#line 40 curLineno=1950 compiledLineno=2063

                          begin
#line 40 curLineno=1950 compiledLineno=2066

                            #makeLet
#line 40 curLineno=1950 compiledLineno=2069

                            ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199| 
#line 40 curLineno=1950 compiledLineno=2072

#line 40 curLineno=1950 compiledLineno=2074

                                if ( 
#line 40 curLineno=1950 compiledLineno=2077

                                  trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199)
                                 ) then
#line 40 curLineno=1950 compiledLineno=2081

#line 40 curLineno=1950 compiledLineno=2083

                                    trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30199)
                                else
#line 40 curLineno=1950 compiledLineno=2087

                                  false
                                end
                            } ; ___lambda.call(
#line 40 curLineno=1950 compiledLineno=2092

#line 40 curLineno=1950 compiledLineno=2094

#line 40 curLineno=1950 compiledLineno=2096

#line 40 curLineno=1950 compiledLineno=2098

                                    trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 40 curLineno=1950 compiledLineno=2101

#line 40 curLineno=1950 compiledLineno=2103

                                        trampCall(@_eqv_QUMARK)                                      ,
                                    [
#line 40 curLineno=1950 compiledLineno=2107

#line 40 curLineno=1950 compiledLineno=2109

                                        ">"                                        ,
#line 40 curLineno=1950 compiledLineno=2112

#line 40 curLineno=1950 compiledLineno=2114

                                          trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                    ]
                                                 ))
                                       )
                          end
                         ) then
#line 40 curLineno=1950 compiledLineno=2122

#line 40 curLineno=1950 compiledLineno=2124

                            "&gt;"
                        else
#line 40 curLineno=1950 compiledLineno=2128

#line 40 curLineno=1950 compiledLineno=2130

                            if ( 
#line 40 curLineno=1950 compiledLineno=2133

                              begin
#line 40 curLineno=1950 compiledLineno=2136

                                #makeLet
#line 40 curLineno=1950 compiledLineno=2139

                                ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200| 
#line 40 curLineno=1950 compiledLineno=2142

#line 40 curLineno=1950 compiledLineno=2144

                                    if ( 
#line 40 curLineno=1950 compiledLineno=2147

                                      trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200)
                                     ) then
#line 40 curLineno=1950 compiledLineno=2151

#line 40 curLineno=1950 compiledLineno=2153

                                        trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30200)
                                    else
#line 40 curLineno=1950 compiledLineno=2157

                                      false
                                    end
                                } ; ___lambda.call(
#line 40 curLineno=1950 compiledLineno=2162

#line 40 curLineno=1950 compiledLineno=2164

#line 40 curLineno=1950 compiledLineno=2166

#line 40 curLineno=1950 compiledLineno=2168

                                        trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 40 curLineno=1950 compiledLineno=2171

#line 40 curLineno=1950 compiledLineno=2173

                                            trampCall(@_eqv_QUMARK)                                          ,
                                        [
#line 40 curLineno=1950 compiledLineno=2177

#line 40 curLineno=1950 compiledLineno=2179

                                            "&"                                            ,
#line 40 curLineno=1950 compiledLineno=2182

#line 40 curLineno=1950 compiledLineno=2184

                                              trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                        ]
                                                     ))
                                           )
                              end
                             ) then
#line 40 curLineno=1950 compiledLineno=2192

#line 40 curLineno=1950 compiledLineno=2194

                                "&amp;"
                            else
#line 40 curLineno=1950 compiledLineno=2198

#line 40 curLineno=1950 compiledLineno=2200

                                if ( 
#line 40 curLineno=1950 compiledLineno=2203

                                  begin
#line 40 curLineno=1950 compiledLineno=2206

                                    #makeLet
#line 40 curLineno=1950 compiledLineno=2209

                                    ___lambda = lambda { |___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201| 
#line 40 curLineno=1950 compiledLineno=2212

#line 40 curLineno=1950 compiledLineno=2214

                                        if ( 
#line 40 curLineno=1950 compiledLineno=2217

                                          trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201)
                                         ) then
#line 40 curLineno=1950 compiledLineno=2221

#line 40 curLineno=1950 compiledLineno=2223

                                            trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30201)
                                        else
#line 40 curLineno=1950 compiledLineno=2227

                                          false
                                        end
                                    } ; ___lambda.call(
#line 40 curLineno=1950 compiledLineno=2232

#line 40 curLineno=1950 compiledLineno=2234

#line 40 curLineno=1950 compiledLineno=2236

#line 40 curLineno=1950 compiledLineno=2238

                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 40 curLineno=1950 compiledLineno=2241

#line 40 curLineno=1950 compiledLineno=2243

                                                trampCall(@_eqv_QUMARK)                                              ,
                                            [
#line 40 curLineno=1950 compiledLineno=2247

#line 40 curLineno=1950 compiledLineno=2249

                                                "\""                                                ,
#line 40 curLineno=1950 compiledLineno=2252

#line 40 curLineno=1950 compiledLineno=2254

                                                  trampCall(___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30192)
                                            ]
                                                         ))
                                               )
                                  end
                                 ) then
#line 40 curLineno=1950 compiledLineno=2262

#line 40 curLineno=1950 compiledLineno=2264

                                    "&quot;"
                                else
#line 40 curLineno=1950 compiledLineno=2268

#line 40 curLineno=1950 compiledLineno=2270

                                    if ( 
                                    true
                                     ) then
#line 40 curLineno=1950 compiledLineno=2275

#line 40 curLineno=1950 compiledLineno=2277

#line 40 curLineno=1950 compiledLineno=2279

                                          trampCall(_c)
                                    else
#line 40 curLineno=1950 compiledLineno=2283

#line 40 curLineno=1950 compiledLineno=2285

                                        Cell.new()
                                    end
                                end
                            end
                        end
                    end
                } ; ___lambda.call(
#line 40 curLineno=1950 compiledLineno=2294

#line 40 curLineno=1950 compiledLineno=2296

#line 40 curLineno=1950 compiledLineno=2298

                      trampCall(_c)
                           )
              end
          }
    )
  end
 )
#--------------------












































#line 48 curLineno=2350 compiledLineno=2350

trampCall( 
#line 48 curLineno=2350 compiledLineno=2353

  begin 
#line 48 curLineno=2350 compiledLineno=2356

    #execFunc
#line 48 curLineno=2350 compiledLineno=2359

#line 48 curLineno=2350 compiledLineno=2361

      def self._html_MIMARKescape_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKescape_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_html_MIMARKescape_MIMARKstring'] = self.method( :_html_MIMARKescape_MIMARKstring_METHOD )
#line 48 curLineno=2350 compiledLineno=2365

      #execFunc(funcname=define)
    @_html_MIMARKescape_MIMARKstring = 
    trampCall(
#line 48 curLineno=2350 compiledLineno=2370

#line 48 curLineno=2350 compiledLineno=2372

#line 48 curLineno=2350 compiledLineno=2374

          Proc.new { |_string| 
#line 48 curLineno=2350 compiledLineno=2377

#line 48 curLineno=2350 compiledLineno=2379

#line 48 curLineno=2350 compiledLineno=2381

                delayCall( '_string_MIMARKjoin',  'string-join',
#line 48 curLineno=2350 compiledLineno=2384

#line 48 curLineno=2350 compiledLineno=2386

                    trampCall(@_string_MIMARKjoin)                  ,
                [
#line 48 curLineno=2350 compiledLineno=2390

#line 48 curLineno=2350 compiledLineno=2392

#line 48 curLineno=2350 compiledLineno=2394

#line 48 curLineno=2350 compiledLineno=2396

                        trampCall( self._map_METHOD(  'map',
#line 48 curLineno=2350 compiledLineno=2399

#line 48 curLineno=2350 compiledLineno=2401

                            trampCall(@_map)                          ,
                        [
#line 48 curLineno=2350 compiledLineno=2405

#line 48 curLineno=2350 compiledLineno=2407

#line 48 curLineno=2350 compiledLineno=2409

                              trampCall(@_html_MIMARKescape)                            ,
#line 48 curLineno=2350 compiledLineno=2412

#line 48 curLineno=2350 compiledLineno=2414

#line 48 curLineno=2350 compiledLineno=2416

                                _to_MIMARKlist(
#line 48 curLineno=2350 compiledLineno=2419

#line 48 curLineno=2350 compiledLineno=2421

                                    trampCall(_string).to_s.split(
#line 48 curLineno=2350 compiledLineno=2424

#line 48 curLineno=2350 compiledLineno=2426

                                        ""
                                      )
                                )
                        ]
                                     ))                    ,
#line 48 curLineno=2350 compiledLineno=2433

                    ""
                ]
                             )
          }
    )
  end
 )
#--------------------

































































































































































































































































































































































































































































































































































































































#line 62 curLineno=3050 compiledLineno=3050

trampCall( 
#line 62 curLineno=3050 compiledLineno=3053

  begin 
#line 62 curLineno=3050 compiledLineno=3056

    #execFunc
#line 62 curLineno=3050 compiledLineno=3059

#line 62 curLineno=3050 compiledLineno=3061

      def self.__ASMARKdoctype_MIMARKalist_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKdoctype_MIMARKalist_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['__ASMARKdoctype_MIMARKalist_ASMARK'] = self.method( :__ASMARKdoctype_MIMARKalist_ASMARK_METHOD )
#line 62 curLineno=3050 compiledLineno=3065

      #execFunc(funcname=define)
    @__ASMARKdoctype_MIMARKalist_ASMARK = 
    trampCall(
#line 62 curLineno=3050 compiledLineno=3070

#line 62 curLineno=3050 compiledLineno=3072

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





































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 93 curLineno=4600 compiledLineno=4600

trampCall( 
#line 93 curLineno=4600 compiledLineno=4603

  begin 
#line 93 curLineno=4600 compiledLineno=4606

    #execFunc
#line 93 curLineno=4600 compiledLineno=4609

#line 93 curLineno=4600 compiledLineno=4611

      def self._html_MIMARKdoctype_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_MIMARKdoctype', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_html_MIMARKdoctype'] = self.method( :_html_MIMARKdoctype_METHOD )
#line 93 curLineno=4600 compiledLineno=4615

      #execFunc(funcname=define)
    @_html_MIMARKdoctype = 
    trampCall(
#line 93 curLineno=4600 compiledLineno=4620

#line 93 curLineno=4600 compiledLineno=4622

#line 93 curLineno=4600 compiledLineno=4624

          Proc.new { |*__rest__| _type = __rest__[0] ;  
#line 93 curLineno=4600 compiledLineno=4627

#line 93 curLineno=4600 compiledLineno=4629

              begin
#line 93 curLineno=4600 compiledLineno=4632

                #makeLet
#line 93 curLineno=4600 compiledLineno=4635

                ___lambda = lambda { |_type| 
#line 93 curLineno=4600 compiledLineno=4638

#line 93 curLineno=4600 compiledLineno=4640

                    if ( 
#line 93 curLineno=4600 compiledLineno=4643

                      begin 
#line 93 curLineno=4600 compiledLineno=4646

                        #execFunc
#line 93 curLineno=4600 compiledLineno=4649

#line 93 curLineno=4600 compiledLineno=4651

                          def self.___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
                          @global_lisp_binding['___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203'] = self.method( :___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203_METHOD )
#line 93 curLineno=4600 compiledLineno=4655

                          #execFunc(funcname=set!)
                        @___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203 = 
                        trampCall(
#line 93 curLineno=4600 compiledLineno=4660

#line 93 curLineno=4600 compiledLineno=4662

#line 93 curLineno=4600 compiledLineno=4664

#line 93 curLineno=4600 compiledLineno=4666

                                trampCall( self._find_METHOD(  'find',
#line 93 curLineno=4600 compiledLineno=4669

#line 93 curLineno=4600 compiledLineno=4671

                                    trampCall(@_find)                                  ,
                                [
#line 93 curLineno=4600 compiledLineno=4675

#line 93 curLineno=4600 compiledLineno=4677

#line 93 curLineno=4600 compiledLineno=4679

                                      Proc.new { |_e| 
#line 93 curLineno=4600 compiledLineno=4682

#line 93 curLineno=4600 compiledLineno=4684

#line 93 curLineno=4600 compiledLineno=4686

                                            trampCall( self._memq_METHOD(  'memq',
#line 93 curLineno=4600 compiledLineno=4689

#line 93 curLineno=4600 compiledLineno=4691

                                                trampCall(@_memq)                                              ,
                                            [
#line 93 curLineno=4600 compiledLineno=4695

#line 93 curLineno=4600 compiledLineno=4697

#line 93 curLineno=4600 compiledLineno=4699

                                                  trampCall(_type)                                                ,
#line 93 curLineno=4600 compiledLineno=4702

#line 93 curLineno=4600 compiledLineno=4704

#line 93 curLineno=4600 compiledLineno=4706

                                                    _car(
#line 93 curLineno=4600 compiledLineno=4709

#line 93 curLineno=4600 compiledLineno=4711

                                                        trampCall(_e)
                                                    )
                                            ]
                                                         ))
                                      }                                    ,
#line 93 curLineno=4600 compiledLineno=4718

#line 93 curLineno=4600 compiledLineno=4720

                                      trampCall(@__ASMARKdoctype_MIMARKalist_ASMARK)
                                ]
                                             ))
                        )
                      end
                     ) then
#line 93 curLineno=4600 compiledLineno=4728

#line 93 curLineno=4600 compiledLineno=4730

#line 93 curLineno=4600 compiledLineno=4732

                          delayCall( '_caddr',  'caddr',
#line 93 curLineno=4600 compiledLineno=4735

#line 93 curLineno=4600 compiledLineno=4737

                              trampCall(@_caddr)                            ,
                          [
#line 93 curLineno=4600 compiledLineno=4741

#line 93 curLineno=4600 compiledLineno=4743

#line 93 curLineno=4600 compiledLineno=4745

                                trampCall(@___gensym__95685ec818bb762effb7679d4635458e28ab89ab_30203)
                          ]
                                       )
                    else
#line 93 curLineno=4600 compiledLineno=4751

#line 93 curLineno=4600 compiledLineno=4753

                        if ( 
                        true
                         ) then
#line 93 curLineno=4600 compiledLineno=4758

#line 93 curLineno=4600 compiledLineno=4760

#line 93 curLineno=4600 compiledLineno=4762

                              begin raise RuntimeError, 
#line 93 curLineno=4600 compiledLineno=4765

                                "Unknown doctype type spec" ' ' + 
                                _write_MIMARKto_MIMARKstring(
#line 93 curLineno=4600 compiledLineno=4769

                                  trampCall(_type)
                                )
                              rescue => __e 
                                __e.set_backtrace( ["./lib/nendo/text/html-lite.nnd:99"] + __e.backtrace )
                                raise __e
                              end
                        else
#line 93 curLineno=4600 compiledLineno=4778

#line 93 curLineno=4600 compiledLineno=4780

                            Cell.new()
                        end
                    end
                } ; ___lambda.call(
#line 93 curLineno=4600 compiledLineno=4786

#line 93 curLineno=4600 compiledLineno=4788

#line 93 curLineno=4600 compiledLineno=4790

                      if ( 
#line 93 curLineno=4600 compiledLineno=4793

#line 93 curLineno=4600 compiledLineno=4795

                          _null_QUMARK(
#line 93 curLineno=4600 compiledLineno=4798

#line 93 curLineno=4600 compiledLineno=4800

                              trampCall(_type)
                          )
                       ) then
#line 93 curLineno=4600 compiledLineno=4805

                        LispKeyword.new( "html-4.01-strict" )
                      else
#line 93 curLineno=4600 compiledLineno=4809

#line 93 curLineno=4600 compiledLineno=4811

                          trampCall(_type)
                      end
                           )
              end
          }
    )
  end
 )
#--------------------
























































































































































































































































































#line 103 curLineno=5100 compiledLineno=5100

trampCall( 
#line 103 curLineno=5100 compiledLineno=5103

  begin 
#line 103 curLineno=5100 compiledLineno=5106

    #execFunc
#line 103 curLineno=5100 compiledLineno=5109

#line 103 curLineno=5100 compiledLineno=5111

      def self._make_MIMARKhtml_MIMARKelement_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_make_MIMARKhtml_MIMARKelement', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_make_MIMARKhtml_MIMARKelement'] = self.method( :_make_MIMARKhtml_MIMARKelement_METHOD )
#line 103 curLineno=5100 compiledLineno=5115

      #execFunc(funcname=define)
    @_make_MIMARKhtml_MIMARKelement = 
    trampCall(
#line 103 curLineno=5100 compiledLineno=5120

#line 103 curLineno=5100 compiledLineno=5122

#line 103 curLineno=5100 compiledLineno=5124

          Proc.new { |_name,*__rest__| _args = __rest__[0] ;  
#line 103 curLineno=5100 compiledLineno=5127

#line 103 curLineno=5100 compiledLineno=5129

              begin 
#line 103 curLineno=5100 compiledLineno=5132

                #makeLetrec
#line 103 curLineno=5100 compiledLineno=5135

                ___lambda = lambda { |_get_MIMARKattr| 
#line 103 curLineno=5100 compiledLineno=5138

#line 103 curLineno=5100 compiledLineno=5140

                    _get_MIMARKattr                     = 
#line 103 curLineno=5100 compiledLineno=5143

                      Proc.new { |_args,_attrs| 
#line 103 curLineno=5100 compiledLineno=5146

#line 103 curLineno=5100 compiledLineno=5148

                          if ( 
#line 103 curLineno=5100 compiledLineno=5151

#line 103 curLineno=5100 compiledLineno=5153

                              _null_QUMARK(
#line 103 curLineno=5100 compiledLineno=5156

#line 103 curLineno=5100 compiledLineno=5158

                                  trampCall(_args)
                              )
                           ) then
#line 103 curLineno=5100 compiledLineno=5163

#line 103 curLineno=5100 compiledLineno=5165

#line 103 curLineno=5100 compiledLineno=5167

#line 103 curLineno=5100 compiledLineno=5169

                                  delayCall( '_values',  'values',
#line 103 curLineno=5100 compiledLineno=5172

#line 103 curLineno=5100 compiledLineno=5174

                                      trampCall(@_values)                                    ,
                                  [
#line 103 curLineno=5100 compiledLineno=5178

#line 103 curLineno=5100 compiledLineno=5180

#line 103 curLineno=5100 compiledLineno=5182

#line 103 curLineno=5100 compiledLineno=5184

                                          _reverse(
#line 103 curLineno=5100 compiledLineno=5187

#line 103 curLineno=5100 compiledLineno=5189

                                              trampCall(_attrs)
                                          )                                      ,
#line 103 curLineno=5100 compiledLineno=5193

#line 103 curLineno=5100 compiledLineno=5195

                                        trampCall(_args)
                                  ]
                                               )
                          else
#line 103 curLineno=5100 compiledLineno=5201

#line 103 curLineno=5100 compiledLineno=5203

                              if ( 
#line 103 curLineno=5100 compiledLineno=5206

#line 103 curLineno=5100 compiledLineno=5208

                                  _keyword_QUMARK(
#line 103 curLineno=5100 compiledLineno=5211

#line 103 curLineno=5100 compiledLineno=5213

#line 103 curLineno=5100 compiledLineno=5215

                                        _car(
#line 103 curLineno=5100 compiledLineno=5218

#line 103 curLineno=5100 compiledLineno=5220

                                            trampCall(_args)
                                        )
                                  )
                               ) then
#line 103 curLineno=5100 compiledLineno=5226

#line 103 curLineno=5100 compiledLineno=5228

#line 103 curLineno=5100 compiledLineno=5230

                                    if ( 
#line 103 curLineno=5100 compiledLineno=5233

#line 103 curLineno=5100 compiledLineno=5235

                                        _null_QUMARK(
#line 103 curLineno=5100 compiledLineno=5238

#line 103 curLineno=5100 compiledLineno=5240

#line 103 curLineno=5100 compiledLineno=5242

                                              _cdr(
#line 103 curLineno=5100 compiledLineno=5245

#line 103 curLineno=5100 compiledLineno=5247

                                                  trampCall(_args)
                                              )
                                        )
                                     ) then
#line 103 curLineno=5100 compiledLineno=5253

#line 103 curLineno=5100 compiledLineno=5255

#line 103 curLineno=5100 compiledLineno=5257

#line 103 curLineno=5100 compiledLineno=5259

                                            delayCall( '_values',  'values',
#line 103 curLineno=5100 compiledLineno=5262

#line 103 curLineno=5100 compiledLineno=5264

                                                trampCall(@_values)                                              ,
                                            [
#line 103 curLineno=5100 compiledLineno=5268

#line 103 curLineno=5100 compiledLineno=5270

#line 103 curLineno=5100 compiledLineno=5272

#line 103 curLineno=5100 compiledLineno=5274

                                                    _reverse(
#line 103 curLineno=5100 compiledLineno=5277

#line 103 curLineno=5100 compiledLineno=5279

#line 103 curLineno=5100 compiledLineno=5281

                                                          trampCall( self._list_ASMARK_METHOD(  'list*',
#line 103 curLineno=5100 compiledLineno=5284

#line 103 curLineno=5100 compiledLineno=5286

                                                              trampCall(@_list_ASMARK)                                                            ,
                                                          [
#line 103 curLineno=5100 compiledLineno=5290

#line 103 curLineno=5100 compiledLineno=5292

#line 103 curLineno=5100 compiledLineno=5294

#line 103 curLineno=5100 compiledLineno=5296

                                                                  _car(
#line 103 curLineno=5100 compiledLineno=5299

#line 103 curLineno=5100 compiledLineno=5301

                                                                      trampCall(_args)
                                                                  )                                                              ,
#line 103 curLineno=5100 compiledLineno=5305

                                                              " "                                                              ,
#line 103 curLineno=5100 compiledLineno=5308

#line 103 curLineno=5100 compiledLineno=5310

                                                                trampCall(_attrs)
                                                          ]
                                                                       ))
                                                    )                                                ,
#line 103 curLineno=5100 compiledLineno=5316

#line 103 curLineno=5100 compiledLineno=5318

                                                  trampCall(_args)
                                            ]
                                                         )
                                    else
#line 103 curLineno=5100 compiledLineno=5324

#line 103 curLineno=5100 compiledLineno=5326

                                        if ( 
#line 103 curLineno=5100 compiledLineno=5329

#line 103 curLineno=5100 compiledLineno=5331

                                            _eq_QUMARK(
#line 103 curLineno=5100 compiledLineno=5334

#line 103 curLineno=5100 compiledLineno=5336

#line 103 curLineno=5100 compiledLineno=5338

                                                  trampCall( self._cadr_METHOD(  'cadr',
#line 103 curLineno=5100 compiledLineno=5341

#line 103 curLineno=5100 compiledLineno=5343

                                                      trampCall(@_cadr)                                                    ,
                                                  [
#line 103 curLineno=5100 compiledLineno=5347

#line 103 curLineno=5100 compiledLineno=5349

#line 103 curLineno=5100 compiledLineno=5351

                                                        trampCall(_args)
                                                  ]
                                                               ))                                              ,
#line 103 curLineno=5100 compiledLineno=5356

                                              false
                                            )
                                         ) then
#line 103 curLineno=5100 compiledLineno=5361

#line 103 curLineno=5100 compiledLineno=5363

#line 103 curLineno=5100 compiledLineno=5365

#line 103 curLineno=5100 compiledLineno=5367

                                                delayCall( '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=5100 compiledLineno=5370

#line 103 curLineno=5100 compiledLineno=5372

                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
#line 103 curLineno=5100 compiledLineno=5376

#line 103 curLineno=5100 compiledLineno=5378

#line 103 curLineno=5100 compiledLineno=5380

#line 103 curLineno=5100 compiledLineno=5382

                                                        trampCall( self._cddr_METHOD(  'cddr',
#line 103 curLineno=5100 compiledLineno=5385

#line 103 curLineno=5100 compiledLineno=5387

                                                            trampCall(@_cddr)                                                          ,
                                                        [
#line 103 curLineno=5100 compiledLineno=5391

#line 103 curLineno=5100 compiledLineno=5393

#line 103 curLineno=5100 compiledLineno=5395

                                                              trampCall(_args)
                                                        ]
                                                                     ))                                                    ,
#line 103 curLineno=5100 compiledLineno=5400

#line 103 curLineno=5100 compiledLineno=5402

                                                      trampCall(_attrs)
                                                ]
                                                             )
                                        else
#line 103 curLineno=5100 compiledLineno=5408

#line 103 curLineno=5100 compiledLineno=5410

                                            if ( 
#line 103 curLineno=5100 compiledLineno=5413

#line 103 curLineno=5100 compiledLineno=5415

                                                _eq_QUMARK(
#line 103 curLineno=5100 compiledLineno=5418

#line 103 curLineno=5100 compiledLineno=5420

#line 103 curLineno=5100 compiledLineno=5422

                                                      trampCall( self._cadr_METHOD(  'cadr',
#line 103 curLineno=5100 compiledLineno=5425

#line 103 curLineno=5100 compiledLineno=5427

                                                          trampCall(@_cadr)                                                        ,
                                                      [
#line 103 curLineno=5100 compiledLineno=5431

#line 103 curLineno=5100 compiledLineno=5433

#line 103 curLineno=5100 compiledLineno=5435

                                                            trampCall(_args)
                                                      ]
                                                                   ))                                                  ,
#line 103 curLineno=5100 compiledLineno=5440

                                                  true
                                                )
                                             ) then
#line 103 curLineno=5100 compiledLineno=5445

#line 103 curLineno=5100 compiledLineno=5447

#line 103 curLineno=5100 compiledLineno=5449

#line 103 curLineno=5100 compiledLineno=5451

                                                    delayCall( '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=5100 compiledLineno=5454

#line 103 curLineno=5100 compiledLineno=5456

                                                        trampCall(_get_MIMARKattr)                                                      ,
                                                    [
#line 103 curLineno=5100 compiledLineno=5460

#line 103 curLineno=5100 compiledLineno=5462

#line 103 curLineno=5100 compiledLineno=5464

#line 103 curLineno=5100 compiledLineno=5466

                                                            trampCall( self._cddr_METHOD(  'cddr',
#line 103 curLineno=5100 compiledLineno=5469

#line 103 curLineno=5100 compiledLineno=5471

                                                                trampCall(@_cddr)                                                              ,
                                                            [
#line 103 curLineno=5100 compiledLineno=5475

#line 103 curLineno=5100 compiledLineno=5477

#line 103 curLineno=5100 compiledLineno=5479

                                                                  trampCall(_args)
                                                            ]
                                                                         ))                                                        ,
#line 103 curLineno=5100 compiledLineno=5484

#line 103 curLineno=5100 compiledLineno=5486

#line 103 curLineno=5100 compiledLineno=5488

                                                            trampCall( self._list_ASMARK_METHOD(  'list*',
#line 103 curLineno=5100 compiledLineno=5491

#line 103 curLineno=5100 compiledLineno=5493

                                                                trampCall(@_list_ASMARK)                                                              ,
                                                            [
#line 103 curLineno=5100 compiledLineno=5497

#line 103 curLineno=5100 compiledLineno=5499

#line 103 curLineno=5100 compiledLineno=5501

#line 103 curLineno=5100 compiledLineno=5503

                                                                    _car(
#line 103 curLineno=5100 compiledLineno=5506

#line 103 curLineno=5100 compiledLineno=5508

                                                                        trampCall(_args)
                                                                    )                                                                ,
#line 103 curLineno=5100 compiledLineno=5512

                                                                " "                                                                ,
#line 103 curLineno=5100 compiledLineno=5515

#line 103 curLineno=5100 compiledLineno=5517

                                                                  trampCall(_attrs)
                                                            ]
                                                                         ))
                                                    ]
                                                                 )
                                            else
#line 103 curLineno=5100 compiledLineno=5525

#line 103 curLineno=5100 compiledLineno=5527

                                                if ( 
                                                true
                                                 ) then
#line 103 curLineno=5100 compiledLineno=5532

#line 103 curLineno=5100 compiledLineno=5534

#line 103 curLineno=5100 compiledLineno=5536

#line 103 curLineno=5100 compiledLineno=5538

                                                        delayCall( '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=5100 compiledLineno=5541

#line 103 curLineno=5100 compiledLineno=5543

                                                            trampCall(_get_MIMARKattr)                                                          ,
                                                        [
#line 103 curLineno=5100 compiledLineno=5547

#line 103 curLineno=5100 compiledLineno=5549

#line 103 curLineno=5100 compiledLineno=5551

#line 103 curLineno=5100 compiledLineno=5553

                                                                trampCall( self._cddr_METHOD(  'cddr',
#line 103 curLineno=5100 compiledLineno=5556

#line 103 curLineno=5100 compiledLineno=5558

                                                                    trampCall(@_cddr)                                                                  ,
                                                                [
#line 103 curLineno=5100 compiledLineno=5562

#line 103 curLineno=5100 compiledLineno=5564

#line 103 curLineno=5100 compiledLineno=5566

                                                                      trampCall(_args)
                                                                ]
                                                                             ))                                                            ,
#line 103 curLineno=5100 compiledLineno=5571

#line 103 curLineno=5100 compiledLineno=5573

#line 103 curLineno=5100 compiledLineno=5575

                                                                trampCall( self._list_ASMARK_METHOD(  'list*',
#line 103 curLineno=5100 compiledLineno=5578

#line 103 curLineno=5100 compiledLineno=5580

                                                                    trampCall(@_list_ASMARK)                                                                  ,
                                                                [
#line 103 curLineno=5100 compiledLineno=5584

#line 103 curLineno=5100 compiledLineno=5586

#line 103 curLineno=5100 compiledLineno=5588

#line 103 curLineno=5100 compiledLineno=5590

                                                                        trampCall( self._sprintf_METHOD(  'sprintf',
#line 103 curLineno=5100 compiledLineno=5593

#line 103 curLineno=5100 compiledLineno=5595

                                                                            trampCall(@_sprintf)                                                                          ,
                                                                        [
#line 103 curLineno=5100 compiledLineno=5599

#line 103 curLineno=5100 compiledLineno=5601

                                                                            "=\"%s\""                                                                            ,
#line 103 curLineno=5100 compiledLineno=5604

#line 103 curLineno=5100 compiledLineno=5606

#line 103 curLineno=5100 compiledLineno=5608

                                                                                trampCall( self._html_MIMARKescape_MIMARKstring_METHOD(  'html-escape-string',
#line 103 curLineno=5100 compiledLineno=5611

#line 103 curLineno=5100 compiledLineno=5613

                                                                                    trampCall(@_html_MIMARKescape_MIMARKstring)                                                                                  ,
                                                                                [
#line 103 curLineno=5100 compiledLineno=5617

#line 103 curLineno=5100 compiledLineno=5619

#line 103 curLineno=5100 compiledLineno=5621

#line 103 curLineno=5100 compiledLineno=5623

                                                                                        trampCall( self._x_MIMARK_GTMARKstring_METHOD(  'x->string',
#line 103 curLineno=5100 compiledLineno=5626

#line 103 curLineno=5100 compiledLineno=5628

                                                                                            trampCall(@_x_MIMARK_GTMARKstring)                                                                                          ,
                                                                                        [
#line 103 curLineno=5100 compiledLineno=5632

#line 103 curLineno=5100 compiledLineno=5634

#line 103 curLineno=5100 compiledLineno=5636

#line 103 curLineno=5100 compiledLineno=5638

                                                                                                trampCall( self._cadr_METHOD(  'cadr',
#line 103 curLineno=5100 compiledLineno=5641

#line 103 curLineno=5100 compiledLineno=5643

                                                                                                    trampCall(@_cadr)                                                                                                  ,
                                                                                                [
#line 103 curLineno=5100 compiledLineno=5647

#line 103 curLineno=5100 compiledLineno=5649

#line 103 curLineno=5100 compiledLineno=5651

                                                                                                      trampCall(_args)
                                                                                                ]
                                                                                                             ))
                                                                                        ]
                                                                                                     ))
                                                                                ]
                                                                                             ))
                                                                        ]
                                                                                     ))                                                                    ,
#line 103 curLineno=5100 compiledLineno=5662

#line 103 curLineno=5100 compiledLineno=5664

#line 103 curLineno=5100 compiledLineno=5666

                                                                        _car(
#line 103 curLineno=5100 compiledLineno=5669

#line 103 curLineno=5100 compiledLineno=5671

                                                                            trampCall(_args)
                                                                        )                                                                    ,
#line 103 curLineno=5100 compiledLineno=5675

                                                                    " "                                                                    ,
#line 103 curLineno=5100 compiledLineno=5678

#line 103 curLineno=5100 compiledLineno=5680

                                                                      trampCall(_attrs)
                                                                ]
                                                                             ))
                                                        ]
                                                                     )
                                                else
#line 103 curLineno=5100 compiledLineno=5688

#line 103 curLineno=5100 compiledLineno=5690

                                                    Cell.new()
                                                end
                                            end
                                        end
                                    end
                              else
#line 103 curLineno=5100 compiledLineno=5698

#line 103 curLineno=5100 compiledLineno=5700

                                  if ( 
                                  true
                                   ) then
#line 103 curLineno=5100 compiledLineno=5705

#line 103 curLineno=5100 compiledLineno=5707

#line 103 curLineno=5100 compiledLineno=5709

#line 103 curLineno=5100 compiledLineno=5711

                                          delayCall( '_values',  'values',
#line 103 curLineno=5100 compiledLineno=5714

#line 103 curLineno=5100 compiledLineno=5716

                                              trampCall(@_values)                                            ,
                                          [
#line 103 curLineno=5100 compiledLineno=5720

#line 103 curLineno=5100 compiledLineno=5722

#line 103 curLineno=5100 compiledLineno=5724

#line 103 curLineno=5100 compiledLineno=5726

                                                  _reverse(
#line 103 curLineno=5100 compiledLineno=5729

#line 103 curLineno=5100 compiledLineno=5731

                                                      trampCall(_attrs)
                                                  )                                              ,
#line 103 curLineno=5100 compiledLineno=5735

#line 103 curLineno=5100 compiledLineno=5737

                                                trampCall(_args)
                                          ]
                                                       )
                                  else
#line 103 curLineno=5100 compiledLineno=5743

#line 103 curLineno=5100 compiledLineno=5745

                                      Cell.new()
                                  end
                              end
                          end
                      }
#line 103 curLineno=5100 compiledLineno=5752

#line 103 curLineno=5100 compiledLineno=5754

                    begin
#line 103 curLineno=5100 compiledLineno=5757

                      #makeLet
#line 103 curLineno=5100 compiledLineno=5760

                      ___lambda = lambda { |_empty_QUMARK| 
#line 103 curLineno=5100 compiledLineno=5763

#line 103 curLineno=5100 compiledLineno=5765

                          if ( 
#line 103 curLineno=5100 compiledLineno=5768

                            trampCall(_empty_QUMARK)
                           ) then
#line 103 curLineno=5100 compiledLineno=5772

#line 103 curLineno=5100 compiledLineno=5774

                              Proc.new { |*__rest__| _args = __rest__[0] ;  
#line 103 curLineno=5100 compiledLineno=5777

#line 103 curLineno=5100 compiledLineno=5779

#line 103 curLineno=5100 compiledLineno=5781

                                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
#line 103 curLineno=5100 compiledLineno=5784

#line 103 curLineno=5100 compiledLineno=5786

                                        trampCall(@_call_MIMARKwith_MIMARKvalues)                                      ,
                                    [
#line 103 curLineno=5100 compiledLineno=5790

#line 103 curLineno=5100 compiledLineno=5792

#line 103 curLineno=5100 compiledLineno=5794

                                          Proc.new { || 
#line 103 curLineno=5100 compiledLineno=5797

#line 103 curLineno=5100 compiledLineno=5799

#line 103 curLineno=5100 compiledLineno=5801

                                                trampCall( callProcedure(  '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=5100 compiledLineno=5804

#line 103 curLineno=5100 compiledLineno=5806

                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
#line 103 curLineno=5100 compiledLineno=5810

#line 103 curLineno=5100 compiledLineno=5812

#line 103 curLineno=5100 compiledLineno=5814

                                                      trampCall(_args)                                                    ,
#line 103 curLineno=5100 compiledLineno=5817

                                                    Cell.new()
                                                ]
                                                             ))
                                          }                                        ,
#line 103 curLineno=5100 compiledLineno=5823

#line 103 curLineno=5100 compiledLineno=5825

                                          Proc.new { |_attr,_args| 
#line 103 curLineno=5100 compiledLineno=5828

#line 103 curLineno=5100 compiledLineno=5830

                                              if ( 
#line 103 curLineno=5100 compiledLineno=5833

#line 103 curLineno=5100 compiledLineno=5835

                                                  _not(
#line 103 curLineno=5100 compiledLineno=5838

#line 103 curLineno=5100 compiledLineno=5840

#line 103 curLineno=5100 compiledLineno=5842

                                                        _null_QUMARK(
#line 103 curLineno=5100 compiledLineno=5845

#line 103 curLineno=5100 compiledLineno=5847

                                                            trampCall(_args)
                                                        )
                                                  )
                                               ) then
#line 103 curLineno=5100 compiledLineno=5853

#line 103 curLineno=5100 compiledLineno=5855

#line 103 curLineno=5100 compiledLineno=5857

                                                    begin raise RuntimeError, 
#line 103 curLineno=5100 compiledLineno=5860

#line 103 curLineno=5100 compiledLineno=5862

                                                        trampCall( self._sprintf_METHOD(  'sprintf',
#line 103 curLineno=5100 compiledLineno=5865

#line 103 curLineno=5100 compiledLineno=5867

                                                            trampCall(@_sprintf)                                                          ,
                                                        [
#line 103 curLineno=5100 compiledLineno=5871

#line 103 curLineno=5100 compiledLineno=5873

                                                            "element %s can't have content: %s"                                                            ,
#line 103 curLineno=5100 compiledLineno=5876

#line 103 curLineno=5100 compiledLineno=5878

                                                              trampCall(_name)                                                            ,
#line 103 curLineno=5100 compiledLineno=5881

#line 103 curLineno=5100 compiledLineno=5883

#line 103 curLineno=5100 compiledLineno=5885

                                                                _write_MIMARKto_MIMARKstring(
#line 103 curLineno=5100 compiledLineno=5888

#line 103 curLineno=5100 compiledLineno=5890

                                                                    trampCall(_args)
                                                                )
                                                        ]
                                                                     ))
                                                    rescue => __e 
                                                      __e.set_backtrace( [":1"] + __e.backtrace )
                                                      raise __e
                                                    end
                                              end
#line 103 curLineno=5100 compiledLineno=5901

#line 103 curLineno=5100 compiledLineno=5903

                                                trampCall( self._list_METHOD(  'list',
#line 103 curLineno=5100 compiledLineno=5906

#line 103 curLineno=5100 compiledLineno=5908

                                                    trampCall(@_list)                                                  ,
                                                [
#line 103 curLineno=5100 compiledLineno=5912

#line 103 curLineno=5100 compiledLineno=5914

                                                    "<"                                                    ,
#line 103 curLineno=5100 compiledLineno=5917

#line 103 curLineno=5100 compiledLineno=5919

                                                      trampCall(_name)                                                    ,
#line 103 curLineno=5100 compiledLineno=5922

#line 103 curLineno=5100 compiledLineno=5924

                                                      trampCall(_attr)                                                    ,
#line 103 curLineno=5100 compiledLineno=5927

                                                    " />"
                                                ]
                                                             ))
                                          }
                                    ]
                                                 )
                              }
                          else
#line 103 curLineno=5100 compiledLineno=5937

#line 103 curLineno=5100 compiledLineno=5939

                              Proc.new { |*__rest__| _args = __rest__[0] ;  
#line 103 curLineno=5100 compiledLineno=5942

#line 103 curLineno=5100 compiledLineno=5944

#line 103 curLineno=5100 compiledLineno=5946

                                    delayCall( '_call_MIMARKwith_MIMARKvalues',  'call-with-values',
#line 103 curLineno=5100 compiledLineno=5949

#line 103 curLineno=5100 compiledLineno=5951

                                        trampCall(@_call_MIMARKwith_MIMARKvalues)                                      ,
                                    [
#line 103 curLineno=5100 compiledLineno=5955

#line 103 curLineno=5100 compiledLineno=5957

#line 103 curLineno=5100 compiledLineno=5959

                                          Proc.new { || 
#line 103 curLineno=5100 compiledLineno=5962

#line 103 curLineno=5100 compiledLineno=5964

#line 103 curLineno=5100 compiledLineno=5966

                                                trampCall( callProcedure(  '_get_MIMARKattr',  'get-attr',
#line 103 curLineno=5100 compiledLineno=5969

#line 103 curLineno=5100 compiledLineno=5971

                                                    trampCall(_get_MIMARKattr)                                                  ,
                                                [
#line 103 curLineno=5100 compiledLineno=5975

#line 103 curLineno=5100 compiledLineno=5977

#line 103 curLineno=5100 compiledLineno=5979

                                                      trampCall(_args)                                                    ,
#line 103 curLineno=5100 compiledLineno=5982

                                                    Cell.new()
                                                ]
                                                             ))
                                          }                                        ,
#line 103 curLineno=5100 compiledLineno=5988

#line 103 curLineno=5100 compiledLineno=5990

                                          Proc.new { |_attr,_args| 
#line 103 curLineno=5100 compiledLineno=5993

#line 103 curLineno=5100 compiledLineno=5995

#line 103 curLineno=5100 compiledLineno=5997

                                                trampCall( self._list_METHOD(  'list',
#line 103 curLineno=5100 compiledLineno=6000

#line 103 curLineno=5100 compiledLineno=6002

                                                    trampCall(@_list)                                                  ,
                                                [
#line 103 curLineno=5100 compiledLineno=6006

#line 103 curLineno=5100 compiledLineno=6008

                                                    "<"                                                    ,
#line 103 curLineno=5100 compiledLineno=6011

#line 103 curLineno=5100 compiledLineno=6013

                                                      trampCall(_name)                                                    ,
#line 103 curLineno=5100 compiledLineno=6016

#line 103 curLineno=5100 compiledLineno=6018

                                                      trampCall(_attr)                                                    ,
#line 103 curLineno=5100 compiledLineno=6021

                                                    ">"                                                    ,
#line 103 curLineno=5100 compiledLineno=6024

#line 103 curLineno=5100 compiledLineno=6026

                                                      trampCall(_args)                                                    ,
#line 103 curLineno=5100 compiledLineno=6029

                                                    "</"                                                    ,
#line 103 curLineno=5100 compiledLineno=6032

#line 103 curLineno=5100 compiledLineno=6034

                                                      trampCall(_name)                                                    ,
#line 103 curLineno=5100 compiledLineno=6037

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
#line 103 curLineno=5100 compiledLineno=6049

#line 103 curLineno=5100 compiledLineno=6051

#line 103 curLineno=5100 compiledLineno=6053

#line 103 curLineno=5100 compiledLineno=6055

                              trampCall( self._get_MIMARKkeyword_METHOD(  'get-keyword',
#line 103 curLineno=5100 compiledLineno=6058

#line 103 curLineno=5100 compiledLineno=6060

                                  trampCall(@_get_MIMARKkeyword)                                ,
                              [
#line 103 curLineno=5100 compiledLineno=6064

#line 103 curLineno=5100 compiledLineno=6066

                                  LispKeyword.new( "empty?" )                                  ,
#line 103 curLineno=5100 compiledLineno=6069

#line 103 curLineno=5100 compiledLineno=6071

                                    trampCall(_args)                                  ,
#line 103 curLineno=5100 compiledLineno=6074

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


















































































































































































































































































































































































































































































































































































#line 134 curLineno=6650 compiledLineno=6650

trampCall( 
#line 134 curLineno=6650 compiledLineno=6653

  begin 
#line 134 curLineno=6650 compiledLineno=6656

    #execFunc
#line 134 curLineno=6650 compiledLineno=6659

#line 134 curLineno=6650 compiledLineno=6661

      def self._define_MIMARKhtml_MIMARKelements_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_define_MIMARKhtml_MIMARKelements', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_define_MIMARKhtml_MIMARKelements'] = self.method( :_define_MIMARKhtml_MIMARKelements_METHOD )
#line 134 curLineno=6650 compiledLineno=6665

      #execFunc(funcname=define)
    @_define_MIMARKhtml_MIMARKelements = 
    trampCall(
#line 134 curLineno=6650 compiledLineno=6670

#line 134 curLineno=6650 compiledLineno=6672

#line 134 curLineno=6650 compiledLineno=6674

          LispMacro.new { |*__rest__| _elements = __rest__[0] ;  
#line 134 curLineno=6650 compiledLineno=6677

#line 134 curLineno=6650 compiledLineno=6679

              begin 
#line 134 curLineno=6650 compiledLineno=6682

                #makeLetrec
#line 134 curLineno=6650 compiledLineno=6685

                ___lambda = lambda { |_make_MIMARKscheme_MIMARKname| 
#line 134 curLineno=6650 compiledLineno=6688

#line 134 curLineno=6650 compiledLineno=6690

                    _make_MIMARKscheme_MIMARKname                     = 
#line 134 curLineno=6650 compiledLineno=6693

                      Proc.new { |_name| 
#line 134 curLineno=6650 compiledLineno=6696

#line 134 curLineno=6650 compiledLineno=6698

#line 134 curLineno=6650 compiledLineno=6700

                            _string_MIMARK_GTMARKsymbol(
#line 134 curLineno=6650 compiledLineno=6703

#line 134 curLineno=6650 compiledLineno=6705

#line 134 curLineno=6650 compiledLineno=6707

                                  trampCall( self._sprintf_METHOD(  'sprintf',
#line 134 curLineno=6650 compiledLineno=6710

#line 134 curLineno=6650 compiledLineno=6712

                                      trampCall(@_sprintf)                                    ,
                                  [
#line 134 curLineno=6650 compiledLineno=6716

#line 134 curLineno=6650 compiledLineno=6718

                                      "html:%s"                                      ,
#line 134 curLineno=6650 compiledLineno=6721

#line 134 curLineno=6650 compiledLineno=6723

                                        trampCall(_name)
                                  ]
                                               ))
                            )
                      }
#line 134 curLineno=6650 compiledLineno=6730

#line 134 curLineno=6650 compiledLineno=6732

                    begin 
#line 134 curLineno=6650 compiledLineno=6735

                      #makeLetrec
#line 134 curLineno=6650 compiledLineno=6738

                      ___lambda = lambda { |_loop| 
#line 134 curLineno=6650 compiledLineno=6741

#line 134 curLineno=6650 compiledLineno=6743

                          _loop                           = 
#line 134 curLineno=6650 compiledLineno=6746

                            Proc.new { |_elements,_r| 
#line 134 curLineno=6650 compiledLineno=6749

#line 134 curLineno=6650 compiledLineno=6751

                                if ( 
#line 134 curLineno=6650 compiledLineno=6754

#line 134 curLineno=6650 compiledLineno=6756

                                    _null_QUMARK(
#line 134 curLineno=6650 compiledLineno=6759

#line 134 curLineno=6650 compiledLineno=6761

                                        trampCall(_elements)
                                    )
                                 ) then
#line 134 curLineno=6650 compiledLineno=6766

#line 134 curLineno=6650 compiledLineno=6768

#line 134 curLineno=6650 compiledLineno=6770

#line 134 curLineno=6650 compiledLineno=6772

                                        _cons(
#line 134 curLineno=6650 compiledLineno=6775

                                          :"begin"                                          ,
#line 134 curLineno=6650 compiledLineno=6778

#line 134 curLineno=6650 compiledLineno=6780

#line 134 curLineno=6650 compiledLineno=6782

                                              _reverse(
#line 134 curLineno=6650 compiledLineno=6785

#line 134 curLineno=6650 compiledLineno=6787

                                                  trampCall(_r)
                                              )
                                        )
                                else
#line 134 curLineno=6650 compiledLineno=6793

#line 134 curLineno=6650 compiledLineno=6795

                                    if ( 
#line 134 curLineno=6650 compiledLineno=6798

                                      if ( 
#line 134 curLineno=6650 compiledLineno=6801

#line 134 curLineno=6650 compiledLineno=6803

                                          _not(
#line 134 curLineno=6650 compiledLineno=6806

#line 134 curLineno=6650 compiledLineno=6808

#line 134 curLineno=6650 compiledLineno=6810

                                                _eq_QUMARK(
#line 134 curLineno=6650 compiledLineno=6813

                                                  false                                                  ,
#line 134 curLineno=6650 compiledLineno=6816

#line 134 curLineno=6650 compiledLineno=6818

#line 134 curLineno=6650 compiledLineno=6820

                                                      _pair_QUMARK(
#line 134 curLineno=6650 compiledLineno=6823

#line 134 curLineno=6650 compiledLineno=6825

#line 134 curLineno=6650 compiledLineno=6827

                                                            _cdr(
#line 134 curLineno=6650 compiledLineno=6830

#line 134 curLineno=6650 compiledLineno=6832

                                                                trampCall(_elements)
                                                            )
                                                      )
                                                )
                                          )
                                       ) then
#line 134 curLineno=6650 compiledLineno=6840

#line 134 curLineno=6650 compiledLineno=6842

#line 134 curLineno=6650 compiledLineno=6844

                                            trampCall( self._eqv_QUMARK_METHOD(  'eqv?',
#line 134 curLineno=6650 compiledLineno=6847

#line 134 curLineno=6650 compiledLineno=6849

                                                trampCall(@_eqv_QUMARK)                                              ,
                                            [
#line 134 curLineno=6650 compiledLineno=6853

#line 134 curLineno=6650 compiledLineno=6855

#line 134 curLineno=6650 compiledLineno=6857

#line 134 curLineno=6650 compiledLineno=6859

                                                    trampCall( self._cadr_METHOD(  'cadr',
#line 134 curLineno=6650 compiledLineno=6862

#line 134 curLineno=6650 compiledLineno=6864

                                                        trampCall(@_cadr)                                                      ,
                                                    [
#line 134 curLineno=6650 compiledLineno=6868

#line 134 curLineno=6650 compiledLineno=6870

#line 134 curLineno=6650 compiledLineno=6872

                                                          trampCall(_elements)
                                                    ]
                                                                 ))                                                ,
#line 134 curLineno=6650 compiledLineno=6877

                                                LispKeyword.new( "empty" )
                                            ]
                                                         ))
                                      else
#line 134 curLineno=6650 compiledLineno=6883

                                        false
                                      end
                                     ) then
#line 134 curLineno=6650 compiledLineno=6888

#line 134 curLineno=6650 compiledLineno=6890

#line 134 curLineno=6650 compiledLineno=6892

#line 134 curLineno=6650 compiledLineno=6894

                                            trampCall( callProcedure(  '_loop',  'loop',
#line 134 curLineno=6650 compiledLineno=6897

#line 134 curLineno=6650 compiledLineno=6899

                                                trampCall(_loop)                                              ,
                                            [
#line 134 curLineno=6650 compiledLineno=6903

#line 134 curLineno=6650 compiledLineno=6905

#line 134 curLineno=6650 compiledLineno=6907

#line 134 curLineno=6650 compiledLineno=6909

                                                    trampCall( self._cddr_METHOD(  'cddr',
#line 134 curLineno=6650 compiledLineno=6912

#line 134 curLineno=6650 compiledLineno=6914

                                                        trampCall(@_cddr)                                                      ,
                                                    [
#line 134 curLineno=6650 compiledLineno=6918

#line 134 curLineno=6650 compiledLineno=6920

#line 134 curLineno=6650 compiledLineno=6922

                                                          trampCall(_elements)
                                                    ]
                                                                 ))                                                ,
#line 134 curLineno=6650 compiledLineno=6927

#line 134 curLineno=6650 compiledLineno=6929

#line 134 curLineno=6650 compiledLineno=6931

                                                    trampCall( self._list_ASMARK_METHOD(  'list*',
#line 134 curLineno=6650 compiledLineno=6934

#line 134 curLineno=6650 compiledLineno=6936

                                                        trampCall(@_list_ASMARK)                                                      ,
                                                    [
#line 134 curLineno=6650 compiledLineno=6940

#line 134 curLineno=6650 compiledLineno=6942

#line 134 curLineno=6650 compiledLineno=6944

#line 134 curLineno=6650 compiledLineno=6946

                                                            _cons(
#line 134 curLineno=6650 compiledLineno=6949

                                                              :"define"                                                              ,
#line 134 curLineno=6650 compiledLineno=6952

#line 134 curLineno=6650 compiledLineno=6954

#line 134 curLineno=6650 compiledLineno=6956

                                                                  _cons(
#line 134 curLineno=6650 compiledLineno=6959

#line 134 curLineno=6650 compiledLineno=6961

#line 134 curLineno=6650 compiledLineno=6963

                                                                        trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
#line 134 curLineno=6650 compiledLineno=6966

#line 134 curLineno=6650 compiledLineno=6968

                                                                            trampCall(_make_MIMARKscheme_MIMARKname)                                                                          ,
                                                                        [
#line 134 curLineno=6650 compiledLineno=6972

#line 134 curLineno=6650 compiledLineno=6974

#line 134 curLineno=6650 compiledLineno=6976

#line 134 curLineno=6650 compiledLineno=6978

                                                                                _car(
#line 134 curLineno=6650 compiledLineno=6981

#line 134 curLineno=6650 compiledLineno=6983

                                                                                    trampCall(_elements)
                                                                                )
                                                                        ]
                                                                                     ))                                                                    ,
#line 134 curLineno=6650 compiledLineno=6989

#line 134 curLineno=6650 compiledLineno=6991

#line 134 curLineno=6650 compiledLineno=6993

                                                                        _cons(
#line 134 curLineno=6650 compiledLineno=6996

#line 134 curLineno=6650 compiledLineno=6998

#line 134 curLineno=6650 compiledLineno=7000

                                                                              _cons(
#line 134 curLineno=6650 compiledLineno=7003

                                                                                :"make-html-element"                                                                                ,
#line 134 curLineno=6650 compiledLineno=7006

#line 134 curLineno=6650 compiledLineno=7008

#line 134 curLineno=6650 compiledLineno=7010

                                                                                    _cons(
#line 134 curLineno=6650 compiledLineno=7013

#line 134 curLineno=6650 compiledLineno=7015

#line 134 curLineno=6650 compiledLineno=7017

                                                                                          _cons(
#line 134 curLineno=6650 compiledLineno=7020

                                                                                            :"quote"                                                                                            ,
#line 134 curLineno=6650 compiledLineno=7023

#line 134 curLineno=6650 compiledLineno=7025

#line 134 curLineno=6650 compiledLineno=7027

                                                                                                _cons(
#line 134 curLineno=6650 compiledLineno=7030

#line 134 curLineno=6650 compiledLineno=7032

#line 134 curLineno=6650 compiledLineno=7034

                                                                                                      _car(
#line 134 curLineno=6650 compiledLineno=7037

#line 134 curLineno=6650 compiledLineno=7039

                                                                                                          trampCall(_elements)
                                                                                                      )                                                                                                  ,
#line 134 curLineno=6650 compiledLineno=7043

                                                                                                  Cell.new()
                                                                                                )
                                                                                          )                                                                                      ,
#line 134 curLineno=6650 compiledLineno=7048

#line 134 curLineno=6650 compiledLineno=7050

#line 134 curLineno=6650 compiledLineno=7052

                                                                                          _cons(
#line 134 curLineno=6650 compiledLineno=7055

                                                                                            LispKeyword.new( "empty?" )                                                                                            ,
#line 134 curLineno=6650 compiledLineno=7058

#line 134 curLineno=6650 compiledLineno=7060

#line 134 curLineno=6650 compiledLineno=7062

                                                                                                _cons(
#line 134 curLineno=6650 compiledLineno=7065

                                                                                                  true                                                                                                  ,
#line 134 curLineno=6650 compiledLineno=7068

                                                                                                  Cell.new()
                                                                                                )
                                                                                          )
                                                                                    )
                                                                              )                                                                          ,
#line 134 curLineno=6650 compiledLineno=7075

                                                                          Cell.new()
                                                                        )
                                                                  )
                                                            )                                                        ,
#line 134 curLineno=6650 compiledLineno=7081

#line 134 curLineno=6650 compiledLineno=7083

#line 134 curLineno=6650 compiledLineno=7085

                                                            _cons(
#line 134 curLineno=6650 compiledLineno=7088

                                                              :"export"                                                              ,
#line 134 curLineno=6650 compiledLineno=7091

#line 134 curLineno=6650 compiledLineno=7093

#line 134 curLineno=6650 compiledLineno=7095

                                                                  _cons(
#line 134 curLineno=6650 compiledLineno=7098

#line 134 curLineno=6650 compiledLineno=7100

#line 134 curLineno=6650 compiledLineno=7102

                                                                        trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
#line 134 curLineno=6650 compiledLineno=7105

#line 134 curLineno=6650 compiledLineno=7107

                                                                            trampCall(_make_MIMARKscheme_MIMARKname)                                                                          ,
                                                                        [
#line 134 curLineno=6650 compiledLineno=7111

#line 134 curLineno=6650 compiledLineno=7113

#line 134 curLineno=6650 compiledLineno=7115

#line 134 curLineno=6650 compiledLineno=7117

                                                                                _car(
#line 134 curLineno=6650 compiledLineno=7120

#line 134 curLineno=6650 compiledLineno=7122

                                                                                    trampCall(_elements)
                                                                                )
                                                                        ]
                                                                                     ))                                                                    ,
#line 134 curLineno=6650 compiledLineno=7128

                                                                    Cell.new()
                                                                  )
                                                            )                                                        ,
#line 134 curLineno=6650 compiledLineno=7133

#line 134 curLineno=6650 compiledLineno=7135

                                                          trampCall(_r)
                                                    ]
                                                                 ))
                                            ]
                                                         ))
                                    else
#line 134 curLineno=6650 compiledLineno=7143

#line 134 curLineno=6650 compiledLineno=7145

                                        if ( 
                                        true
                                         ) then
#line 134 curLineno=6650 compiledLineno=7150

#line 134 curLineno=6650 compiledLineno=7152

#line 134 curLineno=6650 compiledLineno=7154

#line 134 curLineno=6650 compiledLineno=7156

                                                trampCall( callProcedure(  '_loop',  'loop',
#line 134 curLineno=6650 compiledLineno=7159

#line 134 curLineno=6650 compiledLineno=7161

                                                    trampCall(_loop)                                                  ,
                                                [
#line 134 curLineno=6650 compiledLineno=7165

#line 134 curLineno=6650 compiledLineno=7167

#line 134 curLineno=6650 compiledLineno=7169

#line 134 curLineno=6650 compiledLineno=7171

                                                        _cdr(
#line 134 curLineno=6650 compiledLineno=7174

#line 134 curLineno=6650 compiledLineno=7176

                                                            trampCall(_elements)
                                                        )                                                    ,
#line 134 curLineno=6650 compiledLineno=7180

#line 134 curLineno=6650 compiledLineno=7182

#line 134 curLineno=6650 compiledLineno=7184

                                                        trampCall( self._list_ASMARK_METHOD(  'list*',
#line 134 curLineno=6650 compiledLineno=7187

#line 134 curLineno=6650 compiledLineno=7189

                                                            trampCall(@_list_ASMARK)                                                          ,
                                                        [
#line 134 curLineno=6650 compiledLineno=7193

#line 134 curLineno=6650 compiledLineno=7195

#line 134 curLineno=6650 compiledLineno=7197

#line 134 curLineno=6650 compiledLineno=7199

                                                                _cons(
#line 134 curLineno=6650 compiledLineno=7202

                                                                  :"define"                                                                  ,
#line 134 curLineno=6650 compiledLineno=7205

#line 134 curLineno=6650 compiledLineno=7207

#line 134 curLineno=6650 compiledLineno=7209

                                                                      _cons(
#line 134 curLineno=6650 compiledLineno=7212

#line 134 curLineno=6650 compiledLineno=7214

#line 134 curLineno=6650 compiledLineno=7216

                                                                            trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
#line 134 curLineno=6650 compiledLineno=7219

#line 134 curLineno=6650 compiledLineno=7221

                                                                                trampCall(_make_MIMARKscheme_MIMARKname)                                                                              ,
                                                                            [
#line 134 curLineno=6650 compiledLineno=7225

#line 134 curLineno=6650 compiledLineno=7227

#line 134 curLineno=6650 compiledLineno=7229

#line 134 curLineno=6650 compiledLineno=7231

                                                                                    _car(
#line 134 curLineno=6650 compiledLineno=7234

#line 134 curLineno=6650 compiledLineno=7236

                                                                                        trampCall(_elements)
                                                                                    )
                                                                            ]
                                                                                         ))                                                                        ,
#line 134 curLineno=6650 compiledLineno=7242

#line 134 curLineno=6650 compiledLineno=7244

#line 134 curLineno=6650 compiledLineno=7246

                                                                            _cons(
#line 134 curLineno=6650 compiledLineno=7249

#line 134 curLineno=6650 compiledLineno=7251

#line 134 curLineno=6650 compiledLineno=7253

                                                                                  _cons(
#line 134 curLineno=6650 compiledLineno=7256

                                                                                    :"make-html-element"                                                                                    ,
#line 134 curLineno=6650 compiledLineno=7259

#line 134 curLineno=6650 compiledLineno=7261

#line 134 curLineno=6650 compiledLineno=7263

                                                                                        _cons(
#line 134 curLineno=6650 compiledLineno=7266

#line 134 curLineno=6650 compiledLineno=7268

#line 134 curLineno=6650 compiledLineno=7270

                                                                                              _cons(
#line 134 curLineno=6650 compiledLineno=7273

                                                                                                :"quote"                                                                                                ,
#line 134 curLineno=6650 compiledLineno=7276

#line 134 curLineno=6650 compiledLineno=7278

#line 134 curLineno=6650 compiledLineno=7280

                                                                                                    _cons(
#line 134 curLineno=6650 compiledLineno=7283

#line 134 curLineno=6650 compiledLineno=7285

#line 134 curLineno=6650 compiledLineno=7287

                                                                                                          _car(
#line 134 curLineno=6650 compiledLineno=7290

#line 134 curLineno=6650 compiledLineno=7292

                                                                                                              trampCall(_elements)
                                                                                                          )                                                                                                      ,
#line 134 curLineno=6650 compiledLineno=7296

                                                                                                      Cell.new()
                                                                                                    )
                                                                                              )                                                                                          ,
#line 134 curLineno=6650 compiledLineno=7301

                                                                                          Cell.new()
                                                                                        )
                                                                                  )                                                                              ,
#line 134 curLineno=6650 compiledLineno=7306

                                                                              Cell.new()
                                                                            )
                                                                      )
                                                                )                                                            ,
#line 134 curLineno=6650 compiledLineno=7312

#line 134 curLineno=6650 compiledLineno=7314

#line 134 curLineno=6650 compiledLineno=7316

                                                                _cons(
#line 134 curLineno=6650 compiledLineno=7319

                                                                  :"export"                                                                  ,
#line 134 curLineno=6650 compiledLineno=7322

#line 134 curLineno=6650 compiledLineno=7324

#line 134 curLineno=6650 compiledLineno=7326

                                                                      _cons(
#line 134 curLineno=6650 compiledLineno=7329

#line 134 curLineno=6650 compiledLineno=7331

#line 134 curLineno=6650 compiledLineno=7333

                                                                            trampCall( callProcedure(  '_make_MIMARKscheme_MIMARKname',  'make-scheme-name',
#line 134 curLineno=6650 compiledLineno=7336

#line 134 curLineno=6650 compiledLineno=7338

                                                                                trampCall(_make_MIMARKscheme_MIMARKname)                                                                              ,
                                                                            [
#line 134 curLineno=6650 compiledLineno=7342

#line 134 curLineno=6650 compiledLineno=7344

#line 134 curLineno=6650 compiledLineno=7346

#line 134 curLineno=6650 compiledLineno=7348

                                                                                    _car(
#line 134 curLineno=6650 compiledLineno=7351

#line 134 curLineno=6650 compiledLineno=7353

                                                                                        trampCall(_elements)
                                                                                    )
                                                                            ]
                                                                                         ))                                                                        ,
#line 134 curLineno=6650 compiledLineno=7359

                                                                        Cell.new()
                                                                      )
                                                                )                                                            ,
#line 134 curLineno=6650 compiledLineno=7364

#line 134 curLineno=6650 compiledLineno=7366

                                                              trampCall(_r)
                                                        ]
                                                                     ))
                                                ]
                                                             ))
                                        else
#line 134 curLineno=6650 compiledLineno=7374

#line 134 curLineno=6650 compiledLineno=7376

                                            Cell.new()
                                        end
                                    end
                                end
                            }
#line 134 curLineno=6650 compiledLineno=7383

#line 134 curLineno=6650 compiledLineno=7385

#line 134 curLineno=6650 compiledLineno=7387

                            trampCall( callProcedure(  '_loop',  'loop',
#line 134 curLineno=6650 compiledLineno=7390

#line 134 curLineno=6650 compiledLineno=7392

                                trampCall(_loop)                              ,
                            [
#line 134 curLineno=6650 compiledLineno=7396

#line 134 curLineno=6650 compiledLineno=7398

#line 134 curLineno=6650 compiledLineno=7400

                                  trampCall(_elements)                                ,
#line 134 curLineno=6650 compiledLineno=7403

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









































































































































































































































































































































































































































































































































































































































































































#line 163 curLineno=8100 compiledLineno=8100

trampCall( 
#line 163 curLineno=8100 compiledLineno=8103

  begin 
#line 163 curLineno=8100 compiledLineno=8106

    #makeBegin
#line 163 curLineno=8100 compiledLineno=8109

#line 163 curLineno=8100 compiledLineno=8111

      begin 
#line 163 curLineno=8100 compiledLineno=8114

        #execFunc
#line 163 curLineno=8100 compiledLineno=8117

#line 163 curLineno=8100 compiledLineno=8119

          def self._html_COMARKtt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtt'] = self.method( :_html_COMARKtt_METHOD )
#line 163 curLineno=8100 compiledLineno=8123

          #execFunc(funcname=define)
        @_html_COMARKtt = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8128

#line 163 curLineno=8100 compiledLineno=8130

            nil
        )
      end
#line 163 curLineno=8100 compiledLineno=8135

      begin 
#line 163 curLineno=8100 compiledLineno=8138

        #execFunc
#line 163 curLineno=8100 compiledLineno=8141

#line 163 curLineno=8100 compiledLineno=8143

          def self._html_COMARKtt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtt'] = self.method( :_html_COMARKtt_METHOD )
#line 163 curLineno=8100 compiledLineno=8147

          #execFunc(funcname=define)
        @_html_COMARKtt = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8152

#line 163 curLineno=8100 compiledLineno=8154

#line 163 curLineno=8100 compiledLineno=8156

#line 163 curLineno=8100 compiledLineno=8158

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=8100 compiledLineno=8161

#line 163 curLineno=8100 compiledLineno=8163

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=8100 compiledLineno=8167

#line 163 curLineno=8100 compiledLineno=8169

                    :"tt"
                ]
                             ))
        )
      end
#line 163 curLineno=8100 compiledLineno=8176

      begin 
#line 163 curLineno=8100 compiledLineno=8179

        #execFunc
#line 163 curLineno=8100 compiledLineno=8182

#line 163 curLineno=8100 compiledLineno=8184

          def self._html_COMARKi_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKi', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKi'] = self.method( :_html_COMARKi_METHOD )
#line 163 curLineno=8100 compiledLineno=8188

          #execFunc(funcname=define)
        @_html_COMARKi = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8193

#line 163 curLineno=8100 compiledLineno=8195

            nil
        )
      end
#line 163 curLineno=8100 compiledLineno=8200

      begin 
#line 163 curLineno=8100 compiledLineno=8203

        #execFunc
#line 163 curLineno=8100 compiledLineno=8206

#line 163 curLineno=8100 compiledLineno=8208

          def self._html_COMARKi_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKi', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKi'] = self.method( :_html_COMARKi_METHOD )
#line 163 curLineno=8100 compiledLineno=8212

          #execFunc(funcname=define)
        @_html_COMARKi = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8217

#line 163 curLineno=8100 compiledLineno=8219

#line 163 curLineno=8100 compiledLineno=8221

#line 163 curLineno=8100 compiledLineno=8223

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=8100 compiledLineno=8226

#line 163 curLineno=8100 compiledLineno=8228

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=8100 compiledLineno=8232

#line 163 curLineno=8100 compiledLineno=8234

                    :"i"
                ]
                             ))
        )
      end
#line 163 curLineno=8100 compiledLineno=8241

      begin 
#line 163 curLineno=8100 compiledLineno=8244

        #execFunc
#line 163 curLineno=8100 compiledLineno=8247

#line 163 curLineno=8100 compiledLineno=8249

          def self._html_COMARKb_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKb', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKb'] = self.method( :_html_COMARKb_METHOD )
#line 163 curLineno=8100 compiledLineno=8253

          #execFunc(funcname=define)
        @_html_COMARKb = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8258

#line 163 curLineno=8100 compiledLineno=8260

            nil
        )
      end
#line 163 curLineno=8100 compiledLineno=8265

      begin 
#line 163 curLineno=8100 compiledLineno=8268

        #execFunc
#line 163 curLineno=8100 compiledLineno=8271

#line 163 curLineno=8100 compiledLineno=8273

          def self._html_COMARKb_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKb', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKb'] = self.method( :_html_COMARKb_METHOD )
#line 163 curLineno=8100 compiledLineno=8277

          #execFunc(funcname=define)
        @_html_COMARKb = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8282

#line 163 curLineno=8100 compiledLineno=8284

#line 163 curLineno=8100 compiledLineno=8286

#line 163 curLineno=8100 compiledLineno=8288

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=8100 compiledLineno=8291

#line 163 curLineno=8100 compiledLineno=8293

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=8100 compiledLineno=8297

#line 163 curLineno=8100 compiledLineno=8299

                    :"b"
                ]
                             ))
        )
      end
#line 163 curLineno=8100 compiledLineno=8306

      begin 
#line 163 curLineno=8100 compiledLineno=8309

        #execFunc
#line 163 curLineno=8100 compiledLineno=8312

#line 163 curLineno=8100 compiledLineno=8314

          def self._html_COMARKbig_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbig', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbig'] = self.method( :_html_COMARKbig_METHOD )
#line 163 curLineno=8100 compiledLineno=8318

          #execFunc(funcname=define)
        @_html_COMARKbig = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8323

#line 163 curLineno=8100 compiledLineno=8325

            nil
        )
      end
#line 163 curLineno=8100 compiledLineno=8330

      begin 
#line 163 curLineno=8100 compiledLineno=8333

        #execFunc
#line 163 curLineno=8100 compiledLineno=8336

#line 163 curLineno=8100 compiledLineno=8338

          def self._html_COMARKbig_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbig', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbig'] = self.method( :_html_COMARKbig_METHOD )
#line 163 curLineno=8100 compiledLineno=8342

          #execFunc(funcname=define)
        @_html_COMARKbig = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8347

#line 163 curLineno=8100 compiledLineno=8349

#line 163 curLineno=8100 compiledLineno=8351

#line 163 curLineno=8100 compiledLineno=8353

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=8100 compiledLineno=8356

#line 163 curLineno=8100 compiledLineno=8358

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=8100 compiledLineno=8362

#line 163 curLineno=8100 compiledLineno=8364

                    :"big"
                ]
                             ))
        )
      end
#line 163 curLineno=8100 compiledLineno=8371

      begin 
#line 163 curLineno=8100 compiledLineno=8374

        #execFunc
#line 163 curLineno=8100 compiledLineno=8377

#line 163 curLineno=8100 compiledLineno=8379

          def self._html_COMARKsmall_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsmall', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsmall'] = self.method( :_html_COMARKsmall_METHOD )
#line 163 curLineno=8100 compiledLineno=8383

          #execFunc(funcname=define)
        @_html_COMARKsmall = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8388

#line 163 curLineno=8100 compiledLineno=8390

            nil
        )
      end
#line 163 curLineno=8100 compiledLineno=8395

      begin 
#line 163 curLineno=8100 compiledLineno=8398

        #execFunc
#line 163 curLineno=8100 compiledLineno=8401

#line 163 curLineno=8100 compiledLineno=8403

          def self._html_COMARKsmall_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsmall', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsmall'] = self.method( :_html_COMARKsmall_METHOD )
#line 163 curLineno=8100 compiledLineno=8407

          #execFunc(funcname=define)
        @_html_COMARKsmall = 
        trampCall(
#line 163 curLineno=8100 compiledLineno=8412

#line 163 curLineno=8100 compiledLineno=8414

#line 163 curLineno=8100 compiledLineno=8416

#line 163 curLineno=8100 compiledLineno=8418

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 163 curLineno=8100 compiledLineno=8421

#line 163 curLineno=8100 compiledLineno=8423

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 163 curLineno=8100 compiledLineno=8427

#line 163 curLineno=8100 compiledLineno=8429

                    :"small"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 166 curLineno=8250 compiledLineno=8438

trampCall( 
#line 166 curLineno=8250 compiledLineno=8441

  begin 
#line 166 curLineno=8250 compiledLineno=8444

    #makeBegin
#line 166 curLineno=8250 compiledLineno=8447

#line 166 curLineno=8250 compiledLineno=8449

      begin 
#line 166 curLineno=8250 compiledLineno=8452

        #execFunc
#line 166 curLineno=8250 compiledLineno=8455

#line 166 curLineno=8250 compiledLineno=8457

          def self._html_COMARKem_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKem', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKem'] = self.method( :_html_COMARKem_METHOD )
#line 166 curLineno=8250 compiledLineno=8461

          #execFunc(funcname=define)
        @_html_COMARKem = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8466

#line 166 curLineno=8250 compiledLineno=8468

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8473

      begin 
#line 166 curLineno=8250 compiledLineno=8476

        #execFunc
#line 166 curLineno=8250 compiledLineno=8479

#line 166 curLineno=8250 compiledLineno=8481

          def self._html_COMARKem_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKem', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKem'] = self.method( :_html_COMARKem_METHOD )
#line 166 curLineno=8250 compiledLineno=8485

          #execFunc(funcname=define)
        @_html_COMARKem = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8490

#line 166 curLineno=8250 compiledLineno=8492

#line 166 curLineno=8250 compiledLineno=8494

#line 166 curLineno=8250 compiledLineno=8496

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=8499

#line 166 curLineno=8250 compiledLineno=8501

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=8505

#line 166 curLineno=8250 compiledLineno=8507

                    :"em"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=8514

      begin 
#line 166 curLineno=8250 compiledLineno=8517

        #execFunc
#line 166 curLineno=8250 compiledLineno=8520

#line 166 curLineno=8250 compiledLineno=8522

          def self._html_COMARKstrong_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstrong', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKstrong'] = self.method( :_html_COMARKstrong_METHOD )
#line 166 curLineno=8250 compiledLineno=8526

          #execFunc(funcname=define)
        @_html_COMARKstrong = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8531

#line 166 curLineno=8250 compiledLineno=8533

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8538

      begin 
#line 166 curLineno=8250 compiledLineno=8541

        #execFunc
#line 166 curLineno=8250 compiledLineno=8544

#line 166 curLineno=8250 compiledLineno=8546

          def self._html_COMARKstrong_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstrong', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKstrong'] = self.method( :_html_COMARKstrong_METHOD )
#line 166 curLineno=8250 compiledLineno=8550

          #execFunc(funcname=define)
        @_html_COMARKstrong = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8555

#line 166 curLineno=8250 compiledLineno=8557

#line 166 curLineno=8250 compiledLineno=8559

#line 166 curLineno=8250 compiledLineno=8561

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=8564

#line 166 curLineno=8250 compiledLineno=8566

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=8570

#line 166 curLineno=8250 compiledLineno=8572

                    :"strong"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=8579

      begin 
#line 166 curLineno=8250 compiledLineno=8582

        #execFunc
#line 166 curLineno=8250 compiledLineno=8585

#line 166 curLineno=8250 compiledLineno=8587

          def self._html_COMARKdfn_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdfn', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdfn'] = self.method( :_html_COMARKdfn_METHOD )
#line 166 curLineno=8250 compiledLineno=8591

          #execFunc(funcname=define)
        @_html_COMARKdfn = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8596

#line 166 curLineno=8250 compiledLineno=8598

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8603

      begin 
#line 166 curLineno=8250 compiledLineno=8606

        #execFunc
#line 166 curLineno=8250 compiledLineno=8609

#line 166 curLineno=8250 compiledLineno=8611

          def self._html_COMARKdfn_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdfn', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdfn'] = self.method( :_html_COMARKdfn_METHOD )
#line 166 curLineno=8250 compiledLineno=8615

          #execFunc(funcname=define)
        @_html_COMARKdfn = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8620

#line 166 curLineno=8250 compiledLineno=8622

#line 166 curLineno=8250 compiledLineno=8624

#line 166 curLineno=8250 compiledLineno=8626

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=8629

#line 166 curLineno=8250 compiledLineno=8631

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=8635

#line 166 curLineno=8250 compiledLineno=8637

                    :"dfn"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=8644

      begin 
#line 166 curLineno=8250 compiledLineno=8647

        #execFunc
#line 166 curLineno=8250 compiledLineno=8650

#line 166 curLineno=8250 compiledLineno=8652

          def self._html_COMARKcode_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcode', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcode'] = self.method( :_html_COMARKcode_METHOD )
#line 166 curLineno=8250 compiledLineno=8656

          #execFunc(funcname=define)
        @_html_COMARKcode = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8661

#line 166 curLineno=8250 compiledLineno=8663

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8668

      begin 
#line 166 curLineno=8250 compiledLineno=8671

        #execFunc
#line 166 curLineno=8250 compiledLineno=8674

#line 166 curLineno=8250 compiledLineno=8676

          def self._html_COMARKcode_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcode', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcode'] = self.method( :_html_COMARKcode_METHOD )
#line 166 curLineno=8250 compiledLineno=8680

          #execFunc(funcname=define)
        @_html_COMARKcode = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8685

#line 166 curLineno=8250 compiledLineno=8687

#line 166 curLineno=8250 compiledLineno=8689

#line 166 curLineno=8250 compiledLineno=8691

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=8694

#line 166 curLineno=8250 compiledLineno=8696

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=8700

#line 166 curLineno=8250 compiledLineno=8702

                    :"code"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=8709

      begin 
#line 166 curLineno=8250 compiledLineno=8712

        #execFunc
#line 166 curLineno=8250 compiledLineno=8715

#line 166 curLineno=8250 compiledLineno=8717

          def self._html_COMARKsamp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsamp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsamp'] = self.method( :_html_COMARKsamp_METHOD )
#line 166 curLineno=8250 compiledLineno=8721

          #execFunc(funcname=define)
        @_html_COMARKsamp = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8726

#line 166 curLineno=8250 compiledLineno=8728

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8733

      begin 
#line 166 curLineno=8250 compiledLineno=8736

        #execFunc
#line 166 curLineno=8250 compiledLineno=8739

#line 166 curLineno=8250 compiledLineno=8741

          def self._html_COMARKsamp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsamp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsamp'] = self.method( :_html_COMARKsamp_METHOD )
#line 166 curLineno=8250 compiledLineno=8745

          #execFunc(funcname=define)
        @_html_COMARKsamp = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8750

#line 166 curLineno=8250 compiledLineno=8752

#line 166 curLineno=8250 compiledLineno=8754

#line 166 curLineno=8250 compiledLineno=8756

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=8759

#line 166 curLineno=8250 compiledLineno=8761

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=8765

#line 166 curLineno=8250 compiledLineno=8767

                    :"samp"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=8774

      begin 
#line 166 curLineno=8250 compiledLineno=8777

        #execFunc
#line 166 curLineno=8250 compiledLineno=8780

#line 166 curLineno=8250 compiledLineno=8782

          def self._html_COMARKkbd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKkbd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKkbd'] = self.method( :_html_COMARKkbd_METHOD )
#line 166 curLineno=8250 compiledLineno=8786

          #execFunc(funcname=define)
        @_html_COMARKkbd = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8791

#line 166 curLineno=8250 compiledLineno=8793

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8798

      begin 
#line 166 curLineno=8250 compiledLineno=8801

        #execFunc
#line 166 curLineno=8250 compiledLineno=8804

#line 166 curLineno=8250 compiledLineno=8806

          def self._html_COMARKkbd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKkbd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKkbd'] = self.method( :_html_COMARKkbd_METHOD )
#line 166 curLineno=8250 compiledLineno=8810

          #execFunc(funcname=define)
        @_html_COMARKkbd = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8815

#line 166 curLineno=8250 compiledLineno=8817

#line 166 curLineno=8250 compiledLineno=8819

#line 166 curLineno=8250 compiledLineno=8821

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=8824

#line 166 curLineno=8250 compiledLineno=8826

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=8830

#line 166 curLineno=8250 compiledLineno=8832

                    :"kbd"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=8839

      begin 
#line 166 curLineno=8250 compiledLineno=8842

        #execFunc
#line 166 curLineno=8250 compiledLineno=8845

#line 166 curLineno=8250 compiledLineno=8847

          def self._html_COMARKvar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKvar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKvar'] = self.method( :_html_COMARKvar_METHOD )
#line 166 curLineno=8250 compiledLineno=8851

          #execFunc(funcname=define)
        @_html_COMARKvar = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8856

#line 166 curLineno=8250 compiledLineno=8858

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8863

      begin 
#line 166 curLineno=8250 compiledLineno=8866

        #execFunc
#line 166 curLineno=8250 compiledLineno=8869

#line 166 curLineno=8250 compiledLineno=8871

          def self._html_COMARKvar_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKvar', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKvar'] = self.method( :_html_COMARKvar_METHOD )
#line 166 curLineno=8250 compiledLineno=8875

          #execFunc(funcname=define)
        @_html_COMARKvar = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8880

#line 166 curLineno=8250 compiledLineno=8882

#line 166 curLineno=8250 compiledLineno=8884

#line 166 curLineno=8250 compiledLineno=8886

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=8889

#line 166 curLineno=8250 compiledLineno=8891

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=8895

#line 166 curLineno=8250 compiledLineno=8897

                    :"var"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=8904

      begin 
#line 166 curLineno=8250 compiledLineno=8907

        #execFunc
#line 166 curLineno=8250 compiledLineno=8910

#line 166 curLineno=8250 compiledLineno=8912

          def self._html_COMARKcite_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcite', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcite'] = self.method( :_html_COMARKcite_METHOD )
#line 166 curLineno=8250 compiledLineno=8916

          #execFunc(funcname=define)
        @_html_COMARKcite = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8921

#line 166 curLineno=8250 compiledLineno=8923

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8928

      begin 
#line 166 curLineno=8250 compiledLineno=8931

        #execFunc
#line 166 curLineno=8250 compiledLineno=8934

#line 166 curLineno=8250 compiledLineno=8936

          def self._html_COMARKcite_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcite', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcite'] = self.method( :_html_COMARKcite_METHOD )
#line 166 curLineno=8250 compiledLineno=8940

          #execFunc(funcname=define)
        @_html_COMARKcite = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8945

#line 166 curLineno=8250 compiledLineno=8947

#line 166 curLineno=8250 compiledLineno=8949

#line 166 curLineno=8250 compiledLineno=8951

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=8954

#line 166 curLineno=8250 compiledLineno=8956

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=8960

#line 166 curLineno=8250 compiledLineno=8962

                    :"cite"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=8969

      begin 
#line 166 curLineno=8250 compiledLineno=8972

        #execFunc
#line 166 curLineno=8250 compiledLineno=8975

#line 166 curLineno=8250 compiledLineno=8977

          def self._html_COMARKabbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKabbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKabbr'] = self.method( :_html_COMARKabbr_METHOD )
#line 166 curLineno=8250 compiledLineno=8981

          #execFunc(funcname=define)
        @_html_COMARKabbr = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=8986

#line 166 curLineno=8250 compiledLineno=8988

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=8993

      begin 
#line 166 curLineno=8250 compiledLineno=8996

        #execFunc
#line 166 curLineno=8250 compiledLineno=8999

#line 166 curLineno=8250 compiledLineno=9001

          def self._html_COMARKabbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKabbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKabbr'] = self.method( :_html_COMARKabbr_METHOD )
#line 166 curLineno=8250 compiledLineno=9005

          #execFunc(funcname=define)
        @_html_COMARKabbr = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=9010

#line 166 curLineno=8250 compiledLineno=9012

#line 166 curLineno=8250 compiledLineno=9014

#line 166 curLineno=8250 compiledLineno=9016

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=9019

#line 166 curLineno=8250 compiledLineno=9021

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=9025

#line 166 curLineno=8250 compiledLineno=9027

                    :"abbr"
                ]
                             ))
        )
      end
#line 166 curLineno=8250 compiledLineno=9034

      begin 
#line 166 curLineno=8250 compiledLineno=9037

        #execFunc
#line 166 curLineno=8250 compiledLineno=9040

#line 166 curLineno=8250 compiledLineno=9042

          def self._html_COMARKacronym_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKacronym', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKacronym'] = self.method( :_html_COMARKacronym_METHOD )
#line 166 curLineno=8250 compiledLineno=9046

          #execFunc(funcname=define)
        @_html_COMARKacronym = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=9051

#line 166 curLineno=8250 compiledLineno=9053

            nil
        )
      end
#line 166 curLineno=8250 compiledLineno=9058

      begin 
#line 166 curLineno=8250 compiledLineno=9061

        #execFunc
#line 166 curLineno=8250 compiledLineno=9064

#line 166 curLineno=8250 compiledLineno=9066

          def self._html_COMARKacronym_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKacronym', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKacronym'] = self.method( :_html_COMARKacronym_METHOD )
#line 166 curLineno=8250 compiledLineno=9070

          #execFunc(funcname=define)
        @_html_COMARKacronym = 
        trampCall(
#line 166 curLineno=8250 compiledLineno=9075

#line 166 curLineno=8250 compiledLineno=9077

#line 166 curLineno=8250 compiledLineno=9079

#line 166 curLineno=8250 compiledLineno=9081

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 166 curLineno=8250 compiledLineno=9084

#line 166 curLineno=8250 compiledLineno=9086

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 166 curLineno=8250 compiledLineno=9090

#line 166 curLineno=8250 compiledLineno=9092

                    :"acronym"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 168 curLineno=8350 compiledLineno=9101

trampCall( 
#line 168 curLineno=8350 compiledLineno=9104

  begin 
#line 168 curLineno=8350 compiledLineno=9107

    #makeBegin
#line 168 curLineno=8350 compiledLineno=9110

#line 168 curLineno=8350 compiledLineno=9112

      begin 
#line 168 curLineno=8350 compiledLineno=9115

        #execFunc
#line 168 curLineno=8350 compiledLineno=9118

#line 168 curLineno=8350 compiledLineno=9120

          def self._html_COMARKsub_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsub', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsub'] = self.method( :_html_COMARKsub_METHOD )
#line 168 curLineno=8350 compiledLineno=9124

          #execFunc(funcname=define)
        @_html_COMARKsub = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9129

#line 168 curLineno=8350 compiledLineno=9131

            nil
        )
      end
#line 168 curLineno=8350 compiledLineno=9136

      begin 
#line 168 curLineno=8350 compiledLineno=9139

        #execFunc
#line 168 curLineno=8350 compiledLineno=9142

#line 168 curLineno=8350 compiledLineno=9144

          def self._html_COMARKsub_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsub', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsub'] = self.method( :_html_COMARKsub_METHOD )
#line 168 curLineno=8350 compiledLineno=9148

          #execFunc(funcname=define)
        @_html_COMARKsub = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9153

#line 168 curLineno=8350 compiledLineno=9155

#line 168 curLineno=8350 compiledLineno=9157

#line 168 curLineno=8350 compiledLineno=9159

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=8350 compiledLineno=9162

#line 168 curLineno=8350 compiledLineno=9164

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=8350 compiledLineno=9168

#line 168 curLineno=8350 compiledLineno=9170

                    :"sub"
                ]
                             ))
        )
      end
#line 168 curLineno=8350 compiledLineno=9177

      begin 
#line 168 curLineno=8350 compiledLineno=9180

        #execFunc
#line 168 curLineno=8350 compiledLineno=9183

#line 168 curLineno=8350 compiledLineno=9185

          def self._html_COMARKsup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsup'] = self.method( :_html_COMARKsup_METHOD )
#line 168 curLineno=8350 compiledLineno=9189

          #execFunc(funcname=define)
        @_html_COMARKsup = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9194

#line 168 curLineno=8350 compiledLineno=9196

            nil
        )
      end
#line 168 curLineno=8350 compiledLineno=9201

      begin 
#line 168 curLineno=8350 compiledLineno=9204

        #execFunc
#line 168 curLineno=8350 compiledLineno=9207

#line 168 curLineno=8350 compiledLineno=9209

          def self._html_COMARKsup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKsup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKsup'] = self.method( :_html_COMARKsup_METHOD )
#line 168 curLineno=8350 compiledLineno=9213

          #execFunc(funcname=define)
        @_html_COMARKsup = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9218

#line 168 curLineno=8350 compiledLineno=9220

#line 168 curLineno=8350 compiledLineno=9222

#line 168 curLineno=8350 compiledLineno=9224

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=8350 compiledLineno=9227

#line 168 curLineno=8350 compiledLineno=9229

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=8350 compiledLineno=9233

#line 168 curLineno=8350 compiledLineno=9235

                    :"sup"
                ]
                             ))
        )
      end
#line 168 curLineno=8350 compiledLineno=9242

      begin 
#line 168 curLineno=8350 compiledLineno=9245

        #execFunc
#line 168 curLineno=8350 compiledLineno=9248

#line 168 curLineno=8350 compiledLineno=9250

          def self._html_COMARKspan_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKspan', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKspan'] = self.method( :_html_COMARKspan_METHOD )
#line 168 curLineno=8350 compiledLineno=9254

          #execFunc(funcname=define)
        @_html_COMARKspan = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9259

#line 168 curLineno=8350 compiledLineno=9261

            nil
        )
      end
#line 168 curLineno=8350 compiledLineno=9266

      begin 
#line 168 curLineno=8350 compiledLineno=9269

        #execFunc
#line 168 curLineno=8350 compiledLineno=9272

#line 168 curLineno=8350 compiledLineno=9274

          def self._html_COMARKspan_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKspan', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKspan'] = self.method( :_html_COMARKspan_METHOD )
#line 168 curLineno=8350 compiledLineno=9278

          #execFunc(funcname=define)
        @_html_COMARKspan = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9283

#line 168 curLineno=8350 compiledLineno=9285

#line 168 curLineno=8350 compiledLineno=9287

#line 168 curLineno=8350 compiledLineno=9289

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=8350 compiledLineno=9292

#line 168 curLineno=8350 compiledLineno=9294

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=8350 compiledLineno=9298

#line 168 curLineno=8350 compiledLineno=9300

                    :"span"
                ]
                             ))
        )
      end
#line 168 curLineno=8350 compiledLineno=9307

      begin 
#line 168 curLineno=8350 compiledLineno=9310

        #execFunc
#line 168 curLineno=8350 compiledLineno=9313

#line 168 curLineno=8350 compiledLineno=9315

          def self._html_COMARKbdo_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbdo', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbdo'] = self.method( :_html_COMARKbdo_METHOD )
#line 168 curLineno=8350 compiledLineno=9319

          #execFunc(funcname=define)
        @_html_COMARKbdo = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9324

#line 168 curLineno=8350 compiledLineno=9326

            nil
        )
      end
#line 168 curLineno=8350 compiledLineno=9331

      begin 
#line 168 curLineno=8350 compiledLineno=9334

        #execFunc
#line 168 curLineno=8350 compiledLineno=9337

#line 168 curLineno=8350 compiledLineno=9339

          def self._html_COMARKbdo_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbdo', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbdo'] = self.method( :_html_COMARKbdo_METHOD )
#line 168 curLineno=8350 compiledLineno=9343

          #execFunc(funcname=define)
        @_html_COMARKbdo = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9348

#line 168 curLineno=8350 compiledLineno=9350

#line 168 curLineno=8350 compiledLineno=9352

#line 168 curLineno=8350 compiledLineno=9354

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=8350 compiledLineno=9357

#line 168 curLineno=8350 compiledLineno=9359

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=8350 compiledLineno=9363

#line 168 curLineno=8350 compiledLineno=9365

                    :"bdo"
                ]
                             ))
        )
      end
#line 168 curLineno=8350 compiledLineno=9372

      begin 
#line 168 curLineno=8350 compiledLineno=9375

        #execFunc
#line 168 curLineno=8350 compiledLineno=9378

#line 168 curLineno=8350 compiledLineno=9380

          def self._html_COMARKbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbr'] = self.method( :_html_COMARKbr_METHOD )
#line 168 curLineno=8350 compiledLineno=9384

          #execFunc(funcname=define)
        @_html_COMARKbr = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9389

#line 168 curLineno=8350 compiledLineno=9391

            nil
        )
      end
#line 168 curLineno=8350 compiledLineno=9396

      begin 
#line 168 curLineno=8350 compiledLineno=9399

        #execFunc
#line 168 curLineno=8350 compiledLineno=9402

#line 168 curLineno=8350 compiledLineno=9404

          def self._html_COMARKbr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbr'] = self.method( :_html_COMARKbr_METHOD )
#line 168 curLineno=8350 compiledLineno=9408

          #execFunc(funcname=define)
        @_html_COMARKbr = 
        trampCall(
#line 168 curLineno=8350 compiledLineno=9413

#line 168 curLineno=8350 compiledLineno=9415

#line 168 curLineno=8350 compiledLineno=9417

#line 168 curLineno=8350 compiledLineno=9419

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 168 curLineno=8350 compiledLineno=9422

#line 168 curLineno=8350 compiledLineno=9424

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 168 curLineno=8350 compiledLineno=9428

#line 168 curLineno=8350 compiledLineno=9430

                    :"br"                    ,
#line 168 curLineno=8350 compiledLineno=9433

                    LispKeyword.new( "empty?" )                    ,
#line 168 curLineno=8350 compiledLineno=9436

                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 174 curLineno=8650 compiledLineno=9445

trampCall( 
#line 174 curLineno=8650 compiledLineno=9448

  begin 
#line 174 curLineno=8650 compiledLineno=9451

    #makeBegin
#line 174 curLineno=8650 compiledLineno=9454

#line 174 curLineno=8650 compiledLineno=9456

      begin 
#line 174 curLineno=8650 compiledLineno=9459

        #execFunc
#line 174 curLineno=8650 compiledLineno=9462

#line 174 curLineno=8650 compiledLineno=9464

          def self._html_COMARKbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbody'] = self.method( :_html_COMARKbody_METHOD )
#line 174 curLineno=8650 compiledLineno=9468

          #execFunc(funcname=define)
        @_html_COMARKbody = 
        trampCall(
#line 174 curLineno=8650 compiledLineno=9473

#line 174 curLineno=8650 compiledLineno=9475

            nil
        )
      end
#line 174 curLineno=8650 compiledLineno=9480

      begin 
#line 174 curLineno=8650 compiledLineno=9483

        #execFunc
#line 174 curLineno=8650 compiledLineno=9486

#line 174 curLineno=8650 compiledLineno=9488

          def self._html_COMARKbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbody'] = self.method( :_html_COMARKbody_METHOD )
#line 174 curLineno=8650 compiledLineno=9492

          #execFunc(funcname=define)
        @_html_COMARKbody = 
        trampCall(
#line 174 curLineno=8650 compiledLineno=9497

#line 174 curLineno=8650 compiledLineno=9499

#line 174 curLineno=8650 compiledLineno=9501

#line 174 curLineno=8650 compiledLineno=9503

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 174 curLineno=8650 compiledLineno=9506

#line 174 curLineno=8650 compiledLineno=9508

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 174 curLineno=8650 compiledLineno=9512

#line 174 curLineno=8650 compiledLineno=9514

                    :"body"
                ]
                             ))
        )
      end
#line 174 curLineno=8650 compiledLineno=9521

      begin 
#line 174 curLineno=8650 compiledLineno=9524

        #execFunc
#line 174 curLineno=8650 compiledLineno=9527

#line 174 curLineno=8650 compiledLineno=9529

          def self._html_COMARKaddress_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKaddress', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKaddress'] = self.method( :_html_COMARKaddress_METHOD )
#line 174 curLineno=8650 compiledLineno=9533

          #execFunc(funcname=define)
        @_html_COMARKaddress = 
        trampCall(
#line 174 curLineno=8650 compiledLineno=9538

#line 174 curLineno=8650 compiledLineno=9540

            nil
        )
      end
#line 174 curLineno=8650 compiledLineno=9545

      begin 
#line 174 curLineno=8650 compiledLineno=9548

        #execFunc
#line 174 curLineno=8650 compiledLineno=9551

#line 174 curLineno=8650 compiledLineno=9553

          def self._html_COMARKaddress_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKaddress', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKaddress'] = self.method( :_html_COMARKaddress_METHOD )
#line 174 curLineno=8650 compiledLineno=9557

          #execFunc(funcname=define)
        @_html_COMARKaddress = 
        trampCall(
#line 174 curLineno=8650 compiledLineno=9562

#line 174 curLineno=8650 compiledLineno=9564

#line 174 curLineno=8650 compiledLineno=9566

#line 174 curLineno=8650 compiledLineno=9568

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 174 curLineno=8650 compiledLineno=9571

#line 174 curLineno=8650 compiledLineno=9573

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 174 curLineno=8650 compiledLineno=9577

#line 174 curLineno=8650 compiledLineno=9579

                    :"address"
                ]
                             ))
        )
      end
#line 174 curLineno=8650 compiledLineno=9586

      begin 
#line 174 curLineno=8650 compiledLineno=9589

        #execFunc
#line 174 curLineno=8650 compiledLineno=9592

#line 174 curLineno=8650 compiledLineno=9594

          def self._html_COMARKdiv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdiv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdiv'] = self.method( :_html_COMARKdiv_METHOD )
#line 174 curLineno=8650 compiledLineno=9598

          #execFunc(funcname=define)
        @_html_COMARKdiv = 
        trampCall(
#line 174 curLineno=8650 compiledLineno=9603

#line 174 curLineno=8650 compiledLineno=9605

            nil
        )
      end
#line 174 curLineno=8650 compiledLineno=9610

      begin 
#line 174 curLineno=8650 compiledLineno=9613

        #execFunc
#line 174 curLineno=8650 compiledLineno=9616

#line 174 curLineno=8650 compiledLineno=9618

          def self._html_COMARKdiv_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdiv', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdiv'] = self.method( :_html_COMARKdiv_METHOD )
#line 174 curLineno=8650 compiledLineno=9622

          #execFunc(funcname=define)
        @_html_COMARKdiv = 
        trampCall(
#line 174 curLineno=8650 compiledLineno=9627

#line 174 curLineno=8650 compiledLineno=9629

#line 174 curLineno=8650 compiledLineno=9631

#line 174 curLineno=8650 compiledLineno=9633

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 174 curLineno=8650 compiledLineno=9636

#line 174 curLineno=8650 compiledLineno=9638

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 174 curLineno=8650 compiledLineno=9642

#line 174 curLineno=8650 compiledLineno=9644

                    :"div"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 177 curLineno=8800 compiledLineno=9653

trampCall( 
#line 177 curLineno=8800 compiledLineno=9656

  begin 
#line 177 curLineno=8800 compiledLineno=9659

    #makeBegin
#line 177 curLineno=8800 compiledLineno=9662

#line 177 curLineno=8800 compiledLineno=9664

      begin 
#line 177 curLineno=8800 compiledLineno=9667

        #execFunc
#line 177 curLineno=8800 compiledLineno=9670

#line 177 curLineno=8800 compiledLineno=9672

          def self._html_COMARKa_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKa', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKa'] = self.method( :_html_COMARKa_METHOD )
#line 177 curLineno=8800 compiledLineno=9676

          #execFunc(funcname=define)
        @_html_COMARKa = 
        trampCall(
#line 177 curLineno=8800 compiledLineno=9681

#line 177 curLineno=8800 compiledLineno=9683

            nil
        )
      end
#line 177 curLineno=8800 compiledLineno=9688

      begin 
#line 177 curLineno=8800 compiledLineno=9691

        #execFunc
#line 177 curLineno=8800 compiledLineno=9694

#line 177 curLineno=8800 compiledLineno=9696

          def self._html_COMARKa_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKa', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKa'] = self.method( :_html_COMARKa_METHOD )
#line 177 curLineno=8800 compiledLineno=9700

          #execFunc(funcname=define)
        @_html_COMARKa = 
        trampCall(
#line 177 curLineno=8800 compiledLineno=9705

#line 177 curLineno=8800 compiledLineno=9707

#line 177 curLineno=8800 compiledLineno=9709

#line 177 curLineno=8800 compiledLineno=9711

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 177 curLineno=8800 compiledLineno=9714

#line 177 curLineno=8800 compiledLineno=9716

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 177 curLineno=8800 compiledLineno=9720

#line 177 curLineno=8800 compiledLineno=9722

                    :"a"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 180 curLineno=8950 compiledLineno=9731

trampCall( 
#line 180 curLineno=8950 compiledLineno=9734

  begin 
#line 180 curLineno=8950 compiledLineno=9737

    #makeBegin
#line 180 curLineno=8950 compiledLineno=9740

#line 180 curLineno=8950 compiledLineno=9742

      begin 
#line 180 curLineno=8950 compiledLineno=9745

        #execFunc
#line 180 curLineno=8950 compiledLineno=9748

#line 180 curLineno=8950 compiledLineno=9750

          def self._html_COMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKmap'] = self.method( :_html_COMARKmap_METHOD )
#line 180 curLineno=8950 compiledLineno=9754

          #execFunc(funcname=define)
        @_html_COMARKmap = 
        trampCall(
#line 180 curLineno=8950 compiledLineno=9759

#line 180 curLineno=8950 compiledLineno=9761

            nil
        )
      end
#line 180 curLineno=8950 compiledLineno=9766

      begin 
#line 180 curLineno=8950 compiledLineno=9769

        #execFunc
#line 180 curLineno=8950 compiledLineno=9772

#line 180 curLineno=8950 compiledLineno=9774

          def self._html_COMARKmap_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmap', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKmap'] = self.method( :_html_COMARKmap_METHOD )
#line 180 curLineno=8950 compiledLineno=9778

          #execFunc(funcname=define)
        @_html_COMARKmap = 
        trampCall(
#line 180 curLineno=8950 compiledLineno=9783

#line 180 curLineno=8950 compiledLineno=9785

#line 180 curLineno=8950 compiledLineno=9787

#line 180 curLineno=8950 compiledLineno=9789

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 180 curLineno=8950 compiledLineno=9792

#line 180 curLineno=8950 compiledLineno=9794

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 180 curLineno=8950 compiledLineno=9798

#line 180 curLineno=8950 compiledLineno=9800

                    :"map"
                ]
                             ))
        )
      end
#line 180 curLineno=8950 compiledLineno=9807

      begin 
#line 180 curLineno=8950 compiledLineno=9810

        #execFunc
#line 180 curLineno=8950 compiledLineno=9813

#line 180 curLineno=8950 compiledLineno=9815

          def self._html_COMARKarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKarea'] = self.method( :_html_COMARKarea_METHOD )
#line 180 curLineno=8950 compiledLineno=9819

          #execFunc(funcname=define)
        @_html_COMARKarea = 
        trampCall(
#line 180 curLineno=8950 compiledLineno=9824

#line 180 curLineno=8950 compiledLineno=9826

            nil
        )
      end
#line 180 curLineno=8950 compiledLineno=9831

      begin 
#line 180 curLineno=8950 compiledLineno=9834

        #execFunc
#line 180 curLineno=8950 compiledLineno=9837

#line 180 curLineno=8950 compiledLineno=9839

          def self._html_COMARKarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKarea'] = self.method( :_html_COMARKarea_METHOD )
#line 180 curLineno=8950 compiledLineno=9843

          #execFunc(funcname=define)
        @_html_COMARKarea = 
        trampCall(
#line 180 curLineno=8950 compiledLineno=9848

#line 180 curLineno=8950 compiledLineno=9850

#line 180 curLineno=8950 compiledLineno=9852

#line 180 curLineno=8950 compiledLineno=9854

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 180 curLineno=8950 compiledLineno=9857

#line 180 curLineno=8950 compiledLineno=9859

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 180 curLineno=8950 compiledLineno=9863

#line 180 curLineno=8950 compiledLineno=9865

                    :"area"                    ,
#line 180 curLineno=8950 compiledLineno=9868

                    LispKeyword.new( "empty?" )                    ,
#line 180 curLineno=8950 compiledLineno=9871

                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 183 curLineno=9100 compiledLineno=9880

trampCall( 
#line 183 curLineno=9100 compiledLineno=9883

  begin 
#line 183 curLineno=9100 compiledLineno=9886

    #makeBegin
#line 183 curLineno=9100 compiledLineno=9889

#line 183 curLineno=9100 compiledLineno=9891

      begin 
#line 183 curLineno=9100 compiledLineno=9894

        #execFunc
#line 183 curLineno=9100 compiledLineno=9897

#line 183 curLineno=9100 compiledLineno=9899

          def self._html_COMARKlink_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlink', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlink'] = self.method( :_html_COMARKlink_METHOD )
#line 183 curLineno=9100 compiledLineno=9903

          #execFunc(funcname=define)
        @_html_COMARKlink = 
        trampCall(
#line 183 curLineno=9100 compiledLineno=9908

#line 183 curLineno=9100 compiledLineno=9910

            nil
        )
      end
#line 183 curLineno=9100 compiledLineno=9915

      begin 
#line 183 curLineno=9100 compiledLineno=9918

        #execFunc
#line 183 curLineno=9100 compiledLineno=9921

#line 183 curLineno=9100 compiledLineno=9923

          def self._html_COMARKlink_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlink', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlink'] = self.method( :_html_COMARKlink_METHOD )
#line 183 curLineno=9100 compiledLineno=9927

          #execFunc(funcname=define)
        @_html_COMARKlink = 
        trampCall(
#line 183 curLineno=9100 compiledLineno=9932

#line 183 curLineno=9100 compiledLineno=9934

#line 183 curLineno=9100 compiledLineno=9936

#line 183 curLineno=9100 compiledLineno=9938

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 183 curLineno=9100 compiledLineno=9941

#line 183 curLineno=9100 compiledLineno=9943

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 183 curLineno=9100 compiledLineno=9947

#line 183 curLineno=9100 compiledLineno=9949

                    :"link"                    ,
#line 183 curLineno=9100 compiledLineno=9952

                    LispKeyword.new( "empty?" )                    ,
#line 183 curLineno=9100 compiledLineno=9955

                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 186 curLineno=9250 compiledLineno=9964

trampCall( 
#line 186 curLineno=9250 compiledLineno=9967

  begin 
#line 186 curLineno=9250 compiledLineno=9970

    #makeBegin
#line 186 curLineno=9250 compiledLineno=9973

#line 186 curLineno=9250 compiledLineno=9975

      begin 
#line 186 curLineno=9250 compiledLineno=9978

        #execFunc
#line 186 curLineno=9250 compiledLineno=9981

#line 186 curLineno=9250 compiledLineno=9983

          def self._html_COMARKimg_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKimg', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKimg'] = self.method( :_html_COMARKimg_METHOD )
#line 186 curLineno=9250 compiledLineno=9987

          #execFunc(funcname=define)
        @_html_COMARKimg = 
        trampCall(
#line 186 curLineno=9250 compiledLineno=9992

#line 186 curLineno=9250 compiledLineno=9994

            nil
        )
      end
#line 186 curLineno=9250 compiledLineno=9999

      begin 
#line 186 curLineno=9250 compiledLineno=10002

        #execFunc
#line 186 curLineno=9250 compiledLineno=10005

#line 186 curLineno=9250 compiledLineno=10007

          def self._html_COMARKimg_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKimg', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKimg'] = self.method( :_html_COMARKimg_METHOD )
#line 186 curLineno=9250 compiledLineno=10011

          #execFunc(funcname=define)
        @_html_COMARKimg = 
        trampCall(
#line 186 curLineno=9250 compiledLineno=10016

#line 186 curLineno=9250 compiledLineno=10018

#line 186 curLineno=9250 compiledLineno=10020

#line 186 curLineno=9250 compiledLineno=10022

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 186 curLineno=9250 compiledLineno=10025

#line 186 curLineno=9250 compiledLineno=10027

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 186 curLineno=9250 compiledLineno=10031

#line 186 curLineno=9250 compiledLineno=10033

                    :"img"                    ,
#line 186 curLineno=9250 compiledLineno=10036

                    LispKeyword.new( "empty?" )                    ,
#line 186 curLineno=9250 compiledLineno=10039

                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 189 curLineno=9400 compiledLineno=10048

trampCall( 
#line 189 curLineno=9400 compiledLineno=10051

  begin 
#line 189 curLineno=9400 compiledLineno=10054

    #makeBegin
#line 189 curLineno=9400 compiledLineno=10057

#line 189 curLineno=9400 compiledLineno=10059

      begin 
#line 189 curLineno=9400 compiledLineno=10062

        #execFunc
#line 189 curLineno=9400 compiledLineno=10065

#line 189 curLineno=9400 compiledLineno=10067

          def self._html_COMARKobject_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKobject', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKobject'] = self.method( :_html_COMARKobject_METHOD )
#line 189 curLineno=9400 compiledLineno=10071

          #execFunc(funcname=define)
        @_html_COMARKobject = 
        trampCall(
#line 189 curLineno=9400 compiledLineno=10076

#line 189 curLineno=9400 compiledLineno=10078

            nil
        )
      end
#line 189 curLineno=9400 compiledLineno=10083

      begin 
#line 189 curLineno=9400 compiledLineno=10086

        #execFunc
#line 189 curLineno=9400 compiledLineno=10089

#line 189 curLineno=9400 compiledLineno=10091

          def self._html_COMARKobject_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKobject', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKobject'] = self.method( :_html_COMARKobject_METHOD )
#line 189 curLineno=9400 compiledLineno=10095

          #execFunc(funcname=define)
        @_html_COMARKobject = 
        trampCall(
#line 189 curLineno=9400 compiledLineno=10100

#line 189 curLineno=9400 compiledLineno=10102

#line 189 curLineno=9400 compiledLineno=10104

#line 189 curLineno=9400 compiledLineno=10106

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 189 curLineno=9400 compiledLineno=10109

#line 189 curLineno=9400 compiledLineno=10111

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 189 curLineno=9400 compiledLineno=10115

#line 189 curLineno=9400 compiledLineno=10117

                    :"object"
                ]
                             ))
        )
      end
#line 189 curLineno=9400 compiledLineno=10124

      begin 
#line 189 curLineno=9400 compiledLineno=10127

        #execFunc
#line 189 curLineno=9400 compiledLineno=10130

#line 189 curLineno=9400 compiledLineno=10132

          def self._html_COMARKparam_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKparam', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKparam'] = self.method( :_html_COMARKparam_METHOD )
#line 189 curLineno=9400 compiledLineno=10136

          #execFunc(funcname=define)
        @_html_COMARKparam = 
        trampCall(
#line 189 curLineno=9400 compiledLineno=10141

#line 189 curLineno=9400 compiledLineno=10143

            nil
        )
      end
#line 189 curLineno=9400 compiledLineno=10148

      begin 
#line 189 curLineno=9400 compiledLineno=10151

        #execFunc
#line 189 curLineno=9400 compiledLineno=10154

#line 189 curLineno=9400 compiledLineno=10156

          def self._html_COMARKparam_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKparam', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKparam'] = self.method( :_html_COMARKparam_METHOD )
#line 189 curLineno=9400 compiledLineno=10160

          #execFunc(funcname=define)
        @_html_COMARKparam = 
        trampCall(
#line 189 curLineno=9400 compiledLineno=10165

#line 189 curLineno=9400 compiledLineno=10167

#line 189 curLineno=9400 compiledLineno=10169

#line 189 curLineno=9400 compiledLineno=10171

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 189 curLineno=9400 compiledLineno=10174

#line 189 curLineno=9400 compiledLineno=10176

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 189 curLineno=9400 compiledLineno=10180

#line 189 curLineno=9400 compiledLineno=10182

                    :"param"                    ,
#line 189 curLineno=9400 compiledLineno=10185

                    LispKeyword.new( "empty?" )                    ,
#line 189 curLineno=9400 compiledLineno=10188

                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 192 curLineno=9550 compiledLineno=10197

trampCall( 
#line 192 curLineno=9550 compiledLineno=10200

  begin 
#line 192 curLineno=9550 compiledLineno=10203

    #makeBegin
#line 192 curLineno=9550 compiledLineno=10206

#line 192 curLineno=9550 compiledLineno=10208

      begin 
#line 192 curLineno=9550 compiledLineno=10211

        #execFunc
#line 192 curLineno=9550 compiledLineno=10214

#line 192 curLineno=9550 compiledLineno=10216

          def self._html_COMARKhr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhr'] = self.method( :_html_COMARKhr_METHOD )
#line 192 curLineno=9550 compiledLineno=10220

          #execFunc(funcname=define)
        @_html_COMARKhr = 
        trampCall(
#line 192 curLineno=9550 compiledLineno=10225

#line 192 curLineno=9550 compiledLineno=10227

            nil
        )
      end
#line 192 curLineno=9550 compiledLineno=10232

      begin 
#line 192 curLineno=9550 compiledLineno=10235

        #execFunc
#line 192 curLineno=9550 compiledLineno=10238

#line 192 curLineno=9550 compiledLineno=10240

          def self._html_COMARKhr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhr'] = self.method( :_html_COMARKhr_METHOD )
#line 192 curLineno=9550 compiledLineno=10244

          #execFunc(funcname=define)
        @_html_COMARKhr = 
        trampCall(
#line 192 curLineno=9550 compiledLineno=10249

#line 192 curLineno=9550 compiledLineno=10251

#line 192 curLineno=9550 compiledLineno=10253

#line 192 curLineno=9550 compiledLineno=10255

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 192 curLineno=9550 compiledLineno=10258

#line 192 curLineno=9550 compiledLineno=10260

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 192 curLineno=9550 compiledLineno=10264

#line 192 curLineno=9550 compiledLineno=10266

                    :"hr"                    ,
#line 192 curLineno=9550 compiledLineno=10269

                    LispKeyword.new( "empty?" )                    ,
#line 192 curLineno=9550 compiledLineno=10272

                    true
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 195 curLineno=9700 compiledLineno=10281

trampCall( 
#line 195 curLineno=9700 compiledLineno=10284

  begin 
#line 195 curLineno=9700 compiledLineno=10287

    #makeBegin
#line 195 curLineno=9700 compiledLineno=10290

#line 195 curLineno=9700 compiledLineno=10292

      begin 
#line 195 curLineno=9700 compiledLineno=10295

        #execFunc
#line 195 curLineno=9700 compiledLineno=10298

#line 195 curLineno=9700 compiledLineno=10300

          def self._html_COMARKp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKp'] = self.method( :_html_COMARKp_METHOD )
#line 195 curLineno=9700 compiledLineno=10304

          #execFunc(funcname=define)
        @_html_COMARKp = 
        trampCall(
#line 195 curLineno=9700 compiledLineno=10309

#line 195 curLineno=9700 compiledLineno=10311

            nil
        )
      end
#line 195 curLineno=9700 compiledLineno=10316

      begin 
#line 195 curLineno=9700 compiledLineno=10319

        #execFunc
#line 195 curLineno=9700 compiledLineno=10322

#line 195 curLineno=9700 compiledLineno=10324

          def self._html_COMARKp_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKp', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKp'] = self.method( :_html_COMARKp_METHOD )
#line 195 curLineno=9700 compiledLineno=10328

          #execFunc(funcname=define)
        @_html_COMARKp = 
        trampCall(
#line 195 curLineno=9700 compiledLineno=10333

#line 195 curLineno=9700 compiledLineno=10335

#line 195 curLineno=9700 compiledLineno=10337

#line 195 curLineno=9700 compiledLineno=10339

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 195 curLineno=9700 compiledLineno=10342

#line 195 curLineno=9700 compiledLineno=10344

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 195 curLineno=9700 compiledLineno=10348

#line 195 curLineno=9700 compiledLineno=10350

                    :"p"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 198 curLineno=9850 compiledLineno=10359

trampCall( 
#line 198 curLineno=9850 compiledLineno=10362

  begin 
#line 198 curLineno=9850 compiledLineno=10365

    #makeBegin
#line 198 curLineno=9850 compiledLineno=10368

#line 198 curLineno=9850 compiledLineno=10370

      begin 
#line 198 curLineno=9850 compiledLineno=10373

        #execFunc
#line 198 curLineno=9850 compiledLineno=10376

#line 198 curLineno=9850 compiledLineno=10378

          def self._html_COMARKh1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh1'] = self.method( :_html_COMARKh1_METHOD )
#line 198 curLineno=9850 compiledLineno=10382

          #execFunc(funcname=define)
        @_html_COMARKh1 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10387

#line 198 curLineno=9850 compiledLineno=10389

            nil
        )
      end
#line 198 curLineno=9850 compiledLineno=10394

      begin 
#line 198 curLineno=9850 compiledLineno=10397

        #execFunc
#line 198 curLineno=9850 compiledLineno=10400

#line 198 curLineno=9850 compiledLineno=10402

          def self._html_COMARKh1_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh1', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh1'] = self.method( :_html_COMARKh1_METHOD )
#line 198 curLineno=9850 compiledLineno=10406

          #execFunc(funcname=define)
        @_html_COMARKh1 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10411

#line 198 curLineno=9850 compiledLineno=10413

#line 198 curLineno=9850 compiledLineno=10415

#line 198 curLineno=9850 compiledLineno=10417

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=9850 compiledLineno=10420

#line 198 curLineno=9850 compiledLineno=10422

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=9850 compiledLineno=10426

#line 198 curLineno=9850 compiledLineno=10428

                    :"h1"
                ]
                             ))
        )
      end
#line 198 curLineno=9850 compiledLineno=10435

      begin 
#line 198 curLineno=9850 compiledLineno=10438

        #execFunc
#line 198 curLineno=9850 compiledLineno=10441

#line 198 curLineno=9850 compiledLineno=10443

          def self._html_COMARKh2_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh2', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh2'] = self.method( :_html_COMARKh2_METHOD )
#line 198 curLineno=9850 compiledLineno=10447

          #execFunc(funcname=define)
        @_html_COMARKh2 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10452

#line 198 curLineno=9850 compiledLineno=10454

            nil
        )
      end
#line 198 curLineno=9850 compiledLineno=10459

      begin 
#line 198 curLineno=9850 compiledLineno=10462

        #execFunc
#line 198 curLineno=9850 compiledLineno=10465

#line 198 curLineno=9850 compiledLineno=10467

          def self._html_COMARKh2_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh2', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh2'] = self.method( :_html_COMARKh2_METHOD )
#line 198 curLineno=9850 compiledLineno=10471

          #execFunc(funcname=define)
        @_html_COMARKh2 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10476

#line 198 curLineno=9850 compiledLineno=10478

#line 198 curLineno=9850 compiledLineno=10480

#line 198 curLineno=9850 compiledLineno=10482

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=9850 compiledLineno=10485

#line 198 curLineno=9850 compiledLineno=10487

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=9850 compiledLineno=10491

#line 198 curLineno=9850 compiledLineno=10493

                    :"h2"
                ]
                             ))
        )
      end
#line 198 curLineno=9850 compiledLineno=10500

      begin 
#line 198 curLineno=9850 compiledLineno=10503

        #execFunc
#line 198 curLineno=9850 compiledLineno=10506

#line 198 curLineno=9850 compiledLineno=10508

          def self._html_COMARKh3_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh3', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh3'] = self.method( :_html_COMARKh3_METHOD )
#line 198 curLineno=9850 compiledLineno=10512

          #execFunc(funcname=define)
        @_html_COMARKh3 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10517

#line 198 curLineno=9850 compiledLineno=10519

            nil
        )
      end
#line 198 curLineno=9850 compiledLineno=10524

      begin 
#line 198 curLineno=9850 compiledLineno=10527

        #execFunc
#line 198 curLineno=9850 compiledLineno=10530

#line 198 curLineno=9850 compiledLineno=10532

          def self._html_COMARKh3_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh3', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh3'] = self.method( :_html_COMARKh3_METHOD )
#line 198 curLineno=9850 compiledLineno=10536

          #execFunc(funcname=define)
        @_html_COMARKh3 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10541

#line 198 curLineno=9850 compiledLineno=10543

#line 198 curLineno=9850 compiledLineno=10545

#line 198 curLineno=9850 compiledLineno=10547

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=9850 compiledLineno=10550

#line 198 curLineno=9850 compiledLineno=10552

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=9850 compiledLineno=10556

#line 198 curLineno=9850 compiledLineno=10558

                    :"h3"
                ]
                             ))
        )
      end
#line 198 curLineno=9850 compiledLineno=10565

      begin 
#line 198 curLineno=9850 compiledLineno=10568

        #execFunc
#line 198 curLineno=9850 compiledLineno=10571

#line 198 curLineno=9850 compiledLineno=10573

          def self._html_COMARKh4_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh4', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh4'] = self.method( :_html_COMARKh4_METHOD )
#line 198 curLineno=9850 compiledLineno=10577

          #execFunc(funcname=define)
        @_html_COMARKh4 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10582

#line 198 curLineno=9850 compiledLineno=10584

            nil
        )
      end
#line 198 curLineno=9850 compiledLineno=10589

      begin 
#line 198 curLineno=9850 compiledLineno=10592

        #execFunc
#line 198 curLineno=9850 compiledLineno=10595

#line 198 curLineno=9850 compiledLineno=10597

          def self._html_COMARKh4_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh4', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh4'] = self.method( :_html_COMARKh4_METHOD )
#line 198 curLineno=9850 compiledLineno=10601

          #execFunc(funcname=define)
        @_html_COMARKh4 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10606

#line 198 curLineno=9850 compiledLineno=10608

#line 198 curLineno=9850 compiledLineno=10610

#line 198 curLineno=9850 compiledLineno=10612

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=9850 compiledLineno=10615

#line 198 curLineno=9850 compiledLineno=10617

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=9850 compiledLineno=10621

#line 198 curLineno=9850 compiledLineno=10623

                    :"h4"
                ]
                             ))
        )
      end
#line 198 curLineno=9850 compiledLineno=10630

      begin 
#line 198 curLineno=9850 compiledLineno=10633

        #execFunc
#line 198 curLineno=9850 compiledLineno=10636

#line 198 curLineno=9850 compiledLineno=10638

          def self._html_COMARKh5_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh5', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh5'] = self.method( :_html_COMARKh5_METHOD )
#line 198 curLineno=9850 compiledLineno=10642

          #execFunc(funcname=define)
        @_html_COMARKh5 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10647

#line 198 curLineno=9850 compiledLineno=10649

            nil
        )
      end
#line 198 curLineno=9850 compiledLineno=10654

      begin 
#line 198 curLineno=9850 compiledLineno=10657

        #execFunc
#line 198 curLineno=9850 compiledLineno=10660

#line 198 curLineno=9850 compiledLineno=10662

          def self._html_COMARKh5_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh5', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh5'] = self.method( :_html_COMARKh5_METHOD )
#line 198 curLineno=9850 compiledLineno=10666

          #execFunc(funcname=define)
        @_html_COMARKh5 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10671

#line 198 curLineno=9850 compiledLineno=10673

#line 198 curLineno=9850 compiledLineno=10675

#line 198 curLineno=9850 compiledLineno=10677

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=9850 compiledLineno=10680

#line 198 curLineno=9850 compiledLineno=10682

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=9850 compiledLineno=10686

#line 198 curLineno=9850 compiledLineno=10688

                    :"h5"
                ]
                             ))
        )
      end
#line 198 curLineno=9850 compiledLineno=10695

      begin 
#line 198 curLineno=9850 compiledLineno=10698

        #execFunc
#line 198 curLineno=9850 compiledLineno=10701

#line 198 curLineno=9850 compiledLineno=10703

          def self._html_COMARKh6_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh6', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh6'] = self.method( :_html_COMARKh6_METHOD )
#line 198 curLineno=9850 compiledLineno=10707

          #execFunc(funcname=define)
        @_html_COMARKh6 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10712

#line 198 curLineno=9850 compiledLineno=10714

            nil
        )
      end
#line 198 curLineno=9850 compiledLineno=10719

      begin 
#line 198 curLineno=9850 compiledLineno=10722

        #execFunc
#line 198 curLineno=9850 compiledLineno=10725

#line 198 curLineno=9850 compiledLineno=10727

          def self._html_COMARKh6_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKh6', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKh6'] = self.method( :_html_COMARKh6_METHOD )
#line 198 curLineno=9850 compiledLineno=10731

          #execFunc(funcname=define)
        @_html_COMARKh6 = 
        trampCall(
#line 198 curLineno=9850 compiledLineno=10736

#line 198 curLineno=9850 compiledLineno=10738

#line 198 curLineno=9850 compiledLineno=10740

#line 198 curLineno=9850 compiledLineno=10742

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 198 curLineno=9850 compiledLineno=10745

#line 198 curLineno=9850 compiledLineno=10747

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 198 curLineno=9850 compiledLineno=10751

#line 198 curLineno=9850 compiledLineno=10753

                    :"h6"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 201 curLineno=10000 compiledLineno=10762

trampCall( 
#line 201 curLineno=10000 compiledLineno=10765

  begin 
#line 201 curLineno=10000 compiledLineno=10768

    #makeBegin
#line 201 curLineno=10000 compiledLineno=10771

#line 201 curLineno=10000 compiledLineno=10773

      begin 
#line 201 curLineno=10000 compiledLineno=10776

        #execFunc
#line 201 curLineno=10000 compiledLineno=10779

#line 201 curLineno=10000 compiledLineno=10781

          def self._html_COMARKpre_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKpre', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKpre'] = self.method( :_html_COMARKpre_METHOD )
#line 201 curLineno=10000 compiledLineno=10785

          #execFunc(funcname=define)
        @_html_COMARKpre = 
        trampCall(
#line 201 curLineno=10000 compiledLineno=10790

#line 201 curLineno=10000 compiledLineno=10792

            nil
        )
      end
#line 201 curLineno=10000 compiledLineno=10797

      begin 
#line 201 curLineno=10000 compiledLineno=10800

        #execFunc
#line 201 curLineno=10000 compiledLineno=10803

#line 201 curLineno=10000 compiledLineno=10805

          def self._html_COMARKpre_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKpre', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKpre'] = self.method( :_html_COMARKpre_METHOD )
#line 201 curLineno=10000 compiledLineno=10809

          #execFunc(funcname=define)
        @_html_COMARKpre = 
        trampCall(
#line 201 curLineno=10000 compiledLineno=10814

#line 201 curLineno=10000 compiledLineno=10816

#line 201 curLineno=10000 compiledLineno=10818

#line 201 curLineno=10000 compiledLineno=10820

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 201 curLineno=10000 compiledLineno=10823

#line 201 curLineno=10000 compiledLineno=10825

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 201 curLineno=10000 compiledLineno=10829

#line 201 curLineno=10000 compiledLineno=10831

                    :"pre"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 204 curLineno=10150 compiledLineno=10840

trampCall( 
#line 204 curLineno=10150 compiledLineno=10843

  begin 
#line 204 curLineno=10150 compiledLineno=10846

    #makeBegin
#line 204 curLineno=10150 compiledLineno=10849

#line 204 curLineno=10150 compiledLineno=10851

      begin 
#line 204 curLineno=10150 compiledLineno=10854

        #execFunc
#line 204 curLineno=10150 compiledLineno=10857

#line 204 curLineno=10150 compiledLineno=10859

          def self._html_COMARKq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKq'] = self.method( :_html_COMARKq_METHOD )
#line 204 curLineno=10150 compiledLineno=10863

          #execFunc(funcname=define)
        @_html_COMARKq = 
        trampCall(
#line 204 curLineno=10150 compiledLineno=10868

#line 204 curLineno=10150 compiledLineno=10870

            nil
        )
      end
#line 204 curLineno=10150 compiledLineno=10875

      begin 
#line 204 curLineno=10150 compiledLineno=10878

        #execFunc
#line 204 curLineno=10150 compiledLineno=10881

#line 204 curLineno=10150 compiledLineno=10883

          def self._html_COMARKq_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKq', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKq'] = self.method( :_html_COMARKq_METHOD )
#line 204 curLineno=10150 compiledLineno=10887

          #execFunc(funcname=define)
        @_html_COMARKq = 
        trampCall(
#line 204 curLineno=10150 compiledLineno=10892

#line 204 curLineno=10150 compiledLineno=10894

#line 204 curLineno=10150 compiledLineno=10896

#line 204 curLineno=10150 compiledLineno=10898

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 204 curLineno=10150 compiledLineno=10901

#line 204 curLineno=10150 compiledLineno=10903

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 204 curLineno=10150 compiledLineno=10907

#line 204 curLineno=10150 compiledLineno=10909

                    :"q"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 207 curLineno=10300 compiledLineno=10918

trampCall( 
#line 207 curLineno=10300 compiledLineno=10921

  begin 
#line 207 curLineno=10300 compiledLineno=10924

    #makeBegin
#line 207 curLineno=10300 compiledLineno=10927

#line 207 curLineno=10300 compiledLineno=10929

      begin 
#line 207 curLineno=10300 compiledLineno=10932

        #execFunc
#line 207 curLineno=10300 compiledLineno=10935

#line 207 curLineno=10300 compiledLineno=10937

          def self._html_COMARKblockquote_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKblockquote', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKblockquote'] = self.method( :_html_COMARKblockquote_METHOD )
#line 207 curLineno=10300 compiledLineno=10941

          #execFunc(funcname=define)
        @_html_COMARKblockquote = 
        trampCall(
#line 207 curLineno=10300 compiledLineno=10946

#line 207 curLineno=10300 compiledLineno=10948

            nil
        )
      end
#line 207 curLineno=10300 compiledLineno=10953

      begin 
#line 207 curLineno=10300 compiledLineno=10956

        #execFunc
#line 207 curLineno=10300 compiledLineno=10959

#line 207 curLineno=10300 compiledLineno=10961

          def self._html_COMARKblockquote_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKblockquote', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKblockquote'] = self.method( :_html_COMARKblockquote_METHOD )
#line 207 curLineno=10300 compiledLineno=10965

          #execFunc(funcname=define)
        @_html_COMARKblockquote = 
        trampCall(
#line 207 curLineno=10300 compiledLineno=10970

#line 207 curLineno=10300 compiledLineno=10972

#line 207 curLineno=10300 compiledLineno=10974

#line 207 curLineno=10300 compiledLineno=10976

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 207 curLineno=10300 compiledLineno=10979

#line 207 curLineno=10300 compiledLineno=10981

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 207 curLineno=10300 compiledLineno=10985

#line 207 curLineno=10300 compiledLineno=10987

                    :"blockquote"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 210 curLineno=10450 compiledLineno=10996

trampCall( 
#line 210 curLineno=10450 compiledLineno=10999

  begin 
#line 210 curLineno=10450 compiledLineno=11002

    #makeBegin
#line 210 curLineno=10450 compiledLineno=11005

#line 210 curLineno=10450 compiledLineno=11007

      begin 
#line 210 curLineno=10450 compiledLineno=11010

        #execFunc
#line 210 curLineno=10450 compiledLineno=11013

#line 210 curLineno=10450 compiledLineno=11015

          def self._html_COMARKins_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKins', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKins'] = self.method( :_html_COMARKins_METHOD )
#line 210 curLineno=10450 compiledLineno=11019

          #execFunc(funcname=define)
        @_html_COMARKins = 
        trampCall(
#line 210 curLineno=10450 compiledLineno=11024

#line 210 curLineno=10450 compiledLineno=11026

            nil
        )
      end
#line 210 curLineno=10450 compiledLineno=11031

      begin 
#line 210 curLineno=10450 compiledLineno=11034

        #execFunc
#line 210 curLineno=10450 compiledLineno=11037

#line 210 curLineno=10450 compiledLineno=11039

          def self._html_COMARKins_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKins', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKins'] = self.method( :_html_COMARKins_METHOD )
#line 210 curLineno=10450 compiledLineno=11043

          #execFunc(funcname=define)
        @_html_COMARKins = 
        trampCall(
#line 210 curLineno=10450 compiledLineno=11048

#line 210 curLineno=10450 compiledLineno=11050

#line 210 curLineno=10450 compiledLineno=11052

#line 210 curLineno=10450 compiledLineno=11054

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 210 curLineno=10450 compiledLineno=11057

#line 210 curLineno=10450 compiledLineno=11059

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 210 curLineno=10450 compiledLineno=11063

#line 210 curLineno=10450 compiledLineno=11065

                    :"ins"
                ]
                             ))
        )
      end
#line 210 curLineno=10450 compiledLineno=11072

      begin 
#line 210 curLineno=10450 compiledLineno=11075

        #execFunc
#line 210 curLineno=10450 compiledLineno=11078

#line 210 curLineno=10450 compiledLineno=11080

          def self._html_COMARKdel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdel'] = self.method( :_html_COMARKdel_METHOD )
#line 210 curLineno=10450 compiledLineno=11084

          #execFunc(funcname=define)
        @_html_COMARKdel = 
        trampCall(
#line 210 curLineno=10450 compiledLineno=11089

#line 210 curLineno=10450 compiledLineno=11091

            nil
        )
      end
#line 210 curLineno=10450 compiledLineno=11096

      begin 
#line 210 curLineno=10450 compiledLineno=11099

        #execFunc
#line 210 curLineno=10450 compiledLineno=11102

#line 210 curLineno=10450 compiledLineno=11104

          def self._html_COMARKdel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdel'] = self.method( :_html_COMARKdel_METHOD )
#line 210 curLineno=10450 compiledLineno=11108

          #execFunc(funcname=define)
        @_html_COMARKdel = 
        trampCall(
#line 210 curLineno=10450 compiledLineno=11113

#line 210 curLineno=10450 compiledLineno=11115

#line 210 curLineno=10450 compiledLineno=11117

#line 210 curLineno=10450 compiledLineno=11119

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 210 curLineno=10450 compiledLineno=11122

#line 210 curLineno=10450 compiledLineno=11124

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 210 curLineno=10450 compiledLineno=11128

#line 210 curLineno=10450 compiledLineno=11130

                    :"del"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 213 curLineno=10600 compiledLineno=11139

trampCall( 
#line 213 curLineno=10600 compiledLineno=11142

  begin 
#line 213 curLineno=10600 compiledLineno=11145

    #makeBegin
#line 213 curLineno=10600 compiledLineno=11148

#line 213 curLineno=10600 compiledLineno=11150

      begin 
#line 213 curLineno=10600 compiledLineno=11153

        #execFunc
#line 213 curLineno=10600 compiledLineno=11156

#line 213 curLineno=10600 compiledLineno=11158

          def self._html_COMARKdl_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdl', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdl'] = self.method( :_html_COMARKdl_METHOD )
#line 213 curLineno=10600 compiledLineno=11162

          #execFunc(funcname=define)
        @_html_COMARKdl = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11167

#line 213 curLineno=10600 compiledLineno=11169

            nil
        )
      end
#line 213 curLineno=10600 compiledLineno=11174

      begin 
#line 213 curLineno=10600 compiledLineno=11177

        #execFunc
#line 213 curLineno=10600 compiledLineno=11180

#line 213 curLineno=10600 compiledLineno=11182

          def self._html_COMARKdl_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdl', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdl'] = self.method( :_html_COMARKdl_METHOD )
#line 213 curLineno=10600 compiledLineno=11186

          #execFunc(funcname=define)
        @_html_COMARKdl = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11191

#line 213 curLineno=10600 compiledLineno=11193

#line 213 curLineno=10600 compiledLineno=11195

#line 213 curLineno=10600 compiledLineno=11197

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=10600 compiledLineno=11200

#line 213 curLineno=10600 compiledLineno=11202

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=10600 compiledLineno=11206

#line 213 curLineno=10600 compiledLineno=11208

                    :"dl"
                ]
                             ))
        )
      end
#line 213 curLineno=10600 compiledLineno=11215

      begin 
#line 213 curLineno=10600 compiledLineno=11218

        #execFunc
#line 213 curLineno=10600 compiledLineno=11221

#line 213 curLineno=10600 compiledLineno=11223

          def self._html_COMARKdt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdt'] = self.method( :_html_COMARKdt_METHOD )
#line 213 curLineno=10600 compiledLineno=11227

          #execFunc(funcname=define)
        @_html_COMARKdt = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11232

#line 213 curLineno=10600 compiledLineno=11234

            nil
        )
      end
#line 213 curLineno=10600 compiledLineno=11239

      begin 
#line 213 curLineno=10600 compiledLineno=11242

        #execFunc
#line 213 curLineno=10600 compiledLineno=11245

#line 213 curLineno=10600 compiledLineno=11247

          def self._html_COMARKdt_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdt', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdt'] = self.method( :_html_COMARKdt_METHOD )
#line 213 curLineno=10600 compiledLineno=11251

          #execFunc(funcname=define)
        @_html_COMARKdt = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11256

#line 213 curLineno=10600 compiledLineno=11258

#line 213 curLineno=10600 compiledLineno=11260

#line 213 curLineno=10600 compiledLineno=11262

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=10600 compiledLineno=11265

#line 213 curLineno=10600 compiledLineno=11267

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=10600 compiledLineno=11271

#line 213 curLineno=10600 compiledLineno=11273

                    :"dt"
                ]
                             ))
        )
      end
#line 213 curLineno=10600 compiledLineno=11280

      begin 
#line 213 curLineno=10600 compiledLineno=11283

        #execFunc
#line 213 curLineno=10600 compiledLineno=11286

#line 213 curLineno=10600 compiledLineno=11288

          def self._html_COMARKdd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdd'] = self.method( :_html_COMARKdd_METHOD )
#line 213 curLineno=10600 compiledLineno=11292

          #execFunc(funcname=define)
        @_html_COMARKdd = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11297

#line 213 curLineno=10600 compiledLineno=11299

            nil
        )
      end
#line 213 curLineno=10600 compiledLineno=11304

      begin 
#line 213 curLineno=10600 compiledLineno=11307

        #execFunc
#line 213 curLineno=10600 compiledLineno=11310

#line 213 curLineno=10600 compiledLineno=11312

          def self._html_COMARKdd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKdd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKdd'] = self.method( :_html_COMARKdd_METHOD )
#line 213 curLineno=10600 compiledLineno=11316

          #execFunc(funcname=define)
        @_html_COMARKdd = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11321

#line 213 curLineno=10600 compiledLineno=11323

#line 213 curLineno=10600 compiledLineno=11325

#line 213 curLineno=10600 compiledLineno=11327

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=10600 compiledLineno=11330

#line 213 curLineno=10600 compiledLineno=11332

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=10600 compiledLineno=11336

#line 213 curLineno=10600 compiledLineno=11338

                    :"dd"
                ]
                             ))
        )
      end
#line 213 curLineno=10600 compiledLineno=11345

      begin 
#line 213 curLineno=10600 compiledLineno=11348

        #execFunc
#line 213 curLineno=10600 compiledLineno=11351

#line 213 curLineno=10600 compiledLineno=11353

          def self._html_COMARKol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKol'] = self.method( :_html_COMARKol_METHOD )
#line 213 curLineno=10600 compiledLineno=11357

          #execFunc(funcname=define)
        @_html_COMARKol = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11362

#line 213 curLineno=10600 compiledLineno=11364

            nil
        )
      end
#line 213 curLineno=10600 compiledLineno=11369

      begin 
#line 213 curLineno=10600 compiledLineno=11372

        #execFunc
#line 213 curLineno=10600 compiledLineno=11375

#line 213 curLineno=10600 compiledLineno=11377

          def self._html_COMARKol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKol'] = self.method( :_html_COMARKol_METHOD )
#line 213 curLineno=10600 compiledLineno=11381

          #execFunc(funcname=define)
        @_html_COMARKol = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11386

#line 213 curLineno=10600 compiledLineno=11388

#line 213 curLineno=10600 compiledLineno=11390

#line 213 curLineno=10600 compiledLineno=11392

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=10600 compiledLineno=11395

#line 213 curLineno=10600 compiledLineno=11397

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=10600 compiledLineno=11401

#line 213 curLineno=10600 compiledLineno=11403

                    :"ol"
                ]
                             ))
        )
      end
#line 213 curLineno=10600 compiledLineno=11410

      begin 
#line 213 curLineno=10600 compiledLineno=11413

        #execFunc
#line 213 curLineno=10600 compiledLineno=11416

#line 213 curLineno=10600 compiledLineno=11418

          def self._html_COMARKul_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKul', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKul'] = self.method( :_html_COMARKul_METHOD )
#line 213 curLineno=10600 compiledLineno=11422

          #execFunc(funcname=define)
        @_html_COMARKul = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11427

#line 213 curLineno=10600 compiledLineno=11429

            nil
        )
      end
#line 213 curLineno=10600 compiledLineno=11434

      begin 
#line 213 curLineno=10600 compiledLineno=11437

        #execFunc
#line 213 curLineno=10600 compiledLineno=11440

#line 213 curLineno=10600 compiledLineno=11442

          def self._html_COMARKul_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKul', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKul'] = self.method( :_html_COMARKul_METHOD )
#line 213 curLineno=10600 compiledLineno=11446

          #execFunc(funcname=define)
        @_html_COMARKul = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11451

#line 213 curLineno=10600 compiledLineno=11453

#line 213 curLineno=10600 compiledLineno=11455

#line 213 curLineno=10600 compiledLineno=11457

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=10600 compiledLineno=11460

#line 213 curLineno=10600 compiledLineno=11462

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=10600 compiledLineno=11466

#line 213 curLineno=10600 compiledLineno=11468

                    :"ul"
                ]
                             ))
        )
      end
#line 213 curLineno=10600 compiledLineno=11475

      begin 
#line 213 curLineno=10600 compiledLineno=11478

        #execFunc
#line 213 curLineno=10600 compiledLineno=11481

#line 213 curLineno=10600 compiledLineno=11483

          def self._html_COMARKli_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKli', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKli'] = self.method( :_html_COMARKli_METHOD )
#line 213 curLineno=10600 compiledLineno=11487

          #execFunc(funcname=define)
        @_html_COMARKli = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11492

#line 213 curLineno=10600 compiledLineno=11494

            nil
        )
      end
#line 213 curLineno=10600 compiledLineno=11499

      begin 
#line 213 curLineno=10600 compiledLineno=11502

        #execFunc
#line 213 curLineno=10600 compiledLineno=11505

#line 213 curLineno=10600 compiledLineno=11507

          def self._html_COMARKli_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKli', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKli'] = self.method( :_html_COMARKli_METHOD )
#line 213 curLineno=10600 compiledLineno=11511

          #execFunc(funcname=define)
        @_html_COMARKli = 
        trampCall(
#line 213 curLineno=10600 compiledLineno=11516

#line 213 curLineno=10600 compiledLineno=11518

#line 213 curLineno=10600 compiledLineno=11520

#line 213 curLineno=10600 compiledLineno=11522

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 213 curLineno=10600 compiledLineno=11525

#line 213 curLineno=10600 compiledLineno=11527

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 213 curLineno=10600 compiledLineno=11531

#line 213 curLineno=10600 compiledLineno=11533

                    :"li"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 216 curLineno=10750 compiledLineno=11542

trampCall( 
#line 216 curLineno=10750 compiledLineno=11545

  begin 
#line 216 curLineno=10750 compiledLineno=11548

    #makeBegin
#line 216 curLineno=10750 compiledLineno=11551

#line 216 curLineno=10750 compiledLineno=11553

      begin 
#line 216 curLineno=10750 compiledLineno=11556

        #execFunc
#line 216 curLineno=10750 compiledLineno=11559

#line 216 curLineno=10750 compiledLineno=11561

          def self._html_COMARKform_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKform', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKform'] = self.method( :_html_COMARKform_METHOD )
#line 216 curLineno=10750 compiledLineno=11565

          #execFunc(funcname=define)
        @_html_COMARKform = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11570

#line 216 curLineno=10750 compiledLineno=11572

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=11577

      begin 
#line 216 curLineno=10750 compiledLineno=11580

        #execFunc
#line 216 curLineno=10750 compiledLineno=11583

#line 216 curLineno=10750 compiledLineno=11585

          def self._html_COMARKform_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKform', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKform'] = self.method( :_html_COMARKform_METHOD )
#line 216 curLineno=10750 compiledLineno=11589

          #execFunc(funcname=define)
        @_html_COMARKform = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11594

#line 216 curLineno=10750 compiledLineno=11596

#line 216 curLineno=10750 compiledLineno=11598

#line 216 curLineno=10750 compiledLineno=11600

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=11603

#line 216 curLineno=10750 compiledLineno=11605

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=11609

#line 216 curLineno=10750 compiledLineno=11611

                    :"form"
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=11618

      begin 
#line 216 curLineno=10750 compiledLineno=11621

        #execFunc
#line 216 curLineno=10750 compiledLineno=11624

#line 216 curLineno=10750 compiledLineno=11626

          def self._html_COMARKlabel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlabel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlabel'] = self.method( :_html_COMARKlabel_METHOD )
#line 216 curLineno=10750 compiledLineno=11630

          #execFunc(funcname=define)
        @_html_COMARKlabel = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11635

#line 216 curLineno=10750 compiledLineno=11637

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=11642

      begin 
#line 216 curLineno=10750 compiledLineno=11645

        #execFunc
#line 216 curLineno=10750 compiledLineno=11648

#line 216 curLineno=10750 compiledLineno=11650

          def self._html_COMARKlabel_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlabel', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlabel'] = self.method( :_html_COMARKlabel_METHOD )
#line 216 curLineno=10750 compiledLineno=11654

          #execFunc(funcname=define)
        @_html_COMARKlabel = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11659

#line 216 curLineno=10750 compiledLineno=11661

#line 216 curLineno=10750 compiledLineno=11663

#line 216 curLineno=10750 compiledLineno=11665

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=11668

#line 216 curLineno=10750 compiledLineno=11670

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=11674

#line 216 curLineno=10750 compiledLineno=11676

                    :"label"
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=11683

      begin 
#line 216 curLineno=10750 compiledLineno=11686

        #execFunc
#line 216 curLineno=10750 compiledLineno=11689

#line 216 curLineno=10750 compiledLineno=11691

          def self._html_COMARKinput_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKinput', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKinput'] = self.method( :_html_COMARKinput_METHOD )
#line 216 curLineno=10750 compiledLineno=11695

          #execFunc(funcname=define)
        @_html_COMARKinput = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11700

#line 216 curLineno=10750 compiledLineno=11702

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=11707

      begin 
#line 216 curLineno=10750 compiledLineno=11710

        #execFunc
#line 216 curLineno=10750 compiledLineno=11713

#line 216 curLineno=10750 compiledLineno=11715

          def self._html_COMARKinput_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKinput', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKinput'] = self.method( :_html_COMARKinput_METHOD )
#line 216 curLineno=10750 compiledLineno=11719

          #execFunc(funcname=define)
        @_html_COMARKinput = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11724

#line 216 curLineno=10750 compiledLineno=11726

#line 216 curLineno=10750 compiledLineno=11728

#line 216 curLineno=10750 compiledLineno=11730

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=11733

#line 216 curLineno=10750 compiledLineno=11735

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=11739

#line 216 curLineno=10750 compiledLineno=11741

                    :"input"                    ,
#line 216 curLineno=10750 compiledLineno=11744

                    LispKeyword.new( "empty?" )                    ,
#line 216 curLineno=10750 compiledLineno=11747

                    true
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=11754

      begin 
#line 216 curLineno=10750 compiledLineno=11757

        #execFunc
#line 216 curLineno=10750 compiledLineno=11760

#line 216 curLineno=10750 compiledLineno=11762

          def self._html_COMARKselect_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKselect', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKselect'] = self.method( :_html_COMARKselect_METHOD )
#line 216 curLineno=10750 compiledLineno=11766

          #execFunc(funcname=define)
        @_html_COMARKselect = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11771

#line 216 curLineno=10750 compiledLineno=11773

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=11778

      begin 
#line 216 curLineno=10750 compiledLineno=11781

        #execFunc
#line 216 curLineno=10750 compiledLineno=11784

#line 216 curLineno=10750 compiledLineno=11786

          def self._html_COMARKselect_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKselect', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKselect'] = self.method( :_html_COMARKselect_METHOD )
#line 216 curLineno=10750 compiledLineno=11790

          #execFunc(funcname=define)
        @_html_COMARKselect = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11795

#line 216 curLineno=10750 compiledLineno=11797

#line 216 curLineno=10750 compiledLineno=11799

#line 216 curLineno=10750 compiledLineno=11801

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=11804

#line 216 curLineno=10750 compiledLineno=11806

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=11810

#line 216 curLineno=10750 compiledLineno=11812

                    :"select"
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=11819

      begin 
#line 216 curLineno=10750 compiledLineno=11822

        #execFunc
#line 216 curLineno=10750 compiledLineno=11825

#line 216 curLineno=10750 compiledLineno=11827

          def self._html_COMARKoptgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoptgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKoptgroup'] = self.method( :_html_COMARKoptgroup_METHOD )
#line 216 curLineno=10750 compiledLineno=11831

          #execFunc(funcname=define)
        @_html_COMARKoptgroup = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11836

#line 216 curLineno=10750 compiledLineno=11838

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=11843

      begin 
#line 216 curLineno=10750 compiledLineno=11846

        #execFunc
#line 216 curLineno=10750 compiledLineno=11849

#line 216 curLineno=10750 compiledLineno=11851

          def self._html_COMARKoptgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoptgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKoptgroup'] = self.method( :_html_COMARKoptgroup_METHOD )
#line 216 curLineno=10750 compiledLineno=11855

          #execFunc(funcname=define)
        @_html_COMARKoptgroup = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11860

#line 216 curLineno=10750 compiledLineno=11862

#line 216 curLineno=10750 compiledLineno=11864

#line 216 curLineno=10750 compiledLineno=11866

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=11869

#line 216 curLineno=10750 compiledLineno=11871

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=11875

#line 216 curLineno=10750 compiledLineno=11877

                    :"optgroup"
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=11884

      begin 
#line 216 curLineno=10750 compiledLineno=11887

        #execFunc
#line 216 curLineno=10750 compiledLineno=11890

#line 216 curLineno=10750 compiledLineno=11892

          def self._html_COMARKoption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKoption'] = self.method( :_html_COMARKoption_METHOD )
#line 216 curLineno=10750 compiledLineno=11896

          #execFunc(funcname=define)
        @_html_COMARKoption = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11901

#line 216 curLineno=10750 compiledLineno=11903

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=11908

      begin 
#line 216 curLineno=10750 compiledLineno=11911

        #execFunc
#line 216 curLineno=10750 compiledLineno=11914

#line 216 curLineno=10750 compiledLineno=11916

          def self._html_COMARKoption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKoption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKoption'] = self.method( :_html_COMARKoption_METHOD )
#line 216 curLineno=10750 compiledLineno=11920

          #execFunc(funcname=define)
        @_html_COMARKoption = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11925

#line 216 curLineno=10750 compiledLineno=11927

#line 216 curLineno=10750 compiledLineno=11929

#line 216 curLineno=10750 compiledLineno=11931

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=11934

#line 216 curLineno=10750 compiledLineno=11936

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=11940

#line 216 curLineno=10750 compiledLineno=11942

                    :"option"
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=11949

      begin 
#line 216 curLineno=10750 compiledLineno=11952

        #execFunc
#line 216 curLineno=10750 compiledLineno=11955

#line 216 curLineno=10750 compiledLineno=11957

          def self._html_COMARKtextarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtextarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtextarea'] = self.method( :_html_COMARKtextarea_METHOD )
#line 216 curLineno=10750 compiledLineno=11961

          #execFunc(funcname=define)
        @_html_COMARKtextarea = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11966

#line 216 curLineno=10750 compiledLineno=11968

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=11973

      begin 
#line 216 curLineno=10750 compiledLineno=11976

        #execFunc
#line 216 curLineno=10750 compiledLineno=11979

#line 216 curLineno=10750 compiledLineno=11981

          def self._html_COMARKtextarea_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtextarea', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtextarea'] = self.method( :_html_COMARKtextarea_METHOD )
#line 216 curLineno=10750 compiledLineno=11985

          #execFunc(funcname=define)
        @_html_COMARKtextarea = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=11990

#line 216 curLineno=10750 compiledLineno=11992

#line 216 curLineno=10750 compiledLineno=11994

#line 216 curLineno=10750 compiledLineno=11996

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=11999

#line 216 curLineno=10750 compiledLineno=12001

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=12005

#line 216 curLineno=10750 compiledLineno=12007

                    :"textarea"
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=12014

      begin 
#line 216 curLineno=10750 compiledLineno=12017

        #execFunc
#line 216 curLineno=10750 compiledLineno=12020

#line 216 curLineno=10750 compiledLineno=12022

          def self._html_COMARKfieldset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKfieldset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKfieldset'] = self.method( :_html_COMARKfieldset_METHOD )
#line 216 curLineno=10750 compiledLineno=12026

          #execFunc(funcname=define)
        @_html_COMARKfieldset = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=12031

#line 216 curLineno=10750 compiledLineno=12033

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=12038

      begin 
#line 216 curLineno=10750 compiledLineno=12041

        #execFunc
#line 216 curLineno=10750 compiledLineno=12044

#line 216 curLineno=10750 compiledLineno=12046

          def self._html_COMARKfieldset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKfieldset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKfieldset'] = self.method( :_html_COMARKfieldset_METHOD )
#line 216 curLineno=10750 compiledLineno=12050

          #execFunc(funcname=define)
        @_html_COMARKfieldset = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=12055

#line 216 curLineno=10750 compiledLineno=12057

#line 216 curLineno=10750 compiledLineno=12059

#line 216 curLineno=10750 compiledLineno=12061

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=12064

#line 216 curLineno=10750 compiledLineno=12066

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=12070

#line 216 curLineno=10750 compiledLineno=12072

                    :"fieldset"
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=12079

      begin 
#line 216 curLineno=10750 compiledLineno=12082

        #execFunc
#line 216 curLineno=10750 compiledLineno=12085

#line 216 curLineno=10750 compiledLineno=12087

          def self._html_COMARKlegend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlegend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlegend'] = self.method( :_html_COMARKlegend_METHOD )
#line 216 curLineno=10750 compiledLineno=12091

          #execFunc(funcname=define)
        @_html_COMARKlegend = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=12096

#line 216 curLineno=10750 compiledLineno=12098

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=12103

      begin 
#line 216 curLineno=10750 compiledLineno=12106

        #execFunc
#line 216 curLineno=10750 compiledLineno=12109

#line 216 curLineno=10750 compiledLineno=12111

          def self._html_COMARKlegend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKlegend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKlegend'] = self.method( :_html_COMARKlegend_METHOD )
#line 216 curLineno=10750 compiledLineno=12115

          #execFunc(funcname=define)
        @_html_COMARKlegend = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=12120

#line 216 curLineno=10750 compiledLineno=12122

#line 216 curLineno=10750 compiledLineno=12124

#line 216 curLineno=10750 compiledLineno=12126

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=12129

#line 216 curLineno=10750 compiledLineno=12131

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=12135

#line 216 curLineno=10750 compiledLineno=12137

                    :"legend"
                ]
                             ))
        )
      end
#line 216 curLineno=10750 compiledLineno=12144

      begin 
#line 216 curLineno=10750 compiledLineno=12147

        #execFunc
#line 216 curLineno=10750 compiledLineno=12150

#line 216 curLineno=10750 compiledLineno=12152

          def self._html_COMARKbutton_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbutton', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbutton'] = self.method( :_html_COMARKbutton_METHOD )
#line 216 curLineno=10750 compiledLineno=12156

          #execFunc(funcname=define)
        @_html_COMARKbutton = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=12161

#line 216 curLineno=10750 compiledLineno=12163

            nil
        )
      end
#line 216 curLineno=10750 compiledLineno=12168

      begin 
#line 216 curLineno=10750 compiledLineno=12171

        #execFunc
#line 216 curLineno=10750 compiledLineno=12174

#line 216 curLineno=10750 compiledLineno=12176

          def self._html_COMARKbutton_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbutton', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbutton'] = self.method( :_html_COMARKbutton_METHOD )
#line 216 curLineno=10750 compiledLineno=12180

          #execFunc(funcname=define)
        @_html_COMARKbutton = 
        trampCall(
#line 216 curLineno=10750 compiledLineno=12185

#line 216 curLineno=10750 compiledLineno=12187

#line 216 curLineno=10750 compiledLineno=12189

#line 216 curLineno=10750 compiledLineno=12191

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 216 curLineno=10750 compiledLineno=12194

#line 216 curLineno=10750 compiledLineno=12196

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 216 curLineno=10750 compiledLineno=12200

#line 216 curLineno=10750 compiledLineno=12202

                    :"button"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 220 curLineno=10950 compiledLineno=12211

trampCall( 
#line 220 curLineno=10950 compiledLineno=12214

  begin 
#line 220 curLineno=10950 compiledLineno=12217

    #makeBegin
#line 220 curLineno=10950 compiledLineno=12220

#line 220 curLineno=10950 compiledLineno=12222

      begin 
#line 220 curLineno=10950 compiledLineno=12225

        #execFunc
#line 220 curLineno=10950 compiledLineno=12228

#line 220 curLineno=10950 compiledLineno=12230

          def self._html_COMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtable'] = self.method( :_html_COMARKtable_METHOD )
#line 220 curLineno=10950 compiledLineno=12234

          #execFunc(funcname=define)
        @_html_COMARKtable = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12239

#line 220 curLineno=10950 compiledLineno=12241

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12246

      begin 
#line 220 curLineno=10950 compiledLineno=12249

        #execFunc
#line 220 curLineno=10950 compiledLineno=12252

#line 220 curLineno=10950 compiledLineno=12254

          def self._html_COMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtable'] = self.method( :_html_COMARKtable_METHOD )
#line 220 curLineno=10950 compiledLineno=12258

          #execFunc(funcname=define)
        @_html_COMARKtable = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12263

#line 220 curLineno=10950 compiledLineno=12265

#line 220 curLineno=10950 compiledLineno=12267

#line 220 curLineno=10950 compiledLineno=12269

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12272

#line 220 curLineno=10950 compiledLineno=12274

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12278

#line 220 curLineno=10950 compiledLineno=12280

                    :"table"
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12287

      begin 
#line 220 curLineno=10950 compiledLineno=12290

        #execFunc
#line 220 curLineno=10950 compiledLineno=12293

#line 220 curLineno=10950 compiledLineno=12295

          def self._html_COMARKcaption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcaption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcaption'] = self.method( :_html_COMARKcaption_METHOD )
#line 220 curLineno=10950 compiledLineno=12299

          #execFunc(funcname=define)
        @_html_COMARKcaption = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12304

#line 220 curLineno=10950 compiledLineno=12306

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12311

      begin 
#line 220 curLineno=10950 compiledLineno=12314

        #execFunc
#line 220 curLineno=10950 compiledLineno=12317

#line 220 curLineno=10950 compiledLineno=12319

          def self._html_COMARKcaption_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcaption', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcaption'] = self.method( :_html_COMARKcaption_METHOD )
#line 220 curLineno=10950 compiledLineno=12323

          #execFunc(funcname=define)
        @_html_COMARKcaption = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12328

#line 220 curLineno=10950 compiledLineno=12330

#line 220 curLineno=10950 compiledLineno=12332

#line 220 curLineno=10950 compiledLineno=12334

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12337

#line 220 curLineno=10950 compiledLineno=12339

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12343

#line 220 curLineno=10950 compiledLineno=12345

                    :"caption"
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12352

      begin 
#line 220 curLineno=10950 compiledLineno=12355

        #execFunc
#line 220 curLineno=10950 compiledLineno=12358

#line 220 curLineno=10950 compiledLineno=12360

          def self._html_COMARKthead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKthead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKthead'] = self.method( :_html_COMARKthead_METHOD )
#line 220 curLineno=10950 compiledLineno=12364

          #execFunc(funcname=define)
        @_html_COMARKthead = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12369

#line 220 curLineno=10950 compiledLineno=12371

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12376

      begin 
#line 220 curLineno=10950 compiledLineno=12379

        #execFunc
#line 220 curLineno=10950 compiledLineno=12382

#line 220 curLineno=10950 compiledLineno=12384

          def self._html_COMARKthead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKthead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKthead'] = self.method( :_html_COMARKthead_METHOD )
#line 220 curLineno=10950 compiledLineno=12388

          #execFunc(funcname=define)
        @_html_COMARKthead = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12393

#line 220 curLineno=10950 compiledLineno=12395

#line 220 curLineno=10950 compiledLineno=12397

#line 220 curLineno=10950 compiledLineno=12399

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12402

#line 220 curLineno=10950 compiledLineno=12404

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12408

#line 220 curLineno=10950 compiledLineno=12410

                    :"thead"
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12417

      begin 
#line 220 curLineno=10950 compiledLineno=12420

        #execFunc
#line 220 curLineno=10950 compiledLineno=12423

#line 220 curLineno=10950 compiledLineno=12425

          def self._html_COMARKtfoot_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtfoot', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtfoot'] = self.method( :_html_COMARKtfoot_METHOD )
#line 220 curLineno=10950 compiledLineno=12429

          #execFunc(funcname=define)
        @_html_COMARKtfoot = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12434

#line 220 curLineno=10950 compiledLineno=12436

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12441

      begin 
#line 220 curLineno=10950 compiledLineno=12444

        #execFunc
#line 220 curLineno=10950 compiledLineno=12447

#line 220 curLineno=10950 compiledLineno=12449

          def self._html_COMARKtfoot_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtfoot', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtfoot'] = self.method( :_html_COMARKtfoot_METHOD )
#line 220 curLineno=10950 compiledLineno=12453

          #execFunc(funcname=define)
        @_html_COMARKtfoot = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12458

#line 220 curLineno=10950 compiledLineno=12460

#line 220 curLineno=10950 compiledLineno=12462

#line 220 curLineno=10950 compiledLineno=12464

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12467

#line 220 curLineno=10950 compiledLineno=12469

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12473

#line 220 curLineno=10950 compiledLineno=12475

                    :"tfoot"
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12482

      begin 
#line 220 curLineno=10950 compiledLineno=12485

        #execFunc
#line 220 curLineno=10950 compiledLineno=12488

#line 220 curLineno=10950 compiledLineno=12490

          def self._html_COMARKtbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtbody'] = self.method( :_html_COMARKtbody_METHOD )
#line 220 curLineno=10950 compiledLineno=12494

          #execFunc(funcname=define)
        @_html_COMARKtbody = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12499

#line 220 curLineno=10950 compiledLineno=12501

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12506

      begin 
#line 220 curLineno=10950 compiledLineno=12509

        #execFunc
#line 220 curLineno=10950 compiledLineno=12512

#line 220 curLineno=10950 compiledLineno=12514

          def self._html_COMARKtbody_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtbody', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtbody'] = self.method( :_html_COMARKtbody_METHOD )
#line 220 curLineno=10950 compiledLineno=12518

          #execFunc(funcname=define)
        @_html_COMARKtbody = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12523

#line 220 curLineno=10950 compiledLineno=12525

#line 220 curLineno=10950 compiledLineno=12527

#line 220 curLineno=10950 compiledLineno=12529

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12532

#line 220 curLineno=10950 compiledLineno=12534

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12538

#line 220 curLineno=10950 compiledLineno=12540

                    :"tbody"
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12547

      begin 
#line 220 curLineno=10950 compiledLineno=12550

        #execFunc
#line 220 curLineno=10950 compiledLineno=12553

#line 220 curLineno=10950 compiledLineno=12555

          def self._html_COMARKcolgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcolgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcolgroup'] = self.method( :_html_COMARKcolgroup_METHOD )
#line 220 curLineno=10950 compiledLineno=12559

          #execFunc(funcname=define)
        @_html_COMARKcolgroup = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12564

#line 220 curLineno=10950 compiledLineno=12566

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12571

      begin 
#line 220 curLineno=10950 compiledLineno=12574

        #execFunc
#line 220 curLineno=10950 compiledLineno=12577

#line 220 curLineno=10950 compiledLineno=12579

          def self._html_COMARKcolgroup_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcolgroup', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcolgroup'] = self.method( :_html_COMARKcolgroup_METHOD )
#line 220 curLineno=10950 compiledLineno=12583

          #execFunc(funcname=define)
        @_html_COMARKcolgroup = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12588

#line 220 curLineno=10950 compiledLineno=12590

#line 220 curLineno=10950 compiledLineno=12592

#line 220 curLineno=10950 compiledLineno=12594

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12597

#line 220 curLineno=10950 compiledLineno=12599

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12603

#line 220 curLineno=10950 compiledLineno=12605

                    :"colgroup"
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12612

      begin 
#line 220 curLineno=10950 compiledLineno=12615

        #execFunc
#line 220 curLineno=10950 compiledLineno=12618

#line 220 curLineno=10950 compiledLineno=12620

          def self._html_COMARKcol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcol'] = self.method( :_html_COMARKcol_METHOD )
#line 220 curLineno=10950 compiledLineno=12624

          #execFunc(funcname=define)
        @_html_COMARKcol = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12629

#line 220 curLineno=10950 compiledLineno=12631

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12636

      begin 
#line 220 curLineno=10950 compiledLineno=12639

        #execFunc
#line 220 curLineno=10950 compiledLineno=12642

#line 220 curLineno=10950 compiledLineno=12644

          def self._html_COMARKcol_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKcol', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKcol'] = self.method( :_html_COMARKcol_METHOD )
#line 220 curLineno=10950 compiledLineno=12648

          #execFunc(funcname=define)
        @_html_COMARKcol = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12653

#line 220 curLineno=10950 compiledLineno=12655

#line 220 curLineno=10950 compiledLineno=12657

#line 220 curLineno=10950 compiledLineno=12659

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12662

#line 220 curLineno=10950 compiledLineno=12664

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12668

#line 220 curLineno=10950 compiledLineno=12670

                    :"col"                    ,
#line 220 curLineno=10950 compiledLineno=12673

                    LispKeyword.new( "empty?" )                    ,
#line 220 curLineno=10950 compiledLineno=12676

                    true
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12683

      begin 
#line 220 curLineno=10950 compiledLineno=12686

        #execFunc
#line 220 curLineno=10950 compiledLineno=12689

#line 220 curLineno=10950 compiledLineno=12691

          def self._html_COMARKtr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtr'] = self.method( :_html_COMARKtr_METHOD )
#line 220 curLineno=10950 compiledLineno=12695

          #execFunc(funcname=define)
        @_html_COMARKtr = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12700

#line 220 curLineno=10950 compiledLineno=12702

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12707

      begin 
#line 220 curLineno=10950 compiledLineno=12710

        #execFunc
#line 220 curLineno=10950 compiledLineno=12713

#line 220 curLineno=10950 compiledLineno=12715

          def self._html_COMARKtr_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtr', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtr'] = self.method( :_html_COMARKtr_METHOD )
#line 220 curLineno=10950 compiledLineno=12719

          #execFunc(funcname=define)
        @_html_COMARKtr = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12724

#line 220 curLineno=10950 compiledLineno=12726

#line 220 curLineno=10950 compiledLineno=12728

#line 220 curLineno=10950 compiledLineno=12730

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12733

#line 220 curLineno=10950 compiledLineno=12735

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12739

#line 220 curLineno=10950 compiledLineno=12741

                    :"tr"
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12748

      begin 
#line 220 curLineno=10950 compiledLineno=12751

        #execFunc
#line 220 curLineno=10950 compiledLineno=12754

#line 220 curLineno=10950 compiledLineno=12756

          def self._html_COMARKth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKth'] = self.method( :_html_COMARKth_METHOD )
#line 220 curLineno=10950 compiledLineno=12760

          #execFunc(funcname=define)
        @_html_COMARKth = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12765

#line 220 curLineno=10950 compiledLineno=12767

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12772

      begin 
#line 220 curLineno=10950 compiledLineno=12775

        #execFunc
#line 220 curLineno=10950 compiledLineno=12778

#line 220 curLineno=10950 compiledLineno=12780

          def self._html_COMARKth_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKth', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKth'] = self.method( :_html_COMARKth_METHOD )
#line 220 curLineno=10950 compiledLineno=12784

          #execFunc(funcname=define)
        @_html_COMARKth = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12789

#line 220 curLineno=10950 compiledLineno=12791

#line 220 curLineno=10950 compiledLineno=12793

#line 220 curLineno=10950 compiledLineno=12795

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12798

#line 220 curLineno=10950 compiledLineno=12800

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12804

#line 220 curLineno=10950 compiledLineno=12806

                    :"th"
                ]
                             ))
        )
      end
#line 220 curLineno=10950 compiledLineno=12813

      begin 
#line 220 curLineno=10950 compiledLineno=12816

        #execFunc
#line 220 curLineno=10950 compiledLineno=12819

#line 220 curLineno=10950 compiledLineno=12821

          def self._html_COMARKtd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtd'] = self.method( :_html_COMARKtd_METHOD )
#line 220 curLineno=10950 compiledLineno=12825

          #execFunc(funcname=define)
        @_html_COMARKtd = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12830

#line 220 curLineno=10950 compiledLineno=12832

            nil
        )
      end
#line 220 curLineno=10950 compiledLineno=12837

      begin 
#line 220 curLineno=10950 compiledLineno=12840

        #execFunc
#line 220 curLineno=10950 compiledLineno=12843

#line 220 curLineno=10950 compiledLineno=12845

          def self._html_COMARKtd_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtd', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtd'] = self.method( :_html_COMARKtd_METHOD )
#line 220 curLineno=10950 compiledLineno=12849

          #execFunc(funcname=define)
        @_html_COMARKtd = 
        trampCall(
#line 220 curLineno=10950 compiledLineno=12854

#line 220 curLineno=10950 compiledLineno=12856

#line 220 curLineno=10950 compiledLineno=12858

#line 220 curLineno=10950 compiledLineno=12860

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 220 curLineno=10950 compiledLineno=12863

#line 220 curLineno=10950 compiledLineno=12865

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 220 curLineno=10950 compiledLineno=12869

#line 220 curLineno=10950 compiledLineno=12871

                    :"td"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 224 curLineno=11150 compiledLineno=12880

trampCall( 
#line 224 curLineno=11150 compiledLineno=12883

  begin 
#line 224 curLineno=11150 compiledLineno=12886

    #makeBegin
#line 224 curLineno=11150 compiledLineno=12889

#line 224 curLineno=11150 compiledLineno=12891

      begin 
#line 224 curLineno=11150 compiledLineno=12894

        #execFunc
#line 224 curLineno=11150 compiledLineno=12897

#line 224 curLineno=11150 compiledLineno=12899

          def self._html_COMARKhead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhead'] = self.method( :_html_COMARKhead_METHOD )
#line 224 curLineno=11150 compiledLineno=12903

          #execFunc(funcname=define)
        @_html_COMARKhead = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=12908

#line 224 curLineno=11150 compiledLineno=12910

            nil
        )
      end
#line 224 curLineno=11150 compiledLineno=12915

      begin 
#line 224 curLineno=11150 compiledLineno=12918

        #execFunc
#line 224 curLineno=11150 compiledLineno=12921

#line 224 curLineno=11150 compiledLineno=12923

          def self._html_COMARKhead_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhead', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhead'] = self.method( :_html_COMARKhead_METHOD )
#line 224 curLineno=11150 compiledLineno=12927

          #execFunc(funcname=define)
        @_html_COMARKhead = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=12932

#line 224 curLineno=11150 compiledLineno=12934

#line 224 curLineno=11150 compiledLineno=12936

#line 224 curLineno=11150 compiledLineno=12938

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=11150 compiledLineno=12941

#line 224 curLineno=11150 compiledLineno=12943

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=11150 compiledLineno=12947

#line 224 curLineno=11150 compiledLineno=12949

                    :"head"
                ]
                             ))
        )
      end
#line 224 curLineno=11150 compiledLineno=12956

      begin 
#line 224 curLineno=11150 compiledLineno=12959

        #execFunc
#line 224 curLineno=11150 compiledLineno=12962

#line 224 curLineno=11150 compiledLineno=12964

          def self._html_COMARKtitle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtitle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtitle'] = self.method( :_html_COMARKtitle_METHOD )
#line 224 curLineno=11150 compiledLineno=12968

          #execFunc(funcname=define)
        @_html_COMARKtitle = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=12973

#line 224 curLineno=11150 compiledLineno=12975

            nil
        )
      end
#line 224 curLineno=11150 compiledLineno=12980

      begin 
#line 224 curLineno=11150 compiledLineno=12983

        #execFunc
#line 224 curLineno=11150 compiledLineno=12986

#line 224 curLineno=11150 compiledLineno=12988

          def self._html_COMARKtitle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKtitle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKtitle'] = self.method( :_html_COMARKtitle_METHOD )
#line 224 curLineno=11150 compiledLineno=12992

          #execFunc(funcname=define)
        @_html_COMARKtitle = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=12997

#line 224 curLineno=11150 compiledLineno=12999

#line 224 curLineno=11150 compiledLineno=13001

#line 224 curLineno=11150 compiledLineno=13003

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=11150 compiledLineno=13006

#line 224 curLineno=11150 compiledLineno=13008

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=11150 compiledLineno=13012

#line 224 curLineno=11150 compiledLineno=13014

                    :"title"
                ]
                             ))
        )
      end
#line 224 curLineno=11150 compiledLineno=13021

      begin 
#line 224 curLineno=11150 compiledLineno=13024

        #execFunc
#line 224 curLineno=11150 compiledLineno=13027

#line 224 curLineno=11150 compiledLineno=13029

          def self._html_COMARKbase_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbase', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbase'] = self.method( :_html_COMARKbase_METHOD )
#line 224 curLineno=11150 compiledLineno=13033

          #execFunc(funcname=define)
        @_html_COMARKbase = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13038

#line 224 curLineno=11150 compiledLineno=13040

            nil
        )
      end
#line 224 curLineno=11150 compiledLineno=13045

      begin 
#line 224 curLineno=11150 compiledLineno=13048

        #execFunc
#line 224 curLineno=11150 compiledLineno=13051

#line 224 curLineno=11150 compiledLineno=13053

          def self._html_COMARKbase_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKbase', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKbase'] = self.method( :_html_COMARKbase_METHOD )
#line 224 curLineno=11150 compiledLineno=13057

          #execFunc(funcname=define)
        @_html_COMARKbase = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13062

#line 224 curLineno=11150 compiledLineno=13064

#line 224 curLineno=11150 compiledLineno=13066

#line 224 curLineno=11150 compiledLineno=13068

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=11150 compiledLineno=13071

#line 224 curLineno=11150 compiledLineno=13073

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=11150 compiledLineno=13077

#line 224 curLineno=11150 compiledLineno=13079

                    :"base"                    ,
#line 224 curLineno=11150 compiledLineno=13082

                    LispKeyword.new( "empty?" )                    ,
#line 224 curLineno=11150 compiledLineno=13085

                    true
                ]
                             ))
        )
      end
#line 224 curLineno=11150 compiledLineno=13092

      begin 
#line 224 curLineno=11150 compiledLineno=13095

        #execFunc
#line 224 curLineno=11150 compiledLineno=13098

#line 224 curLineno=11150 compiledLineno=13100

          def self._html_COMARKmeta_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmeta', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKmeta'] = self.method( :_html_COMARKmeta_METHOD )
#line 224 curLineno=11150 compiledLineno=13104

          #execFunc(funcname=define)
        @_html_COMARKmeta = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13109

#line 224 curLineno=11150 compiledLineno=13111

            nil
        )
      end
#line 224 curLineno=11150 compiledLineno=13116

      begin 
#line 224 curLineno=11150 compiledLineno=13119

        #execFunc
#line 224 curLineno=11150 compiledLineno=13122

#line 224 curLineno=11150 compiledLineno=13124

          def self._html_COMARKmeta_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKmeta', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKmeta'] = self.method( :_html_COMARKmeta_METHOD )
#line 224 curLineno=11150 compiledLineno=13128

          #execFunc(funcname=define)
        @_html_COMARKmeta = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13133

#line 224 curLineno=11150 compiledLineno=13135

#line 224 curLineno=11150 compiledLineno=13137

#line 224 curLineno=11150 compiledLineno=13139

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=11150 compiledLineno=13142

#line 224 curLineno=11150 compiledLineno=13144

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=11150 compiledLineno=13148

#line 224 curLineno=11150 compiledLineno=13150

                    :"meta"                    ,
#line 224 curLineno=11150 compiledLineno=13153

                    LispKeyword.new( "empty?" )                    ,
#line 224 curLineno=11150 compiledLineno=13156

                    true
                ]
                             ))
        )
      end
#line 224 curLineno=11150 compiledLineno=13163

      begin 
#line 224 curLineno=11150 compiledLineno=13166

        #execFunc
#line 224 curLineno=11150 compiledLineno=13169

#line 224 curLineno=11150 compiledLineno=13171

          def self._html_COMARKstyle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstyle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKstyle'] = self.method( :_html_COMARKstyle_METHOD )
#line 224 curLineno=11150 compiledLineno=13175

          #execFunc(funcname=define)
        @_html_COMARKstyle = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13180

#line 224 curLineno=11150 compiledLineno=13182

            nil
        )
      end
#line 224 curLineno=11150 compiledLineno=13187

      begin 
#line 224 curLineno=11150 compiledLineno=13190

        #execFunc
#line 224 curLineno=11150 compiledLineno=13193

#line 224 curLineno=11150 compiledLineno=13195

          def self._html_COMARKstyle_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKstyle', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKstyle'] = self.method( :_html_COMARKstyle_METHOD )
#line 224 curLineno=11150 compiledLineno=13199

          #execFunc(funcname=define)
        @_html_COMARKstyle = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13204

#line 224 curLineno=11150 compiledLineno=13206

#line 224 curLineno=11150 compiledLineno=13208

#line 224 curLineno=11150 compiledLineno=13210

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=11150 compiledLineno=13213

#line 224 curLineno=11150 compiledLineno=13215

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=11150 compiledLineno=13219

#line 224 curLineno=11150 compiledLineno=13221

                    :"style"
                ]
                             ))
        )
      end
#line 224 curLineno=11150 compiledLineno=13228

      begin 
#line 224 curLineno=11150 compiledLineno=13231

        #execFunc
#line 224 curLineno=11150 compiledLineno=13234

#line 224 curLineno=11150 compiledLineno=13236

          def self._html_COMARKscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKscript'] = self.method( :_html_COMARKscript_METHOD )
#line 224 curLineno=11150 compiledLineno=13240

          #execFunc(funcname=define)
        @_html_COMARKscript = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13245

#line 224 curLineno=11150 compiledLineno=13247

            nil
        )
      end
#line 224 curLineno=11150 compiledLineno=13252

      begin 
#line 224 curLineno=11150 compiledLineno=13255

        #execFunc
#line 224 curLineno=11150 compiledLineno=13258

#line 224 curLineno=11150 compiledLineno=13260

          def self._html_COMARKscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKscript'] = self.method( :_html_COMARKscript_METHOD )
#line 224 curLineno=11150 compiledLineno=13264

          #execFunc(funcname=define)
        @_html_COMARKscript = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13269

#line 224 curLineno=11150 compiledLineno=13271

#line 224 curLineno=11150 compiledLineno=13273

#line 224 curLineno=11150 compiledLineno=13275

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=11150 compiledLineno=13278

#line 224 curLineno=11150 compiledLineno=13280

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=11150 compiledLineno=13284

#line 224 curLineno=11150 compiledLineno=13286

                    :"script"
                ]
                             ))
        )
      end
#line 224 curLineno=11150 compiledLineno=13293

      begin 
#line 224 curLineno=11150 compiledLineno=13296

        #execFunc
#line 224 curLineno=11150 compiledLineno=13299

#line 224 curLineno=11150 compiledLineno=13301

          def self._html_COMARKnoscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKnoscript'] = self.method( :_html_COMARKnoscript_METHOD )
#line 224 curLineno=11150 compiledLineno=13305

          #execFunc(funcname=define)
        @_html_COMARKnoscript = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13310

#line 224 curLineno=11150 compiledLineno=13312

            nil
        )
      end
#line 224 curLineno=11150 compiledLineno=13317

      begin 
#line 224 curLineno=11150 compiledLineno=13320

        #execFunc
#line 224 curLineno=11150 compiledLineno=13323

#line 224 curLineno=11150 compiledLineno=13325

          def self._html_COMARKnoscript_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoscript', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKnoscript'] = self.method( :_html_COMARKnoscript_METHOD )
#line 224 curLineno=11150 compiledLineno=13329

          #execFunc(funcname=define)
        @_html_COMARKnoscript = 
        trampCall(
#line 224 curLineno=11150 compiledLineno=13334

#line 224 curLineno=11150 compiledLineno=13336

#line 224 curLineno=11150 compiledLineno=13338

#line 224 curLineno=11150 compiledLineno=13340

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 224 curLineno=11150 compiledLineno=13343

#line 224 curLineno=11150 compiledLineno=13345

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 224 curLineno=11150 compiledLineno=13349

#line 224 curLineno=11150 compiledLineno=13351

                    :"noscript"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 228 curLineno=11350 compiledLineno=13360

trampCall( 
#line 228 curLineno=11350 compiledLineno=13363

  begin 
#line 228 curLineno=11350 compiledLineno=13366

    #makeBegin
#line 228 curLineno=11350 compiledLineno=13369

#line 228 curLineno=11350 compiledLineno=13371

      begin 
#line 228 curLineno=11350 compiledLineno=13374

        #execFunc
#line 228 curLineno=11350 compiledLineno=13377

#line 228 curLineno=11350 compiledLineno=13379

          def self._html_COMARKhtml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhtml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhtml'] = self.method( :_html_COMARKhtml_METHOD )
#line 228 curLineno=11350 compiledLineno=13383

          #execFunc(funcname=define)
        @_html_COMARKhtml = 
        trampCall(
#line 228 curLineno=11350 compiledLineno=13388

#line 228 curLineno=11350 compiledLineno=13390

            nil
        )
      end
#line 228 curLineno=11350 compiledLineno=13395

      begin 
#line 228 curLineno=11350 compiledLineno=13398

        #execFunc
#line 228 curLineno=11350 compiledLineno=13401

#line 228 curLineno=11350 compiledLineno=13403

          def self._html_COMARKhtml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKhtml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKhtml'] = self.method( :_html_COMARKhtml_METHOD )
#line 228 curLineno=11350 compiledLineno=13407

          #execFunc(funcname=define)
        @_html_COMARKhtml = 
        trampCall(
#line 228 curLineno=11350 compiledLineno=13412

#line 228 curLineno=11350 compiledLineno=13414

#line 228 curLineno=11350 compiledLineno=13416

#line 228 curLineno=11350 compiledLineno=13418

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 228 curLineno=11350 compiledLineno=13421

#line 228 curLineno=11350 compiledLineno=13423

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 228 curLineno=11350 compiledLineno=13427

#line 228 curLineno=11350 compiledLineno=13429

                    :"html"
                ]
                             ))
        )
      end
  end
 )
#--------------------

#line 231 curLineno=11500 compiledLineno=13438

trampCall( 
#line 231 curLineno=11500 compiledLineno=13441

  begin 
#line 231 curLineno=11500 compiledLineno=13444

    #makeBegin
#line 231 curLineno=11500 compiledLineno=13447

#line 231 curLineno=11500 compiledLineno=13449

      begin 
#line 231 curLineno=11500 compiledLineno=13452

        #execFunc
#line 231 curLineno=11500 compiledLineno=13455

#line 231 curLineno=11500 compiledLineno=13457

          def self._html_COMARKframeset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframeset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKframeset'] = self.method( :_html_COMARKframeset_METHOD )
#line 231 curLineno=11500 compiledLineno=13461

          #execFunc(funcname=define)
        @_html_COMARKframeset = 
        trampCall(
#line 231 curLineno=11500 compiledLineno=13466

#line 231 curLineno=11500 compiledLineno=13468

            nil
        )
      end
#line 231 curLineno=11500 compiledLineno=13473

      begin 
#line 231 curLineno=11500 compiledLineno=13476

        #execFunc
#line 231 curLineno=11500 compiledLineno=13479

#line 231 curLineno=11500 compiledLineno=13481

          def self._html_COMARKframeset_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframeset', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKframeset'] = self.method( :_html_COMARKframeset_METHOD )
#line 231 curLineno=11500 compiledLineno=13485

          #execFunc(funcname=define)
        @_html_COMARKframeset = 
        trampCall(
#line 231 curLineno=11500 compiledLineno=13490

#line 231 curLineno=11500 compiledLineno=13492

#line 231 curLineno=11500 compiledLineno=13494

#line 231 curLineno=11500 compiledLineno=13496

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 231 curLineno=11500 compiledLineno=13499

#line 231 curLineno=11500 compiledLineno=13501

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 231 curLineno=11500 compiledLineno=13505

#line 231 curLineno=11500 compiledLineno=13507

                    :"frameset"
                ]
                             ))
        )
      end
#line 231 curLineno=11500 compiledLineno=13514

      begin 
#line 231 curLineno=11500 compiledLineno=13517

        #execFunc
#line 231 curLineno=11500 compiledLineno=13520

#line 231 curLineno=11500 compiledLineno=13522

          def self._html_COMARKframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKframe'] = self.method( :_html_COMARKframe_METHOD )
#line 231 curLineno=11500 compiledLineno=13526

          #execFunc(funcname=define)
        @_html_COMARKframe = 
        trampCall(
#line 231 curLineno=11500 compiledLineno=13531

#line 231 curLineno=11500 compiledLineno=13533

            nil
        )
      end
#line 231 curLineno=11500 compiledLineno=13538

      begin 
#line 231 curLineno=11500 compiledLineno=13541

        #execFunc
#line 231 curLineno=11500 compiledLineno=13544

#line 231 curLineno=11500 compiledLineno=13546

          def self._html_COMARKframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKframe'] = self.method( :_html_COMARKframe_METHOD )
#line 231 curLineno=11500 compiledLineno=13550

          #execFunc(funcname=define)
        @_html_COMARKframe = 
        trampCall(
#line 231 curLineno=11500 compiledLineno=13555

#line 231 curLineno=11500 compiledLineno=13557

#line 231 curLineno=11500 compiledLineno=13559

#line 231 curLineno=11500 compiledLineno=13561

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 231 curLineno=11500 compiledLineno=13564

#line 231 curLineno=11500 compiledLineno=13566

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 231 curLineno=11500 compiledLineno=13570

#line 231 curLineno=11500 compiledLineno=13572

                    :"frame"
                ]
                             ))
        )
      end
#line 231 curLineno=11500 compiledLineno=13579

      begin 
#line 231 curLineno=11500 compiledLineno=13582

        #execFunc
#line 231 curLineno=11500 compiledLineno=13585

#line 231 curLineno=11500 compiledLineno=13587

          def self._html_COMARKnoframes_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoframes', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKnoframes'] = self.method( :_html_COMARKnoframes_METHOD )
#line 231 curLineno=11500 compiledLineno=13591

          #execFunc(funcname=define)
        @_html_COMARKnoframes = 
        trampCall(
#line 231 curLineno=11500 compiledLineno=13596

#line 231 curLineno=11500 compiledLineno=13598

            nil
        )
      end
#line 231 curLineno=11500 compiledLineno=13603

      begin 
#line 231 curLineno=11500 compiledLineno=13606

        #execFunc
#line 231 curLineno=11500 compiledLineno=13609

#line 231 curLineno=11500 compiledLineno=13611

          def self._html_COMARKnoframes_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKnoframes', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKnoframes'] = self.method( :_html_COMARKnoframes_METHOD )
#line 231 curLineno=11500 compiledLineno=13615

          #execFunc(funcname=define)
        @_html_COMARKnoframes = 
        trampCall(
#line 231 curLineno=11500 compiledLineno=13620

#line 231 curLineno=11500 compiledLineno=13622

#line 231 curLineno=11500 compiledLineno=13624

#line 231 curLineno=11500 compiledLineno=13626

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 231 curLineno=11500 compiledLineno=13629

#line 231 curLineno=11500 compiledLineno=13631

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 231 curLineno=11500 compiledLineno=13635

#line 231 curLineno=11500 compiledLineno=13637

                    :"noframes"
                ]
                             ))
        )
      end
#line 231 curLineno=11500 compiledLineno=13644

      begin 
#line 231 curLineno=11500 compiledLineno=13647

        #execFunc
#line 231 curLineno=11500 compiledLineno=13650

#line 231 curLineno=11500 compiledLineno=13652

          def self._html_COMARKiframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKiframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKiframe'] = self.method( :_html_COMARKiframe_METHOD )
#line 231 curLineno=11500 compiledLineno=13656

          #execFunc(funcname=define)
        @_html_COMARKiframe = 
        trampCall(
#line 231 curLineno=11500 compiledLineno=13661

#line 231 curLineno=11500 compiledLineno=13663

            nil
        )
      end
#line 231 curLineno=11500 compiledLineno=13668

      begin 
#line 231 curLineno=11500 compiledLineno=13671

        #execFunc
#line 231 curLineno=11500 compiledLineno=13674

#line 231 curLineno=11500 compiledLineno=13676

          def self._html_COMARKiframe_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_html_COMARKiframe', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
          @global_lisp_binding['_html_COMARKiframe'] = self.method( :_html_COMARKiframe_METHOD )
#line 231 curLineno=11500 compiledLineno=13680

          #execFunc(funcname=define)
        @_html_COMARKiframe = 
        trampCall(
#line 231 curLineno=11500 compiledLineno=13685

#line 231 curLineno=11500 compiledLineno=13687

#line 231 curLineno=11500 compiledLineno=13689

#line 231 curLineno=11500 compiledLineno=13691

                trampCall( self._make_MIMARKhtml_MIMARKelement_METHOD(  'make-html-element',
#line 231 curLineno=11500 compiledLineno=13694

#line 231 curLineno=11500 compiledLineno=13696

                    trampCall(@_make_MIMARKhtml_MIMARKelement)                  ,
                [
#line 231 curLineno=11500 compiledLineno=13700

#line 231 curLineno=11500 compiledLineno=13702

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
