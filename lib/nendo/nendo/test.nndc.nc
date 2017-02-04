#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 36 curLineno=1750 compiledLineno=1750

trampCall( 
#line 36 curLineno=1750 compiledLineno=1753

  begin 
#line 36 curLineno=1750 compiledLineno=1756

    #execFunc
#line 36 curLineno=1750 compiledLineno=1759

#line 36 curLineno=1750 compiledLineno=1761

      def self._test_MIMARKerror_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKerror_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKerror_QUMARK'] = self.method( :_test_MIMARKerror_QUMARK_METHOD )
#line 36 curLineno=1750 compiledLineno=1765

      #execFunc(funcname=define)
    @_test_MIMARKerror_QUMARK = 
    trampCall(
#line 36 curLineno=1750 compiledLineno=1770

#line 36 curLineno=1750 compiledLineno=1772

#line 36 curLineno=1750 compiledLineno=1774

          Proc.new { |_obj| 
#line 36 curLineno=1750 compiledLineno=1777

#line 36 curLineno=1750 compiledLineno=1779

              trampCall(_obj).is_a?(
#line 36 curLineno=1750 compiledLineno=1782

#line 36 curLineno=1750 compiledLineno=1784

#line 36 curLineno=1750 compiledLineno=1786

                    trampCall(Nendo::NendoTestError)
                )
          }
    )
  end
 )
#--------------------

























































#line 38 curLineno=1850 compiledLineno=1850

trampCall( 
#line 38 curLineno=1850 compiledLineno=1853

  begin 
#line 38 curLineno=1850 compiledLineno=1856

    #execFunc
#line 38 curLineno=1850 compiledLineno=1859

#line 38 curLineno=1850 compiledLineno=1861

      def self._test_MIMARKerror_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKerror', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKerror'] = self.method( :_test_MIMARKerror_METHOD )
#line 38 curLineno=1850 compiledLineno=1865

      #execFunc(funcname=define)
    @_test_MIMARKerror = 
    trampCall(
#line 38 curLineno=1850 compiledLineno=1870

#line 38 curLineno=1850 compiledLineno=1872

#line 38 curLineno=1850 compiledLineno=1874

          Proc.new { |*__rest__| _maybe_MIMARKclass = __rest__[0] ;  
#line 38 curLineno=1850 compiledLineno=1877

#line 38 curLineno=1850 compiledLineno=1879

              begin
#line 38 curLineno=1850 compiledLineno=1882

                #makeLet
#line 38 curLineno=1850 compiledLineno=1885

                ___lambda = lambda { |_cl,_err| 
#line 38 curLineno=1850 compiledLineno=1888

#line 38 curLineno=1850 compiledLineno=1890

                    if ( 
#line 38 curLineno=1850 compiledLineno=1893

                      trampCall(_cl)
                     ) then
#line 38 curLineno=1850 compiledLineno=1897

#line 38 curLineno=1850 compiledLineno=1899

#line 38 curLineno=1850 compiledLineno=1901

                          begin 
#line 38 curLineno=1850 compiledLineno=1904

                            #execFunc
#line 38 curLineno=1850 compiledLineno=1907

                            
#line 38 curLineno=1850 compiledLineno=1909

                              #execFunc(funcname=set!)
                            _err.type = 
                            trampCall(
#line 38 curLineno=1850 compiledLineno=1914

#line 38 curLineno=1850 compiledLineno=1916

#line 38 curLineno=1850 compiledLineno=1918

                                  trampCall(_cl)
                            )
                          end
                    end
#line 38 curLineno=1850 compiledLineno=1924

                    trampCall(_err)
                } ; ___lambda.call(
#line 38 curLineno=1850 compiledLineno=1928

#line 38 curLineno=1850 compiledLineno=1930

#line 38 curLineno=1850 compiledLineno=1932

                      begin
#line 38 curLineno=1850 compiledLineno=1935

                        #makeLet
#line 38 curLineno=1850 compiledLineno=1938

                        ___lambda = lambda { |___gensym__5d616449e4cd5ff7562e60dbfcf1c628e32cc41d_30178| 
#line 38 curLineno=1850 compiledLineno=1941

#line 38 curLineno=1850 compiledLineno=1943

                            if ( 
#line 38 curLineno=1850 compiledLineno=1946

#line 38 curLineno=1850 compiledLineno=1948

                                _null_QUMARK(
#line 38 curLineno=1850 compiledLineno=1951

#line 38 curLineno=1850 compiledLineno=1953

                                    trampCall(___gensym__5d616449e4cd5ff7562e60dbfcf1c628e32cc41d_30178)
                                )
                             ) then
#line 38 curLineno=1850 compiledLineno=1958

                              false
                            else
#line 38 curLineno=1850 compiledLineno=1962

#line 38 curLineno=1850 compiledLineno=1964

#line 38 curLineno=1850 compiledLineno=1966

                                  delayCall( '_car',  'car',
#line 38 curLineno=1850 compiledLineno=1969

#line 38 curLineno=1850 compiledLineno=1971

                                      trampCall(@_car)                                    ,
                                  [
#line 38 curLineno=1850 compiledLineno=1975

#line 38 curLineno=1850 compiledLineno=1977

#line 38 curLineno=1850 compiledLineno=1979

                                        trampCall(___gensym__5d616449e4cd5ff7562e60dbfcf1c628e32cc41d_30178)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
#line 38 curLineno=1850 compiledLineno=1986

#line 38 curLineno=1850 compiledLineno=1988

#line 38 curLineno=1850 compiledLineno=1990

                              trampCall(_maybe_MIMARKclass)
                                   )
                      end                    ,
#line 38 curLineno=1850 compiledLineno=1995

#line 38 curLineno=1850 compiledLineno=1997

                      trampCall(Nendo::NendoTestError).new(
#line 38 curLineno=1850 compiledLineno=2000

                        )
                           )
              end
          }
    )
  end
 )
#--------------------


















































































































































































































































#line 46 curLineno=2250 compiledLineno=2250

trampCall( 
#line 46 curLineno=2250 compiledLineno=2253

  begin 
#line 46 curLineno=2250 compiledLineno=2256

    #execFunc
#line 46 curLineno=2250 compiledLineno=2259

#line 46 curLineno=2250 compiledLineno=2261

      def self._test_MIMARKcheck_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKcheck', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKcheck'] = self.method( :_test_MIMARKcheck_METHOD )
#line 46 curLineno=2250 compiledLineno=2265

      #execFunc(funcname=define)
    @_test_MIMARKcheck = 
    trampCall(
#line 46 curLineno=2250 compiledLineno=2270

#line 46 curLineno=2250 compiledLineno=2272

#line 46 curLineno=2250 compiledLineno=2274

          Proc.new { |_expected,_result| 
#line 46 curLineno=2250 compiledLineno=2277

#line 46 curLineno=2250 compiledLineno=2279

              if ( 
#line 46 curLineno=2250 compiledLineno=2282

#line 46 curLineno=2250 compiledLineno=2284

                  trampCall( self._test_MIMARKerror_QUMARK_METHOD(  'test-error?',
#line 46 curLineno=2250 compiledLineno=2287

#line 46 curLineno=2250 compiledLineno=2289

                      trampCall(@_test_MIMARKerror_QUMARK)                    ,
                  [
#line 46 curLineno=2250 compiledLineno=2293

#line 46 curLineno=2250 compiledLineno=2295

#line 46 curLineno=2250 compiledLineno=2297

                        trampCall(_expected)
                  ]
                               ))
               ) then
#line 46 curLineno=2250 compiledLineno=2303

#line 46 curLineno=2250 compiledLineno=2305

#line 46 curLineno=2250 compiledLineno=2307

                    if ( 
#line 46 curLineno=2250 compiledLineno=2310

#line 46 curLineno=2250 compiledLineno=2312

                        _not(
#line 46 curLineno=2250 compiledLineno=2315

#line 46 curLineno=2250 compiledLineno=2317

#line 46 curLineno=2250 compiledLineno=2319

                              _eq_QUMARK(
#line 46 curLineno=2250 compiledLineno=2322

                                false                                ,
#line 46 curLineno=2250 compiledLineno=2325

#line 46 curLineno=2250 compiledLineno=2327

#line 46 curLineno=2250 compiledLineno=2329

                                    trampCall( self._test_MIMARKerror_QUMARK_METHOD(  'test-error?',
#line 46 curLineno=2250 compiledLineno=2332

#line 46 curLineno=2250 compiledLineno=2334

                                        trampCall(@_test_MIMARKerror_QUMARK)                                      ,
                                    [
#line 46 curLineno=2250 compiledLineno=2338

#line 46 curLineno=2250 compiledLineno=2340

#line 46 curLineno=2250 compiledLineno=2342

                                          trampCall(_result)
                                    ]
                                                 ))
                              )
                        )
                     ) then
#line 46 curLineno=2250 compiledLineno=2350

#line 46 curLineno=2250 compiledLineno=2352

                        begin
#line 46 curLineno=2250 compiledLineno=2355

                          #makeLet
#line 46 curLineno=2250 compiledLineno=2358

                          ___lambda = lambda { |_ex,_ey| 
#line 46 curLineno=2250 compiledLineno=2361

#line 46 curLineno=2250 compiledLineno=2363

                              if ( 
#line 46 curLineno=2250 compiledLineno=2366

#line 46 curLineno=2250 compiledLineno=2368

                                  _not(
#line 46 curLineno=2250 compiledLineno=2371

#line 46 curLineno=2250 compiledLineno=2373

#line 46 curLineno=2250 compiledLineno=2375

                                        _eq_QUMARK(
#line 46 curLineno=2250 compiledLineno=2378

                                          false                                          ,
#line 46 curLineno=2250 compiledLineno=2381

#line 46 curLineno=2250 compiledLineno=2383

                                            trampCall(_ex)
                                        )
                                  )
                               ) then
#line 46 curLineno=2250 compiledLineno=2389

#line 46 curLineno=2250 compiledLineno=2391

#line 46 curLineno=2250 compiledLineno=2393

                                    delayCall( '_eq_QUMARK',  'eq?',
#line 46 curLineno=2250 compiledLineno=2396

#line 46 curLineno=2250 compiledLineno=2398

                                        trampCall(@_eq_QUMARK)                                      ,
                                    [
#line 46 curLineno=2250 compiledLineno=2402

#line 46 curLineno=2250 compiledLineno=2404

#line 46 curLineno=2250 compiledLineno=2406

                                          trampCall(_ex)                                        ,
#line 46 curLineno=2250 compiledLineno=2409

#line 46 curLineno=2250 compiledLineno=2411

                                          trampCall(_ey)
                                    ]
                                                 )
                              else
#line 46 curLineno=2250 compiledLineno=2417

                                false
                              end
                          } ; ___lambda.call(
#line 46 curLineno=2250 compiledLineno=2422

#line 46 curLineno=2250 compiledLineno=2424

#line 46 curLineno=2250 compiledLineno=2426

                                trampCall(_expected).type(
#line 46 curLineno=2250 compiledLineno=2429

                                  )                              ,
#line 46 curLineno=2250 compiledLineno=2432

#line 46 curLineno=2250 compiledLineno=2434

                                trampCall(_result).type(
#line 46 curLineno=2250 compiledLineno=2437

                                  )
                                     )
                        end
                    else
#line 46 curLineno=2250 compiledLineno=2443

                      false
                    end
              else
#line 46 curLineno=2250 compiledLineno=2448

#line 46 curLineno=2250 compiledLineno=2450

                  if ( 
                  true
                   ) then
#line 46 curLineno=2250 compiledLineno=2455

#line 46 curLineno=2250 compiledLineno=2457

#line 46 curLineno=2250 compiledLineno=2459

#line 46 curLineno=2250 compiledLineno=2461

                          delayCall( '_equal_QUMARK',  'equal?',
#line 46 curLineno=2250 compiledLineno=2464

#line 46 curLineno=2250 compiledLineno=2466

                              trampCall(@_equal_QUMARK)                            ,
                          [
#line 46 curLineno=2250 compiledLineno=2470

#line 46 curLineno=2250 compiledLineno=2472

#line 46 curLineno=2250 compiledLineno=2474

                                trampCall(_expected)                              ,
#line 46 curLineno=2250 compiledLineno=2477

#line 46 curLineno=2250 compiledLineno=2479

                                trampCall(_result)
                          ]
                                       )
                  else
#line 46 curLineno=2250 compiledLineno=2485

#line 46 curLineno=2250 compiledLineno=2487

                      Cell.new()
                  end
              end
          }
    )
  end
 )
