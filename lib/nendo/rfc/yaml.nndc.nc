#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 




































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 37 curLineno=1800 compiledLineno=1800

trampCall( 
#line 37 curLineno=1800 compiledLineno=1803

#line 37 curLineno=1800 compiledLineno=1805

    delayCall( '_require',  'require',
#line 37 curLineno=1800 compiledLineno=1808

#line 37 curLineno=1800 compiledLineno=1810

        trampCall(@_require)      ,
    [
#line 37 curLineno=1800 compiledLineno=1814

#line 37 curLineno=1800 compiledLineno=1816

        "yaml"
    ]
                 )
 )
#--------------------





























#line 38 curLineno=1850 compiledLineno=1850

trampCall( 
#line 38 curLineno=1850 compiledLineno=1853

#line 38 curLineno=1850 compiledLineno=1855

    delayCall( '_load',  'load',
#line 38 curLineno=1850 compiledLineno=1858

#line 38 curLineno=1850 compiledLineno=1860

        trampCall(@_load)      ,
    [
#line 38 curLineno=1850 compiledLineno=1864

#line 38 curLineno=1850 compiledLineno=1866

        "rfc/json"
    ]
                 )
 )
#--------------------





































































































































































































































#line 43 curLineno=2100 compiledLineno=2100

trampCall( 
#line 43 curLineno=2100 compiledLineno=2103

  begin 
#line 43 curLineno=2100 compiledLineno=2106

    #execFunc
#line 43 curLineno=2100 compiledLineno=2109

#line 43 curLineno=2100 compiledLineno=2111

      def self._parse_MIMARKyaml_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_parse_MIMARKyaml_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_parse_MIMARKyaml_MIMARKstring'] = self.method( :_parse_MIMARKyaml_MIMARKstring_METHOD )
#line 43 curLineno=2100 compiledLineno=2115

      #execFunc(funcname=define)
    @_parse_MIMARKyaml_MIMARKstring = 
    trampCall(
#line 43 curLineno=2100 compiledLineno=2120

#line 43 curLineno=2100 compiledLineno=2122

#line 43 curLineno=2100 compiledLineno=2124

          Proc.new { |_str| 
#line 43 curLineno=2100 compiledLineno=2127

#line 43 curLineno=2100 compiledLineno=2129

#line 43 curLineno=2100 compiledLineno=2131

                delayCall( '__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist',  '%json:hash-table->alist',
#line 43 curLineno=2100 compiledLineno=2134

#line 43 curLineno=2100 compiledLineno=2136

                    trampCall(@__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist)                  ,
                [
#line 43 curLineno=2100 compiledLineno=2140

#line 43 curLineno=2100 compiledLineno=2142

#line 43 curLineno=2100 compiledLineno=2144

                      trampCall(YAML).load(
#line 43 curLineno=2100 compiledLineno=2147

#line 43 curLineno=2100 compiledLineno=2149

#line 43 curLineno=2100 compiledLineno=2151

                            trampCall(_str)
                        )
                ]
                             )
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

      def self._parse_MIMARKyaml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_parse_MIMARKyaml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_parse_MIMARKyaml'] = self.method( :_parse_MIMARKyaml_METHOD )
#line 48 curLineno=2350 compiledLineno=2365

      #execFunc(funcname=define)
    @_parse_MIMARKyaml = 
    trampCall(
#line 48 curLineno=2350 compiledLineno=2370

#line 48 curLineno=2350 compiledLineno=2372

#line 48 curLineno=2350 compiledLineno=2374

          Proc.new { |*__rest__| _io = __rest__[0] ;  
#line 48 curLineno=2350 compiledLineno=2377

#line 48 curLineno=2350 compiledLineno=2379

              begin
#line 48 curLineno=2350 compiledLineno=2382

                #makeLet
#line 48 curLineno=2350 compiledLineno=2385

                ___lambda = lambda { |__| 
#line 48 curLineno=2350 compiledLineno=2388

#line 48 curLineno=2350 compiledLineno=2390

                    begin
#line 48 curLineno=2350 compiledLineno=2393

                      #makeLet
#line 48 curLineno=2350 compiledLineno=2396

                      ___lambda = lambda { |_str| 
#line 48 curLineno=2350 compiledLineno=2399

#line 48 curLineno=2350 compiledLineno=2401

#line 48 curLineno=2350 compiledLineno=2403

                            delayCall( '_parse_MIMARKyaml_MIMARKstring',  'parse-yaml-string',
#line 48 curLineno=2350 compiledLineno=2406

#line 48 curLineno=2350 compiledLineno=2408

                                trampCall(@_parse_MIMARKyaml_MIMARKstring)                              ,
                            [
#line 48 curLineno=2350 compiledLineno=2412

#line 48 curLineno=2350 compiledLineno=2414

#line 48 curLineno=2350 compiledLineno=2416

                                  trampCall(_str)
                            ]
                                         )
                      } ; ___lambda.call(
#line 48 curLineno=2350 compiledLineno=2422

#line 48 curLineno=2350 compiledLineno=2424

#line 48 curLineno=2350 compiledLineno=2426

                            trampCall(__).read(
#line 48 curLineno=2350 compiledLineno=2429

                              )
                                 )
                    end
                } ; ___lambda.call(
#line 48 curLineno=2350 compiledLineno=2435

#line 48 curLineno=2350 compiledLineno=2437

#line 48 curLineno=2350 compiledLineno=2439

                      begin
#line 48 curLineno=2350 compiledLineno=2442

                        #makeLet
#line 48 curLineno=2350 compiledLineno=2445

                        ___lambda = lambda { |___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110172| 
#line 48 curLineno=2350 compiledLineno=2448

#line 48 curLineno=2350 compiledLineno=2450

                            if ( 
#line 48 curLineno=2350 compiledLineno=2453

#line 48 curLineno=2350 compiledLineno=2455

                                _null_QUMARK(
#line 48 curLineno=2350 compiledLineno=2458

#line 48 curLineno=2350 compiledLineno=2460

                                    trampCall(___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110172)
                                )
                             ) then
#line 48 curLineno=2350 compiledLineno=2465

#line 48 curLineno=2350 compiledLineno=2467

                                trampCall(STDIN)
                            else
#line 48 curLineno=2350 compiledLineno=2471

#line 48 curLineno=2350 compiledLineno=2473

#line 48 curLineno=2350 compiledLineno=2475

                                  delayCall( '_car',  'car',
#line 48 curLineno=2350 compiledLineno=2478

#line 48 curLineno=2350 compiledLineno=2480

                                      trampCall(@_car)                                    ,
                                  [
#line 48 curLineno=2350 compiledLineno=2484

#line 48 curLineno=2350 compiledLineno=2486

#line 48 curLineno=2350 compiledLineno=2488

                                        trampCall(___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110172)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
#line 48 curLineno=2350 compiledLineno=2495

#line 48 curLineno=2350 compiledLineno=2497

#line 48 curLineno=2350 compiledLineno=2499

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

















































































































































































































































#line 56 curLineno=2750 compiledLineno=2750

trampCall( 
#line 56 curLineno=2750 compiledLineno=2753

  begin 
#line 56 curLineno=2750 compiledLineno=2756

    #execFunc
#line 56 curLineno=2750 compiledLineno=2759

#line 56 curLineno=2750 compiledLineno=2761

      def self._construct_MIMARKyaml_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_construct_MIMARKyaml_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_construct_MIMARKyaml_MIMARKstring'] = self.method( :_construct_MIMARKyaml_MIMARKstring_METHOD )
#line 56 curLineno=2750 compiledLineno=2765

      #execFunc(funcname=define)
    @_construct_MIMARKyaml_MIMARKstring = 
    trampCall(
#line 56 curLineno=2750 compiledLineno=2770

#line 56 curLineno=2750 compiledLineno=2772

#line 56 curLineno=2750 compiledLineno=2774

          Proc.new { |_obj| 
#line 56 curLineno=2750 compiledLineno=2777

#line 56 curLineno=2750 compiledLineno=2779

              trampCall(YAML).dump(
#line 56 curLineno=2750 compiledLineno=2782

#line 56 curLineno=2750 compiledLineno=2784

#line 56 curLineno=2750 compiledLineno=2786

#line 56 curLineno=2750 compiledLineno=2788

                      trampCall( self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD(  '%json:alist->hash-table',
#line 56 curLineno=2750 compiledLineno=2791

#line 56 curLineno=2750 compiledLineno=2793

                          trampCall(@__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable)                        ,
                      [
#line 56 curLineno=2750 compiledLineno=2797

#line 56 curLineno=2750 compiledLineno=2799

#line 56 curLineno=2750 compiledLineno=2801

                            trampCall(_obj)
                      ]
                                   ))
                )
          }
    )
  end
 )
#--------------------


























































































#line 59 curLineno=2900 compiledLineno=2900

trampCall( 
#line 59 curLineno=2900 compiledLineno=2903

  begin 
#line 59 curLineno=2900 compiledLineno=2906

    #execFunc
#line 59 curLineno=2900 compiledLineno=2909

#line 59 curLineno=2900 compiledLineno=2911

      def self._construct_MIMARKyaml_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_construct_MIMARKyaml', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_construct_MIMARKyaml'] = self.method( :_construct_MIMARKyaml_METHOD )
#line 59 curLineno=2900 compiledLineno=2915

      #execFunc(funcname=define)
    @_construct_MIMARKyaml = 
    trampCall(
#line 59 curLineno=2900 compiledLineno=2920

#line 59 curLineno=2900 compiledLineno=2922

#line 59 curLineno=2900 compiledLineno=2924

          Proc.new { |_obj,*__rest__| _io = __rest__[0] ;  
#line 59 curLineno=2900 compiledLineno=2927

#line 59 curLineno=2900 compiledLineno=2929

              begin
#line 59 curLineno=2900 compiledLineno=2932

                #makeLet
#line 59 curLineno=2900 compiledLineno=2935

                ___lambda = lambda { |__| 
#line 59 curLineno=2900 compiledLineno=2938

#line 59 curLineno=2900 compiledLineno=2940

                    trampCall(__).print(
#line 59 curLineno=2900 compiledLineno=2943

#line 59 curLineno=2900 compiledLineno=2945

#line 59 curLineno=2900 compiledLineno=2947

#line 59 curLineno=2900 compiledLineno=2949

                            trampCall( self._construct_MIMARKyaml_MIMARKstring_METHOD(  'construct-yaml-string',
#line 59 curLineno=2900 compiledLineno=2952

#line 59 curLineno=2900 compiledLineno=2954

                                trampCall(@_construct_MIMARKyaml_MIMARKstring)                              ,
                            [
#line 59 curLineno=2900 compiledLineno=2958

#line 59 curLineno=2900 compiledLineno=2960

#line 59 curLineno=2900 compiledLineno=2962

                                  trampCall(_obj)
                            ]
                                         ))
                      )
                } ; ___lambda.call(
#line 59 curLineno=2900 compiledLineno=2969

#line 59 curLineno=2900 compiledLineno=2971

#line 59 curLineno=2900 compiledLineno=2973

                      begin
#line 59 curLineno=2900 compiledLineno=2976

                        #makeLet
#line 59 curLineno=2900 compiledLineno=2979

                        ___lambda = lambda { |___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110173| 
#line 59 curLineno=2900 compiledLineno=2982

#line 59 curLineno=2900 compiledLineno=2984

                            if ( 
#line 59 curLineno=2900 compiledLineno=2987

#line 59 curLineno=2900 compiledLineno=2989

                                _null_QUMARK(
#line 59 curLineno=2900 compiledLineno=2992

#line 59 curLineno=2900 compiledLineno=2994

                                    trampCall(___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110173)
                                )
                             ) then
#line 59 curLineno=2900 compiledLineno=2999

#line 59 curLineno=2900 compiledLineno=3001

                                trampCall(STDOUT)
                            else
#line 59 curLineno=2900 compiledLineno=3005

#line 59 curLineno=2900 compiledLineno=3007

#line 59 curLineno=2900 compiledLineno=3009

                                  delayCall( '_car',  'car',
#line 59 curLineno=2900 compiledLineno=3012

#line 59 curLineno=2900 compiledLineno=3014

                                      trampCall(@_car)                                    ,
                                  [
#line 59 curLineno=2900 compiledLineno=3018

#line 59 curLineno=2900 compiledLineno=3020

#line 59 curLineno=2900 compiledLineno=3022

                                        trampCall(___gensym__fe1de47a64bc2c3a16f7b3aea3a8f625d4ab36ee_110173)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
#line 59 curLineno=2900 compiledLineno=3029

#line 59 curLineno=2900 compiledLineno=3031

#line 59 curLineno=2900 compiledLineno=3033

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
