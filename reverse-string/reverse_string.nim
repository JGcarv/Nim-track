proc reverse*(str: string): string =
    var result = ""
    for i in countdown(str.len - 1, 0):
        result.add(str[i])
    return result