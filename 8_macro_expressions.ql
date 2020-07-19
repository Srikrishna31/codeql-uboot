import cpp

from MacroInvocation mi
where mi.getMacroName().regexpMatch("ntoh([ls]|[l])")
select mi.getExpr()
