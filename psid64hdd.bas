

;.\PSID18.PRG ==0801==
    1 d=15
    2 zz=2
    3 print"{clr}"+chr$(14)+chr$(153)+"{lgrn}"
    4 poke 53280,0
    5 poke 53281,11
    6 print "     ******************************
    7 print"     * Sidplayer for PSID64/64HDD *
    8 print"     ******************************
    9 print
   10 print"     {grn}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}
   11 print"{gry3}        PSID64 (c) Roland Hermans
   12 print"         64HDD  (c) Nick Coplin
   13 print"     {grn}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}
   14 print
   15 print
   16 print
   17 print"{gry3}please choose"
   18 print
   19 print" 1 for directory
   20 print" 2 for 64HDD drive change (now" d")"
   21 print" 3 for doscommand (for cd)  "
   22 print" 4 for load and run sid file"
   23 print" 5 for dox
   24 get cho$
   25 if cho$="" then goto 24
   26 if cho$="1" then goto 32
   27 if cho$="2" then goto 49
   28 if cho$="3" then goto 51
   29 if cho$="4" then goto 55
   30 if cho$="5" then goto 65
   31 goto 24
   32 rem dir
   33 open 1,d,3,"$"
   34 input#1,d$
   35 print"{clr}
   36 printd$
   37 input#1,bl,fl$,ty$
   38 if ty$="fre"then 43
   39 printbl,fl$,ty$
   40 zz=zz+1
   41 if zz=24 then goto  91
   42 goto 37
   43 print bl;fl$
   44 get paus$
   45 if paus$="" then 44
   46 close1
   47 zz=2
   48 goto 3
   49 input "which drive sould 64hdd use";d
   50 goto 3
   51 input "@:";com$
   52 open 1,d,15,com$
   53 close1
   54 goto 3
   55 input "which song to play";sid$
   56 if sid$="" then goto 3
   57 open1,d,15,"c:c:/64hdd/system/sid.sid="+sid$+";m"
   58 close1
   59 open1,d,15,"msd:psid64.exe sid.sid"
   60 close1
   61 for i =1 to 1000
   62 nexti
   63 load"255:sid",d,1
   64 run
   65 rem dox
   66 print"{clr}"
   67 print"Information about this sidplayer
   68 print"
   69 print" psid64 and 64hdd are perfect additions"
   70 print" and this little tool combines them.
   71 print
   72 print" 1) this software is for  64hdd only"
   73 print" 2) psid64.exe for DOS is required in
   74 print"    the 64hdd systemdir (inkluded in zip
   75 print" 3) cd with $.. or $path
   76 print" 4) and now the worst: you have to use
   77 print"    the full names of the sid files
   78 print"    with '_' and '.SID' (.SID
   79 print"    in  BIG   letters!!!)
   80 print"
   81 print"    next note: sidtunes must fit into
   82 print"    16.3 nomenklatura (lfn on!)
   83 print
   84 print"keep the game on!
   85 print"
   86 print"give me an email if you like it, please
   87 print"webdoktor@netzherpes.de
   88 get t$
   89 if t$=""then88
   90 goto 3
   91 print"key to cont, L) to load R) to return
   92 geta$:if a$="" then goto92
   93 if a$="l" then goto 98
   94 if a$="r" then goto 46
   95 print"{clr}"
   96 zz=1
   97 goto 42
   98 close1:goto 55

