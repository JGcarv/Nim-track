import tables

proc toRna*(str: string): string =
    var convTable = initTable[string, string]()
    convTable["C"] = "G"
    convTable["G"] = "C"
    convTable["T"] = "A"
    convTable["A"] = "U"

    var result: string = ""
    for c in str:
        if convTable.hasKey($c):
            result.add(convTable[$c])
        else:
            raise newException(ValueError, "invalid letter")
    
    return result