#--------------------

















































































































































































































































































































#line 57 curLineno=2800 compiledLineno=2800

trampCall( 
#line 57 curLineno=2800 compiledLineno=2803

  begin 
#line 57 curLineno=2800 compiledLineno=2806

    #execFunc
#line 57 curLineno=2800 compiledLineno=2809

#line 57 curLineno=2800 compiledLineno=2811

      def self.__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK'] = self.method( :__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK_METHOD )
#line 57 curLineno=2800 compiledLineno=2815

      #execFunc(funcname=define)
    @__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK = 
    trampCall(
#line 57 curLineno=2800 compiledLineno=2820

#line 57 curLineno=2800 compiledLineno=2822

        "test.record"
    )
  end
 )
#--------------------























#line 58 curLineno=2850 compiledLineno=2850

trampCall( 
#line 58 curLineno=2850 compiledLineno=2853

  begin 
#line 58 curLineno=2850 compiledLineno=2856

    #execFunc
#line 58 curLineno=2850 compiledLineno=2859

#line 58 curLineno=2850 compiledLineno=2861

      def self.__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK'] = self.method( :__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK_METHOD )
#line 58 curLineno=2850 compiledLineno=2865

      #execFunc(funcname=define)
    @__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK = 
    trampCall(
#line 58 curLineno=2850 compiledLineno=2870

#line 58 curLineno=2850 compiledLineno=2872

#line 58 curLineno=2850 compiledLineno=2874

          trampCall(STDOUT)
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

      def self.__ASMARKdiscrepancy_MIMARKlist_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKdiscrepancy_MIMARKlist_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['__ASMARKdiscrepancy_MIMARKlist_ASMARK'] = self.method( :__ASMARKdiscrepancy_MIMARKlist_ASMARK_METHOD )
#line 59 curLineno=2900 compiledLineno=2915

      #execFunc(funcname=define)
    @__ASMARKdiscrepancy_MIMARKlist_ASMARK = 
    trampCall(
#line 59 curLineno=2900 compiledLineno=2920

#line 59 curLineno=2900 compiledLineno=2922

        Cell.new()
    )
  end
 )
#--------------------









































































#line 61 curLineno=3000 compiledLineno=3000

trampCall( 
#line 61 curLineno=3000 compiledLineno=3003

  begin 
#line 61 curLineno=3000 compiledLineno=3006

    #execFunc
#line 61 curLineno=3000 compiledLineno=3009

#line 61 curLineno=3000 compiledLineno=3011

      def self._test_MIMARKrecord_MIMARKfile_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKrecord_MIMARKfile', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKrecord_MIMARKfile'] = self.method( :_test_MIMARKrecord_MIMARKfile_METHOD )
#line 61 curLineno=3000 compiledLineno=3015

      #execFunc(funcname=define)
    @_test_MIMARKrecord_MIMARKfile = 
    trampCall(
#line 61 curLineno=3000 compiledLineno=3020

#line 61 curLineno=3000 compiledLineno=3022

#line 61 curLineno=3000 compiledLineno=3024

          Proc.new { |_file| 
#line 61 curLineno=3000 compiledLineno=3027

#line 61 curLineno=3000 compiledLineno=3029

              begin 
#line 61 curLineno=3000 compiledLineno=3032

                #execFunc
#line 61 curLineno=3000 compiledLineno=3035

#line 61 curLineno=3000 compiledLineno=3037

                  def self.__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
                  @global_lisp_binding['__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK'] = self.method( :__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK_METHOD )
#line 61 curLineno=3000 compiledLineno=3041

                  #execFunc(funcname=set!)
                @__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK = 
                trampCall(
#line 61 curLineno=3000 compiledLineno=3046

#line 61 curLineno=3000 compiledLineno=3048

#line 61 curLineno=3000 compiledLineno=3050

                      trampCall(_file)
                )
              end
          }
    )
  end
 )
#--------------------

#line 62 curLineno=3050 compiledLineno=3059

trampCall( 
#line 62 curLineno=3050 compiledLineno=3062

  begin 
#line 62 curLineno=3050 compiledLineno=3065

    #execFunc
#line 62 curLineno=3050 compiledLineno=3068

#line 62 curLineno=3050 compiledLineno=3070

      def self._test_MIMARKoutput_MIMARKfile_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKoutput_MIMARKfile', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKoutput_MIMARKfile'] = self.method( :_test_MIMARKoutput_MIMARKfile_METHOD )
#line 62 curLineno=3050 compiledLineno=3074

      #execFunc(funcname=define)
    @_test_MIMARKoutput_MIMARKfile = 
    trampCall(
#line 62 curLineno=3050 compiledLineno=3079

#line 62 curLineno=3050 compiledLineno=3081

#line 62 curLineno=3050 compiledLineno=3083

          Proc.new { |_file| 
#line 62 curLineno=3050 compiledLineno=3086

#line 62 curLineno=3050 compiledLineno=3088

              begin 
#line 62 curLineno=3050 compiledLineno=3091

                #execFunc
#line 62 curLineno=3050 compiledLineno=3094

#line 62 curLineno=3050 compiledLineno=3096

                  def self.__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
                  @global_lisp_binding['__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK'] = self.method( :__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK_METHOD )
#line 62 curLineno=3050 compiledLineno=3100

                  #execFunc(funcname=set!)
                @__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK = 
                trampCall(
#line 62 curLineno=3050 compiledLineno=3105

#line 62 curLineno=3050 compiledLineno=3107

#line 62 curLineno=3050 compiledLineno=3109

                      trampCall(_file)
                )
              end
          }
    )
  end
 )
#--------------------

































#line 64 curLineno=3150 compiledLineno=3150

trampCall( 
#line 64 curLineno=3150 compiledLineno=3153

  begin 
#line 64 curLineno=3150 compiledLineno=3156

    #execFunc
#line 64 curLineno=3150 compiledLineno=3159

#line 64 curLineno=3150 compiledLineno=3161

      def self.__ASMARKtest_MIMARKcounts_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKtest_MIMARKcounts_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['__ASMARKtest_MIMARKcounts_ASMARK'] = self.method( :__ASMARKtest_MIMARKcounts_ASMARK_METHOD )
#line 64 curLineno=3150 compiledLineno=3165

      #execFunc(funcname=define)
    @__ASMARKtest_MIMARKcounts_ASMARK = 
    trampCall(
#line 64 curLineno=3150 compiledLineno=3170

#line 64 curLineno=3150 compiledLineno=3172

#line 64 curLineno=3150 compiledLineno=3174

#line 64 curLineno=3150 compiledLineno=3176

            trampCall( self._vector_METHOD(  'vector',
#line 64 curLineno=3150 compiledLineno=3179

#line 64 curLineno=3150 compiledLineno=3181

                trampCall(@_vector)              ,
            [
#line 64 curLineno=3150 compiledLineno=3185

#line 64 curLineno=3150 compiledLineno=3187

                0                ,
#line 64 curLineno=3150 compiledLineno=3190

                0                ,
#line 64 curLineno=3150 compiledLineno=3193

                0                ,
#line 64 curLineno=3150 compiledLineno=3196

                0
            ]
                         ))
    )
  end
 )
#--------------------















































#line 66 curLineno=3250 compiledLineno=3250

trampCall( 
#line 66 curLineno=3250 compiledLineno=3253

  begin 
#line 66 curLineno=3250 compiledLineno=3256

    #execFunc
#line 66 curLineno=3250 compiledLineno=3259

#line 66 curLineno=3250 compiledLineno=3261

      def self._test_MIMARKcount_PLMARK_PLMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKcount_PLMARK_PLMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKcount_PLMARK_PLMARK'] = self.method( :_test_MIMARKcount_PLMARK_PLMARK_METHOD )
#line 66 curLineno=3250 compiledLineno=3265

      #execFunc(funcname=define)
    @_test_MIMARKcount_PLMARK_PLMARK = 
    trampCall(
#line 66 curLineno=3250 compiledLineno=3270

#line 66 curLineno=3250 compiledLineno=3272

#line 66 curLineno=3250 compiledLineno=3274

          Proc.new { || 
#line 66 curLineno=3250 compiledLineno=3277

#line 66 curLineno=3250 compiledLineno=3279

#line 66 curLineno=3250 compiledLineno=3281

                delayCall( '_vector_MIMARKset_EXMARK',  'vector-set!',
#line 66 curLineno=3250 compiledLineno=3284

#line 66 curLineno=3250 compiledLineno=3286

                    trampCall(@_vector_MIMARKset_EXMARK)                  ,
                [
#line 66 curLineno=3250 compiledLineno=3290

#line 66 curLineno=3250 compiledLineno=3292

#line 66 curLineno=3250 compiledLineno=3294

                      trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                    ,
#line 66 curLineno=3250 compiledLineno=3297

                    0                    ,
#line 66 curLineno=3250 compiledLineno=3300

#line 66 curLineno=3250 compiledLineno=3302

#line 66 curLineno=3250 compiledLineno=3304

                        ( 
#line 66 curLineno=3250 compiledLineno=3307

#line 66 curLineno=3250 compiledLineno=3309

                            trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 66 curLineno=3250 compiledLineno=3312

#line 66 curLineno=3250 compiledLineno=3314

                                trampCall(@_vector_MIMARKref)                              ,
                            [
#line 66 curLineno=3250 compiledLineno=3318

#line 66 curLineno=3250 compiledLineno=3320

#line 66 curLineno=3250 compiledLineno=3322

                                  trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                                ,
#line 66 curLineno=3250 compiledLineno=3325

                                0
                            ]
                                         ))                        +
                        1
                         ) 
                ]
                             )
          }
    )
  end
 )
#--------------------













#line 68 curLineno=3350 compiledLineno=3350

trampCall( 
#line 68 curLineno=3350 compiledLineno=3353

  begin 
#line 68 curLineno=3350 compiledLineno=3356

    #execFunc
#line 68 curLineno=3350 compiledLineno=3359

#line 68 curLineno=3350 compiledLineno=3361

      def self._test_MIMARKpass_PLMARK_PLMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKpass_PLMARK_PLMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKpass_PLMARK_PLMARK'] = self.method( :_test_MIMARKpass_PLMARK_PLMARK_METHOD )
#line 68 curLineno=3350 compiledLineno=3365

      #execFunc(funcname=define)
    @_test_MIMARKpass_PLMARK_PLMARK = 
    trampCall(
#line 68 curLineno=3350 compiledLineno=3370

#line 68 curLineno=3350 compiledLineno=3372

#line 68 curLineno=3350 compiledLineno=3374

          Proc.new { || 
#line 68 curLineno=3350 compiledLineno=3377

#line 68 curLineno=3350 compiledLineno=3379

#line 68 curLineno=3350 compiledLineno=3381

                delayCall( '_vector_MIMARKset_EXMARK',  'vector-set!',
#line 68 curLineno=3350 compiledLineno=3384

#line 68 curLineno=3350 compiledLineno=3386

                    trampCall(@_vector_MIMARKset_EXMARK)                  ,
                [
#line 68 curLineno=3350 compiledLineno=3390

#line 68 curLineno=3350 compiledLineno=3392

#line 68 curLineno=3350 compiledLineno=3394

                      trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                    ,
#line 68 curLineno=3350 compiledLineno=3397

                    1                    ,
#line 68 curLineno=3350 compiledLineno=3400

#line 68 curLineno=3350 compiledLineno=3402

#line 68 curLineno=3350 compiledLineno=3404

                        ( 
#line 68 curLineno=3350 compiledLineno=3407

#line 68 curLineno=3350 compiledLineno=3409

                            trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 68 curLineno=3350 compiledLineno=3412

#line 68 curLineno=3350 compiledLineno=3414

                                trampCall(@_vector_MIMARKref)                              ,
                            [
#line 68 curLineno=3350 compiledLineno=3418

#line 68 curLineno=3350 compiledLineno=3420

#line 68 curLineno=3350 compiledLineno=3422

                                  trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                                ,
#line 68 curLineno=3350 compiledLineno=3425

                                1
                            ]
                                         ))                        +
                        1
                         ) 
                ]
                             )
          }
    )
  end
 )
#--------------------













