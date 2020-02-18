proc isLeapYear*(year: int): bool =
    if year mod 400 == 0:
        return true
    elif year mod 100 == 0:
        return false
    elif year mod 4 == 0:
        return true 
    else:
        return false