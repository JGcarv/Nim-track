proc distance*(str1: string, str2: string): int =
    if (str1.len != str2.len):
        raise newException(ValueError, "invalid strings")
    

    for index, letter in str1:
        
        if $letter != $str2[index]:
            result += 1

    return result;