#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 10 curLineno=900 compiledLineno=900

trampCall( 
#line 10 curLineno=900 compiledLineno=903

#line 10 curLineno=900 compiledLineno=905

    delayCall( '_require',  'require',
#line 10 curLineno=900 compiledLineno=908

#line 10 curLineno=900 compiledLineno=910

        trampCall(@_require)      ,
    [
#line 10 curLineno=900 compiledLineno=914

#line 10 curLineno=900 compiledLineno=916

        "stringio"
    ]
                 )
 )


















































































































































































#line 12 curLineno=1100 compiledLineno=1100

trampCall( 
#line 12 curLineno=1100 compiledLineno=1103

  begin 
#line 12 curLineno=1100 compiledLineno=1106

    #execFunc
#line 12 curLineno=1100 compiledLineno=1109

#line 12 curLineno=1100 compiledLineno=1111

      def self._write_MIMARKtree_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_write_MIMARKtree', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_write_MIMARKtree'] = self.method( :_write_MIMARKtree_METHOD )
#line 12 curLineno=1100 compiledLineno=1115

      #execFunc(funcname=define)
    @_write_MIMARKtree = 
    trampCall(
#line 12 curLineno=1100 compiledLineno=1120

#line 12 curLineno=1100 compiledLineno=1122

#line 12 curLineno=1100 compiledLineno=1124

          Proc.new { |_tree,*__rest__| _out = __rest__[0] ;  
#line 12 curLineno=1100 compiledLineno=1127

#line 12 curLineno=1100 compiledLineno=1129

              begin
#line 12 curLineno=1100 compiledLineno=1132

                #makeLet
#line 12 curLineno=1100 compiledLineno=1135

                ___lambda = lambda { |_out| 
#line 12 curLineno=1100 compiledLineno=1138

#line 12 curLineno=1100 compiledLineno=1140

                    begin 
#line 12 curLineno=1100 compiledLineno=1143

                      #makeLetrec
#line 12 curLineno=1100 compiledLineno=1146

                      ___lambda = lambda { |_loop| 
#line 12 curLineno=1100 compiledLineno=1149

#line 12 curLineno=1100 compiledLineno=1151

                          _loop                           = 
#line 12 curLineno=1100 compiledLineno=1154

                            Proc.new { |_tree| 
#line 12 curLineno=1100 compiledLineno=1157

#line 12 curLineno=1100 compiledLineno=1159

                                if ( 
#line 12 curLineno=1100 compiledLineno=1162

#line 12 curLineno=1100 compiledLineno=1164

                                    _null_QUMARK(
#line 12 curLineno=1100 compiledLineno=1167

#line 12 curLineno=1100 compiledLineno=1169

                                        trampCall(_tree)
                                    )
                                 ) then
#line 12 curLineno=1100 compiledLineno=1174

#line 12 curLineno=1100 compiledLineno=1176

                                    true
                                else
#line 12 curLineno=1100 compiledLineno=1180

#line 12 curLineno=1100 compiledLineno=1182

                                    if ( 
#line 12 curLineno=1100 compiledLineno=1185

#line 12 curLineno=1100 compiledLineno=1187

                                        _pair_QUMARK(
#line 12 curLineno=1100 compiledLineno=1190

#line 12 curLineno=1100 compiledLineno=1192

                                            trampCall(_tree)
                                        )
                                     ) then
#line 12 curLineno=1100 compiledLineno=1197

#line 12 curLineno=1100 compiledLineno=1199

                                        begin 
#line 12 curLineno=1100 compiledLineno=1202

                                          #makeBegin
#line 12 curLineno=1100 compiledLineno=1205

#line 12 curLineno=1100 compiledLineno=1207

#line 12 curLineno=1100 compiledLineno=1209

                                              trampCall( self._write_MIMARKtree_METHOD(  'write-tree',
#line 12 curLineno=1100 compiledLineno=1212

#line 12 curLineno=1100 compiledLineno=1214

                                                  trampCall(@_write_MIMARKtree)                                                ,
                                              [
#line 12 curLineno=1100 compiledLineno=1218

#line 12 curLineno=1100 compiledLineno=1220

#line 12 curLineno=1100 compiledLineno=1222

#line 12 curLineno=1100 compiledLineno=1224

                                                      _car(
#line 12 curLineno=1100 compiledLineno=1227

#line 12 curLineno=1100 compiledLineno=1229

                                                          trampCall(_tree)
                                                      )                                                  ,
#line 12 curLineno=1100 compiledLineno=1233

#line 12 curLineno=1100 compiledLineno=1235

                                                    trampCall(_out)
                                              ]
                                                           ))
#line 12 curLineno=1100 compiledLineno=1240

#line 12 curLineno=1100 compiledLineno=1242

                                              delayCall( '_loop',  'loop',
#line 12 curLineno=1100 compiledLineno=1245

#line 12 curLineno=1100 compiledLineno=1247

                                                  trampCall(_loop)                                                ,
                                              [
#line 12 curLineno=1100 compiledLineno=1251

#line 12 curLineno=1100 compiledLineno=1253

#line 12 curLineno=1100 compiledLineno=1255

#line 12 curLineno=1100 compiledLineno=1257

                                                      _cdr(
#line 12 curLineno=1100 compiledLineno=1260

#line 12 curLineno=1100 compiledLineno=1262

                                                          trampCall(_tree)
                                                      )
                                              ]
                                                           )
                                        end
                                    else
#line 12 curLineno=1100 compiledLineno=1270

#line 12 curLineno=1100 compiledLineno=1272

                                        if ( 
                                        true
                                         ) then
#line 12 curLineno=1100 compiledLineno=1277

#line 12 curLineno=1100 compiledLineno=1279

#line 12 curLineno=1100 compiledLineno=1281

                                              trampCall(_out).print(
#line 12 curLineno=1100 compiledLineno=1284

#line 12 curLineno=1100 compiledLineno=1286

#line 12 curLineno=1100 compiledLineno=1288

                                                    trampCall(_tree)
                                                )
                                        else
#line 12 curLineno=1100 compiledLineno=1293

#line 12 curLineno=1100 compiledLineno=1295

                                            Cell.new()
                                        end
                                    end
                                end
                            }
#line 12 curLineno=1100 compiledLineno=1302

#line 12 curLineno=1100 compiledLineno=1304

#line 12 curLineno=1100 compiledLineno=1306

                            delayCall( '_loop',  'loop',
#line 12 curLineno=1100 compiledLineno=1309

#line 12 curLineno=1100 compiledLineno=1311

                                trampCall(_loop)                              ,
                            [
#line 12 curLineno=1100 compiledLineno=1315

#line 12 curLineno=1100 compiledLineno=1317

#line 12 curLineno=1100 compiledLineno=1319

                                  trampCall(_tree)
                            ]
                                         )
                      } ; ___lambda.call(
                      nil
                                 )
                    end
                } ; ___lambda.call(
#line 12 curLineno=1100 compiledLineno=1329

#line 12 curLineno=1100 compiledLineno=1331

#line 12 curLineno=1100 compiledLineno=1333

                      if ( 
#line 12 curLineno=1100 compiledLineno=1336

#line 12 curLineno=1100 compiledLineno=1338

                          _null_QUMARK(
#line 12 curLineno=1100 compiledLineno=1341

#line 12 curLineno=1100 compiledLineno=1343

                              trampCall(_out)
                          )
                       ) then
#line 12 curLineno=1100 compiledLineno=1348

#line 12 curLineno=1100 compiledLineno=1350

                          trampCall(STDOUT)
                      else
#line 12 curLineno=1100 compiledLineno=1354

#line 12 curLineno=1100 compiledLineno=1356

#line 12 curLineno=1100 compiledLineno=1358

                            delayCall( '_car',  'car',
#line 12 curLineno=1100 compiledLineno=1361

#line 12 curLineno=1100 compiledLineno=1363

                                trampCall(@_car)                              ,
                            [
#line 12 curLineno=1100 compiledLineno=1367

#line 12 curLineno=1100 compiledLineno=1369

#line 12 curLineno=1100 compiledLineno=1371

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













































































































































































































































































































































































































































































































































































































































































































































#line 22 curLineno=2100 compiledLineno=2100

trampCall( 
#line 22 curLineno=2100 compiledLineno=2103

  begin 
#line 22 curLineno=2100 compiledLineno=2106

    #execFunc
#line 22 curLineno=2100 compiledLineno=2109

#line 22 curLineno=2100 compiledLineno=2111

      def self._tree_MIMARK_GTMARKstring_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_tree_MIMARK_GTMARKstring', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end
      @global_lisp_binding['_tree_MIMARK_GTMARKstring'] = self.method( :_tree_MIMARK_GTMARKstring_METHOD )
#line 22 curLineno=2100 compiledLineno=2115

      #execFunc(funcname=define)
    @_tree_MIMARK_GTMARKstring = 
    trampCall(
#line 22 curLineno=2100 compiledLineno=2120

#line 22 curLineno=2100 compiledLineno=2122

#line 22 curLineno=2100 compiledLineno=2124

          Proc.new { |_tree| 
#line 22 curLineno=2100 compiledLineno=2127

#line 22 curLineno=2100 compiledLineno=2129

              begin
#line 22 curLineno=2100 compiledLineno=2132

                #makeLet
#line 22 curLineno=2100 compiledLineno=2135

                ___lambda = lambda { |_sio| 
#line 22 curLineno=2100 compiledLineno=2138

#line 22 curLineno=2100 compiledLineno=2140

#line 22 curLineno=2100 compiledLineno=2142

                      trampCall( self._write_MIMARKtree_METHOD(  'write-tree',
#line 22 curLineno=2100 compiledLineno=2145

#line 22 curLineno=2100 compiledLineno=2147

                          trampCall(@_write_MIMARKtree)                        ,
                      [
#line 22 curLineno=2100 compiledLineno=2151

#line 22 curLineno=2100 compiledLineno=2153

#line 22 curLineno=2100 compiledLineno=2155

                            trampCall(_tree)                          ,
#line 22 curLineno=2100 compiledLineno=2158

#line 22 curLineno=2100 compiledLineno=2160

                            trampCall(_sio)
                      ]
                                   ))
#line 22 curLineno=2100 compiledLineno=2165

                    trampCall(_sio).string(
#line 22 curLineno=2100 compiledLineno=2168

                      )
                } ; ___lambda.call(
#line 22 curLineno=2100 compiledLineno=2172

#line 22 curLineno=2100 compiledLineno=2174

#line 22 curLineno=2100 compiledLineno=2176

                      trampCall(StringIO).new(
#line 22 curLineno=2100 compiledLineno=2179

#line 22 curLineno=2100 compiledLineno=2181

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
