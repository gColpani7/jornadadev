//REQUEST HB_CODEPAGE_UTF8

FUNCTION soma(num1, num2)
    LOCAL nResult
    nResult := num1 + num2
    Qout("Resultado: " + str(nResult))
RETURN NIL


FUNCTION Main()
    local nTmp
    hb_cdpselect("UTF8")
    nTmp:= soma(10, 10)
RETURN NIL

