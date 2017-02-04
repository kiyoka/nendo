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

        "json"
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

        "util/list"
    ]
                 )
 )
#--------------------

































































































































#line 41 curLineno=2000 compiledLineno=2000

trampCall( 
#line 41 curLineno=2000 compiledLineno=2003

  begin 
#line 41 curLineno=2000 compiledLineno=2006

    #execFunc
#line 41 curLineno=2000 compiledLineno=2009

#line 41 curLineno=2000 compiledLineno=2011

      def self.__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist'] = self.method( :__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist_METHOD )
#line 41 curLineno=2000 compiledLineno=2015

      #execFunc(funcname=define)
    @__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist = 
    trampCall(
#line 41 curLineno=2000 compiledLineno=2020

#line 41 curLineno=2000 compiledLineno=2022

#line 41 curLineno=2000 compiledLineno=2024

          Proc.new { |_obj| 
#line 41 curLineno=2000 compiledLineno=2027

#line 41 curLineno=2000 compiledLineno=2029

              if ( 
#line 41 curLineno=2000 compiledLineno=2032

#line 41 curLineno=2000 compiledLineno=2034

                  _null_QUMARK(
#line 41 curLineno=2000 compiledLineno=2037

#line 41 curLineno=2000 compiledLineno=2039

                      trampCall(_obj)
                  )
               ) then
#line 41 curLineno=2000 compiledLineno=2044

#line 41 curLineno=2000 compiledLineno=2046

#line 41 curLineno=2000 compiledLineno=2048

                    trampCall(_obj)
              else
#line 41 curLineno=2000 compiledLineno=2052

#line 41 curLineno=2000 compiledLineno=2054

                  if ( 
#line 41 curLineno=2000 compiledLineno=2057

#line 41 curLineno=2000 compiledLineno=2059

                      trampCall( self._vector_QUMARK_METHOD(  'vector?',
#line 41 curLineno=2000 compiledLineno=2062

#line 41 curLineno=2000 compiledLineno=2064

                          trampCall(@_vector_QUMARK)                        ,
                      [
#line 41 curLineno=2000 compiledLineno=2068

#line 41 curLineno=2000 compiledLineno=2070

#line 41 curLineno=2000 compiledLineno=2072

                            trampCall(_obj)
                      ]
                                   ))
                   ) then
#line 41 curLineno=2000 compiledLineno=2078

#line 41 curLineno=2000 compiledLineno=2080

#line 41 curLineno=2000 compiledLineno=2082

#line 41 curLineno=2000 compiledLineno=2084

                          delayCall( '_list_MIMARK_GTMARKvector',  'list->vector',
#line 41 curLineno=2000 compiledLineno=2087

#line 41 curLineno=2000 compiledLineno=2089

                              trampCall(@_list_MIMARK_GTMARKvector)                            ,
                          [
#line 41 curLineno=2000 compiledLineno=2093

#line 41 curLineno=2000 compiledLineno=2095

#line 41 curLineno=2000 compiledLineno=2097

#line 41 curLineno=2000 compiledLineno=2099

                                  trampCall( self._map_METHOD(  'map',
#line 41 curLineno=2000 compiledLineno=2102

#line 41 curLineno=2000 compiledLineno=2104

                                      trampCall(@_map)                                    ,
                                  [
#line 41 curLineno=2000 compiledLineno=2108

#line 41 curLineno=2000 compiledLineno=2110

#line 41 curLineno=2000 compiledLineno=2112

                                        Proc.new { |_x| 
#line 41 curLineno=2000 compiledLineno=2115

#line 41 curLineno=2000 compiledLineno=2117

#line 41 curLineno=2000 compiledLineno=2119

                                              trampCall( self.__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist_METHOD(  '%json:hash-table->alist',
#line 41 curLineno=2000 compiledLineno=2122

#line 41 curLineno=2000 compiledLineno=2124

                                                  trampCall(@__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist)                                                ,
                                              [
#line 41 curLineno=2000 compiledLineno=2128

#line 41 curLineno=2000 compiledLineno=2130

#line 41 curLineno=2000 compiledLineno=2132

                                                    trampCall(_x)
                                              ]
                                                           ))
                                        }                                      ,
#line 41 curLineno=2000 compiledLineno=2138

#line 41 curLineno=2000 compiledLineno=2140

#line 41 curLineno=2000 compiledLineno=2142

                                          trampCall( self._vector_MIMARK_GTMARKlist_METHOD(  'vector->list',
#line 41 curLineno=2000 compiledLineno=2145

#line 41 curLineno=2000 compiledLineno=2147

                                              trampCall(@_vector_MIMARK_GTMARKlist)                                            ,
                                          [
#line 41 curLineno=2000 compiledLineno=2151

#line 41 curLineno=2000 compiledLineno=2153

#line 41 curLineno=2000 compiledLineno=2155

                                                trampCall(_obj)
                                          ]
                                                       ))
                                  ]
                                               ))
                          ]
                                       )
                  else
#line 41 curLineno=2000 compiledLineno=2165

#line 41 curLineno=2000 compiledLineno=2167

                      if ( 
#line 41 curLineno=2000 compiledLineno=2170

#line 41 curLineno=2000 compiledLineno=2172

                          trampCall( self._hash_MIMARKtable_QUMARK_METHOD(  'hash-table?',
#line 41 curLineno=2000 compiledLineno=2175

#line 41 curLineno=2000 compiledLineno=2177

                              trampCall(@_hash_MIMARKtable_QUMARK)                            ,
                          [
#line 41 curLineno=2000 compiledLineno=2181

#line 41 curLineno=2000 compiledLineno=2183

#line 41 curLineno=2000 compiledLineno=2185

                                trampCall(_obj)
                          ]
                                       ))
                       ) then
#line 41 curLineno=2000 compiledLineno=2191

#line 41 curLineno=2000 compiledLineno=2193

#line 41 curLineno=2000 compiledLineno=2195

#line 41 curLineno=2000 compiledLineno=2197

                              delayCall( '_map',  'map',
#line 41 curLineno=2000 compiledLineno=2200

#line 41 curLineno=2000 compiledLineno=2202

                                  trampCall(@_map)                                ,
                              [
#line 41 curLineno=2000 compiledLineno=2206

#line 41 curLineno=2000 compiledLineno=2208

#line 41 curLineno=2000 compiledLineno=2210

                                    Proc.new { |_entry| 
#line 41 curLineno=2000 compiledLineno=2213

#line 41 curLineno=2000 compiledLineno=2215

#line 41 curLineno=2000 compiledLineno=2217

                                          _cons(
#line 41 curLineno=2000 compiledLineno=2220

#line 41 curLineno=2000 compiledLineno=2222

#line 41 curLineno=2000 compiledLineno=2224

                                                _car(
#line 41 curLineno=2000 compiledLineno=2227

#line 41 curLineno=2000 compiledLineno=2229

                                                    trampCall(_entry)
                                                )                                            ,
#line 41 curLineno=2000 compiledLineno=2233

#line 41 curLineno=2000 compiledLineno=2235

#line 41 curLineno=2000 compiledLineno=2237

                                                trampCall( self.__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist_METHOD(  '%json:hash-table->alist',
#line 41 curLineno=2000 compiledLineno=2240

#line 41 curLineno=2000 compiledLineno=2242

                                                    trampCall(@__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist)                                                  ,
                                                [
#line 41 curLineno=2000 compiledLineno=2246

#line 41 curLineno=2000 compiledLineno=2248

#line 41 curLineno=2000 compiledLineno=2250

#line 41 curLineno=2000 compiledLineno=2252

                                                        _cdr(
#line 41 curLineno=2000 compiledLineno=2255

#line 41 curLineno=2000 compiledLineno=2257

                                                            trampCall(_entry)
                                                        )
                                                ]
                                                             ))
                                          )
                                    }                                  ,
#line 41 curLineno=2000 compiledLineno=2265

#line 41 curLineno=2000 compiledLineno=2267

#line 41 curLineno=2000 compiledLineno=2269

                                      trampCall( self._hash_MIMARKtable_MIMARK_GTMARKalist_METHOD(  'hash-table->alist',
#line 41 curLineno=2000 compiledLineno=2272

#line 41 curLineno=2000 compiledLineno=2274

                                          trampCall(@_hash_MIMARKtable_MIMARK_GTMARKalist)                                        ,
                                      [
#line 41 curLineno=2000 compiledLineno=2278

#line 41 curLineno=2000 compiledLineno=2280

#line 41 curLineno=2000 compiledLineno=2282

                                            trampCall(_obj)
                                      ]
                                                   ))
                              ]
                                           )
                      else
#line 41 curLineno=2000 compiledLineno=2290

#line 41 curLineno=2000 compiledLineno=2292

                          if ( 
                          true
                           ) then
#line 41 curLineno=2000 compiledLineno=2297

#line 41 curLineno=2000 compiledLineno=2299

#line 41 curLineno=2000 compiledLineno=2301

                                trampCall(_obj)
                          else
#line 41 curLineno=2000 compiledLineno=2305

#line 41 curLineno=2000 compiledLineno=2307

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

























































































































































































































































































































































































































































































































































































































































#line 60 curLineno=2950 compiledLineno=2950

trampCall( 
#line 60 curLineno=2950 compiledLineno=2953

  begin 
#line 60 curLineno=2950 compiledLineno=2956

    #execFunc
#line 60 curLineno=2950 compiledLineno=2959

#line 60 curLineno=2950 compiledLineno=2961

      def self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable'] = self.method( :__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD )
#line 60 curLineno=2950 compiledLineno=2965

      #execFunc(funcname=define)
    @__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable = 
    trampCall(
#line 60 curLineno=2950 compiledLineno=2970

#line 60 curLineno=2950 compiledLineno=2972

#line 60 curLineno=2950 compiledLineno=2974

          Proc.new { |_obj| 
#line 60 curLineno=2950 compiledLineno=2977

#line 60 curLineno=2950 compiledLineno=2979

              if ( 
#line 60 curLineno=2950 compiledLineno=2982

#line 60 curLineno=2950 compiledLineno=2984

                  _null_QUMARK(
#line 60 curLineno=2950 compiledLineno=2987

#line 60 curLineno=2950 compiledLineno=2989

                      trampCall(_obj)
                  )
               ) then
#line 60 curLineno=2950 compiledLineno=2994

#line 60 curLineno=2950 compiledLineno=2996

#line 60 curLineno=2950 compiledLineno=2998

#line 60 curLineno=2950 compiledLineno=3000

                      delayCall( '_make_MIMARKhash_MIMARKtable',  'make-hash-table',
#line 60 curLineno=2950 compiledLineno=3003

#line 60 curLineno=2950 compiledLineno=3005

                          trampCall(@_make_MIMARKhash_MIMARKtable)                        ,
                      [
#line 60 curLineno=2950 compiledLineno=3009

                      ]
                                   )
              else
#line 60 curLineno=2950 compiledLineno=3014

#line 60 curLineno=2950 compiledLineno=3016

                  if ( 
#line 60 curLineno=2950 compiledLineno=3019

#line 60 curLineno=2950 compiledLineno=3021

                      trampCall( self._vector_QUMARK_METHOD(  'vector?',
#line 60 curLineno=2950 compiledLineno=3024

#line 60 curLineno=2950 compiledLineno=3026

                          trampCall(@_vector_QUMARK)                        ,
                      [
#line 60 curLineno=2950 compiledLineno=3030

#line 60 curLineno=2950 compiledLineno=3032

#line 60 curLineno=2950 compiledLineno=3034

                            trampCall(_obj)
                      ]
                                   ))
                   ) then
#line 60 curLineno=2950 compiledLineno=3040

#line 60 curLineno=2950 compiledLineno=3042

#line 60 curLineno=2950 compiledLineno=3044

#line 60 curLineno=2950 compiledLineno=3046

                          delayCall( '_list_MIMARK_GTMARKvector',  'list->vector',
#line 60 curLineno=2950 compiledLineno=3049

#line 60 curLineno=2950 compiledLineno=3051

                              trampCall(@_list_MIMARK_GTMARKvector)                            ,
                          [
#line 60 curLineno=2950 compiledLineno=3055

#line 60 curLineno=2950 compiledLineno=3057

#line 60 curLineno=2950 compiledLineno=3059

#line 60 curLineno=2950 compiledLineno=3061

                                  trampCall( self._map_METHOD(  'map',
#line 60 curLineno=2950 compiledLineno=3064

#line 60 curLineno=2950 compiledLineno=3066

                                      trampCall(@_map)                                    ,
                                  [
#line 60 curLineno=2950 compiledLineno=3070

#line 60 curLineno=2950 compiledLineno=3072

#line 60 curLineno=2950 compiledLineno=3074

                                        Proc.new { |_x| 
#line 60 curLineno=2950 compiledLineno=3077

#line 60 curLineno=2950 compiledLineno=3079

#line 60 curLineno=2950 compiledLineno=3081

                                              trampCall( self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD(  '%json:alist->hash-table',
#line 60 curLineno=2950 compiledLineno=3084

#line 60 curLineno=2950 compiledLineno=3086

                                                  trampCall(@__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable)                                                ,
                                              [
#line 60 curLineno=2950 compiledLineno=3090

#line 60 curLineno=2950 compiledLineno=3092

#line 60 curLineno=2950 compiledLineno=3094

                                                    trampCall(_x)
                                              ]
                                                           ))
                                        }                                      ,
#line 60 curLineno=2950 compiledLineno=3100

#line 60 curLineno=2950 compiledLineno=3102

#line 60 curLineno=2950 compiledLineno=3104

                                          trampCall( self._vector_MIMARK_GTMARKlist_METHOD(  'vector->list',
#line 60 curLineno=2950 compiledLineno=3107

#line 60 curLineno=2950 compiledLineno=3109

                                              trampCall(@_vector_MIMARK_GTMARKlist)                                            ,
                                          [
#line 60 curLineno=2950 compiledLineno=3113

#line 60 curLineno=2950 compiledLineno=3115

#line 60 curLineno=2950 compiledLineno=3117

                                                trampCall(_obj)
                                          ]
                                                       ))
                                  ]
                                               ))
                          ]
                                       )
                  else
#line 60 curLineno=2950 compiledLineno=3127

#line 60 curLineno=2950 compiledLineno=3129

                      if ( 
#line 60 curLineno=2950 compiledLineno=3132

#line 60 curLineno=2950 compiledLineno=3134

                          _pair_QUMARK(
#line 60 curLineno=2950 compiledLineno=3137

#line 60 curLineno=2950 compiledLineno=3139

                              trampCall(_obj)
                          )
                       ) then
#line 60 curLineno=2950 compiledLineno=3144

#line 60 curLineno=2950 compiledLineno=3146

#line 60 curLineno=2950 compiledLineno=3148

#line 60 curLineno=2950 compiledLineno=3150

                              delayCall( '_alist_MIMARK_GTMARKhash_MIMARKtable',  'alist->hash-table',
#line 60 curLineno=2950 compiledLineno=3153

#line 60 curLineno=2950 compiledLineno=3155

                                  trampCall(@_alist_MIMARK_GTMARKhash_MIMARKtable)                                ,
                              [
#line 60 curLineno=2950 compiledLineno=3159

#line 60 curLineno=2950 compiledLineno=3161

#line 60 curLineno=2950 compiledLineno=3163

#line 60 curLineno=2950 compiledLineno=3165

                                      trampCall( self._map_METHOD(  'map',
#line 60 curLineno=2950 compiledLineno=3168

#line 60 curLineno=2950 compiledLineno=3170

                                          trampCall(@_map)                                        ,
                                      [
#line 60 curLineno=2950 compiledLineno=3174

#line 60 curLineno=2950 compiledLineno=3176

#line 60 curLineno=2950 compiledLineno=3178

                                            Proc.new { |_entry| 
#line 60 curLineno=2950 compiledLineno=3181

#line 60 curLineno=2950 compiledLineno=3183

#line 60 curLineno=2950 compiledLineno=3185

                                                  _cons(
#line 60 curLineno=2950 compiledLineno=3188

#line 60 curLineno=2950 compiledLineno=3190

#line 60 curLineno=2950 compiledLineno=3192

                                                        _car(
#line 60 curLineno=2950 compiledLineno=3195

#line 60 curLineno=2950 compiledLineno=3197

                                                            trampCall(_entry)
                                                        )                                                    ,
#line 60 curLineno=2950 compiledLineno=3201

#line 60 curLineno=2950 compiledLineno=3203

#line 60 curLineno=2950 compiledLineno=3205

                                                        trampCall( self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD(  '%json:alist->hash-table',
#line 60 curLineno=2950 compiledLineno=3208

#line 60 curLineno=2950 compiledLineno=3210

                                                            trampCall(@__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable)                                                          ,
                                                        [
#line 60 curLineno=2950 compiledLineno=3214

#line 60 curLineno=2950 compiledLineno=3216

#line 60 curLineno=2950 compiledLineno=3218

#line 60 curLineno=2950 compiledLineno=3220

                                                                _cdr(
#line 60 curLineno=2950 compiledLineno=3223

#line 60 curLineno=2950 compiledLineno=3225

                                                                    trampCall(_entry)
                                                                )
                                                        ]
                                                                     ))
                                                  )
                                            }                                          ,
#line 60 curLineno=2950 compiledLineno=3233

#line 60 curLineno=2950 compiledLineno=3235

                                            trampCall(_obj)
                                      ]
                                                   ))
                              ]
                                           )
                      else
#line 60 curLineno=2950 compiledLineno=3243

#line 60 curLineno=2950 compiledLineno=3245

                          if ( 
                          true
                           ) then
#line 60 curLineno=2950 compiledLineno=3250

#line 60 curLineno=2950 compiledLineno=3252

#line 60 curLineno=2950 compiledLineno=3254

                                trampCall(_obj)
                          else
#line 60 curLineno=2950 compiledLineno=3258

#line 60 curLineno=2950 compiledLineno=3260

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
















































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 84 curLineno=4150 compiledLineno=4150

trampCall( 
#line 84 curLineno=4150 compiledLineno=4153

  begin 
#line 84 curLineno=4150 compiledLineno=4156

    #execFunc
#line 84 curLineno=4150 compiledLineno=4159

#line 84 curLineno=4150 compiledLineno=4161

      def self._parse_MIMARKjson_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_parse_MIMARKjson_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_parse_MIMARKjson_MIMARKstring'] = self.method( :_parse_MIMARKjson_MIMARKstring_METHOD )
#line 84 curLineno=4150 compiledLineno=4165

      #execFunc(funcname=define)
    @_parse_MIMARKjson_MIMARKstring = 
    trampCall(
#line 84 curLineno=4150 compiledLineno=4170

#line 84 curLineno=4150 compiledLineno=4172

#line 84 curLineno=4150 compiledLineno=4174

          Proc.new { |_str| 
#line 84 curLineno=4150 compiledLineno=4177

#line 84 curLineno=4150 compiledLineno=4179

#line 84 curLineno=4150 compiledLineno=4181

                delayCall( '__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist',  '%json:hash-table->alist',
#line 84 curLineno=4150 compiledLineno=4184

#line 84 curLineno=4150 compiledLineno=4186

                    trampCall(@__PAMARKjson_COMARKhash_MIMARKtable_MIMARK_GTMARKalist)                  ,
                [
#line 84 curLineno=4150 compiledLineno=4190

#line 84 curLineno=4150 compiledLineno=4192

#line 84 curLineno=4150 compiledLineno=4194

                      trampCall(JSON).parse(
#line 84 curLineno=4150 compiledLineno=4197

#line 84 curLineno=4150 compiledLineno=4199

#line 84 curLineno=4150 compiledLineno=4201

                            trampCall(_str)
                        )
                ]
                             )
          }
    )
  end
 )
#--------------------












































































































































#line 88 curLineno=4350 compiledLineno=4350

trampCall( 
#line 88 curLineno=4350 compiledLineno=4353

  begin 
#line 88 curLineno=4350 compiledLineno=4356

    #execFunc
#line 88 curLineno=4350 compiledLineno=4359

#line 88 curLineno=4350 compiledLineno=4361

      def self._parse_MIMARKjson_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_parse_MIMARKjson', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_parse_MIMARKjson'] = self.method( :_parse_MIMARKjson_METHOD )
#line 88 curLineno=4350 compiledLineno=4365

      #execFunc(funcname=define)
    @_parse_MIMARKjson = 
    trampCall(
#line 88 curLineno=4350 compiledLineno=4370

#line 88 curLineno=4350 compiledLineno=4372

#line 88 curLineno=4350 compiledLineno=4374

          Proc.new { |*__rest__| _io = __rest__[0] ;  
#line 88 curLineno=4350 compiledLineno=4377

#line 88 curLineno=4350 compiledLineno=4379

              begin
#line 88 curLineno=4350 compiledLineno=4382

                #makeLet
#line 88 curLineno=4350 compiledLineno=4385

                ___lambda = lambda { |__| 
#line 88 curLineno=4350 compiledLineno=4388

#line 88 curLineno=4350 compiledLineno=4390

                    begin
#line 88 curLineno=4350 compiledLineno=4393

                      #makeLet
#line 88 curLineno=4350 compiledLineno=4396

                      ___lambda = lambda { |_str| 
#line 88 curLineno=4350 compiledLineno=4399

#line 88 curLineno=4350 compiledLineno=4401

#line 88 curLineno=4350 compiledLineno=4403

                            delayCall( '_parse_MIMARKjson_MIMARKstring',  'parse-json-string',
#line 88 curLineno=4350 compiledLineno=4406

#line 88 curLineno=4350 compiledLineno=4408

                                trampCall(@_parse_MIMARKjson_MIMARKstring)                              ,
                            [
#line 88 curLineno=4350 compiledLineno=4412

#line 88 curLineno=4350 compiledLineno=4414

#line 88 curLineno=4350 compiledLineno=4416

                                  trampCall(_str)
                            ]
                                         )
                      } ; ___lambda.call(
#line 88 curLineno=4350 compiledLineno=4422

#line 88 curLineno=4350 compiledLineno=4424

#line 88 curLineno=4350 compiledLineno=4426

                            trampCall(__).read(
#line 88 curLineno=4350 compiledLineno=4429

                              )
                                 )
                    end
                } ; ___lambda.call(
#line 88 curLineno=4350 compiledLineno=4435

#line 88 curLineno=4350 compiledLineno=4437

#line 88 curLineno=4350 compiledLineno=4439

                      begin
#line 88 curLineno=4350 compiledLineno=4442

                        #makeLet
#line 88 curLineno=4350 compiledLineno=4445

                        ___lambda = lambda { |___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90188| 
#line 88 curLineno=4350 compiledLineno=4448

#line 88 curLineno=4350 compiledLineno=4450

                            if ( 
#line 88 curLineno=4350 compiledLineno=4453

#line 88 curLineno=4350 compiledLineno=4455

                                _null_QUMARK(
#line 88 curLineno=4350 compiledLineno=4458

#line 88 curLineno=4350 compiledLineno=4460

                                    trampCall(___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90188)
                                )
                             ) then
#line 88 curLineno=4350 compiledLineno=4465

#line 88 curLineno=4350 compiledLineno=4467

                                trampCall(STDIN)
                            else
#line 88 curLineno=4350 compiledLineno=4471

#line 88 curLineno=4350 compiledLineno=4473

#line 88 curLineno=4350 compiledLineno=4475

                                  delayCall( '_car',  'car',
#line 88 curLineno=4350 compiledLineno=4478

#line 88 curLineno=4350 compiledLineno=4480

                                      trampCall(@_car)                                    ,
                                  [
#line 88 curLineno=4350 compiledLineno=4484

#line 88 curLineno=4350 compiledLineno=4486

#line 88 curLineno=4350 compiledLineno=4488

                                        trampCall(___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90188)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
#line 88 curLineno=4350 compiledLineno=4495

#line 88 curLineno=4350 compiledLineno=4497

#line 88 curLineno=4350 compiledLineno=4499

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

















































































































































































































































#line 96 curLineno=4750 compiledLineno=4750

trampCall( 
#line 96 curLineno=4750 compiledLineno=4753

  begin 
#line 96 curLineno=4750 compiledLineno=4756

    #execFunc
#line 96 curLineno=4750 compiledLineno=4759

#line 96 curLineno=4750 compiledLineno=4761

      def self._construct_MIMARKjson_MIMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_construct_MIMARKjson_MIMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_construct_MIMARKjson_MIMARKstring'] = self.method( :_construct_MIMARKjson_MIMARKstring_METHOD )
#line 96 curLineno=4750 compiledLineno=4765

      #execFunc(funcname=define)
    @_construct_MIMARKjson_MIMARKstring = 
    trampCall(
#line 96 curLineno=4750 compiledLineno=4770

#line 96 curLineno=4750 compiledLineno=4772

#line 96 curLineno=4750 compiledLineno=4774

          Proc.new { |_obj| 
#line 96 curLineno=4750 compiledLineno=4777

#line 96 curLineno=4750 compiledLineno=4779

              trampCall(JSON).dump(
#line 96 curLineno=4750 compiledLineno=4782

#line 96 curLineno=4750 compiledLineno=4784

#line 96 curLineno=4750 compiledLineno=4786

#line 96 curLineno=4750 compiledLineno=4788

                      trampCall( self.__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable_METHOD(  '%json:alist->hash-table',
#line 96 curLineno=4750 compiledLineno=4791

#line 96 curLineno=4750 compiledLineno=4793

                          trampCall(@__PAMARKjson_COMARKalist_MIMARK_GTMARKhash_MIMARKtable)                        ,
                      [
#line 96 curLineno=4750 compiledLineno=4797

#line 96 curLineno=4750 compiledLineno=4799

#line 96 curLineno=4750 compiledLineno=4801

                            trampCall(_obj)
                      ]
                                   ))
                )
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

      def self._construct_MIMARKjson_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_construct_MIMARKjson', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_construct_MIMARKjson'] = self.method( :_construct_MIMARKjson_METHOD )
#line 100 curLineno=4950 compiledLineno=4965

      #execFunc(funcname=define)
    @_construct_MIMARKjson = 
    trampCall(
#line 100 curLineno=4950 compiledLineno=4970

#line 100 curLineno=4950 compiledLineno=4972

#line 100 curLineno=4950 compiledLineno=4974

          Proc.new { |_obj,*__rest__| _io = __rest__[0] ;  
#line 100 curLineno=4950 compiledLineno=4977

#line 100 curLineno=4950 compiledLineno=4979

              begin
#line 100 curLineno=4950 compiledLineno=4982

                #makeLet
#line 100 curLineno=4950 compiledLineno=4985

                ___lambda = lambda { |__| 
#line 100 curLineno=4950 compiledLineno=4988

#line 100 curLineno=4950 compiledLineno=4990

                    trampCall(__).print(
#line 100 curLineno=4950 compiledLineno=4993

#line 100 curLineno=4950 compiledLineno=4995

#line 100 curLineno=4950 compiledLineno=4997

#line 100 curLineno=4950 compiledLineno=4999

                            trampCall( self._construct_MIMARKjson_MIMARKstring_METHOD(  'construct-json-string',
#line 100 curLineno=4950 compiledLineno=5002

#line 100 curLineno=4950 compiledLineno=5004

                                trampCall(@_construct_MIMARKjson_MIMARKstring)                              ,
                            [
#line 100 curLineno=4950 compiledLineno=5008

#line 100 curLineno=4950 compiledLineno=5010

#line 100 curLineno=4950 compiledLineno=5012

                                  trampCall(_obj)
                            ]
                                         ))
                      )
                } ; ___lambda.call(
#line 100 curLineno=4950 compiledLineno=5019

#line 100 curLineno=4950 compiledLineno=5021

#line 100 curLineno=4950 compiledLineno=5023

                      begin
#line 100 curLineno=4950 compiledLineno=5026

                        #makeLet
#line 100 curLineno=4950 compiledLineno=5029

                        ___lambda = lambda { |___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90189| 
#line 100 curLineno=4950 compiledLineno=5032

#line 100 curLineno=4950 compiledLineno=5034

                            if ( 
#line 100 curLineno=4950 compiledLineno=5037

#line 100 curLineno=4950 compiledLineno=5039

                                _null_QUMARK(
#line 100 curLineno=4950 compiledLineno=5042

#line 100 curLineno=4950 compiledLineno=5044

                                    trampCall(___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90189)
                                )
                             ) then
#line 100 curLineno=4950 compiledLineno=5049

#line 100 curLineno=4950 compiledLineno=5051

                                trampCall(STDOUT)
                            else
#line 100 curLineno=4950 compiledLineno=5055

#line 100 curLineno=4950 compiledLineno=5057

#line 100 curLineno=4950 compiledLineno=5059

                                  delayCall( '_car',  'car',
#line 100 curLineno=4950 compiledLineno=5062

#line 100 curLineno=4950 compiledLineno=5064

                                      trampCall(@_car)                                    ,
                                  [
#line 100 curLineno=4950 compiledLineno=5068

#line 100 curLineno=4950 compiledLineno=5070

#line 100 curLineno=4950 compiledLineno=5072

                                        trampCall(___gensym__6d159efe5170a605fc9e84dcf91a427e3f7e5718_90189)
                                  ]
                                               )
                            end
                        } ; ___lambda.call(
#line 100 curLineno=4950 compiledLineno=5079

#line 100 curLineno=4950 compiledLineno=5081

#line 100 curLineno=4950 compiledLineno=5083

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
