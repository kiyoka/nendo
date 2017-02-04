#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 
































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 35 curLineno=1700 compiledLineno=1700

trampCall( 
#line 35 curLineno=1700 compiledLineno=1703

  begin 
#line 35 curLineno=1700 compiledLineno=1706

    #execFunc
#line 35 curLineno=1700 compiledLineno=1709

#line 35 curLineno=1700 compiledLineno=1711

      def self._record_QUMARK_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_QUMARK', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_record_QUMARK'] = self.method( :_record_QUMARK_METHOD )
#line 35 curLineno=1700 compiledLineno=1715

      #execFunc(funcname=define)
    @_record_QUMARK = 
    trampCall(
#line 35 curLineno=1700 compiledLineno=1720

#line 35 curLineno=1700 compiledLineno=1722

#line 35 curLineno=1700 compiledLineno=1724

          Proc.new { |_type| 
#line 35 curLineno=1700 compiledLineno=1727

#line 35 curLineno=1700 compiledLineno=1729

              trampCall(_type).is_a?(
#line 35 curLineno=1700 compiledLineno=1732

#line 35 curLineno=1700 compiledLineno=1734

#line 35 curLineno=1700 compiledLineno=1736

                    trampCall(Record)
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

      def self._record_MIMARKconstructor_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_MIMARKconstructor', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_record_MIMARKconstructor'] = self.method( :_record_MIMARKconstructor_METHOD )
#line 38 curLineno=1850 compiledLineno=1865

      #execFunc(funcname=define)
    @_record_MIMARKconstructor = 
    trampCall(
#line 38 curLineno=1850 compiledLineno=1870

#line 38 curLineno=1850 compiledLineno=1872

#line 38 curLineno=1850 compiledLineno=1874

          Proc.new { |_rtd,*__rest__| _rest_MIMARKtags = __rest__[0] ;  
#line 38 curLineno=1850 compiledLineno=1877

#line 38 curLineno=1850 compiledLineno=1879

              begin
#line 38 curLineno=1850 compiledLineno=1882

                #makeLet
#line 38 curLineno=1850 compiledLineno=1885

                ___lambda = lambda { |_arg_MIMARKcount,_tags| 
#line 38 curLineno=1850 compiledLineno=1888

#line 38 curLineno=1850 compiledLineno=1890

                    Proc.new { |*__rest__| _args = __rest__[0] ;  
#line 38 curLineno=1850 compiledLineno=1893

#line 38 curLineno=1850 compiledLineno=1895

                        if ( 
#line 38 curLineno=1850 compiledLineno=1898

#line 38 curLineno=1850 compiledLineno=1900

                            __EQMARK(
#line 38 curLineno=1850 compiledLineno=1903

#line 38 curLineno=1850 compiledLineno=1905

#line 38 curLineno=1850 compiledLineno=1907

                                  _length(
#line 38 curLineno=1850 compiledLineno=1910

#line 38 curLineno=1850 compiledLineno=1912

                                      trampCall(_args)
                                  )                              ,
#line 38 curLineno=1850 compiledLineno=1916

#line 38 curLineno=1850 compiledLineno=1918

                                trampCall(_arg_MIMARKcount)
                            )
                         ) then
#line 38 curLineno=1850 compiledLineno=1923

#line 38 curLineno=1850 compiledLineno=1925

                            begin
#line 38 curLineno=1850 compiledLineno=1928

                              #makeLet
#line 38 curLineno=1850 compiledLineno=1931

                              ___lambda = lambda { |_new| 
#line 38 curLineno=1850 compiledLineno=1934

#line 38 curLineno=1850 compiledLineno=1936

#line 38 curLineno=1850 compiledLineno=1938

                                    trampCall( self._for_MIMARKeach_METHOD(  'for-each',
#line 38 curLineno=1850 compiledLineno=1941

#line 38 curLineno=1850 compiledLineno=1943

                                        trampCall(@_for_MIMARKeach)                                      ,
                                    [
#line 38 curLineno=1850 compiledLineno=1947

#line 38 curLineno=1850 compiledLineno=1949

#line 38 curLineno=1850 compiledLineno=1951

                                          Proc.new { |_tag,_arg| 
#line 38 curLineno=1850 compiledLineno=1954

#line 38 curLineno=1850 compiledLineno=1956

                                              trampCall(_new).set!(
#line 38 curLineno=1850 compiledLineno=1959

#line 38 curLineno=1850 compiledLineno=1961

#line 38 curLineno=1850 compiledLineno=1963

                                                    trampCall(_tag)                                                  ,
#line 38 curLineno=1850 compiledLineno=1966

#line 38 curLineno=1850 compiledLineno=1968

                                                    trampCall(_arg)
                                                )
                                          }                                        ,
#line 38 curLineno=1850 compiledLineno=1973

#line 38 curLineno=1850 compiledLineno=1975

                                          trampCall(_tags)                                        ,
#line 38 curLineno=1850 compiledLineno=1978

#line 38 curLineno=1850 compiledLineno=1980

                                          trampCall(_args)
                                    ]
                                                 ))
#line 38 curLineno=1850 compiledLineno=1985

                                  trampCall(_new)
                              } ; ___lambda.call(
#line 38 curLineno=1850 compiledLineno=1989

#line 38 curLineno=1850 compiledLineno=1991

#line 38 curLineno=1850 compiledLineno=1993

#line 38 curLineno=1850 compiledLineno=1995

                                      trampCall( self._make_MIMARKrecord_MIMARKtype_METHOD(  'make-record-type',
#line 38 curLineno=1850 compiledLineno=1998

#line 38 curLineno=1850 compiledLineno=2000

                                          trampCall(@_make_MIMARKrecord_MIMARKtype)                                        ,
                                      [
#line 38 curLineno=1850 compiledLineno=2004

#line 38 curLineno=1850 compiledLineno=2006

#line 38 curLineno=1850 compiledLineno=2008

                                            trampCall(_rtd).typename                                          ,
#line 38 curLineno=1850 compiledLineno=2011

#line 38 curLineno=1850 compiledLineno=2013

                                            trampCall(_tags)
                                      ]
                                                   ))
                                         )
                            end
                        else
#line 38 curLineno=1850 compiledLineno=2021

#line 38 curLineno=1850 compiledLineno=2023

#line 38 curLineno=1850 compiledLineno=2025

                              delayCall( '__PAMARKraise',  '%raise',
#line 38 curLineno=1850 compiledLineno=2028

#line 38 curLineno=1850 compiledLineno=2030

                                  trampCall(@__PAMARKraise)                                ,
                              [
#line 38 curLineno=1850 compiledLineno=2034

#line 38 curLineno=1850 compiledLineno=2036

#line 38 curLineno=1850 compiledLineno=2038

                                    trampCall(ArgumentError)                                  ,
#line 38 curLineno=1850 compiledLineno=2041

#line 38 curLineno=1850 compiledLineno=2043

#line 38 curLineno=1850 compiledLineno=2045

                                      trampCall( self._sprintf_METHOD(  'sprintf',
#line 38 curLineno=1850 compiledLineno=2048

#line 38 curLineno=1850 compiledLineno=2050

                                          trampCall(@_sprintf)                                        ,
                                      [
#line 38 curLineno=1850 compiledLineno=2054

#line 38 curLineno=1850 compiledLineno=2056

                                          "wrong number of arguments to constructor [%s] [%s]"                                          ,
#line 38 curLineno=1850 compiledLineno=2059

#line 38 curLineno=1850 compiledLineno=2061

                                            trampCall(_rtd)                                          ,
#line 38 curLineno=1850 compiledLineno=2064

#line 38 curLineno=1850 compiledLineno=2066

                                            trampCall(_args)
                                      ]
                                                   ))                                  ,
#line 38 curLineno=1850 compiledLineno=2071

#line 38 curLineno=1850 compiledLineno=2073

#line 38 curLineno=1850 compiledLineno=2075

                                      trampCall( self._sprintf_METHOD(  'sprintf',
#line 38 curLineno=1850 compiledLineno=2078

#line 38 curLineno=1850 compiledLineno=2080

                                          trampCall(@_sprintf)                                        ,
                                      [
#line 38 curLineno=1850 compiledLineno=2084

#line 38 curLineno=1850 compiledLineno=2086

                                          "%s:%s raised %s"                                          ,
#line 38 curLineno=1850 compiledLineno=2089

#line 38 curLineno=1850 compiledLineno=2091

#line 38 curLineno=1850 compiledLineno=2093

                                              trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
#line 38 curLineno=1850 compiledLineno=2096

#line 38 curLineno=1850 compiledLineno=2098

                                                  trampCall(@__ASMARKFILE_ASMARK)                                                ,
                                              [
#line 38 curLineno=1850 compiledLineno=2102

                                              ]
                                                           ))                                          ,
#line 38 curLineno=1850 compiledLineno=2106

#line 38 curLineno=1850 compiledLineno=2108

#line 38 curLineno=1850 compiledLineno=2110

                                              trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
#line 38 curLineno=1850 compiledLineno=2113

#line 38 curLineno=1850 compiledLineno=2115

                                                  trampCall(@__ASMARKLINE_ASMARK)                                                ,
                                              [
#line 38 curLineno=1850 compiledLineno=2119

                                              ]
                                                           ))                                          ,
#line 38 curLineno=1850 compiledLineno=2123

#line 38 curLineno=1850 compiledLineno=2125

                                            trampCall(ArgumentError)
                                      ]
                                                   ))
                              ]
                                           )
                        end
                    }
                } ; ___lambda.call(
#line 38 curLineno=1850 compiledLineno=2135

#line 38 curLineno=1850 compiledLineno=2137

#line 38 curLineno=1850 compiledLineno=2139

#line 38 curLineno=1850 compiledLineno=2141

                        _length(
#line 38 curLineno=1850 compiledLineno=2144

#line 38 curLineno=1850 compiledLineno=2146

#line 38 curLineno=1850 compiledLineno=2148

                              _car(
#line 38 curLineno=1850 compiledLineno=2151

#line 38 curLineno=1850 compiledLineno=2153

                                  trampCall(_rest_MIMARKtags)
                              )
                        )                    ,
#line 38 curLineno=1850 compiledLineno=2158

#line 38 curLineno=1850 compiledLineno=2160

#line 38 curLineno=1850 compiledLineno=2162

                        _car(
#line 38 curLineno=1850 compiledLineno=2165

#line 38 curLineno=1850 compiledLineno=2167

                            trampCall(_rest_MIMARKtags)
                        )
                           )
              end
          }
    )
  end
 )
