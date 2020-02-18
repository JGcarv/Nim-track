import strutils

proc isPangram*(str: string): bool =
    var lowered:string = str.toLowerAscii()  
    const alphabet = "abcdefghijklmnoprqstuvwxyz"
    for c in alphabet:
        if (lowered.find($c) == -1):
            return false

    return true