#line 70 curLineno=3450 compiledLineno=3450

trampCall( 
#line 70 curLineno=3450 compiledLineno=3453

  begin 
#line 70 curLineno=3450 compiledLineno=3456

    #execFunc
#line 70 curLineno=3450 compiledLineno=3459

#line 70 curLineno=3450 compiledLineno=3461

      def self._test_MIMARKfail_PLMARK_PLMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKfail_PLMARK_PLMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKfail_PLMARK_PLMARK'] = self.method( :_test_MIMARKfail_PLMARK_PLMARK_METHOD )
#line 70 curLineno=3450 compiledLineno=3465

      #execFunc(funcname=define)
    @_test_MIMARKfail_PLMARK_PLMARK = 
    trampCall(
#line 70 curLineno=3450 compiledLineno=3470

#line 70 curLineno=3450 compiledLineno=3472

#line 70 curLineno=3450 compiledLineno=3474

          Proc.new { || 
#line 70 curLineno=3450 compiledLineno=3477

#line 70 curLineno=3450 compiledLineno=3479

#line 70 curLineno=3450 compiledLineno=3481

                delayCall( '_vector_MIMARKset_EXMARK',  'vector-set!',
#line 70 curLineno=3450 compiledLineno=3484

#line 70 curLineno=3450 compiledLineno=3486

                    trampCall(@_vector_MIMARKset_EXMARK)                  ,
                [
#line 70 curLineno=3450 compiledLineno=3490

#line 70 curLineno=3450 compiledLineno=3492

#line 70 curLineno=3450 compiledLineno=3494

                      trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                    ,
#line 70 curLineno=3450 compiledLineno=3497

                    2                    ,
#line 70 curLineno=3450 compiledLineno=3500

#line 70 curLineno=3450 compiledLineno=3502

#line 70 curLineno=3450 compiledLineno=3504

                        ( 
#line 70 curLineno=3450 compiledLineno=3507

#line 70 curLineno=3450 compiledLineno=3509

                            trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 70 curLineno=3450 compiledLineno=3512

#line 70 curLineno=3450 compiledLineno=3514

                                trampCall(@_vector_MIMARKref)                              ,
                            [
#line 70 curLineno=3450 compiledLineno=3518

#line 70 curLineno=3450 compiledLineno=3520

#line 70 curLineno=3450 compiledLineno=3522

                                  trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                                ,
#line 70 curLineno=3450 compiledLineno=3525

                                2
                            ]
                                         ))                        +
                        1
                         ) 
                ]
                             )
          }
    )
  end
 )
#--------------------













#line 72 curLineno=3550 compiledLineno=3550

trampCall( 
#line 72 curLineno=3550 compiledLineno=3553

  begin 
#line 72 curLineno=3550 compiledLineno=3556

    #execFunc
#line 72 curLineno=3550 compiledLineno=3559

#line 72 curLineno=3550 compiledLineno=3561

      def self._test_MIMARKabort_PLMARK_PLMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKabort_PLMARK_PLMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKabort_PLMARK_PLMARK'] = self.method( :_test_MIMARKabort_PLMARK_PLMARK_METHOD )
#line 72 curLineno=3550 compiledLineno=3565

      #execFunc(funcname=define)
    @_test_MIMARKabort_PLMARK_PLMARK = 
    trampCall(
#line 72 curLineno=3550 compiledLineno=3570

#line 72 curLineno=3550 compiledLineno=3572

#line 72 curLineno=3550 compiledLineno=3574

          Proc.new { || 
#line 72 curLineno=3550 compiledLineno=3577

#line 72 curLineno=3550 compiledLineno=3579

#line 72 curLineno=3550 compiledLineno=3581

                delayCall( '_vector_MIMARKset_EXMARK',  'vector-set!',
#line 72 curLineno=3550 compiledLineno=3584

#line 72 curLineno=3550 compiledLineno=3586

                    trampCall(@_vector_MIMARKset_EXMARK)                  ,
                [
#line 72 curLineno=3550 compiledLineno=3590

#line 72 curLineno=3550 compiledLineno=3592

#line 72 curLineno=3550 compiledLineno=3594

                      trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                    ,
#line 72 curLineno=3550 compiledLineno=3597

                    3                    ,
#line 72 curLineno=3550 compiledLineno=3600

#line 72 curLineno=3550 compiledLineno=3602

#line 72 curLineno=3550 compiledLineno=3604

                        ( 
#line 72 curLineno=3550 compiledLineno=3607

#line 72 curLineno=3550 compiledLineno=3609

                            trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 72 curLineno=3550 compiledLineno=3612

#line 72 curLineno=3550 compiledLineno=3614

                                trampCall(@_vector_MIMARKref)                              ,
                            [
#line 72 curLineno=3550 compiledLineno=3618

#line 72 curLineno=3550 compiledLineno=3620

#line 72 curLineno=3550 compiledLineno=3622

                                  trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                                ,
#line 72 curLineno=3550 compiledLineno=3625

                                3
                            ]
                                         ))                        +
                        1
                         ) 
                ]
                             )
          }
    )
  end
 )
#--------------------































































#line 75 curLineno=3700 compiledLineno=3700

trampCall( 
#line 75 curLineno=3700 compiledLineno=3703

  begin 
#line 75 curLineno=3700 compiledLineno=3706

    #execFunc
#line 75 curLineno=3700 compiledLineno=3709

#line 75 curLineno=3700 compiledLineno=3711

      def self._format_MIMARKsummary_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_format_MIMARKsummary', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_format_MIMARKsummary'] = self.method( :_format_MIMARKsummary_METHOD )
#line 75 curLineno=3700 compiledLineno=3715

      #execFunc(funcname=define)
    @_format_MIMARKsummary = 
    trampCall(
#line 75 curLineno=3700 compiledLineno=3720

#line 75 curLineno=3700 compiledLineno=3722

#line 75 curLineno=3700 compiledLineno=3724

          Proc.new { || 
#line 75 curLineno=3700 compiledLineno=3727

#line 75 curLineno=3700 compiledLineno=3729

#line 75 curLineno=3700 compiledLineno=3731

                delayCall( '_sprintf',  'sprintf',
#line 75 curLineno=3700 compiledLineno=3734

#line 75 curLineno=3700 compiledLineno=3736

                    trampCall(@_sprintf)                  ,
                [
#line 75 curLineno=3700 compiledLineno=3740

#line 75 curLineno=3700 compiledLineno=3742

                    "Total: %5d tests, %5d passed, %5d failed, %5d aborted.
"                    ,
#line 75 curLineno=3700 compiledLineno=3746

#line 75 curLineno=3700 compiledLineno=3748

#line 75 curLineno=3700 compiledLineno=3750

                        trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 75 curLineno=3700 compiledLineno=3753

#line 75 curLineno=3700 compiledLineno=3755

                            trampCall(@_vector_MIMARKref)                          ,
                        [
#line 75 curLineno=3700 compiledLineno=3759

#line 75 curLineno=3700 compiledLineno=3761

#line 75 curLineno=3700 compiledLineno=3763

                              trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                            ,
#line 75 curLineno=3700 compiledLineno=3766

                            0
                        ]
                                     ))                    ,
#line 75 curLineno=3700 compiledLineno=3771

#line 75 curLineno=3700 compiledLineno=3773

#line 75 curLineno=3700 compiledLineno=3775

                        trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 75 curLineno=3700 compiledLineno=3778

#line 75 curLineno=3700 compiledLineno=3780

                            trampCall(@_vector_MIMARKref)                          ,
                        [
#line 75 curLineno=3700 compiledLineno=3784

#line 75 curLineno=3700 compiledLineno=3786

#line 75 curLineno=3700 compiledLineno=3788

                              trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                            ,
#line 75 curLineno=3700 compiledLineno=3791

                            1
                        ]
                                     ))                    ,
#line 75 curLineno=3700 compiledLineno=3796

#line 75 curLineno=3700 compiledLineno=3798

#line 75 curLineno=3700 compiledLineno=3800

                        trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 75 curLineno=3700 compiledLineno=3803

#line 75 curLineno=3700 compiledLineno=3805

                            trampCall(@_vector_MIMARKref)                          ,
                        [
#line 75 curLineno=3700 compiledLineno=3809

#line 75 curLineno=3700 compiledLineno=3811

#line 75 curLineno=3700 compiledLineno=3813

                              trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                            ,
#line 75 curLineno=3700 compiledLineno=3816

                            2
                        ]
                                     ))                    ,
#line 75 curLineno=3700 compiledLineno=3821

#line 75 curLineno=3700 compiledLineno=3823

#line 75 curLineno=3700 compiledLineno=3825

                        trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 75 curLineno=3700 compiledLineno=3828

#line 75 curLineno=3700 compiledLineno=3830

                            trampCall(@_vector_MIMARKref)                          ,
                        [
#line 75 curLineno=3700 compiledLineno=3834

#line 75 curLineno=3700 compiledLineno=3836

#line 75 curLineno=3700 compiledLineno=3838

                              trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                            ,
#line 75 curLineno=3700 compiledLineno=3841

                            3
                        ]
                                     ))
                ]
                             )
          }
    )
  end
 )
#--------------------







































































































































































































#line 82 curLineno=4050 compiledLineno=4050

trampCall( 
#line 82 curLineno=4050 compiledLineno=4053

  begin 
#line 82 curLineno=4050 compiledLineno=4056

    #execFunc
#line 82 curLineno=4050 compiledLineno=4059

#line 82 curLineno=4050 compiledLineno=4061

      def self._read_MIMARKsummary_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_read_MIMARKsummary', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_read_MIMARKsummary'] = self.method( :_read_MIMARKsummary_METHOD )