#--------------------








































































































































































































































































































































































































































#line 53 curLineno=2600 compiledLineno=2600

trampCall( 
#line 53 curLineno=2600 compiledLineno=2603

  begin 
#line 53 curLineno=2600 compiledLineno=2606

    #execFunc
#line 53 curLineno=2600 compiledLineno=2609

#line 53 curLineno=2600 compiledLineno=2611

      def self._record_MIMARKpredicate_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_MIMARKpredicate', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_record_MIMARKpredicate'] = self.method( :_record_MIMARKpredicate_METHOD )
#line 53 curLineno=2600 compiledLineno=2615

      #execFunc(funcname=define)
    @_record_MIMARKpredicate = 
    trampCall(
#line 53 curLineno=2600 compiledLineno=2620

#line 53 curLineno=2600 compiledLineno=2622

#line 53 curLineno=2600 compiledLineno=2624

          Proc.new { |_type| 
#line 53 curLineno=2600 compiledLineno=2627

#line 53 curLineno=2600 compiledLineno=2629

              Proc.new { |_thing| 
#line 53 curLineno=2600 compiledLineno=2632

#line 53 curLineno=2600 compiledLineno=2634

                  if ( 
#line 53 curLineno=2600 compiledLineno=2637

#line 53 curLineno=2600 compiledLineno=2639

                      _not(
#line 53 curLineno=2600 compiledLineno=2642

#line 53 curLineno=2600 compiledLineno=2644

#line 53 curLineno=2600 compiledLineno=2646

                            _eq_QUMARK(
#line 53 curLineno=2600 compiledLineno=2649

                              false                              ,
#line 53 curLineno=2600 compiledLineno=2652

#line 53 curLineno=2600 compiledLineno=2654

#line 53 curLineno=2600 compiledLineno=2656

                                  trampCall( self._record_QUMARK_METHOD(  'record?',
#line 53 curLineno=2600 compiledLineno=2659

#line 53 curLineno=2600 compiledLineno=2661

                                      trampCall(@_record_QUMARK)                                    ,
                                  [
#line 53 curLineno=2600 compiledLineno=2665

#line 53 curLineno=2600 compiledLineno=2667

#line 53 curLineno=2600 compiledLineno=2669

                                        trampCall(_type)
                                  ]
                                               ))
                            )
                      )
                   ) then
#line 53 curLineno=2600 compiledLineno=2677

#line 53 curLineno=2600 compiledLineno=2679

                      if ( 
#line 53 curLineno=2600 compiledLineno=2682

#line 53 curLineno=2600 compiledLineno=2684

                          _not(
#line 53 curLineno=2600 compiledLineno=2687

#line 53 curLineno=2600 compiledLineno=2689

#line 53 curLineno=2600 compiledLineno=2691

                                _eq_QUMARK(
#line 53 curLineno=2600 compiledLineno=2694

                                  false                                  ,
#line 53 curLineno=2600 compiledLineno=2697

#line 53 curLineno=2600 compiledLineno=2699

#line 53 curLineno=2600 compiledLineno=2701

                                      trampCall( self._record_QUMARK_METHOD(  'record?',
#line 53 curLineno=2600 compiledLineno=2704

#line 53 curLineno=2600 compiledLineno=2706

                                          trampCall(@_record_QUMARK)                                        ,
                                      [
#line 53 curLineno=2600 compiledLineno=2710

#line 53 curLineno=2600 compiledLineno=2712

#line 53 curLineno=2600 compiledLineno=2714

                                            trampCall(_thing)
                                      ]
                                                   ))
                                )
                          )
                       ) then
#line 53 curLineno=2600 compiledLineno=2722

#line 53 curLineno=2600 compiledLineno=2724

#line 53 curLineno=2600 compiledLineno=2726

                            delayCall( '_eq_QUMARK',  'eq?',
#line 53 curLineno=2600 compiledLineno=2729

#line 53 curLineno=2600 compiledLineno=2731

                                trampCall(@_eq_QUMARK)                              ,
                            [
#line 53 curLineno=2600 compiledLineno=2735

#line 53 curLineno=2600 compiledLineno=2737

#line 53 curLineno=2600 compiledLineno=2739

                                  trampCall(_type).typename                                ,
#line 53 curLineno=2600 compiledLineno=2742

#line 53 curLineno=2600 compiledLineno=2744

                                  trampCall(_thing).typename
                            ]
                                         )
                      else
#line 53 curLineno=2600 compiledLineno=2750

                        false
                      end
                  else
#line 53 curLineno=2600 compiledLineno=2755

                    false
                  end
              }
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

      def self._record_MIMARKaccessor_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_MIMARKaccessor', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_record_MIMARKaccessor'] = self.method( :_record_MIMARKaccessor_METHOD )
#line 59 curLineno=2900 compiledLineno=2915

      #execFunc(funcname=define)
    @_record_MIMARKaccessor = 
    trampCall(
#line 59 curLineno=2900 compiledLineno=2920

#line 59 curLineno=2900 compiledLineno=2922

#line 59 curLineno=2900 compiledLineno=2924

          Proc.new { |_type,_tag| 
#line 59 curLineno=2900 compiledLineno=2927

#line 59 curLineno=2900 compiledLineno=2929

              Proc.new { |_thing| 
#line 59 curLineno=2900 compiledLineno=2932

#line 59 curLineno=2900 compiledLineno=2934

                  if ( 
#line 59 curLineno=2900 compiledLineno=2937

                    trampCall( callProcedure( nil, 'anonymouse', 
#line 59 curLineno=2900 compiledLineno=2940

#line 59 curLineno=2900 compiledLineno=2942

#line 59 curLineno=2900 compiledLineno=2944

                          trampCall( self._record_MIMARKpredicate_METHOD(  'record-predicate',
#line 59 curLineno=2900 compiledLineno=2947

#line 59 curLineno=2900 compiledLineno=2949

                              trampCall(@_record_MIMARKpredicate)                            ,
                          [
#line 59 curLineno=2900 compiledLineno=2953

#line 59 curLineno=2900 compiledLineno=2955

#line 59 curLineno=2900 compiledLineno=2957

                                trampCall(_type)
                          ]
                                       ))                      ,
                    [
#line 59 curLineno=2900 compiledLineno=2963

#line 59 curLineno=2900 compiledLineno=2965

#line 59 curLineno=2900 compiledLineno=2967

                          trampCall(_thing)
                    ]
                              ))
                   ) then
#line 59 curLineno=2900 compiledLineno=2973

#line 59 curLineno=2900 compiledLineno=2975

                      trampCall(_thing).get(
#line 59 curLineno=2900 compiledLineno=2978

#line 59 curLineno=2900 compiledLineno=2980

#line 59 curLineno=2900 compiledLineno=2982

                            trampCall(_tag)
                        )
                  else
#line 59 curLineno=2900 compiledLineno=2987

#line 59 curLineno=2900 compiledLineno=2989

#line 59 curLineno=2900 compiledLineno=2991

                        delayCall( '__PAMARKraise',  '%raise',
#line 59 curLineno=2900 compiledLineno=2994

#line 59 curLineno=2900 compiledLineno=2996

                            trampCall(@__PAMARKraise)                          ,
                        [
#line 59 curLineno=2900 compiledLineno=3000

#line 59 curLineno=2900 compiledLineno=3002

#line 59 curLineno=2900 compiledLineno=3004

                              trampCall(ArgumentError)                            ,
#line 59 curLineno=2900 compiledLineno=3007

#line 59 curLineno=2900 compiledLineno=3009

#line 59 curLineno=2900 compiledLineno=3011

                                trampCall( self._sprintf_METHOD(  'sprintf',
#line 59 curLineno=2900 compiledLineno=3014

#line 59 curLineno=2900 compiledLineno=3016

                                    trampCall(@_sprintf)                                  ,
                                [
#line 59 curLineno=2900 compiledLineno=3020

#line 59 curLineno=2900 compiledLineno=3022

                                    "accessor applied to bad value [%s] [%s] [%s]"                                    ,
#line 59 curLineno=2900 compiledLineno=3025

#line 59 curLineno=2900 compiledLineno=3027

                                      trampCall(_type)                                    ,
#line 59 curLineno=2900 compiledLineno=3030

#line 59 curLineno=2900 compiledLineno=3032

                                      trampCall(_tag)                                    ,
#line 59 curLineno=2900 compiledLineno=3035

#line 59 curLineno=2900 compiledLineno=3037

                                      trampCall(_thing)
                                ]
                                             ))                            ,
#line 59 curLineno=2900 compiledLineno=3042

#line 59 curLineno=2900 compiledLineno=3044

#line 59 curLineno=2900 compiledLineno=3046

                                trampCall( self._sprintf_METHOD(  'sprintf',
#line 59 curLineno=2900 compiledLineno=3049

#line 59 curLineno=2900 compiledLineno=3051

                                    trampCall(@_sprintf)                                  ,
                                [
#line 59 curLineno=2900 compiledLineno=3055

#line 59 curLineno=2900 compiledLineno=3057

                                    "%s:%s raised %s"                                    ,
#line 59 curLineno=2900 compiledLineno=3060

#line 59 curLineno=2900 compiledLineno=3062

#line 59 curLineno=2900 compiledLineno=3064

                                        trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
#line 59 curLineno=2900 compiledLineno=3067

#line 59 curLineno=2900 compiledLineno=3069

                                            trampCall(@__ASMARKFILE_ASMARK)                                          ,
                                        [
#line 59 curLineno=2900 compiledLineno=3073

                                        ]
                                                     ))                                    ,
#line 59 curLineno=2900 compiledLineno=3077

#line 59 curLineno=2900 compiledLineno=3079

#line 59 curLineno=2900 compiledLineno=3081

                                        trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
#line 59 curLineno=2900 compiledLineno=3084

#line 59 curLineno=2900 compiledLineno=3086

                                            trampCall(@__ASMARKLINE_ASMARK)                                          ,
                                        [
#line 59 curLineno=2900 compiledLineno=3090

                                        ]
                                                     ))                                    ,
#line 59 curLineno=2900 compiledLineno=3094

#line 59 curLineno=2900 compiledLineno=3096

                                      trampCall(ArgumentError)
                                ]
                                             ))
                        ]
                                     )
                  end
              }
          }
    )
  end
 )
