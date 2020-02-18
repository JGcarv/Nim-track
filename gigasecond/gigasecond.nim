import times

proc addGigasecond*(moment: DateTime): DateTime =
    return moment + 1000000000.seconds