#line 82 curLineno=4050 compiledLineno=4065

      #execFunc(funcname=define)
    @_read_MIMARKsummary = 
    trampCall(
#line 82 curLineno=4050 compiledLineno=4070

#line 82 curLineno=4050 compiledLineno=4072

#line 82 curLineno=4050 compiledLineno=4074

          Proc.new { || 
#line 82 curLineno=4050 compiledLineno=4077

#line 82 curLineno=4050 compiledLineno=4079

              if ( 
#line 82 curLineno=4050 compiledLineno=4082

                if ( 
#line 82 curLineno=4050 compiledLineno=4085

#line 82 curLineno=4050 compiledLineno=4087

                    _not(
#line 82 curLineno=4050 compiledLineno=4090

#line 82 curLineno=4050 compiledLineno=4092

#line 82 curLineno=4050 compiledLineno=4094

                          _eq_QUMARK(
#line 82 curLineno=4050 compiledLineno=4097

                            false                            ,
#line 82 curLineno=4050 compiledLineno=4100

#line 82 curLineno=4050 compiledLineno=4102

#line 82 curLineno=4050 compiledLineno=4104

                                _string_QUMARK(
#line 82 curLineno=4050 compiledLineno=4107

#line 82 curLineno=4050 compiledLineno=4109

                                    trampCall(@__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK)
                                )
                          )
                    )
                 ) then
#line 82 curLineno=4050 compiledLineno=4116

#line 82 curLineno=4050 compiledLineno=4118

                    trampCall(File).exist?(
#line 82 curLineno=4050 compiledLineno=4121

#line 82 curLineno=4050 compiledLineno=4123

#line 82 curLineno=4050 compiledLineno=4125

                          trampCall(@__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK)
                      )
                else
#line 82 curLineno=4050 compiledLineno=4130

                  false
                end
               ) then
#line 82 curLineno=4050 compiledLineno=4135

#line 82 curLineno=4050 compiledLineno=4137

#line 82 curLineno=4050 compiledLineno=4139

#line 82 curLineno=4050 compiledLineno=4141

                      trampCall( self._with_MIMARKopen_METHOD(  'with-open',
#line 82 curLineno=4050 compiledLineno=4144

#line 82 curLineno=4050 compiledLineno=4146

                          trampCall(@_with_MIMARKopen)                        ,
                      [
#line 82 curLineno=4050 compiledLineno=4150

#line 82 curLineno=4050 compiledLineno=4152

#line 82 curLineno=4050 compiledLineno=4154

                            trampCall(@__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK)                          ,
#line 82 curLineno=4050 compiledLineno=4157

#line 82 curLineno=4050 compiledLineno=4159

                            Proc.new { |_f| 
#line 82 curLineno=4050 compiledLineno=4162

#line 82 curLineno=4050 compiledLineno=4164

                                begin
#line 82 curLineno=4050 compiledLineno=4167

                                  #makeLet
#line 82 curLineno=4050 compiledLineno=4170

                                  ___lambda = lambda { |_m| 
#line 82 curLineno=4050 compiledLineno=4173

#line 82 curLineno=4050 compiledLineno=4175

                                      if ( 
#line 82 curLineno=4050 compiledLineno=4178

                                        trampCall(_m)
                                       ) then
#line 82 curLineno=4050 compiledLineno=4182

#line 82 curLineno=4050 compiledLineno=4184

#line 82 curLineno=4050 compiledLineno=4186

#line 82 curLineno=4050 compiledLineno=4188

                                              trampCall( self._for_MIMARKeach_METHOD(  'for-each',
#line 82 curLineno=4050 compiledLineno=4191

#line 82 curLineno=4050 compiledLineno=4193

                                                  trampCall(@_for_MIMARKeach)                                                ,
                                              [
#line 82 curLineno=4050 compiledLineno=4197

#line 82 curLineno=4050 compiledLineno=4199

#line 82 curLineno=4050 compiledLineno=4201

                                                    Proc.new { |_i| 
#line 82 curLineno=4050 compiledLineno=4204

#line 82 curLineno=4050 compiledLineno=4206

#line 82 curLineno=4050 compiledLineno=4208

                                                          trampCall( self._vector_MIMARKset_EXMARK_METHOD(  'vector-set!',
#line 82 curLineno=4050 compiledLineno=4211

#line 82 curLineno=4050 compiledLineno=4213

                                                              trampCall(@_vector_MIMARKset_EXMARK)                                                            ,
                                                          [
#line 82 curLineno=4050 compiledLineno=4217

#line 82 curLineno=4050 compiledLineno=4219

#line 82 curLineno=4050 compiledLineno=4221

                                                                trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                                                              ,
#line 82 curLineno=4050 compiledLineno=4224

#line 82 curLineno=4050 compiledLineno=4226

                                                                trampCall(_i)                                                              ,
#line 82 curLineno=4050 compiledLineno=4229

#line 82 curLineno=4050 compiledLineno=4231

#line 82 curLineno=4050 compiledLineno=4233

                                                                  _to_MIMARKi(
#line 82 curLineno=4050 compiledLineno=4236

#line 82 curLineno=4050 compiledLineno=4238

#line 82 curLineno=4050 compiledLineno=4240

                                                                        trampCall( self._rxmatch_MIMARKsubstring_METHOD(  'rxmatch-substring',
#line 82 curLineno=4050 compiledLineno=4243

#line 82 curLineno=4050 compiledLineno=4245

                                                                            trampCall(@_rxmatch_MIMARKsubstring)                                                                          ,
                                                                        [
#line 82 curLineno=4050 compiledLineno=4249

#line 82 curLineno=4050 compiledLineno=4251

#line 82 curLineno=4050 compiledLineno=4253

                                                                              trampCall(_m)                                                                            ,
#line 82 curLineno=4050 compiledLineno=4256

#line 82 curLineno=4050 compiledLineno=4258

#line 82 curLineno=4050 compiledLineno=4260

                                                                                ( 
#line 82 curLineno=4050 compiledLineno=4263

                                                                                  trampCall(_i)                                                                                +
                                                                                1
                                                                                 ) 
                                                                        ]
                                                                                     ))
                                                                  )
                                                          ]
                                                                       ))
                                                    }                                                  ,
#line 82 curLineno=4050 compiledLineno=4274

                                                  Cell.new(0,Cell.new(1,Cell.new(2,Cell.new(3))))
                                              ]
                                                           ))
                                      end
                                  } ; ___lambda.call(
#line 82 curLineno=4050 compiledLineno=4281

#line 82 curLineno=4050 compiledLineno=4283

#line 82 curLineno=4050 compiledLineno=4285

#line 82 curLineno=4050 compiledLineno=4287

                                          trampCall( self._rxmatch_METHOD(  'rxmatch',
#line 82 curLineno=4050 compiledLineno=4290

#line 82 curLineno=4050 compiledLineno=4292

                                              trampCall(@_rxmatch)                                            ,
                                          [
#line 82 curLineno=4050 compiledLineno=4296

#line 82 curLineno=4050 compiledLineno=4298

                                              Regexp.new( "Total:\\s+(\\d+)\\s+tests,\\s+(\\d+)\\s+passed,\\s+(\\d+)\\s+failed,\\s+(\\d+)\\s+aborted")                                              ,
#line 82 curLineno=4050 compiledLineno=4301

#line 82 curLineno=4050 compiledLineno=4303

                                                trampCall(_f).readline.chomp(
#line 82 curLineno=4050 compiledLineno=4306

                                                  )
                                          ]
                                                       ))
                                             )
                                end
                            }
                      ]
                                   ))
              end
#line 82 curLineno=4050 compiledLineno=4317

              begin
#line 82 curLineno=4050 compiledLineno=4320

                #makeLet
#line 82 curLineno=4050 compiledLineno=4323

                ___lambda = lambda { |_orig_MIMARKabort| 
#line 82 curLineno=4050 compiledLineno=4326

#line 82 curLineno=4050 compiledLineno=4328

#line 82 curLineno=4050 compiledLineno=4330

                      trampCall( self._vector_MIMARKset_EXMARK_METHOD(  'vector-set!',
#line 82 curLineno=4050 compiledLineno=4333

#line 82 curLineno=4050 compiledLineno=4335

                          trampCall(@_vector_MIMARKset_EXMARK)                        ,
                      [
#line 82 curLineno=4050 compiledLineno=4339

#line 82 curLineno=4050 compiledLineno=4341

#line 82 curLineno=4050 compiledLineno=4343

                            trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                          ,
#line 82 curLineno=4050 compiledLineno=4346

                          3                          ,
#line 82 curLineno=4050 compiledLineno=4349

#line 82 curLineno=4050 compiledLineno=4351

#line 82 curLineno=4050 compiledLineno=4353

                              ( 
#line 82 curLineno=4050 compiledLineno=4356

                                trampCall(_orig_MIMARKabort)                              +
                              1
                               ) 
                      ]
                                   ))
#line 82 curLineno=4050 compiledLineno=4363

#line 82 curLineno=4050 compiledLineno=4365

                      trampCall( self._write_MIMARKsummary_METHOD(  'write-summary',
#line 82 curLineno=4050 compiledLineno=4368

#line 82 curLineno=4050 compiledLineno=4370

                          trampCall(@_write_MIMARKsummary)                        ,
                      [
#line 82 curLineno=4050 compiledLineno=4374

                      ]
                                   ))
#line 82 curLineno=4050 compiledLineno=4378

#line 82 curLineno=4050 compiledLineno=4380

                      delayCall( '_vector_MIMARKset_EXMARK',  'vector-set!',
#line 82 curLineno=4050 compiledLineno=4383

#line 82 curLineno=4050 compiledLineno=4385

                          trampCall(@_vector_MIMARKset_EXMARK)                        ,
                      [
#line 82 curLineno=4050 compiledLineno=4389

#line 82 curLineno=4050 compiledLineno=4391

#line 82 curLineno=4050 compiledLineno=4393

                            trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                          ,
#line 82 curLineno=4050 compiledLineno=4396

                          3                          ,
#line 82 curLineno=4050 compiledLineno=4399

#line 82 curLineno=4050 compiledLineno=4401

                            trampCall(_orig_MIMARKabort)
                      ]
                                   )
                } ; ___lambda.call(
#line 82 curLineno=4050 compiledLineno=4407

#line 82 curLineno=4050 compiledLineno=4409

#line 82 curLineno=4050 compiledLineno=4411

#line 82 curLineno=4050 compiledLineno=4413

                        trampCall( self._vector_MIMARKref_METHOD(  'vector-ref',
#line 82 curLineno=4050 compiledLineno=4416

#line 82 curLineno=4050 compiledLineno=4418

                            trampCall(@_vector_MIMARKref)                          ,
                        [
#line 82 curLineno=4050 compiledLineno=4422

#line 82 curLineno=4050 compiledLineno=4424

#line 82 curLineno=4050 compiledLineno=4426

                              trampCall(@__ASMARKtest_MIMARKcounts_ASMARK)                            ,
#line 82 curLineno=4050 compiledLineno=4429

                            3
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------































































































































































































































































































































































































































































































































#line 100 curLineno=4950 compiledLineno=4950

trampCall( 
#line 100 curLineno=4950 compiledLineno=4953

  begin 
#line 100 curLineno=4950 compiledLineno=4956

    #execFunc
#line 100 curLineno=4950 compiledLineno=4959

#line 100 curLineno=4950 compiledLineno=4961

      def self._write_MIMARKsummary_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_write_MIMARKsummary', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_write_MIMARKsummary'] = self.method( :_write_MIMARKsummary_METHOD )
#line 100 curLineno=4950 compiledLineno=4965

      #execFunc(funcname=define)
    @_write_MIMARKsummary = 
    trampCall(
#line 100 curLineno=4950 compiledLineno=4970

#line 100 curLineno=4950 compiledLineno=4972

#line 100 curLineno=4950 compiledLineno=4974

          Proc.new { || 
#line 100 curLineno=4950 compiledLineno=4977

#line 100 curLineno=4950 compiledLineno=4979

              if ( 
#line 100 curLineno=4950 compiledLineno=4982

#line 100 curLineno=4950 compiledLineno=4984

                  _string_QUMARK(
#line 100 curLineno=4950 compiledLineno=4987

#line 100 curLineno=4950 compiledLineno=4989

                      trampCall(@__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK)
                  )
               ) then
#line 100 curLineno=4950 compiledLineno=4994

#line 100 curLineno=4950 compiledLineno=4996

#line 100 curLineno=4950 compiledLineno=4998

#line 100 curLineno=4950 compiledLineno=5000

                      delayCall( '_with_MIMARKopen',  'with-open',
#line 100 curLineno=4950 compiledLineno=5003

#line 100 curLineno=4950 compiledLineno=5005

                          trampCall(@_with_MIMARKopen)                        ,
                      [
#line 100 curLineno=4950 compiledLineno=5009

#line 100 curLineno=4950 compiledLineno=5011

#line 100 curLineno=4950 compiledLineno=5013

                            trampCall(@__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK)                          ,
#line 100 curLineno=4950 compiledLineno=5016

#line 100 curLineno=4950 compiledLineno=5018

                            Proc.new { |_f| 
#line 100 curLineno=4950 compiledLineno=5021

#line 100 curLineno=4950 compiledLineno=5023

                                trampCall(_f).printf(
#line 100 curLineno=4950 compiledLineno=5026

#line 100 curLineno=4950 compiledLineno=5028

                                    "%s"                                    ,
#line 100 curLineno=4950 compiledLineno=5031

#line 100 curLineno=4950 compiledLineno=5033

#line 100 curLineno=4950 compiledLineno=5035

                                        trampCall( self._format_MIMARKsummary_METHOD(  'format-summary',
#line 100 curLineno=4950 compiledLineno=5038

#line 100 curLineno=4950 compiledLineno=5040

                                            trampCall(@_format_MIMARKsummary)                                          ,
                                        [
#line 100 curLineno=4950 compiledLineno=5044

                                        ]
                                                     ))
                                  )
                            }                          ,
#line 100 curLineno=4950 compiledLineno=5050

                          "w"
                      ]
                                   )
              end
          }
    )
  end
 )
#--------------------





















































































































































































































































































































































#line 109 curLineno=5400 compiledLineno=5400

trampCall( 
#line 109 curLineno=5400 compiledLineno=5403

  begin 
#line 109 curLineno=5400 compiledLineno=5406

    #execFunc
#line 109 curLineno=5400 compiledLineno=5409

#line 109 curLineno=5400 compiledLineno=5411

      def self._prim_MIMARKtest_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_prim_MIMARKtest', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_prim_MIMARKtest'] = self.method( :_prim_MIMARKtest_METHOD )
#line 109 curLineno=5400 compiledLineno=5415

      #execFunc(funcname=define)
    @_prim_MIMARKtest = 
    trampCall(
#line 109 curLineno=5400 compiledLineno=5420

#line 109 curLineno=5400 compiledLineno=5422

#line 109 curLineno=5400 compiledLineno=5424

          Proc.new { |_msg,_expect,_thunk,*__rest__| _compare = __rest__[0] ;  
#line 109 curLineno=5400 compiledLineno=5427

#line 109 curLineno=5400 compiledLineno=5429

              begin
#line 109 curLineno=5400 compiledLineno=5432

                #makeLet
#line 109 curLineno=5400 compiledLineno=5435

                ___lambda = lambda { |_cmp,_f| 
#line 109 curLineno=5400 compiledLineno=5438

#line 109 curLineno=5400 compiledLineno=5440

                    trampCall(_f).printf(
#line 109 curLineno=5400 compiledLineno=5443

#line 109 curLineno=5400 compiledLineno=5445

                        "test %s, expects %s ==> "                        ,
#line 109 curLineno=5400 compiledLineno=5448

#line 109 curLineno=5400 compiledLineno=5450

                          trampCall(_msg)                        ,
#line 109 curLineno=5400 compiledLineno=5453

#line 109 curLineno=5400 compiledLineno=5455

#line 109 curLineno=5400 compiledLineno=5457

                            _write_MIMARKto_MIMARKstring(
#line 109 curLineno=5400 compiledLineno=5460

#line 109 curLineno=5400 compiledLineno=5462

                                trampCall(_expect)
                            )
                      )
#line 109 curLineno=5400 compiledLineno=5467

                    trampCall(_f).flush(
#line 109 curLineno=5400 compiledLineno=5470

                      )
#line 109 curLineno=5400 compiledLineno=5473

#line 109 curLineno=5400 compiledLineno=5475

                      trampCall( self._test_MIMARKcount_PLMARK_PLMARK_METHOD(  'test-count++',
#line 109 curLineno=5400 compiledLineno=5478

#line 109 curLineno=5400 compiledLineno=5480

                          trampCall(@_test_MIMARKcount_PLMARK_PLMARK)                        ,
                      [
#line 109 curLineno=5400 compiledLineno=5484

                      ]
                                   ))
#line 109 curLineno=5400 compiledLineno=5488

                    begin
#line 109 curLineno=5400 compiledLineno=5491

                      #makeLet
#line 109 curLineno=5400 compiledLineno=5494

                      ___lambda = lambda { |_r| 
#line 109 curLineno=5400 compiledLineno=5497

#line 109 curLineno=5400 compiledLineno=5499

                          begin
#line 109 curLineno=5400 compiledLineno=5502

                            #makeLet
#line 109 curLineno=5400 compiledLineno=5505

                            ___lambda = lambda { |_ret| 
#line 109 curLineno=5400 compiledLineno=5508

#line 109 curLineno=5400 compiledLineno=5510

                                if ( 
#line 109 curLineno=5400 compiledLineno=5513

                                  trampCall(_ret)
                                 ) then
#line 109 curLineno=5400 compiledLineno=5517

#line 109 curLineno=5400 compiledLineno=5519

                                    begin 
#line 109 curLineno=5400 compiledLineno=5522

                                      #makeBegin
#line 109 curLineno=5400 compiledLineno=5525

#line 109 curLineno=5400 compiledLineno=5527

                                        trampCall(_f).printf(
#line 109 curLineno=5400 compiledLineno=5530

#line 109 curLineno=5400 compiledLineno=5532

                                            "ok
"
                                          )
#line 109 curLineno=5400 compiledLineno=5537

#line 109 curLineno=5400 compiledLineno=5539

                                          trampCall( self._test_MIMARKpass_PLMARK_PLMARK_METHOD(  'test-pass++',
#line 109 curLineno=5400 compiledLineno=5542

#line 109 curLineno=5400 compiledLineno=5544

                                              trampCall(@_test_MIMARKpass_PLMARK_PLMARK)                                            ,
                                          [
#line 109 curLineno=5400 compiledLineno=5548

                                          ]
                                                       ))
                                    end
                                else
#line 109 curLineno=5400 compiledLineno=5554

#line 109 curLineno=5400 compiledLineno=5556

                                    if ( 
                                    true
                                     ) then
#line 109 curLineno=5400 compiledLineno=5561

#line 109 curLineno=5400 compiledLineno=5563

                                        begin 
#line 109 curLineno=5400 compiledLineno=5566

                                          #makeBegin
#line 109 curLineno=5400 compiledLineno=5569

#line 109 curLineno=5400 compiledLineno=5571

                                            trampCall(_f).printf(
#line 109 curLineno=5400 compiledLineno=5574

#line 109 curLineno=5400 compiledLineno=5576

                                                "ERROR: GOT %s
"                                                ,
#line 109 curLineno=5400 compiledLineno=5580

#line 109 curLineno=5400 compiledLineno=5582

#line 109 curLineno=5400 compiledLineno=5584

                                                    _write_MIMARKto_MIMARKstring(
#line 109 curLineno=5400 compiledLineno=5587

#line 109 curLineno=5400 compiledLineno=5589

                                                        trampCall(_r)
                                                    )
                                              )
#line 109 curLineno=5400 compiledLineno=5594

                                            begin 
#line 109 curLineno=5400 compiledLineno=5597

                                              #execFunc
#line 109 curLineno=5400 compiledLineno=5600

#line 109 curLineno=5400 compiledLineno=5602

                                                def self.__ASMARKdiscrepancy_MIMARKlist_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKdiscrepancy_MIMARKlist_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
                                                @global_lisp_binding['__ASMARKdiscrepancy_MIMARKlist_ASMARK'] = self.method( :__ASMARKdiscrepancy_MIMARKlist_ASMARK_METHOD )
#line 109 curLineno=5400 compiledLineno=5606

                                                #execFunc(funcname=set!)
                                              @__ASMARKdiscrepancy_MIMARKlist_ASMARK = 
                                              trampCall(
#line 109 curLineno=5400 compiledLineno=5611

#line 109 curLineno=5400 compiledLineno=5613

#line 109 curLineno=5400 compiledLineno=5615

#line 109 curLineno=5400 compiledLineno=5617

                                                      _cons(
#line 109 curLineno=5400 compiledLineno=5620

#line 109 curLineno=5400 compiledLineno=5622

#line 109 curLineno=5400 compiledLineno=5624

                                                            trampCall( self._list_METHOD(  'list',
#line 109 curLineno=5400 compiledLineno=5627

#line 109 curLineno=5400 compiledLineno=5629

                                                                trampCall(@_list)                                                              ,
                                                            [
#line 109 curLineno=5400 compiledLineno=5633

#line 109 curLineno=5400 compiledLineno=5635

#line 109 curLineno=5400 compiledLineno=5637

                                                                  trampCall(_msg)                                                                ,
#line 109 curLineno=5400 compiledLineno=5640

#line 109 curLineno=5400 compiledLineno=5642

                                                                  trampCall(_expect)                                                                ,
#line 109 curLineno=5400 compiledLineno=5645

#line 109 curLineno=5400 compiledLineno=5647

                                                                  trampCall(_r)
                                                            ]
                                                                         ))                                                        ,
#line 109 curLineno=5400 compiledLineno=5652

#line 109 curLineno=5400 compiledLineno=5654

                                                          trampCall(@__ASMARKdiscrepancy_MIMARKlist_ASMARK)
                                                      )
                                              )
                                            end
#line 109 curLineno=5400 compiledLineno=5660

#line 109 curLineno=5400 compiledLineno=5662

                                              trampCall( self._test_MIMARKfail_PLMARK_PLMARK_METHOD(  'test-fail++',
#line 109 curLineno=5400 compiledLineno=5665

#line 109 curLineno=5400 compiledLineno=5667

                                                  trampCall(@_test_MIMARKfail_PLMARK_PLMARK)                                                ,
                                              [
#line 109 curLineno=5400 compiledLineno=5671

                                              ]
                                                           ))
                                        end
                                    else
#line 109 curLineno=5400 compiledLineno=5677

#line 109 curLineno=5400 compiledLineno=5679

                                        Cell.new()
                                    end
                                end
#line 109 curLineno=5400 compiledLineno=5684

                                trampCall(_f).flush(
#line 109 curLineno=5400 compiledLineno=5687

                                  )
#line 109 curLineno=5400 compiledLineno=5690

                                trampCall(_ret)
                            } ; ___lambda.call(
#line 109 curLineno=5400 compiledLineno=5694

#line 109 curLineno=5400 compiledLineno=5696

#line 109 curLineno=5400 compiledLineno=5698

#line 109 curLineno=5400 compiledLineno=5700

                                    trampCall( callProcedure(  '_cmp',  'cmp',
#line 109 curLineno=5400 compiledLineno=5703

#line 109 curLineno=5400 compiledLineno=5705

                                        trampCall(_cmp)                                      ,
                                    [
#line 109 curLineno=5400 compiledLineno=5709

#line 109 curLineno=5400 compiledLineno=5711

#line 109 curLineno=5400 compiledLineno=5713

                                          trampCall(_expect)                                        ,
#line 109 curLineno=5400 compiledLineno=5716

#line 109 curLineno=5400 compiledLineno=5718

                                          trampCall(_r)
                                    ]
                                                 ))
                                       )
                          end
                      } ; ___lambda.call(
#line 109 curLineno=5400 compiledLineno=5726

#line 109 curLineno=5400 compiledLineno=5728

#line 109 curLineno=5400 compiledLineno=5730

#line 109 curLineno=5400 compiledLineno=5732

                              trampCall( callProcedure(  '_thunk',  'thunk',
#line 109 curLineno=5400 compiledLineno=5735

#line 109 curLineno=5400 compiledLineno=5737

                                  trampCall(_thunk)                                ,
                              [
#line 109 curLineno=5400 compiledLineno=5741

                              ]
                                           ))
                                 )
                    end
                } ; ___lambda.call(
#line 109 curLineno=5400 compiledLineno=5748

#line 109 curLineno=5400 compiledLineno=5750

#line 109 curLineno=5400 compiledLineno=5752

                      if ( 
#line 109 curLineno=5400 compiledLineno=5755

#line 109 curLineno=5400 compiledLineno=5757

                          _pair_QUMARK(
#line 109 curLineno=5400 compiledLineno=5760

#line 109 curLineno=5400 compiledLineno=5762

                              trampCall(_compare)
                          )
                       ) then
#line 109 curLineno=5400 compiledLineno=5767

#line 109 curLineno=5400 compiledLineno=5769

#line 109 curLineno=5400 compiledLineno=5771

                            delayCall( '_car',  'car',
#line 109 curLineno=5400 compiledLineno=5774

#line 109 curLineno=5400 compiledLineno=5776

                                trampCall(@_car)                              ,
                            [
#line 109 curLineno=5400 compiledLineno=5780

#line 109 curLineno=5400 compiledLineno=5782

#line 109 curLineno=5400 compiledLineno=5784

                                  trampCall(_compare)
                            ]
                                         )
                      else
#line 109 curLineno=5400 compiledLineno=5790

#line 109 curLineno=5400 compiledLineno=5792

                          trampCall(@_test_MIMARKcheck)
                      end                    ,
#line 109 curLineno=5400 compiledLineno=5796

#line 109 curLineno=5400 compiledLineno=5798

                      trampCall(@__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK)
                           )
              end
          }
    )
  end
 )
#--------------------




































































































































































































































































































































































































































































































































































































































































#line 130 curLineno=6450 compiledLineno=6450

trampCall( 
#line 130 curLineno=6450 compiledLineno=6453

  begin 
#line 130 curLineno=6450 compiledLineno=6456

    #execFunc
#line 130 curLineno=6450 compiledLineno=6459

#line 130 curLineno=6450 compiledLineno=6461

      def self._test_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test'] = self.method( :_test_METHOD )
#line 130 curLineno=6450 compiledLineno=6465

      #execFunc(funcname=define)
    @_test = 
    trampCall(
#line 130 curLineno=6450 compiledLineno=6470

#line 130 curLineno=6450 compiledLineno=6472

#line 130 curLineno=6450 compiledLineno=6474

          Proc.new { |_msg,_expect,_thunk,*__rest__| _compare = __rest__[0] ;  
#line 130 curLineno=6450 compiledLineno=6477

#line 130 curLineno=6450 compiledLineno=6479

#line 130 curLineno=6450 compiledLineno=6481

                delayCall( '_apply',  'apply',
#line 130 curLineno=6450 compiledLineno=6484

#line 130 curLineno=6450 compiledLineno=6486

                    trampCall(@_apply)                  ,
                [
#line 130 curLineno=6450 compiledLineno=6490

#line 130 curLineno=6450 compiledLineno=6492

#line 130 curLineno=6450 compiledLineno=6494

                      trampCall(@_prim_MIMARKtest)                    ,
#line 130 curLineno=6450 compiledLineno=6497

#line 130 curLineno=6450 compiledLineno=6499

                      trampCall(_msg)                    ,
#line 130 curLineno=6450 compiledLineno=6502

#line 130 curLineno=6450 compiledLineno=6504

                      trampCall(_expect)                    ,
#line 130 curLineno=6450 compiledLineno=6507

#line 130 curLineno=6450 compiledLineno=6509

                      Proc.new { || 
#line 130 curLineno=6450 compiledLineno=6512

#line 130 curLineno=6450 compiledLineno=6514

                          begin 
#line 130 curLineno=6450 compiledLineno=6517

                            #makeGuard
#line 130 curLineno=6450 compiledLineno=6520

#line 130 curLineno=6450 compiledLineno=6522

#line 130 curLineno=6450 compiledLineno=6524

                                trampCall( callProcedure(  '_thunk',  'thunk',
#line 130 curLineno=6450 compiledLineno=6527

#line 130 curLineno=6450 compiledLineno=6529

                                    trampCall(_thunk)                                  ,
                                [
#line 130 curLineno=6450 compiledLineno=6533

                                ]
                                             ))
                          rescue => _exc
#line 130 curLineno=6450 compiledLineno=6538

#line 130 curLineno=6450 compiledLineno=6540

                              if ( 
                              true
                               ) then
#line 130 curLineno=6450 compiledLineno=6545

#line 130 curLineno=6450 compiledLineno=6547

#line 130 curLineno=6450 compiledLineno=6549

                                    trampCall(Nendo::NendoTestError).new(
#line 130 curLineno=6450 compiledLineno=6552

#line 130 curLineno=6450 compiledLineno=6554

#line 130 curLineno=6450 compiledLineno=6556

                                          trampCall(_exc).class(
#line 130 curLineno=6450 compiledLineno=6559

                                            )
                                      )
                              else
#line 130 curLineno=6450 compiledLineno=6564

#line 130 curLineno=6450 compiledLineno=6566

                                  if ( 
                                  true
                                   ) then
#line 130 curLineno=6450 compiledLineno=6571

#line 130 curLineno=6450 compiledLineno=6573

#line 130 curLineno=6450 compiledLineno=6575

#line 130 curLineno=6450 compiledLineno=6577

                                          trampCall( self.__PAMARKraise_METHOD(  '%raise',
#line 130 curLineno=6450 compiledLineno=6580

#line 130 curLineno=6450 compiledLineno=6582

                                              trampCall(@__PAMARKraise)                                            ,
                                          [
#line 130 curLineno=6450 compiledLineno=6586

#line 130 curLineno=6450 compiledLineno=6588

#line 130 curLineno=6450 compiledLineno=6590

                                                trampCall(_exc)                                              ,
#line 130 curLineno=6450 compiledLineno=6593

#line 130 curLineno=6450 compiledLineno=6595

#line 130 curLineno=6450 compiledLineno=6597

                                                  trampCall( self._sprintf_METHOD(  'sprintf',
#line 130 curLineno=6450 compiledLineno=6600

#line 130 curLineno=6450 compiledLineno=6602

                                                      trampCall(@_sprintf)                                                    ,
                                                  [
#line 130 curLineno=6450 compiledLineno=6606

#line 130 curLineno=6450 compiledLineno=6608

                                                      "%s:%s raised %s"                                                      ,
#line 130 curLineno=6450 compiledLineno=6611

#line 130 curLineno=6450 compiledLineno=6613

#line 130 curLineno=6450 compiledLineno=6615

                                                          trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
#line 130 curLineno=6450 compiledLineno=6618

#line 130 curLineno=6450 compiledLineno=6620

                                                              trampCall(@__ASMARKFILE_ASMARK)                                                            ,
                                                          [
#line 130 curLineno=6450 compiledLineno=6624

                                                          ]
                                                                       ))                                                      ,
#line 130 curLineno=6450 compiledLineno=6628

#line 130 curLineno=6450 compiledLineno=6630

#line 130 curLineno=6450 compiledLineno=6632

                                                          trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
#line 130 curLineno=6450 compiledLineno=6635

#line 130 curLineno=6450 compiledLineno=6637

                                                              trampCall(@__ASMARKLINE_ASMARK)                                                            ,
                                                          [
#line 130 curLineno=6450 compiledLineno=6641

                                                          ]
                                                                       ))                                                      ,
#line 130 curLineno=6450 compiledLineno=6645

#line 130 curLineno=6450 compiledLineno=6647

                                                        trampCall(_exc)
                                                  ]
                                                               ))                                              ,
#line 130 curLineno=6450 compiledLineno=6652

#line 130 curLineno=6450 compiledLineno=6654

#line 130 curLineno=6450 compiledLineno=6656

                                                  trampCall( self._sprintf_METHOD(  'sprintf',
#line 130 curLineno=6450 compiledLineno=6659

#line 130 curLineno=6450 compiledLineno=6661

                                                      trampCall(@_sprintf)                                                    ,
                                                  [
#line 130 curLineno=6450 compiledLineno=6665

#line 130 curLineno=6450 compiledLineno=6667

                                                      "%s:%s raised %s"                                                      ,
#line 130 curLineno=6450 compiledLineno=6670

#line 130 curLineno=6450 compiledLineno=6672

#line 130 curLineno=6450 compiledLineno=6674

                                                          trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
#line 130 curLineno=6450 compiledLineno=6677

#line 130 curLineno=6450 compiledLineno=6679

                                                              trampCall(@__ASMARKFILE_ASMARK)                                                            ,
                                                          [
#line 130 curLineno=6450 compiledLineno=6683

                                                          ]
                                                                       ))                                                      ,
#line 130 curLineno=6450 compiledLineno=6687

#line 130 curLineno=6450 compiledLineno=6689

#line 130 curLineno=6450 compiledLineno=6691

                                                          trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
#line 130 curLineno=6450 compiledLineno=6694

#line 130 curLineno=6450 compiledLineno=6696

                                                              trampCall(@__ASMARKLINE_ASMARK)                                                            ,
                                                          [
#line 130 curLineno=6450 compiledLineno=6700

                                                          ]
                                                                       ))                                                      ,
#line 130 curLineno=6450 compiledLineno=6704

#line 130 curLineno=6450 compiledLineno=6706

                                                        trampCall(_exc)
                                                  ]
                                                               ))
                                          ]
                                                       ))
                                  else
#line 130 curLineno=6450 compiledLineno=6714

#line 130 curLineno=6450 compiledLineno=6716

                                      Cell.new()
                                  end
                              end
                          end
                      }                    ,
#line 130 curLineno=6450 compiledLineno=6723

#line 130 curLineno=6450 compiledLineno=6725

                      trampCall(_compare)
                ]
                             )
          }
    )
  end
 )
