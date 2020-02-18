import tables
import strutils
 

proc isIsogram*(str: string): bool =
    var letters = initTable[char, bool]()

    for lt in str.toLowerAscii():
        if (letters.hasKey(lt)) and ($lt != " ") and ($lt != "-"):
            return false
        else:
            letters[lt] = true;

    return true