#--------------------




























































































#line 65 curLineno=3200 compiledLineno=3200

trampCall( 
#line 65 curLineno=3200 compiledLineno=3203

  begin 
#line 65 curLineno=3200 compiledLineno=3206

    #execFunc
#line 65 curLineno=3200 compiledLineno=3209

#line 65 curLineno=3200 compiledLineno=3211

      def self._record_MIMARKmodifier_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_record_MIMARKmodifier', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_record_MIMARKmodifier'] = self.method( :_record_MIMARKmodifier_METHOD )
#line 65 curLineno=3200 compiledLineno=3215

      #execFunc(funcname=define)
    @_record_MIMARKmodifier = 
    trampCall(
#line 65 curLineno=3200 compiledLineno=3220

#line 65 curLineno=3200 compiledLineno=3222

#line 65 curLineno=3200 compiledLineno=3224

          Proc.new { |_type,_tag| 
#line 65 curLineno=3200 compiledLineno=3227

#line 65 curLineno=3200 compiledLineno=3229

              Proc.new { |_thing,_value| 
#line 65 curLineno=3200 compiledLineno=3232

#line 65 curLineno=3200 compiledLineno=3234

                  if ( 
#line 65 curLineno=3200 compiledLineno=3237

                    trampCall( callProcedure( nil, 'anonymouse', 
#line 65 curLineno=3200 compiledLineno=3240

#line 65 curLineno=3200 compiledLineno=3242

#line 65 curLineno=3200 compiledLineno=3244

                          trampCall( self._record_MIMARKpredicate_METHOD(  'record-predicate',
#line 65 curLineno=3200 compiledLineno=3247

#line 65 curLineno=3200 compiledLineno=3249

                              trampCall(@_record_MIMARKpredicate)                            ,
                          [
#line 65 curLineno=3200 compiledLineno=3253

#line 65 curLineno=3200 compiledLineno=3255

#line 65 curLineno=3200 compiledLineno=3257

                                trampCall(_type)
                          ]
                                       ))                      ,
                    [
#line 65 curLineno=3200 compiledLineno=3263

#line 65 curLineno=3200 compiledLineno=3265

#line 65 curLineno=3200 compiledLineno=3267

                          trampCall(_thing)
                    ]
                              ))
                   ) then
#line 65 curLineno=3200 compiledLineno=3273

#line 65 curLineno=3200 compiledLineno=3275

                      trampCall(_thing).set!(
#line 65 curLineno=3200 compiledLineno=3278

#line 65 curLineno=3200 compiledLineno=3280

#line 65 curLineno=3200 compiledLineno=3282

                            trampCall(_tag)                          ,
#line 65 curLineno=3200 compiledLineno=3285

#line 65 curLineno=3200 compiledLineno=3287

                            trampCall(_value)
                        )
                  else
#line 65 curLineno=3200 compiledLineno=3292

#line 65 curLineno=3200 compiledLineno=3294

#line 65 curLineno=3200 compiledLineno=3296

                        delayCall( '__PAMARKraise',  '%raise',
#line 65 curLineno=3200 compiledLineno=3299

#line 65 curLineno=3200 compiledLineno=3301

                            trampCall(@__PAMARKraise)                          ,
                        [
#line 65 curLineno=3200 compiledLineno=3305

#line 65 curLineno=3200 compiledLineno=3307

#line 65 curLineno=3200 compiledLineno=3309

                              trampCall(ArgumentError)                            ,
#line 65 curLineno=3200 compiledLineno=3312

#line 65 curLineno=3200 compiledLineno=3314

#line 65 curLineno=3200 compiledLineno=3316

                                trampCall( self._sprintf_METHOD(  'sprintf',
#line 65 curLineno=3200 compiledLineno=3319

#line 65 curLineno=3200 compiledLineno=3321

                                    trampCall(@_sprintf)                                  ,
                                [
#line 65 curLineno=3200 compiledLineno=3325

#line 65 curLineno=3200 compiledLineno=3327

                                    "modifier applied to bad value [%s] [%s] [%s]"                                    ,
#line 65 curLineno=3200 compiledLineno=3330

#line 65 curLineno=3200 compiledLineno=3332

                                      trampCall(_type)                                    ,
#line 65 curLineno=3200 compiledLineno=3335

#line 65 curLineno=3200 compiledLineno=3337

                                      trampCall(_tag)                                    ,
#line 65 curLineno=3200 compiledLineno=3340

#line 65 curLineno=3200 compiledLineno=3342

                                      trampCall(_thing)
                                ]
                                             ))                            ,
#line 65 curLineno=3200 compiledLineno=3347

#line 65 curLineno=3200 compiledLineno=3349

#line 65 curLineno=3200 compiledLineno=3351

                                trampCall( self._sprintf_METHOD(  'sprintf',
#line 65 curLineno=3200 compiledLineno=3354

#line 65 curLineno=3200 compiledLineno=3356

                                    trampCall(@_sprintf)                                  ,
                                [
#line 65 curLineno=3200 compiledLineno=3360

#line 65 curLineno=3200 compiledLineno=3362

                                    "%s:%s raised %s"                                    ,
#line 65 curLineno=3200 compiledLineno=3365

#line 65 curLineno=3200 compiledLineno=3367

#line 65 curLineno=3200 compiledLineno=3369

                                        trampCall( self.__ASMARKFILE_ASMARK_METHOD(  '*FILE*',
#line 65 curLineno=3200 compiledLineno=3372

#line 65 curLineno=3200 compiledLineno=3374

                                            trampCall(@__ASMARKFILE_ASMARK)                                          ,
                                        [
#line 65 curLineno=3200 compiledLineno=3378

                                        ]
                                                     ))                                    ,
#line 65 curLineno=3200 compiledLineno=3382

#line 65 curLineno=3200 compiledLineno=3384

#line 65 curLineno=3200 compiledLineno=3386

                                        trampCall( self.__ASMARKLINE_ASMARK_METHOD(  '*LINE*',
#line 65 curLineno=3200 compiledLineno=3389

#line 65 curLineno=3200 compiledLineno=3391

                                            trampCall(@__ASMARKLINE_ASMARK)                                          ,
                                        [
#line 65 curLineno=3200 compiledLineno=3395

                                        ]
                                                     ))                                    ,
#line 65 curLineno=3200 compiledLineno=3399

#line 65 curLineno=3200 compiledLineno=3401

                                      trampCall(ArgumentError)
                                ]
                                             ))
                        ]
                                     )
                  end
              }
          }
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------