#--------------------







































































































































































#line 139 curLineno=6900 compiledLineno=6900

trampCall( 
#line 139 curLineno=6900 compiledLineno=6903

  begin 
#line 139 curLineno=6900 compiledLineno=6906

    #execFunc
#line 139 curLineno=6900 compiledLineno=6909

#line 139 curLineno=6900 compiledLineno=6911

      def self._test_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_ASMARK'] = self.method( :_test_ASMARK_METHOD )
#line 139 curLineno=6900 compiledLineno=6915

      #execFunc(funcname=define)
    @_test_ASMARK = 
    trampCall(
#line 139 curLineno=6900 compiledLineno=6920

#line 139 curLineno=6900 compiledLineno=6922

#line 139 curLineno=6900 compiledLineno=6924

          LispMacro.new { |_msg,_expect,_form,*__rest__| _compare = __rest__[0] ;  
#line 139 curLineno=6900 compiledLineno=6927

#line 139 curLineno=6900 compiledLineno=6929

#line 139 curLineno=6900 compiledLineno=6931

                _cons(
#line 139 curLineno=6900 compiledLineno=6934

                  :"test"                  ,
#line 139 curLineno=6900 compiledLineno=6937

#line 139 curLineno=6900 compiledLineno=6939

#line 139 curLineno=6900 compiledLineno=6941

                      _cons(
#line 139 curLineno=6900 compiledLineno=6944

#line 139 curLineno=6900 compiledLineno=6946

                          trampCall(_msg)                        ,
#line 139 curLineno=6900 compiledLineno=6949

#line 139 curLineno=6900 compiledLineno=6951

#line 139 curLineno=6900 compiledLineno=6953

                            _cons(
#line 139 curLineno=6900 compiledLineno=6956

#line 139 curLineno=6900 compiledLineno=6958

                                trampCall(_expect)                              ,
#line 139 curLineno=6900 compiledLineno=6961

#line 139 curLineno=6900 compiledLineno=6963

#line 139 curLineno=6900 compiledLineno=6965

                                  _cons(
#line 139 curLineno=6900 compiledLineno=6968

#line 139 curLineno=6900 compiledLineno=6970

#line 139 curLineno=6900 compiledLineno=6972

                                        _cons(
#line 139 curLineno=6900 compiledLineno=6975

                                          :"lambda"                                          ,
#line 139 curLineno=6900 compiledLineno=6978

#line 139 curLineno=6900 compiledLineno=6980

#line 139 curLineno=6900 compiledLineno=6982

                                              _cons(
#line 139 curLineno=6900 compiledLineno=6985

                                                Cell.new()                                                ,
#line 139 curLineno=6900 compiledLineno=6988

#line 139 curLineno=6900 compiledLineno=6990

#line 139 curLineno=6900 compiledLineno=6992

                                                    _cons(
#line 139 curLineno=6900 compiledLineno=6995

#line 139 curLineno=6900 compiledLineno=6997

                                                        trampCall(_form)                                                      ,
#line 139 curLineno=6900 compiledLineno=7000

                                                      Cell.new()
                                                    )
                                              )
                                        )                                    ,
#line 139 curLineno=6900 compiledLineno=7006

#line 139 curLineno=6900 compiledLineno=7008

                                      trampCall(_compare)
                                  )
                            )
                      )
                )
          }
    )
  end
 )
