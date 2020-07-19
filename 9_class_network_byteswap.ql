import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {       
        exists(MacroInvocation m | m.getMacroName().regexpMatch("ntoh([ls]|[l])") and this = m.getExpr())
    }
}

from NetworkByteSwap n
select n, "Network byte swap"