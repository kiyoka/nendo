#
#    This file is nendo's compiled library file. 
#    generated  "nendo -c src" command. 
# 

trampCall( 
    delayCall( '_require',  'require',
        trampCall(@_require)      ,
    [
        "syslog"
    ]
                 )
 )
#--------------------

trampCall( 
  begin #execFunc
      def self._debug_MIMARKprint_MIMARKoutput_MIMARKfunc_METHOD( origname, pred, args )   lispMethodEntry( origname, true ) ;   ret = callProcedure( '_debug_MIMARKprint_MIMARKoutput_MIMARKfunc', origname, pred, args ) ;  lispMethodExit( origname,  true ) ;   return ret end 
      @global_lisp_binding['_debug_MIMARKprint_MIMARKoutput_MIMARKfunc'] = self.method( :_debug_MIMARKprint_MIMARKoutput_MIMARKfunc_METHOD )
    @_debug_MIMARKprint_MIMARKoutput_MIMARKfunc = 
    trampCall(
          Proc.new { |_str| 
              trampCall(Syslog).open(
                )
              trampCall(Syslog).log(
                    trampCall(Syslog::LOG_WARNING)                  ,
                  "%s"                  ,
                      ( 
                      "Nendo: "                      +
                        trampCall(_str)
                       ) 
                )
              trampCall(Syslog).close(
                )
          }
    )
  end
 )


# -------------------------------------------------------
# [EOF]
# -------------------------------------------------------