#--------------------






















































































































































































#line 145 curLineno=7200 compiledLineno=7200

trampCall( 
#line 145 curLineno=7200 compiledLineno=7203

  begin 
#line 145 curLineno=7200 compiledLineno=7206

    #execFunc
#line 145 curLineno=7200 compiledLineno=7209

#line 145 curLineno=7200 compiledLineno=7211

      def self._make_MIMARKpadding_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_make_MIMARKpadding_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_make_MIMARKpadding_MIMARKstring'] = self.method( :_make_MIMARKpadding_MIMARKstring_METHOD )
#line 145 curLineno=7200 compiledLineno=7215

      #execFunc(funcname=define)
    @_make_MIMARKpadding_MIMARKstring = 
    trampCall(
#line 145 curLineno=7200 compiledLineno=7220

#line 145 curLineno=7200 compiledLineno=7222

#line 145 curLineno=7200 compiledLineno=7224

          Proc.new { |_num,_char| 
#line 145 curLineno=7200 compiledLineno=7227

#line 145 curLineno=7200 compiledLineno=7229

#line 145 curLineno=7200 compiledLineno=7231

                delayCall( '_string_MIMARKjoin',  'string-join',
#line 145 curLineno=7200 compiledLineno=7234

#line 145 curLineno=7200 compiledLineno=7236

                    trampCall(@_string_MIMARKjoin)                  ,
                [
#line 145 curLineno=7200 compiledLineno=7240

#line 145 curLineno=7200 compiledLineno=7242

#line 145 curLineno=7200 compiledLineno=7244

#line 145 curLineno=7200 compiledLineno=7246

                        trampCall( self._map_METHOD(  'map',
#line 145 curLineno=7200 compiledLineno=7249

#line 145 curLineno=7200 compiledLineno=7251

                            trampCall(@_map)                          ,
                        [
#line 145 curLineno=7200 compiledLineno=7255

#line 145 curLineno=7200 compiledLineno=7257

#line 145 curLineno=7200 compiledLineno=7259

                              Proc.new { |_x| 
#line 145 curLineno=7200 compiledLineno=7262

#line 145 curLineno=7200 compiledLineno=7264

                                  trampCall(_char)
                              }                            ,
#line 145 curLineno=7200 compiledLineno=7268

#line 145 curLineno=7200 compiledLineno=7270

#line 145 curLineno=7200 compiledLineno=7272

                                trampCall( self._range_METHOD(  'range',
#line 145 curLineno=7200 compiledLineno=7275

#line 145 curLineno=7200 compiledLineno=7277

                                    trampCall(@_range)                                  ,
                                [
#line 145 curLineno=7200 compiledLineno=7281

#line 145 curLineno=7200 compiledLineno=7283

#line 145 curLineno=7200 compiledLineno=7285

                                      trampCall(_num)
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











































































































































































































#line 151 curLineno=7500 compiledLineno=7500

trampCall( 
#line 151 curLineno=7500 compiledLineno=7503

  begin 
#line 151 curLineno=7500 compiledLineno=7506

    #execFunc
#line 151 curLineno=7500 compiledLineno=7509

#line 151 curLineno=7500 compiledLineno=7511

      def self._test_MIMARKsection_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKsection', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKsection'] = self.method( :_test_MIMARKsection_METHOD )
#line 151 curLineno=7500 compiledLineno=7515

      #execFunc(funcname=define)
    @_test_MIMARKsection = 
    trampCall(
#line 151 curLineno=7500 compiledLineno=7520

#line 151 curLineno=7500 compiledLineno=7522

#line 151 curLineno=7500 compiledLineno=7524

          Proc.new { |_msg| 
#line 151 curLineno=7500 compiledLineno=7527

#line 151 curLineno=7500 compiledLineno=7529

              begin
#line 151 curLineno=7500 compiledLineno=7532

                #makeLet
#line 151 curLineno=7500 compiledLineno=7535

                ___lambda = lambda { |_f,_msglen| 
#line 151 curLineno=7500 compiledLineno=7538

#line 151 curLineno=7500 compiledLineno=7540

                    trampCall(_f).printf(
#line 151 curLineno=7500 compiledLineno=7543

#line 151 curLineno=7500 compiledLineno=7545

                        "<%s>%s
"                        ,
#line 151 curLineno=7500 compiledLineno=7549

#line 151 curLineno=7500 compiledLineno=7551

                          trampCall(_msg)                        ,
#line 151 curLineno=7500 compiledLineno=7554

#line 151 curLineno=7500 compiledLineno=7556

#line 151 curLineno=7500 compiledLineno=7558

                            trampCall( self._make_MIMARKpadding_MIMARKstring_METHOD(  'make-padding-string',
#line 151 curLineno=7500 compiledLineno=7561

#line 151 curLineno=7500 compiledLineno=7563

                                trampCall(@_make_MIMARKpadding_MIMARKstring)                              ,
                            [
#line 151 curLineno=7500 compiledLineno=7567

#line 151 curLineno=7500 compiledLineno=7569

#line 151 curLineno=7500 compiledLineno=7571

#line 151 curLineno=7500 compiledLineno=7573

                                    trampCall( self._max_METHOD(  'max',
#line 151 curLineno=7500 compiledLineno=7576

#line 151 curLineno=7500 compiledLineno=7578

                                        trampCall(@_max)                                      ,
                                    [
#line 151 curLineno=7500 compiledLineno=7582

#line 151 curLineno=7500 compiledLineno=7584

                                        5                                        ,
#line 151 curLineno=7500 compiledLineno=7587

#line 151 curLineno=7500 compiledLineno=7589

#line 151 curLineno=7500 compiledLineno=7591

                                            ( 
                                            77                                            -
#line 151 curLineno=7500 compiledLineno=7595

                                              trampCall(_msglen)
                                             ) 
                                    ]
                                                 ))                                ,
#line 151 curLineno=7500 compiledLineno=7601

                                "-"
                            ]
                                         ))
                      )
#line 151 curLineno=7500 compiledLineno=7607

                    trampCall(_msg)
                } ; ___lambda.call(
#line 151 curLineno=7500 compiledLineno=7611

#line 151 curLineno=7500 compiledLineno=7613

#line 151 curLineno=7500 compiledLineno=7615

                      trampCall(@__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK)                    ,
#line 151 curLineno=7500 compiledLineno=7618

#line 151 curLineno=7500 compiledLineno=7620

#line 151 curLineno=7500 compiledLineno=7622

                        trampCall( self._string_MIMARKlength_METHOD(  'string-length',
#line 151 curLineno=7500 compiledLineno=7625

#line 151 curLineno=7500 compiledLineno=7627

                            trampCall(@_string_MIMARKlength)                          ,
                        [
#line 151 curLineno=7500 compiledLineno=7631

#line 151 curLineno=7500 compiledLineno=7633

#line 151 curLineno=7500 compiledLineno=7635

                              trampCall(_msg)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------



























































































































































#line 157 curLineno=7800 compiledLineno=7800

trampCall( 
#line 157 curLineno=7800 compiledLineno=7803

  begin 
#line 157 curLineno=7800 compiledLineno=7806

    #execFunc
#line 157 curLineno=7800 compiledLineno=7809

#line 157 curLineno=7800 compiledLineno=7811

      def self._test_MIMARKstart_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKstart', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKstart'] = self.method( :_test_MIMARKstart_METHOD )
#line 157 curLineno=7800 compiledLineno=7815

      #execFunc(funcname=define)
    @_test_MIMARKstart = 
    trampCall(
#line 157 curLineno=7800 compiledLineno=7820

#line 157 curLineno=7800 compiledLineno=7822

#line 157 curLineno=7800 compiledLineno=7824

          Proc.new { |_msg| 
#line 157 curLineno=7800 compiledLineno=7827

#line 157 curLineno=7800 compiledLineno=7829

              begin
#line 157 curLineno=7800 compiledLineno=7832

                #makeLet
#line 157 curLineno=7800 compiledLineno=7835

                ___lambda = lambda { |_s| 
#line 157 curLineno=7800 compiledLineno=7838

#line 157 curLineno=7800 compiledLineno=7840

                    begin
#line 157 curLineno=7800 compiledLineno=7843

                      #makeLet
#line 157 curLineno=7800 compiledLineno=7846

                      ___lambda = lambda { |_pad| 
#line 157 curLineno=7800 compiledLineno=7849

#line 157 curLineno=7800 compiledLineno=7851

                          begin
#line 157 curLineno=7800 compiledLineno=7854

                            #makeLet
#line 157 curLineno=7800 compiledLineno=7857

                            ___lambda = lambda { |_f| 
#line 157 curLineno=7800 compiledLineno=7860

#line 157 curLineno=7800 compiledLineno=7862

                                trampCall(_f).printf(
#line 157 curLineno=7800 compiledLineno=7865

#line 157 curLineno=7800 compiledLineno=7867

                                    "%s%s"                                    ,
#line 157 curLineno=7800 compiledLineno=7870

#line 157 curLineno=7800 compiledLineno=7872

                                      trampCall(_s)                                    ,
#line 157 curLineno=7800 compiledLineno=7875

#line 157 curLineno=7800 compiledLineno=7877

                                      trampCall(_pad)
                                  )
#line 157 curLineno=7800 compiledLineno=7881

                                trampCall(_f).flush(
#line 157 curLineno=7800 compiledLineno=7884

                                  )
#line 157 curLineno=7800 compiledLineno=7887

#line 157 curLineno=7800 compiledLineno=7889

                                  trampCall( self._read_MIMARKsummary_METHOD(  'read-summary',
#line 157 curLineno=7800 compiledLineno=7892

#line 157 curLineno=7800 compiledLineno=7894

                                      trampCall(@_read_MIMARKsummary)                                    ,
                                  [
#line 157 curLineno=7800 compiledLineno=7898

                                  ]
                                               ))
#line 157 curLineno=7800 compiledLineno=7902

                                trampCall(_f).printf(
#line 157 curLineno=7800 compiledLineno=7905

#line 157 curLineno=7800 compiledLineno=7907

                                    "
"
                                  )
#line 157 curLineno=7800 compiledLineno=7912

                                begin 
#line 157 curLineno=7800 compiledLineno=7915

                                  #execFunc
#line 157 curLineno=7800 compiledLineno=7918

#line 157 curLineno=7800 compiledLineno=7920

                                    def self.__ASMARKdiscrepancy_MIMARKlist_ASMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__ASMARKdiscrepancy_MIMARKlist_ASMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
                                    @global_lisp_binding['__ASMARKdiscrepancy_MIMARKlist_ASMARK'] = self.method( :__ASMARKdiscrepancy_MIMARKlist_ASMARK_METHOD )
#line 157 curLineno=7800 compiledLineno=7924

                                    #execFunc(funcname=set!)
                                  @__ASMARKdiscrepancy_MIMARKlist_ASMARK = 
                                  trampCall(
#line 157 curLineno=7800 compiledLineno=7929

#line 157 curLineno=7800 compiledLineno=7931

                                      Cell.new()
                                  )
                                end
#line 157 curLineno=7800 compiledLineno=7936

                                begin
#line 157 curLineno=7800 compiledLineno=7939

                                  #makeLet
#line 157 curLineno=7800 compiledLineno=7942

                                  ___lambda = lambda { |_msglen| 
#line 157 curLineno=7800 compiledLineno=7945

#line 157 curLineno=7800 compiledLineno=7947

                                      trampCall(_f).printf(
#line 157 curLineno=7800 compiledLineno=7950

#line 157 curLineno=7800 compiledLineno=7952

                                          "Testing %s %s
"                                          ,
#line 157 curLineno=7800 compiledLineno=7956

#line 157 curLineno=7800 compiledLineno=7958

                                            trampCall(_msg)                                          ,
#line 157 curLineno=7800 compiledLineno=7961

#line 157 curLineno=7800 compiledLineno=7963

#line 157 curLineno=7800 compiledLineno=7965

                                              trampCall( self._make_MIMARKpadding_MIMARKstring_METHOD(  'make-padding-string',
#line 157 curLineno=7800 compiledLineno=7968

#line 157 curLineno=7800 compiledLineno=7970

                                                  trampCall(@_make_MIMARKpadding_MIMARKstring)                                                ,
                                              [
#line 157 curLineno=7800 compiledLineno=7974

#line 157 curLineno=7800 compiledLineno=7976

#line 157 curLineno=7800 compiledLineno=7978

#line 157 curLineno=7800 compiledLineno=7980

                                                      trampCall( self._max_METHOD(  'max',
#line 157 curLineno=7800 compiledLineno=7983

#line 157 curLineno=7800 compiledLineno=7985

                                                          trampCall(@_max)                                                        ,
                                                      [
#line 157 curLineno=7800 compiledLineno=7989

#line 157 curLineno=7800 compiledLineno=7991

                                                          5                                                          ,
#line 157 curLineno=7800 compiledLineno=7994

#line 157 curLineno=7800 compiledLineno=7996

#line 157 curLineno=7800 compiledLineno=7998

                                                              ( 
                                                              70                                                              -
#line 157 curLineno=7800 compiledLineno=8002

                                                                trampCall(_msglen)
                                                               ) 
                                                      ]
                                                                   ))                                                  ,
#line 157 curLineno=7800 compiledLineno=8008

                                                  "-"
                                              ]
                                                           ))
                                        )
#line 157 curLineno=7800 compiledLineno=8014

                                      trampCall(_f).flush(
#line 157 curLineno=7800 compiledLineno=8017

                                        )
                                  } ; ___lambda.call(
#line 157 curLineno=7800 compiledLineno=8021

#line 157 curLineno=7800 compiledLineno=8023

#line 157 curLineno=7800 compiledLineno=8025

#line 157 curLineno=7800 compiledLineno=8027

                                          trampCall( self._string_MIMARKlength_METHOD(  'string-length',
#line 157 curLineno=7800 compiledLineno=8030

#line 157 curLineno=7800 compiledLineno=8032

                                              trampCall(@_string_MIMARKlength)                                            ,
                                          [
#line 157 curLineno=7800 compiledLineno=8036

#line 157 curLineno=7800 compiledLineno=8038

#line 157 curLineno=7800 compiledLineno=8040

                                                trampCall(_msg)
                                          ]
                                                       ))
                                             )
                                end
#line 157 curLineno=7800 compiledLineno=8047

                                trampCall(_msg)
                            } ; ___lambda.call(
#line 157 curLineno=7800 compiledLineno=8051

#line 157 curLineno=7800 compiledLineno=8053

#line 157 curLineno=7800 compiledLineno=8055

                                  trampCall(@__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK)
                                       )
                          end
                      } ; ___lambda.call(
#line 157 curLineno=7800 compiledLineno=8061

#line 157 curLineno=7800 compiledLineno=8063

#line 157 curLineno=7800 compiledLineno=8065

#line 157 curLineno=7800 compiledLineno=8067

                              trampCall( self._make_MIMARKpadding_MIMARKstring_METHOD(  'make-padding-string',
#line 157 curLineno=7800 compiledLineno=8070

#line 157 curLineno=7800 compiledLineno=8072

                                  trampCall(@_make_MIMARKpadding_MIMARKstring)                                ,
                              [
#line 157 curLineno=7800 compiledLineno=8076

#line 157 curLineno=7800 compiledLineno=8078

#line 157 curLineno=7800 compiledLineno=8080

#line 157 curLineno=7800 compiledLineno=8082

                                      trampCall( self._max_METHOD(  'max',
#line 157 curLineno=7800 compiledLineno=8085

#line 157 curLineno=7800 compiledLineno=8087

                                          trampCall(@_max)                                        ,
                                      [
#line 157 curLineno=7800 compiledLineno=8091

#line 157 curLineno=7800 compiledLineno=8093

                                          3                                          ,
#line 157 curLineno=7800 compiledLineno=8096

#line 157 curLineno=7800 compiledLineno=8098

#line 157 curLineno=7800 compiledLineno=8100

                                              ( 
                                              65                                              -
#line 157 curLineno=7800 compiledLineno=8104

#line 157 curLineno=7800 compiledLineno=8106

                                                  trampCall( self._string_MIMARKlength_METHOD(  'string-length',
#line 157 curLineno=7800 compiledLineno=8109

#line 157 curLineno=7800 compiledLineno=8111

                                                      trampCall(@_string_MIMARKlength)                                                    ,
                                                  [
#line 157 curLineno=7800 compiledLineno=8115

#line 157 curLineno=7800 compiledLineno=8117

#line 157 curLineno=7800 compiledLineno=8119

                                                        trampCall(_s)
                                                  ]
                                                               ))
                                               ) 
                                      ]
                                                   ))                                  ,
#line 157 curLineno=7800 compiledLineno=8127

                                  " "
                              ]
                                           ))
                                 )
                    end
                } ; ___lambda.call(
#line 157 curLineno=7800 compiledLineno=8135

#line 157 curLineno=7800 compiledLineno=8137

#line 157 curLineno=7800 compiledLineno=8139

#line 157 curLineno=7800 compiledLineno=8141

                        trampCall( self._sprintf_METHOD(  'sprintf',
#line 157 curLineno=7800 compiledLineno=8144

#line 157 curLineno=7800 compiledLineno=8146

                            trampCall(@_sprintf)                          ,
                        [
#line 157 curLineno=7800 compiledLineno=8150

#line 157 curLineno=7800 compiledLineno=8152

                            "Testing %s ... "                            ,
#line 157 curLineno=7800 compiledLineno=8155

#line 157 curLineno=7800 compiledLineno=8157

                              trampCall(_msg)
                        ]
                                     ))
                           )
              end
          }
    )
  end
 )
#--------------------

















































































































































































































































































































































































































































#line 173 curLineno=8600 compiledLineno=8600

trampCall( 
#line 173 curLineno=8600 compiledLineno=8603

  begin 
#line 173 curLineno=8600 compiledLineno=8606

    #execFunc
#line 173 curLineno=8600 compiledLineno=8609

#line 173 curLineno=8600 compiledLineno=8611

      def self._test_MIMARKend_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKend', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKend'] = self.method( :_test_MIMARKend_METHOD )
#line 173 curLineno=8600 compiledLineno=8615

      #execFunc(funcname=define)
    @_test_MIMARKend = 
    trampCall(
#line 173 curLineno=8600 compiledLineno=8620

#line 173 curLineno=8600 compiledLineno=8622

#line 173 curLineno=8600 compiledLineno=8624

          Proc.new { || 
#line 173 curLineno=8600 compiledLineno=8627

#line 173 curLineno=8600 compiledLineno=8629

              begin
#line 173 curLineno=8600 compiledLineno=8632

                #makeLet
#line 173 curLineno=8600 compiledLineno=8635

                ___lambda = lambda { |_f| 
#line 173 curLineno=8600 compiledLineno=8638

#line 173 curLineno=8600 compiledLineno=8640

                    if ( 
#line 173 curLineno=8600 compiledLineno=8643

#line 173 curLineno=8600 compiledLineno=8645

                        _null_QUMARK(
#line 173 curLineno=8600 compiledLineno=8648

#line 173 curLineno=8600 compiledLineno=8650

                            trampCall(@__ASMARKdiscrepancy_MIMARKlist_ASMARK)
                        )
                     ) then
#line 173 curLineno=8600 compiledLineno=8655

#line 173 curLineno=8600 compiledLineno=8657

                        trampCall(_f).printf(
#line 173 curLineno=8600 compiledLineno=8660

#line 173 curLineno=8600 compiledLineno=8662

                            "passed.
"
                          )
                    else
#line 173 curLineno=8600 compiledLineno=8668

#line 173 curLineno=8600 compiledLineno=8670

                        begin 
#line 173 curLineno=8600 compiledLineno=8673

                          #makeBegin
#line 173 curLineno=8600 compiledLineno=8676

#line 173 curLineno=8600 compiledLineno=8678

                            trampCall(_f).printf(
#line 173 curLineno=8600 compiledLineno=8681

#line 173 curLineno=8600 compiledLineno=8683

                                "failed.
discrepancies found.  Errors are:
"
                              )
#line 173 curLineno=8600 compiledLineno=8689

#line 173 curLineno=8600 compiledLineno=8691

                              trampCall( self._for_MIMARKeach_METHOD(  'for-each',
#line 173 curLineno=8600 compiledLineno=8694

#line 173 curLineno=8600 compiledLineno=8696

                                  trampCall(@_for_MIMARKeach)                                ,
                              [
#line 173 curLineno=8600 compiledLineno=8700

#line 173 curLineno=8600 compiledLineno=8702

#line 173 curLineno=8600 compiledLineno=8704

                                    Proc.new { |_r| 
#line 173 curLineno=8600 compiledLineno=8707

#line 173 curLineno=8600 compiledLineno=8709

                                        trampCall(_f).printf(
#line 173 curLineno=8600 compiledLineno=8712

#line 173 curLineno=8600 compiledLineno=8714

                                            "test %s: expects %s => got %s
"                                            ,
#line 173 curLineno=8600 compiledLineno=8718

#line 173 curLineno=8600 compiledLineno=8720

#line 173 curLineno=8600 compiledLineno=8722

                                                trampCall( self._first_METHOD(  'first',
#line 173 curLineno=8600 compiledLineno=8725

#line 173 curLineno=8600 compiledLineno=8727

                                                    trampCall(@_first)                                                  ,
                                                [
#line 173 curLineno=8600 compiledLineno=8731

#line 173 curLineno=8600 compiledLineno=8733

#line 173 curLineno=8600 compiledLineno=8735

                                                      trampCall(_r)
                                                ]
                                                             ))                                            ,
#line 173 curLineno=8600 compiledLineno=8740

#line 173 curLineno=8600 compiledLineno=8742

#line 173 curLineno=8600 compiledLineno=8744

                                                _write_MIMARKto_MIMARKstring(
#line 173 curLineno=8600 compiledLineno=8747

#line 173 curLineno=8600 compiledLineno=8749

#line 173 curLineno=8600 compiledLineno=8751

                                                      trampCall( self._second_METHOD(  'second',
#line 173 curLineno=8600 compiledLineno=8754

#line 173 curLineno=8600 compiledLineno=8756

                                                          trampCall(@_second)                                                        ,
                                                      [
#line 173 curLineno=8600 compiledLineno=8760

#line 173 curLineno=8600 compiledLineno=8762

#line 173 curLineno=8600 compiledLineno=8764

                                                            trampCall(_r)
                                                      ]
                                                                   ))
                                                )                                            ,
#line 173 curLineno=8600 compiledLineno=8770

#line 173 curLineno=8600 compiledLineno=8772

#line 173 curLineno=8600 compiledLineno=8774

                                                _write_MIMARKto_MIMARKstring(
#line 173 curLineno=8600 compiledLineno=8777

#line 173 curLineno=8600 compiledLineno=8779

#line 173 curLineno=8600 compiledLineno=8781

                                                      trampCall( self._third_METHOD(  'third',
#line 173 curLineno=8600 compiledLineno=8784

#line 173 curLineno=8600 compiledLineno=8786

                                                          trampCall(@_third)                                                        ,
                                                      [
#line 173 curLineno=8600 compiledLineno=8790

#line 173 curLineno=8600 compiledLineno=8792

#line 173 curLineno=8600 compiledLineno=8794

                                                            trampCall(_r)
                                                      ]
                                                                   ))
                                                )
                                          )
                                    }                                  ,
#line 173 curLineno=8600 compiledLineno=8802

#line 173 curLineno=8600 compiledLineno=8804

#line 173 curLineno=8600 compiledLineno=8806

                                      _reverse(
#line 173 curLineno=8600 compiledLineno=8809

#line 173 curLineno=8600 compiledLineno=8811

                                          trampCall(@__ASMARKdiscrepancy_MIMARKlist_ASMARK)
                                      )
                              ]
                                           ))
                        end
                    end
#line 173 curLineno=8600 compiledLineno=8819

                    if ( 
#line 173 curLineno=8600 compiledLineno=8822

                      trampCall(@__ASMARKtest_MIMARKrecord_MIMARKfile_ASMARK)
                     ) then
#line 173 curLineno=8600 compiledLineno=8826

#line 173 curLineno=8600 compiledLineno=8828

#line 173 curLineno=8600 compiledLineno=8830

#line 173 curLineno=8600 compiledLineno=8832

                            trampCall( self._write_MIMARKsummary_METHOD(  'write-summary',
#line 173 curLineno=8600 compiledLineno=8835

#line 173 curLineno=8600 compiledLineno=8837

                                trampCall(@_write_MIMARKsummary)                              ,
                            [
#line 173 curLineno=8600 compiledLineno=8841

                            ]
                                         ))
                    end
#line 173 curLineno=8600 compiledLineno=8846

#line 173 curLineno=8600 compiledLineno=8848

                      delayCall( '_length',  'length',
#line 173 curLineno=8600 compiledLineno=8851

#line 173 curLineno=8600 compiledLineno=8853

                          trampCall(@_length)                        ,
                      [
#line 173 curLineno=8600 compiledLineno=8857

#line 173 curLineno=8600 compiledLineno=8859

#line 173 curLineno=8600 compiledLineno=8861

                            trampCall(@__ASMARKdiscrepancy_MIMARKlist_ASMARK)
                      ]
                                   )
                } ; ___lambda.call(
#line 173 curLineno=8600 compiledLineno=8867

#line 173 curLineno=8600 compiledLineno=8869

#line 173 curLineno=8600 compiledLineno=8871

                      trampCall(@__ASMARKtest_MIMARKoutput_MIMARKfile_ASMARK)
                           )
              end
          }
    )
  end
 )
#--------------------

















































































































































































































































































































































































































































































































































































































































































































































#line 193 curLineno=9600 compiledLineno=9600

trampCall( 
#line 193 curLineno=9600 compiledLineno=9603

  begin 
#line 193 curLineno=9600 compiledLineno=9606

    #execFunc
#line 193 curLineno=9600 compiledLineno=9609

#line 193 curLineno=9600 compiledLineno=9611

      def self._test_MIMARKmodule_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_test_MIMARKmodule', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_test_MIMARKmodule'] = self.method( :_test_MIMARKmodule_METHOD )
#line 193 curLineno=9600 compiledLineno=9615

      #execFunc(funcname=define)
    @_test_MIMARKmodule = 
    trampCall(
#line 193 curLineno=9600 compiledLineno=9620

#line 193 curLineno=9600 compiledLineno=9622

#line 193 curLineno=9600 compiledLineno=9624

          Proc.new { |_module_MIMARKname| 
#line 193 curLineno=9600 compiledLineno=9627

#line 193 curLineno=9600 compiledLineno=9629

              trampCall(_module_MIMARKname)
          }
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------
