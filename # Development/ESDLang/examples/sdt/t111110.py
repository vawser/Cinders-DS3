# -*- coding: utf-8 -*-
def t111110_1():
    """ State 0,1 """
    while True:
        call = t111110_x8(flag14=1039, flag15=1035, flag16=1036, val2=5, val3=10, val4=12, val5=15, val6=17,
                          flag17=71120440, val7=7001100, flag18=6000, flag19=6001, flag20=6000, flag21=6000,
                          val8=3, val9=1000000, val10=1720001, val11=1720003, mode12=1, mode13=1, mode14=0,
                          val12=1720004, val13=1000000, mode15=0, flag22=6000, mode16=0)
        assert ((GetEventStatus(71110693) == 1 and not GetEventStatus(71120140) and GetEventStatus(71110692)
                == 1) or (GetEventStatus(71120410) == 1 and GetEventStatus(71110691) == 1) or (DoesPlayerHaveSpEffect(109210)
                == 1 and ((GetEventStatus(71110698) == 1 and GetEventStatus(71110692) == 1) or (GetEventStatus(71110699)
                == 1 and GetEventStatus(71110691) == 1))))
        """ State 2 """
        call = t111110_x49()
        assert not DoesPlayerHaveSpEffect(109210) and not GetEventStatus(71120410) and not GetEventStatus(71110693)

def t111110_1000():
    """ State 0,118 """
    # goods:9220:Rotting Prisoner's Note
    assert t111110_x48(goods3=9220)
    """ State 136 """
    assert t111110_x53()
    """ State 2 """
    if not GetEventStatus(8400):
        """ State 3,115 """
        call = t111110_x44(mode6=1, flag7=71120120, flag8=71120121)
        def WhilePaused():
            c1117(1720090, -1)
        if call.Get() == 1:
            """ State 116 """
            # talk:11102300:If we are seeking to sever the immortal ties, I know a good place to start., talk:11102350:It's an ancient record that was kept in Ashina Castle.
            call = t111110_x45(mode5=1, lot1=61102, flag1=71120129, z4=71110056, text3=11102300, text4=11102350)
            if call.Get() == 1:
                """ State 61 """
                if not GetEventStatus(71110055):
                    """ State 4,81 """
                    # talk:11102200:I have come for you, my lord.
                    assert t111110_x5(text1=11102200, flag29=0, mode24=1)
                    """ State 82 """
                    def WhilePaused():
                        c1117(1720090, -1)
                    assert t111110_x44(mode6=0, flag7=71120120, flag8=71120121)
                    Goto('L3')
                elif not GetEventStatus(71110056):
                    """ State 5,83 """
                    # talk:11102300:If we are seeking to sever the immortal ties, I know a good place to start., talk:11102350:It's an ancient record that was kept in Ashina Castle.
                    assert (t111110_x45(mode5=0, lot1=61102, flag1=71120129, z4=71110056, text3=11102300,
                            text4=11102350))
                    Goto('L3')
                elif not GetEventStatus(71110057):
                    """ State 6,84 """
                    # talk:11102355:Wolf. That incense burner over there.
                    assert t111110_x5(text1=11102355, flag29=0, mode24=1)
                    Goto('L3')
                elif not GetEventStatus(71110058):
                    """ State 7,85 """
                    # talk:11102500:Now, as to how we begin our search...
                    assert t111110_x4(text7=11102500, z6=71110058, flag30=0, mode25=1)
                    Goto('L3')
                elif not GetEventStatus(71110059):
                    """ State 8,86 """
                    # talk:11102600:Lord Isshin is not within this castle citadel.  I'm told he is recuperating in one of these watchtowers.
                    assert t111110_x4(text7=11102600, z6=71110059, flag30=0, mode25=1)
                    Goto('L3')
                else:
                    """ State 9,87 """
                    # talk:11102700:Find Lord Isshin...\nand ask if he knows how we might sever the ties of immortality.
                    assert t111110_x5(text1=11102700, flag29=0, mode24=1)
                    Goto('L3')
            elif call.Done():
                pass
        elif call.Done():
            pass
        """ State 62 """
    else:
        """ State 146 """
        call = t111110_x46(mode4=1, flag5=71120122, flag6=71120123)
        if call.Get() == 1:
            """ State 141 """
            # talk:11111000:A flower?, talk:11111050:What is...
            call = t111110_x32(text9=11111000, text10=11111050, lot4=61110, flag27=71120138, flag28=71110090,
                               mode18=1)
            if call.Get() == 1:
                """ State 119 """
                call = t111110_x41(mode11=1)
                if call.Get() == 1:
                    """ State 120 """
                    # goods:9009:Sakura Droplet
                    call = t111110_x42(mode10=1, flag11=71120126, flag12=71120127, flag13=71120128, mode9=0,
                                       goods1=9009)
                    if call.Get() == 1:
                        """ State 121 """
                        call = t111110_x43(mode7=1, flag9=71120135, flag10=71120136, mode8=0)
                        if call.Get() == 1:
                            """ State 124 """
                            # talk:11103100:Wolf, look here., talk:11103150:What is...?
                            call = t111110_x45(mode5=1, lot1=61108, flag1=71120132, z4=71110083, text3=11103100,
                                               text4=11103150)
                            if call.Get() == 1:
                                """ State 134 """
                                # talk:11103100:Wolf, look here., talk:11103170:What is...?
                                call = t111110_x52(lot1=61108, flag1=71120430, z4=71110083, text3=11103100,
                                                   text4=11103170, mode1=1, z5=71110075)
                                if call.Get() == 1:
                                    """ State 133 """
                                    # talk:11103100:Wolf, look here., talk:11103500:What is...?, talk:11103540:Now then... We just need to figure out how to make me bleed...
                                    call = t111110_x51(mode2=1, flag2=71120433, flag3=71120434, text5=11103100,
                                                       text6=11103500, text7=11103540, lot2=61108, lot3=61106,
                                                       z6=71110084, z7=71110075, z8=71110083)
                                    if call.Get() == 1:
                                        """ State 135 """
                                        # talk:11111000:A flower?, talk:11112200:What is...
                                        call = t111110_x52(lot1=61110, flag1=71120431, z4=71110082, text3=11111000,
                                                           text4=11112200, mode1=1, z5=71110076)
                                        if call.Get() == 1:
                                            """ State 140 """
                                            # talk:11111800:I must remain vigilant..., talk:11111850:Now then... We just need to figure out how to make me bleed...
                                            call = t111110_x32(text9=11111800, text10=11111850, lot4=61106,
                                                               flag27=71120435, flag28=71110084, mode18=1)
                                            if call.Get() == 1:
                                                """ State 125 """
                                                # talk:11103450:My Lord, I've procured the flower for the fountainhead aroma., talk:11103480:Now then... We just need to figure out how to make me bleed...
                                                call = t111110_x45(mode5=1, lot1=61106, flag1=71120133, z4=71110084,
                                                                   text3=11103450, text4=11103480)
                                                if call.Get() == 1:
                                                    """ State 126 """
                                                    # talk:11109150:My Lord, I have procured the ingredients for the aroma., talk:11109185:Now then... We just need to figure out how to make me bleed...
                                                    call = t111110_x45(mode5=1, lot1=61106, flag1=71120134, z4=71110084,
                                                                       text3=11109150, text4=11109185)
                                                    if call.Get() == 1:
                                                        """ State 122 """
                                                        # goods:9090:Rice for Kuro
                                                        call = t111110_x47(mode3=1, goods4=9090, flag4=71120130)
                                                        if call.Get() == 1:
                                                            """ State 123 """
                                                            # talk:11104200:Sorry to keep you waiting, Wolf., talk:11104250:What is...?
                                                            call = t111110_x45(mode5=1, lot1=61104, flag1=71120131, z4=50006114,
                                                                               text3=11104200, text4=11104250)
                                                            if call.Get() == 1:
                                                                """ State 131 """
                                                                # talk:11106100:Oh, Wolf.  Are you unhurt?, talk:11106110:Dragon Tears...
                                                                call = t111110_x32(text9=11106100, text10=11106110, lot4=61112,
                                                                                   flag27=71120432, flag28=71120413, mode18=1)
                                                                if call.Get() == 1:
                                                                    """ State 143 """
                                                                    # talk:11105100:........., talk:11105110:Dragon Tears...
                                                                    call = t111110_x32(text9=11105100, text10=11105110, lot4=61114,
                                                                                       flag27=71110761, flag28=71110760, mode18=1)
                                                                    if call.Get() == 1:
                                                                        """ State 13 """
                                                                        if (not GetEventStatus(71110060) and GetEventStatus(9308)
                                                                            == 1):
                                                                            """ State 21,23 """
                                                                            if GetEventStatus(71110085) == 1:
                                                                                """ State 24,94 """
                                                                                # talk:11104500:Wolf...
                                                                                assert t111110_x5(text1=11104500, flag29=0, mode24=1)
                                                                            else:
                                                                                """ State 25,95 """
                                                                                # talk:11109500:Wolf...
                                                                                assert t111110_x5(text1=11109500, flag29=0, mode24=1)
                                                                                """ State 26 """
                                                                                SetEventState(71110085, 1)
                                                                                SetEventState(71110079, 1)
                                                                                SetEventState(71110069, 1)
                                                                                SetEventState(71110064, 1)
                                                                                SetEventState(71110056, 1)
                                                                                SetEventState(71110087, 1)
                                                                            """ State 22 """
                                                                            SetEventState(71110060, 1)
                                                                            SetEventState(71110770, 1)
                                                                            """ State 57 """
                                                                            def WhilePaused():
                                                                                c1119(0)
                                                                            Quit()
                                                                        else:
                                                                            """ State 20 """
                                                                            if f116(-1) == 1720004:
                                                                                """ State 14,89 """
                                                                                # talk:11105000:.........
                                                                                assert t111110_x5(text1=11105000, flag29=0, mode24=1)
                                                                                """ State 90 """
                                                                                assert t111110_x46(mode4=0, flag5=71120122, flag6=71120123)
                                                                                """ State 58 """
                                                                                def WhilePaused():
                                                                                    c1119(0)
                                                                                Quit()
                                                                            else:
                                                                                """ State 15 """
                                                                                # goods:9090:Rice for Kuro
                                                                                if (ComparePlayerInventoryNumber(3, 9090, 2,
                                                                                    0, 0) == 1 and not GetEventStatus(71120145)):
                                                                                    """ State 16,91 """
                                                                                    # goods:9090:Rice for Kuro
                                                                                    assert t111110_x47(mode3=0, goods4=9090, flag4=71120130)
                                                                                elif GetEventStatus(71120146) == 1:
                                                                                    """ State 17,137 """
                                                                                    # talk:11104100:I'll make something nice for you with the rice you gave me.
                                                                                    assert t111110_x5(text1=11104100, flag29=0, mode24=1)
                                                                                    """ State 96 """
                                                                                    Label('L0')
                                                                                    # goods:9009:Sakura Droplet, goods:9010:Young Lord's Bell Charm
                                                                                    assert t111110_x35(z3=0, goods1=9009, goods2=9010)
                                                                                    """ State 60 """
                                                                                    Label('L1')
                                                                                    def WhilePaused():
                                                                                        c1119(0)
                                                                                    Quit()
                                                                                elif (not GetEventStatus(50006114) and GetEventStatus(71120145)
                                                                                      == 1 and GetEventStatus(71110071) == 1):
                                                                                    """ State 18,92 """
                                                                                    # talk:11104200:Sorry to keep you waiting, Wolf., talk:11104250:What is...?
                                                                                    assert (t111110_x45(mode5=0, lot1=61104, flag1=71120131,
                                                                                            z4=50006114, text3=11104200, text4=11104250))
                                                                                    """ State 56 """
                                                                                    SetEventState(71120148, 1)
                                                                                    SetEventState(71110680, 0)
                                                                                elif (GetEventStatus(71120148) == 1 and not GetEventStatus(71110061)
                                                                                      and not GetEventStatus(71120147)):
                                                                                    """ State 55,112 """
                                                                                    # talk:11104300:It's a sweet sticky rice ball made from the rice you gave me.
                                                                                    assert t111110_x5(text1=11104300, flag29=0, mode24=1)
                                                                                    Goto('L0')
                                                                                elif (GetEventStatus(71120147) == 1 and not GetEventStatus(71110061)
                                                                                      and GetEventStatus(50006114) == 1):
                                                                                    """ State 19,93 """
                                                                                    # talk:11104400:How was the rice ball?
                                                                                    assert (t111110_x4(text7=11104400, z6=71110061, flag30=0,
                                                                                            mode25=1))
                                                                                    """ State 80 """
                                                                                    SetEventState(71110770, 1)
                                                                                else:
                                                                                    """ State 27 """
                                                                                    if not GetEventStatus(8415):
                                                                                        """ State 28 """
                                                                                        if not GetEventStatus(71110062):
                                                                                            """ State 145 """
                                                                                            assert t111110_x58()
                                                                                            Goto('L0')
                                                                                        elif GetEventStatus(9308) == 1 and not GetEventStatus(71110084):
                                                                                            """ State 70,139 """
                                                                                            # talk:11111800:I must remain vigilant..., talk:11111850:Now then... We just need to figure out how to make me bleed...
                                                                                            assert (t111110_x32(text9=11111800, text10=11111850,
                                                                                                    lot4=61106, flag27=71120435, flag28=71110084,
                                                                                                    mode18=0))
                                                                                            Goto('L1')
                                                                                        elif GetEventStatus(71120415) == 1 and not GetEventStatus(71110077):
                                                                                            """ State 68,138 """
                                                                                            # talk:11106000:The sword that can kill those who cannot die...
                                                                                            assert t111110_x5(text1=11106000, flag29=0, mode24=1)
                                                                                            """ State 69 """
                                                                                            SetEventState(71110077, 1)
                                                                                            Goto('L1')
                                                                                        elif (not GetEventStatus(71110087) and GetEventStatus(71110064)
                                                                                              == 1 and GetEventStatus(71110069) == 1):
                                                                                            """ State 31,97 """
                                                                                            # talk:11103200:My Lord, the incense burner...
                                                                                            assert (t111110_x4(text7=11103200, z6=71110087, flag30=0,
                                                                                                    mode25=1))
                                                                                            Goto('L1')
                                                                                        elif (not GetEventStatus(71110079) and GetEventStatus(71110085)
                                                                                              == 1):
                                                                                            """ State 32,98 """
                                                                                            # talk:11103300:I asked Lady Emma about the sakura tree.
                                                                                            assert (t111110_x4(text7=11103300, z6=71110079, flag30=0,
                                                                                                    mode25=1))
                                                                                            Goto('L1')
                                                                                        elif (((GetEventStatus(71110076) == 1 and GetEventStatus(71110077)
                                                                                              == 1) or GetEventStatus(8412) == 1) and not
                                                                                              GetEventStatus(71110083)):
                                                                                            """ State 37,65 """
                                                                                            if GetEventStatus(8412) == 1:
                                                                                                """ State 66 """
                                                                                                if not GetEventStatus(71110084):
                                                                                                    """ State 127 """
                                                                                                    # talk:11103100:Wolf, look here., talk:11103500:What is...?, talk:11103540:Now then... We just need to figure out how to make me bleed...
                                                                                                    assert (t111110_x51(mode2=0, flag2=71120433, flag3=71120434,
                                                                                                            text5=11103100, text6=11103500, text7=11103540,
                                                                                                            lot2=61108, lot3=61106, z6=71110084, z7=71110075,
                                                                                                            z8=71110083))
                                                                                                    Goto('L1')
                                                                                                else:
                                                                                                    """ State 132 """
                                                                                                    # talk:11103100:Wolf, look here., talk:11103170:What is...?
                                                                                                    assert (t111110_x52(lot1=61108, flag1=71120430, z4=71110083,
                                                                                                            text3=11103100, text4=11103170, mode1=0,
                                                                                                            z5=71110075))
                                                                                                    Goto('L1')
                                                                                            else:
                                                                                                """ State 100 """
                                                                                                # talk:11103100:Wolf, look here., talk:11103150:What is...?
                                                                                                assert (t111110_x45(mode5=0, lot1=61108, flag1=71120132,
                                                                                                        z4=71110083, text3=11103100, text4=11103150))
                                                                                                """ State 113 """
                                                                                                assert t111110_x41(mode11=0)
                                                                                                Goto('L1')
                                                                                            """ State 35 """
                                                                                            Label('L2')
                                                                                            SetEventState(71110076, 1)
                                                                                            Goto('L1')
                                                                                        elif (GetEventStatus(8413) == 1 and not GetEventStatus(71110076)
                                                                                              and GetEventStatus(71110082) == 1):
                                                                                            """ State 29 """
                                                                                            if not GetEventStatus(71110084):
                                                                                                """ State 33,109 """
                                                                                                # talk:11103450:My Lord, I've procured the flower for the fountainhead aroma., talk:11103480:Now then... We just need to figure out how to make me bleed...
                                                                                                assert (t111110_x45(mode5=0, lot1=61106, flag1=71120133,
                                                                                                        z4=71110084, text3=11103450, text4=11103480))
                                                                                                Goto('L2')
                                                                                            else:
                                                                                                """ State 34,99 """
                                                                                                # talk:11103400:My Lord, I've procured the flower for the fountainhead aroma.
                                                                                                assert t111110_x5(text1=11103400, flag29=0, mode24=1)
                                                                                                Goto('L2')
                                                                                        elif (GetEventStatus(8412) == 1 and not GetEventStatus(71110075)
                                                                                              and GetEventStatus(71110083) == 1):
                                                                                            """ State 30 """
                                                                                            if not GetEventStatus(71110084):
                                                                                                """ State 36,108 """
                                                                                                # talk:11109150:My Lord, I have procured the ingredients for the aroma., talk:11109185:Now then... We just need to figure out how to make me bleed...
                                                                                                assert (t111110_x45(mode5=0, lot1=61106, flag1=71120134,
                                                                                                        z4=71110084, text3=11109150, text4=11109185))
                                                                                            else:
                                                                                                """ State 38,101 """
                                                                                                # talk:11109050:My Lord, I have procured the ingredients for the aroma.
                                                                                                assert t111110_x5(text1=11109050, flag29=0, mode24=1)
                                                                                            """ State 39 """
                                                                                            SetEventState(71110075, 1)
                                                                                            Goto('L1')
                                                                                        elif (not GetEventStatus(71110077) and GetEventStatus(8410)
                                                                                              == 1):
                                                                                            """ State 67 """
                                                                                            if not GetEventStatus(71110078):
                                                                                                """ State 40,102 """
                                                                                                # talk:11103900:Wolf, that sword on your back, is it...
                                                                                                assert t111110_x5(text1=11103900, flag29=0, mode24=1)
                                                                                            else:
                                                                                                """ State 41,103 """
                                                                                                # talk:11103950:Wolf, that sword on your back, is it...
                                                                                                assert t111110_x5(text1=11103950, flag29=0, mode24=1)
                                                                                            """ State 42 """
                                                                                            SetEventState(71110077, 1)
                                                                                            Goto('L1')
                                                                                        elif (not GetEventStatus(71110078) and GetEventStatus(71110086)
                                                                                              == 1):
                                                                                            """ State 43 """
                                                                                            if not GetEventStatus(8410):
                                                                                                """ State 45,104 """
                                                                                                # talk:11103800:Wolf, did you speak with Lady Emma?
                                                                                                assert t111110_x5(text1=11103800, flag29=0, mode24=1)
                                                                                            else:
                                                                                                """ State 44 """
                                                                                                if (GetEventStatus(71110075) == 1 and GetEventStatus(71110076)
                                                                                                    == 1 and GetEventStatus(71110079) == 1):
                                                                                                    """ State 46,105 """
                                                                                                    # talk:11103860:Wolf, did you speak with Lady Emma?
                                                                                                    assert t111110_x5(text1=11103860, flag29=0, mode24=1)
                                                                                                    """ State 73 """
                                                                                                    SetEventState(71110072, 1)
                                                                                                else:
                                                                                                    """ State 47,106 """
                                                                                                    # talk:11103830:Wolf, did you speak with Lady Emma?
                                                                                                    assert t111110_x5(text1=11103830, flag29=0, mode24=1)
                                                                                            """ State 48 """
                                                                                            SetEventState(71110078, 1)
                                                                                            SetEventState(71110681, 1)
                                                                                            Goto('L1')
                                                                                        elif (GetEventStatus(71110075) == 1 and GetEventStatus(71110076)
                                                                                              == 1 and GetEventStatus(71110077) == 1 and
                                                                                              GetEventStatus(71110078) == 1 and GetEventStatus(71110079)
                                                                                              == 1 and GetEventStatus(71110060) == 1):
                                                                                            """ State 54,114 """
                                                                                            # talk:11104600:Wolf... We've finally done it.
                                                                                            assert (t111110_x4(text7=11104600, z6=71110072, flag30=0,
                                                                                                    mode25=1))
                                                                                            Goto('L1')
                                                                                        else:
                                                                                            """ State 49 """
                                                                                            if (GetEventStatus(71110084) == 1 and not GetEventStatus(71110086)
                                                                                                and not GetEventStatus(9308)):
                                                                                                """ State 63,117 """
                                                                                                # talk:11103700:To think my blood is an ingredient of the aroma...
                                                                                                assert t111110_x5(text1=11103700, flag29=0, mode24=1)
                                                                                                Goto('L0')
                                                                                            elif (not GetEventStatus(71110075) and not GetEventStatus(71110076)
                                                                                                  and not GetEventStatus(71110077) and not
                                                                                                  GetEventStatus(9308)):
                                                                                                """ State 50,107 """
                                                                                                # talk:11102900:I must ascertain the secret to the aroma of the fountainhead\nso that we may reach the divine realm.
                                                                                                assert t111110_x5(text1=11102900, flag29=0, mode24=1)
                                                                                                Goto('L0')
                                                                                            else:
                                                                                                """ State 51 """
                                                                                                if (not GetEventStatus(71110078) and GetEventStatus(71110075)
                                                                                                    == 1 and GetEventStatus(71110076) == 1 and
                                                                                                    GetEventStatus(71110077) == 1 and GetEventStatus(71110079)
                                                                                                    == 1):
                                                                                                    """ State 52,110 """
                                                                                                    # talk:11111900:I must remain vigilant...
                                                                                                    assert t111110_x5(text1=11111900, flag29=0, mode24=1)
                                                                                                    Goto('L1')
                                                                                                else:
                                                                                                    """ State 53,111 """
                                                                                                    # talk:11103000:I see you've gathered some of the ingredients needed to create the aroma of the fountainhead.
                                                                                                    assert t111110_x5(text1=11103000, flag29=0, mode24=1)
                                                                                                    Goto('L0')
                                                                                    else:
                                                                                        """ State 74 """
                                                                                        if GetEventStatus(71110752) == 1 and not GetEventStatus(71110760):
                                                                                            """ State 75,142 """
                                                                                            # talk:11105100:........., talk:11105110:Dragon Tears...
                                                                                            assert (t111110_x32(text9=11105100, text10=11105110,
                                                                                                    lot4=61114, flag27=71110761, flag28=71110760,
                                                                                                    mode18=0))
                                                                                            """ State 77 """
                                                                                            SetEventState(71110753, 1)
                                                                                            Goto('L0')
                                                                                        else:
                                                                                            """ State 10 """
                                                                                            if not GetEventStatus(140):
                                                                                                """ State 12,88 """
                                                                                                # talk:11104800:Wolf, I need you to bring Dragon Tears from the divine realm...
                                                                                                assert t111110_x5(text1=11104800, flag29=0, mode24=1)
                                                                                                Goto('L0')
                                                                                            else:
                                                                                                """ State 11 """
                                                                                                if not GetEventStatus(71120412) and not GetEventStatus(71110753):
                                                                                                    """ State 128 """
                                                                                                    # talk:11104900:My Lord...
                                                                                                    assert (t111110_x4(text7=11104900, z6=71120412, flag30=0,
                                                                                                            mode25=1))
                                                                                                    """ State 76 """
                                                                                                    SetEventState(71110753, 1)
                                                                                                    Goto('L0')
                                                                                                elif not GetEventStatus(71120413) and not GetEventStatus(71110753):
                                                                                                    """ State 129 """
                                                                                                    # talk:11106100:Oh, Wolf.  Are you unhurt?, talk:11106110:Dragon Tears...
                                                                                                    assert (t111110_x32(text9=11106100, text10=11106110,
                                                                                                            lot4=61112, flag27=71120432, flag28=71120413,
                                                                                                            mode18=0))
                                                                                                    Goto('L0')
                                                                                                else:
                                                                                                    """ State 130 """
                                                                                                    # talk:11105200:It appears...
                                                                                                    assert t111110_x5(text1=11105200, flag29=0, mode24=1)
                                                                                                    Goto('L0')
                                                                                """ State 59 """
                                                                                def WhilePaused():
                                                                                    c1119(0)
                                                                                Quit()
                                                                    elif call.Done():
                                                                        """ State 78 """
                                                                        SetEventState(71110753, 1)
                                                                elif call.Done():
                                                                    pass
                                                            elif call.Done():
                                                                """ State 64 """
                                                                SetEventState(71120148, 1)
                                                        elif call.Done():
                                                            pass
                                                    elif call.Done():
                                                        """ State 72 """
                                                        SetEventState(71110075, 1)
                                                elif call.Done():
                                                    """ State 71 """
                                                    SetEventState(71110076, 1)
                                            elif call.Done():
                                                pass
                                        elif call.Done():
                                            pass
                                    elif call.Done():
                                        pass
                                elif call.Done():
                                    pass
                            elif call.Done():
                                """ State 144 """
                                assert t111110_x41(mode11=0)
                        elif call.Done():
                            pass
                    elif call.Done():
                        pass
                elif call.Done():
                    pass
            elif call.Done():
                """ State 79 """
                SetEventState(71110082, 1)
        elif call.Done():
            pass
    """ State 1 """
    Label('L3')
    def WhilePaused():
        c1119(0)

def t111110_2000():
    """ State 0,5 """
    while True:
        """ State 8 """
        c511(GetEventStatus(71120147) == 1, 71110068, 1)
        c511(GetEventStatus(61110705) == 1, 71110066, 1)
        """ State 11 """
        call = t111110_x0(val1=7001100, flag19=6001, flag23=6001, flag24=6001, flag25=6001, flag26=6001,
                          mode17=0, flag18=6000, val9=1000000, val10=1720001, val11=1720003, val12=1720004,
                          val13=-1)
        if call.Done():
            break
        elif (GetEventStatus(61110705) == 1 and GetEventStatus(71120140) == 1 and not GetEventStatus(71110062)
              and not GetEventStatus(71110066) and GetEventStatus(1022) == 1):
            """ State 2 """
            assert GetCurrentStateElapsedTime() > 2
            """ State 13 """
            ClearPlayerDamageInfo()
            # talk:11140000:Thank you, Wolf.
            call = t111110_x54(text2=11140000, z1=71120421, z2=71120421)
            def WhilePaused():
                c1117(1, 10000)
                c1117(1000000, -1)
                SetTalkTime(0.01)
                c1128(0.1)
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            if call.Done():
                continue
            elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress()
                  == 1) or IsPlayerDead() == 1 or f116(10000) == 90):
                continue
        elif (GetDistanceToPlayer() < 8 and not GetEventStatus(71110068) and GetEventStatus(71120147)
              == 1 and GetEventStatus(50006114) == 1 and GetEventStatus(71120411) == 1 and DoesPlayerHaveSpEffect(3060)
              == 1):
            """ State 3 """
            pass
        elif (not GetEventStatus(71110067) and not GetEventStatus(71110068) and GetDistanceToPlayer()
              > 8 and GetEventStatus(71120148) == 1):
            """ State 4,7 """
            SetEventState(71110067, 1)
            """ State 20 """
            assert t111110_x56()
            """ State 15 """
            ClearPlayerDamageInfo()
            # talk:11140200:Too shy to eat it in front of me?
            call = t111110_x55(text1=11140200)
            def WhilePaused():
                c1117(1, 10000)
                c1117(1000000, -1)
                SetTalkTime(0.01)
                c1128(0.1)
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            if call.Done():
                continue
            elif DoesPlayerHaveSpEffect(3060) == 1 and GetDistanceToPlayer() < 8 and not GetEventStatus(71110068):
                pass
            elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress()
                  == 1) or IsPlayerDead() == 1 or GetCurrentStateElapsedTime() > 10):
                continue
        elif (GetEventStatus(71120140) == 1 and not GetEventStatus(71110062) and GetEventStatus(71110690)
              == 1 and not GetEventStatus(71120438) and GetEventStatus(1022) == 1 and not GetEventStatus(71110691)):
            """ State 9,10 """
            SetEventState(71110690, 0)
            if not GetEventStatus(71120439):
                """ State 12 """
                # talk:11140300:(sneezing)
                assert t111110_x3(text2=11140300, z2=71120439, flag31=1, mode26=1)
                continue
            elif not GetEventStatus(71120440):
                """ State 16 """
                # talk:11140310:Still so much dust.
                assert t111110_x3(text2=11140310, z2=71120440, flag31=1, mode26=1)
                continue
            else:
                """ State 17 """
                # talk:11140320:How long have these books been here?
                assert t111110_x3(text2=11140320, z2=71120438, flag31=1, mode26=1)
                continue
        """ State 6 """
        SetEventState(71110068, 1)
        SetEventState(71110067, 1)
        """ State 19 """
        assert t111110_x56()
        """ State 14 """
        ClearPlayerDamageInfo()
        # talk:11140100:This is... very good...
        call = t111110_x55(text1=11140100)
        def WhilePaused():
            c1117(1, 10000)
            c1117(1000000, -1)
            SetTalkTime(0.01)
            c1128(0.1)
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        if call.Done():
            pass
        elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() ==
              1) or IsPlayerDead() == 1 or GetCurrentStateElapsedTime() > 10):
            pass
    """ State 18 """
    assert t111110_x56()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111110_x0(val1=_, flag19=6001, flag23=_, flag24=_, flag25=_, flag26=_, mode17=0, flag18=6000, val9=_,
               val10=_, val11=_, val12=_, val13=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t111110_x33(val1=val1, flag19=flag19, flag23=flag23, flag24=flag24, flag25=flag25, flag26=flag26,
                           mode17=mode17, flag18=flag18)
        if call.Done():
            break
        elif (not f116(-1) == val9 and not f116(-1) == val10 and not f116(-1) == val11 and not DoesSelfHaveSpEffect(4510)
              and not val9 == -1 and not f116(-1) == val12 and not f116(-1) == val13):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val9 or f116(-1) == val10 or f116(-1) == val11 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val12 and f116(-1) == val13))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val9 and not f116(-1) == val10 and not f116(-1) == val11 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val12 and not f116(-1) == val13):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t111110_x1():
    """ State 0,1 """
    if not CheckSpecificPersonTalkHasEnded(0):
        """ State 7 """
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """ State 6 """
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """ State 2 """
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """ State 3 """
        ForceCloseGenericDialog()
    else:
        pass
    """ State 4 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t111110_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t111110_x3(text2=_, z2=_, flag31=_, mode26=1):
    """ State 0,7 """
    assert t111110_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 6 """
    if not flag31:
        """ State 1 """
        TalkToPlayer(text2, -1, -1, flag31, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text2, -1, -1, flag31, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode26:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t111110_x4(text7=_, z6=_, flag30=0, mode25=1):
    """ State 0,7 """
    assert t111110_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag30:
        """ State 1 """
        TalkToPlayer(text7, -1, -1, flag30, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text7, -1, -1, flag30, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode25:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z6, 1)
    """ State 8 """
    return 0

def t111110_x5(text1=_, flag29=0, mode24=1):
    """ State 0,6 """
    assert t111110_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag29:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag29, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag29, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode24:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t111110_x6(lot2=_):
    """ State 0,1 """
    GetItemFromItemLot(lot2)
    """ State 2 """
    while True:
        assert not IsMenuOpen(63) and GetCurrentStateElapsedTime() > 0.01
        """ State 3 """
        assert GetCurrentStateElapsedTime() > 0.01
        """ State 4 """
        if not IsMenuOpen(63):
            break
        else:
            pass
    """ State 5 """
    return 0

def t111110_x7(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t111110_x8(flag14=1039, flag15=1035, flag16=1036, val2=5, val3=10, val4=12, val5=15, val6=17, flag17=71120440,
               val7=7001100, flag18=6000, flag19=6001, flag20=6000, flag21=6000, val8=3, val9=1000000,
               val10=1720001, val11=1720003, mode12=1, mode13=1, mode14=0, val12=1720004, val13=1000000,
               mode15=0, flag22=6000, mode16=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t111110_x9(val2=val2, val3=val3, val4=val4, val5=val5, val6=val6, flag17=flag17, val7=val7,
                          flag18=flag18, flag19=flag19, flag20=flag20, flag21=flag21, val8=val8, val9=val9,
                          val10=val10, val11=val11, mode12=mode12, mode13=mode13, mode14=mode14, val12=val12,
                          val13=val13, mode15=mode15, mode16=mode16)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag14) == 1) and not GetEventStatus(flag22):
            pass
        elif GetEventStatus(flag15) == 1 or GetEventStatus(flag16) == 1:
            """ State 3 """
            call = t111110_x24(val3=val3, val4=val4)
            if CheckSelfDeath() == 1 or GetEventStatus(flag14) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag15) and not GetEventStatus(flag16):
                continue
        """ State 2 """
        call = t111110_x10(flag14=flag14, val3=val3, val4=val4)
        assert not CheckSelfDeath() and not GetEventStatus(flag14) and not DoesSelfHaveSpEffect(30100)

def t111110_x9(val2=5, val3=10, val4=12, val5=15, val6=17, flag17=71120440, val7=7001100, flag18=6000,
               flag19=6001, flag20=6000, flag21=6000, val8=3, val9=1000000, val10=1720001, val11=1720003,
               mode12=1, mode13=1, mode14=0, val12=1720004, val13=1000000, mode15=0, mode16=0):
    """ State 0,4 """
    while True:
        call = t111110_x26(val7=val7, flag18=flag18, flag19=flag19, val9=val9, val10=val10, val11=val11,
                           val12=val12, val13=val13)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t111110_x11(val2=val2, val8=val8, mode12=mode12, mode13=mode13, mode14=mode14, mode15=mode15)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode16 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode16 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag21) == 1:
            Goto('L0')
        elif not GetEventStatus(flag17) and GetEventStatus(flag20) == 1 and GetDistanceToPlayer() < val5:
            """ State 3 """
            call = t111110_x12(val6=val6)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode16 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t111110_x13(val3=val3, val4=val4)

def t111110_x10(flag14=1039, val3=10, val4=12):
    """ State 0,1 """
    if GetEventStatus(flag14) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val3:
            """ State 4,6 """
            call = t111110_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val4:
                """ State 7 """
                assert t111110_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t111110_x11(val2=5, val8=3, mode12=1, mode13=1, mode14=0, mode15=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t111110_x19(mode12=mode12, mode14=mode14)
    def WhilePaused():
        c1117(val8, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode13 == 1, 0.1)
        c5120(val2 == 1 and not val8 and mode15 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t111110_x16()
    elif GetDistanceToPlayer() > val2:
        """ State 3 """
        assert t111110_x15()
    """ State 4 """
    return 0

def t111110_x12(val6=17):
    """ State 0,1 """
    call = t111110_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val6:
        """ State 2 """
        assert t111110_x1()
    """ State 3 """
    return 0

def t111110_x13(val3=10, val4=12):
    """ State 0,4 """
    assert t111110_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t111110_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t111110_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t111110_x14(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 2 """
    call = t111110_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 3 """
        assert t111110_x1()
    """ State 4 """
    return 0

def t111110_x15():
    """ State 0,1 """
    assert t111110_x1()
    """ State 2 """
    return 0

def t111110_x16():
    """ State 0,2 """
    assert t111110_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t111110_x17(val3=10, val4=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val3
        """ State 3 """
        call = t111110_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val4:
            """ State 4 """
            assert t111110_x1()

def t111110_x18():
    """ State 0,1 """
    assert t111110_x20(z13=1101, mode20=0, mode21=0, mode22=0, mode23=0)
    """ State 2 """
    return 0

def t111110_x19(mode12=1, mode14=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode12 == 1 and not mode14, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode12 == 1 and mode14 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t111110_x20(z13=1000, mode20=0, mode21=0, mode22=0, mode23=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t111110_x20(z13=_, mode20=0, mode21=0, mode22=0, mode23=0):
    """ State 0,4 """
    if f118(z13) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z13)
        assert f117() == mode20 or f117() == mode21 or f117() == mode22 or f117() == mode23
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t111110_x21():
    """ State 0,1 """
    call = t111110_x20(z13=1103, mode20=0, mode21=0, mode22=0, mode23=0)
    if call.Get() == 1:
        """ State 2 """
        assert t111110_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t111110_x22():
    """ State 0,2 """
    call = t111110_x20(z13=1102, mode20=0, mode21=0, mode22=0, mode23=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t111110_x23():
    """ State 0,1 """
    assert t111110_x20(z13=1001, mode20=0, mode21=0, mode22=0, mode23=0)
    """ State 2 """
    return 0

def t111110_x24(val3=10, val4=12):
    """ State 0,1 """
    while True:
        call = t111110_x17(val3=val3, val4=val4)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t111110_x30(val3=val3, val4=val4)
            assert not IsPlayerDead()
    """ State 2 """
    t111110_x14(val3=val3, val4=val4)

def t111110_x25():
    """ State 0,1 """
    assert t111110_x20(z13=1100, mode20=0, mode21=0, mode22=0, mode23=0)
    """ State 2 """
    return 0

def t111110_x26(val7=7001100, flag18=6000, flag19=6001, val9=1000000, val10=1720001, val11=1720003, val12=1720004,
                val13=1000000):
    """ State 0,1 """
    call = t111110_x20(z13=2000, mode20=0, mode21=0, mode22=0, mode23=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t111110_x0(val1=val7, flag19=flag19, flag23=6000, flag24=6000, flag25=6000, flag26=6000,
                mode17=0, flag18=flag18, val9=val9, val10=val10, val11=val11, val12=val12, val13=val13))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t111110_x27(val1=_, z10=_, text8=_):
    """ State 0,1 """
    while True:
        """ State 3 """
        assert (t111110_x0(val1=val1, flag19=6001, flag23=6001, flag24=6001, flag25=6001, flag26=6001,
                mode17=0, flag18=6000, val9=-1, val10=-1, val11=-1, val12=-1, val13=-1))
        """ State 2 """
        ClearPlayerDamageInfo()
        """ State 4 """
        call = t111110_x29(text8=text8, z10=z10)
        def WhilePaused():
            c1117(10, 10000)
        if call.Done():
            pass
        elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() ==
              1) or IsPlayerDead() == 1):
            """ State 5 """
            assert t111110_x16()

def t111110_x28(z11=-1, z12=_, val14=_, mode19=1, val15=_):
    """ State 0,1 """
    def WhilePaused():
        c1117(z12, z11)
    if f116(z11) == val14 and mode19 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > val15:
        """ State 3 """
        return 1

def t111110_x29(text8=_, z10=_):
    """ State 0,1 """
    if f116(10000) == 10:
        """ State 3 """
        call = t111110_x4(text7=text8, z6=z10, flag30=0, mode25=1)
        if call.Done():
            pass
        elif not f116(10000) == 10:
            pass
    elif not f116(10000) == 10 and GetCurrentStateElapsedTime() > 0.5:
        """ State 2 """
        pass
    """ State 4 """
    return 0

def t111110_x30(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 3 """
    call = t111110_x31()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 2 """
        assert t111110_x1()
    """ State 4 """
    return 0

def t111110_x31():
    """ State 0,1 """
    assert t111110_x20(z13=1002, mode20=0, mode21=0, mode22=0, mode23=0)
    """ State 2 """
    return 0

def t111110_x32(text9=_, text10=_, lot4=_, flag27=_, flag28=_, mode18=_):
    """ State 0,3 """
    if not mode18:
        """ State 4,8 """
        assert t111110_x5(text1=text9, flag29=0, mode24=1)
        """ State 2 """
        SetEventState(flag27, 1)
        """ State 10 """
        assert t111110_x6(lot2=lot4)
    else:
        """ State 5 """
        if GetEventStatus(flag27) == 1 and not GetEventStatus(flag28):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t111110_x4(text7=text10, z6=flag28, flag30=0, mode25=1)
    """ State 11 """
    return 0

def t111110_x33(val1=_, flag19=6001, flag23=_, flag24=_, flag25=_, flag26=_, mode17=0, flag18=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag19) == 1 or GetEventStatus(flag23) == 1 or GetEventStatus(flag24)
                == 1 or GetEventStatus(flag25) == 1 or GetEventStatus(flag26) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag18)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag19) and not GetEventStatus(flag23) and not GetEventStatus(flag24)
                  and not GetEventStatus(flag25) and not GetEventStatus(flag26)):
                Continue('mainloop')
            elif GetEventStatus(flag18) == 1:
                pass
            elif CheckActionButtonArea(val1 + mode17) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t111110_x34():
    """ State 0,1 """
    if not GetEventStatus(71110069) and (not GetEventStatus(71110063) or GetEventStatus(71110064) == 1):
        """ State 3,8 """
        # talk:11120600:Ahh, I meant to ask.
        assert t111110_x5(text1=11120600, flag29=0, mode24=1)
        """ State 7 """
        assert t111110_x43(mode7=0, flag9=71120135, flag10=71120136, mode8=0)
    elif GetEventStatus(1265) == 1:
        """ State 4,9 """
        # talk:11120800:I've just remembered, Wolf...
        assert t111110_x5(text1=11120800, flag29=0, mode24=1)
    elif not GetEventStatus(71120445):
        """ State 5,10 """
        # talk:11105400:Oh, that's right...
        assert t111110_x5(text1=11105400, flag29=0, mode24=1)
    else:
        """ State 2,6 """
        # talk:11120700:You're leaving.
        assert t111110_x5(text1=11120700, flag29=0, mode24=1)
    """ State 11 """
    return 0

def t111110_x35(z3=0, goods1=9009, goods2=9010):
    """ State 0,8 """
    c1110()
    """ State 5 """
    while True:
        ClearTalkListData()
        """ State 20 """
        call = t111110_x50(goods1=goods1, goods2=goods2)
        if call.Get() == 1:
            break
        elif call.Done():
            """ State 2 """
            ShowShopMessage(1)
            assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 6 """
            assert GetCurrentStateElapsedFrames() > 1
            """ State 1 """
            if GetTalkListEntryResult() == 1:
                """ State 4,14 """
                assert t111110_x40(mode9=0, goods1=goods1, z9=3, mode10=0)
            elif GetTalkListEntryResult() == 3:
                """ State 9,16 """
                assert t111110_x36()
            elif GetTalkListEntryResult() == 4:
                """ State 10,18 """
                assert t111110_x37()
            elif GetTalkListEntryResult() == 7:
                """ State 12,19 """
                assert t111110_x39()
            elif GetTalkListEntryResult() == 5:
                """ State 11,17 """
                assert t111110_x38()
            elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                """ State 7,13 """
                assert t111110_x34()
                break
    """ State 21 """
    return 0

def t111110_x36():
    """ State 0,1 """
    if not GetEventStatus(71110090):
        """ State 2,5 """
        if GetEventStatus(8413) == 1:
            """ State 8 """
            # talk:11111000:A flower?, talk:11112200:What is...
            assert (t111110_x52(lot1=61110, flag1=71120431, z4=71110082, text3=11111000, text4=11112200,
                    mode1=0, z5=71110076))
        else:
            """ State 7 """
            # talk:11111000:A flower?, talk:11111050:What is...
            assert (t111110_x32(text9=11111000, text10=11111050, lot4=61110, flag27=71120138, flag28=71110090,
                    mode18=0))
            """ State 4 """
            SetEventState(71110082, 1)
    else:
        """ State 3,6 """
        # talk:11111100:One part of the fountainhead aroma...
        assert t111110_x5(text1=11111100, flag29=0, mode24=1)
    """ State 9 """
    return 0

def t111110_x37():
    """ State 0,1 """
    if not GetEventStatus(71110083) and GetEventStatus(71110081) == 1:
        """ State 5 """
        if GetEventStatus(8412) == 1:
            """ State 6,11 """
            # talk:11112300:My Lord, this is for you.
            assert t111110_x5(text1=11112300, flag29=0, mode24=1)
            """ State 7 """
            SetEventState(71110075, 1)
            SetEventState(71110083, 1)
        else:
            """ State 2,9 """
            # talk:11111200:My Lord, this is for you.
            assert t111110_x5(text1=11111200, flag29=0, mode24=1)
            """ State 8 """
            Label('L0')
            assert t111110_x41(mode11=0)
    else:
        """ State 4,3 """
        if not GetEventStatus(71120416):
            """ State 10 """
            # talk:11111300:A fragrant stone, a sacred village,\nall beneath Ashina...
            assert t111110_x5(text1=11111300, flag29=0, mode24=1)
            Goto('L0')
        else:
            """ State 12 """
            # talk:11111400:It says there's a fragrant stone and a sacred village, all beneath Ashina...
            assert t111110_x5(text1=11111400, flag29=0, mode24=1)
    """ State 13 """
    return 0

def t111110_x38():
    """ State 0,3 """
    if not GetEventStatus(71110085):
        """ State 2,4 """
        # talk:11111600:The scent in the incense burner reminded me of a sakura tree.
        assert t111110_x5(text1=11111600, flag29=0, mode24=1)
    else:
        """ State 1,5 """
        # talk:11111700:So the Everblossom has withered and no longer remains...
        assert t111110_x5(text1=11111700, flag29=0, mode24=1)
    """ State 6 """
    return 0

def t111110_x39():
    """ State 0,3 """
    if not GetEventStatus(71110092):
        """ State 2,5 """
        # talk:11110700:My Lord, please take a look at this.
        assert t111110_x4(text7=11110700, z6=71110092, flag30=0, mode25=1)
    else:
        """ State 1,4 """
        # talk:11110800:... I've seen that bell before.
        assert t111110_x5(text1=11110800, flag29=0, mode24=1)
    """ State 6 """
    return 0

def t111110_x40(mode9=_, goods1=_, z9=3, mode10=0):
    """ State 0,4 """
    if ComparePlayerStatus(41, 1, z9) == 1:
        """ State 5 """
        if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
            """ State 7,1 """
            if not mode9:
                """ State 2 """
                if not GetEventStatus(71110093):
                    """ State 13 """
                    # talk:11110900:My Lord, this is for you...
                    assert t111110_x4(text7=11110900, z6=71110093, flag30=0, mode25=1)
                else:
                    """ State 12 """
                    # talk:11110908:Wolf, if you so desire...
                    assert t111110_x5(text1=11110908, flag29=0, mode24=1)
            else:
                """ State 3 """
                pass
            """ State 9 """
            assert (t111110_x42(mode10=mode10, flag11=71120126, flag12=71120127, flag13=71120128, mode9=mode9,
                    goods1=goods1))
        else:
            """ State 8,11 """
            # action:13011121:No Sakura Droplets in your possession.
            assert t111110_x7(action1=13011121)
    else:
        """ State 6,10 """
        # action:13011122:This cannot be upgraded further.
        assert t111110_x7(action1=13011122)
    """ State 14 """
    return 0

def t111110_x41(mode11=_):
    """ State 0,5 """
    if 0 == mode11:
        """ State 3,1 """
        ClearTalkListData()
        c1110()
        """ State 2 """
        # action:14011040:Ask about the bottomless hole
        AddTalkListDataIf(GetEventStatus(72000110) == 1, 1, 14011040, 6001)
        # action:14011041:Never mind
        AddTalkListData(2, 14011041, 6001)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 7 """
            Label('L0')
            """ State 9 """
            SetEventState(71120124, 1)
            """ State 16 """
            # talk:11111230:A place to throw oneself...
            assert t111110_x4(text7=11111230, z6=71120416, flag30=0, mode25=1)
            """ State 12 """
            Label('L1')
            SetEventState(71110083, 1)
            """ State 13 """
            SetEventState(71120125, 0)
            SetEventState(71120124, 0)
        elif GetTalkListEntryResult() == 2:
            """ State 8 """
            Label('L2')
            """ State 10 """
            SetEventState(71120125, 1)
            """ State 15 """
            # talk:11111220:I do not know.
            assert t111110_x5(text1=11111220, flag29=0, mode24=1)
            Goto('L1')
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 11 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(71120124) == 1:
            Goto('L0')
        elif GetEventStatus(71120125) == 1:
            Goto('L2')
        else:
            """ State 14,18 """
            return 1
    """ State 17 """
    return 0

def t111110_x42(mode10=_, flag11=71120126, flag12=71120127, flag13=71120128, mode9=_, goods1=_):
    """ State 0,5 """
    if 0 == mode10:
        """ State 3 """
        if not mode9:
            """ State 18,1 """
            ClearTalkListData()
            c1110()
            """ State 2 """
            # action:14011050:Give Sakura Droplet
            AddTalkListData(1, 14011050, 6001)
            # action:14011051:Keep Sakura Droplet
            AddTalkListData(2, 14011051, 6001)
            """ State 6 """
            OpenConversationChoicesMenu(0)
            if GetTalkListEntryResult() == 1:
                """ State 7 """
                Label('L0')
                """ State 9 """
                SetEventState(flag11, 1)
                """ State 20 """
                Label('L1')
                """ State 26 """
                # talk:11119200:If you should be so kind...
                assert t111110_x5(text1=11119200, flag29=0, mode24=1)
                """ State 12 """
                SetEventState(71110098, 1)
                assert GetCurrentStateElapsedTime() > 0.1
                """ State 21 """
                ChangePlayerStats(41, 0, 1)
                """ State 22 """
                PlayerEquipmentQuantityChange(3, goods1, -1)
                """ State 16 """
                SetEventState(flag13, 1)
                """ State 29 """
                # action:13011120:Additional Resurrective Power granted.
                assert t111110_x7(action1=13011120)
                """ State 17 """
                Label('L2')
                """ State 28 """
                # talk:11119250:That was a boon granted by Lord Takeru.
                assert t111110_x5(text1=11119250, flag29=0, mode24=1)
                """ State 15 """
                Label('L3')
                """ State 13 """
                SetEventState(flag11, 0)
                SetEventState(flag12, 0)
                SetEventState(flag13, 0)
            elif GetTalkListEntryResult() == 2:
                """ State 8 """
                Label('L4')
                """ State 10 """
                SetEventState(flag12, 1)
                """ State 27 """
                # talk:11110940:My lord's oath is all I need.
                assert t111110_x5(text1=11110940, flag29=0, mode24=1)
                Goto('L3')
            elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                """ State 11 """
                pass
        else:
            """ State 19 """
            Goto('L1')
    else:
        """ State 4 """
        if GetEventStatus(flag13) == 1:
            Goto('L2')
        elif GetEventStatus(flag11) == 1:
            """ State 23 """
            if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
                Goto('L0')
            else:
                """ State 24,25 """
                SetEventState(flag11, 0)
                """ State 31 """
                Label('L5')
                return 1
        elif GetEventStatus(flag12) == 1:
            Goto('L4')
        else:
            """ State 14 """
            Goto('L5')
    """ State 30 """
    return 0

def t111110_x43(mode7=_, flag9=71120135, flag10=71120136, mode8=0):
    """ State 0,5 """
    if 0 == mode7:
        """ State 3 """
        if 0 == mode8:
            """ State 17,1 """
            ClearTalkListData()
            c1110()
            """ State 2 """
            # action:14011060:Yes, I did
            AddTalkListDataIf(GetEventStatus(71110064) == 1, 1, 14011060, 6001)
            # action:14011061:No, I did not
            AddTalkListData(2, 14011061, 6001)
            """ State 6 """
            OpenConversationChoicesMenu(0)
            if GetTalkListEntryResult() == 1:
                """ State 7 """
                Label('L0')
                """ State 9 """
                SetEventState(flag9, 1)
                """ State 18 """
                # talk:11111510:I did.
                assert t111110_x5(text1=11111510, flag29=0, mode24=1)
                """ State 15 """
                SetEventState(71110087, 1)
                """ State 12 """
                Label('L1')
                SetEventState(71110069, 1)
                """ State 13 """
                SetEventState(flag9, 0)
                SetEventState(flag10, 0)
            elif GetTalkListEntryResult() == 2:
                """ State 8 """
                Label('L2')
                """ State 10 """
                SetEventState(flag10, 1)
                """ State 19 """
                # talk:11111500:I did not.
                assert t111110_x5(text1=11111500, flag29=0, mode24=1)
                Goto('L1')
            elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                """ State 11 """
                pass
        else:
            """ State 16 """
            Goto('L0')
    else:
        """ State 4 """
        if GetEventStatus(flag9) == 1:
            Goto('L0')
        elif GetEventStatus(flag10) == 1:
            Goto('L2')
        else:
            """ State 14,21 """
            return 1
    """ State 20 """
    return 0

def t111110_x44(mode6=_, flag7=71120120, flag8=71120121):
    """ State 0,5 """
    if 0 == mode6:
        """ State 3,1 """
        Label('L0')
        ClearTalkListData()
        c1110()
        """ State 2 """
        # action:14011020:Help Kuro
        AddTalkListData(1, 14011020, 6001)
        # action:14011021:Obey the Iron Code, protect Kuro
        AddTalkListData(2, 14011021, 6001)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            pass
        elif GetTalkListEntryResult() == 2:
            """ State 8 """
            Label('L1')
            """ State 10 """
            SetEventState(flag8, 1)
            """ State 16 """
            # talk:11110600:I cannot.
            assert t111110_x4(text7=11110600, z6=71110055, flag30=0, mode25=1)
            """ State 12 """
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            """ State 17 """
            assert t111110_x28(z11=-1, z12=1720000, val14=1720002, mode19=1, val15=0.2)
            """ State 18 """
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 11,20 """
            return 2
    else:
        """ State 4 """
        if GetEventStatus(flag7) == 1:
            pass
        elif GetEventStatus(flag8) == 1:
            Goto('L1')
        else:
            """ State 13,19 """
            return 1
    """ State 7,9 """
    SetEventState(flag7, 1)
    """ State 15 """
    # talk:11110500:Father...
    assert t111110_x5(text1=11110500, flag29=0, mode24=1)
    """ State 14 """
    SetEventState(flag7, 0)
    SetEventState(flag8, 0)
    Goto('L0')

def t111110_x45(mode5=_, lot1=_, flag1=_, z4=_, text3=_, text4=_):
    """ State 0,3 """
    if 0 == mode5:
        """ State 1,9 """
        assert t111110_x5(text1=text3, flag29=0, mode24=1)
        """ State 5 """
        SetEventState(flag1, 1)
        """ State 10 """
        assert t111110_x6(lot2=lot1)
    else:
        """ State 2 """
        if GetEventStatus(flag1) == 1:
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 4,8 """
    assert t111110_x5(text1=text4, flag29=0, mode24=1)
    """ State 6 """
    SetEventState(z4, 1)
    SetEventState(flag1, 0)
    """ State 11 """
    return 0

def t111110_x46(mode4=_, flag5=71120122, flag6=71120123):
    """ State 0,5 """
    if 0 == mode4:
        """ State 3,1 """
        ClearTalkListData()
        c1110()
        """ State 2 """
        # action:14011030:Wake him
        AddTalkListData(1, 14011030, 6001)
        # action:14011031:Let him be
        AddTalkListData(2, 14011031, 6001)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 7 """
            Label('L0')
            if not f116(-1) == 1720004:
                """ State 16 """
                # talk:11112002:O-Oh it's just you, Wolf... I'm sorry, I was asleep.
                assert t111110_x5(text1=11112002, flag29=0, mode24=1)
                """ State 12 """
                Label('L1')
                SetEventState(flag5, 0)
                SetEventState(flag6, 0)
            else:
                """ State 9 """
                SetEventState(flag5, 1)
                """ State 14 """
                # talk:11112000:... My Lord.
                assert t111110_x5(text1=11112000, flag29=0, mode24=1)
                Goto('L1')
        elif GetTalkListEntryResult() == 2:
            """ State 8 """
            Label('L2')
            if not f116(-1) == 1720004:
                """ State 17 """
                # talk:11112108:You could have woken me up, you know?
                assert t111110_x5(text1=11112108, flag29=0, mode24=1)
                Goto('L1')
            else:
                """ State 10 """
                SetEventState(flag6, 1)
                """ State 15 """
                # talk:11112100:.........
                assert t111110_x5(text1=11112100, flag29=0, mode24=1)
                Goto('L1')
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 11 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(flag5) == 1:
            Goto('L0')
        elif GetEventStatus(flag6) == 1:
            Goto('L2')
        else:
            """ State 13,19 """
            return 1
    """ State 18 """
    return 0

def t111110_x47(mode3=_, goods4=9090, flag4=71120130):
    """ State 0,3 """
    if 0 == mode3:
        """ State 1,11 """
        # talk:11104000:Wolf, you're back.
        assert t111110_x5(text1=11104000, flag29=0, mode24=1)
        """ State 5 """
        SetEventState(flag4, 1)
        """ State 9 """
        SetEventState(71120145, 1)
        SetEventState(71120146, 1)
        """ State 8 """
        # goods:9090:Rice for Kuro
        PlayerEquipmentQuantityChange(3, goods4, -1)
        """ State 12 """
        # action:13011110:Gave Rice to Kuro.
        assert t111110_x7(action1=13011110)
    else:
        """ State 2 """
        if GetEventStatus(flag4) == 1:
            pass
        else:
            """ State 7,14 """
            return 1
    """ State 4,10 """
    # talk:11104050:This... It's rice...?
    assert t111110_x5(text1=11104050, flag29=0, mode24=1)
    """ State 6 """
    SetEventState(71110071, 1)
    SetEventState(flag4, 0)
    SetEventState(71110680, 1)
    c511(not GetEventStatus(71120146), 71120146, 1)
    """ State 13 """
    return 0

def t111110_x48(goods3=9220):
    """ State 0,1 """
    # goods:9220:Rotting Prisoner's Note
    if ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1:
        """ State 2,4 """
        SetEventState(71110081, 1)
    else:
        """ State 3 """
        pass
    """ State 5 """
    return 0

def t111110_x49():
    """ State 0,1 """
    if f116(-1) == 1720004:
        pass
    elif GetEventStatus(71120148) == 1 and not GetEventStatus(71120444):
        Goto('L0')
    elif GetEventStatus(71110078) == 1 and not GetEventStatus(71120443):
        Goto('L1')
    elif f116(-1) == 1720001:
        Goto('L2')
    else:
        Goto('L3')
    """ State 2,10 """
    # talk:11150000:(sleeping)
    t111110_x27(val1=7001150, z10=71120400, text8=11150000)
    Quit()
    """ State 4 """
    Label('L0')
    """ State 15 """
    # talk:11150200:Mm... Mmhm... 
    t111110_x27(val1=7001152, z10=71120402, text8=11150200)
    Quit()
    """ State 8 """
    Label('L1')
    """ State 9 """
    SetEventState(71110681, 0)
    """ State 13 """
    # talk:11150500:We're almost there.
    t111110_x27(val1=7001162, z10=71120405, text8=11150500)
    Quit()
    """ State 3 """
    Label('L2')
    """ State 14 """
    # talk:11150100:......... Hmm... 
    t111110_x27(val1=7001151, z10=71120401, text8=11150100)
    Quit()
    """ State 5 """
    Label('L3')
    if GetEventStatus(9308) == 1 and not GetEventStatus(71120442):
        """ State 7,12 """
        # talk:11150400:......... He's...
        t111110_x27(val1=7001161, z10=71120404, text8=11150400)
    elif not GetEventStatus(71120441):
        """ State 6,11 """
        # talk:11150300:When did you...
        t111110_x27(val1=7001160, z10=71120403, text8=11150300)

def t111110_x50(goods1=9009, goods2=9010):
    """ State 0,3 """
    SetWorkValue(0, 0)
    """ State 1 """
    # goods:9009:Sakura Droplet
    if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
        """ State 2 """
        # action:15011010:Show the Sakura Droplet
        AddTalkListData(1, 15011010, 6001)
        SetWorkValue(0, GetWorkValue(0) + 1)
    else:
        pass
    """ State 4 """
    if not GetEventStatus(71110076):
        """ State 5 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15011012:About the flower
        AddTalkListData(3, 15011012, 6001)
    else:
        pass
    """ State 6 """
    if (GetEventStatus(71110083) == 1 or GetEventStatus(71110081) == 1) and not GetEventStatus(71110075):
        """ State 7 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15011013:About the stone
        AddTalkListData(4, 15011013, 6001)
    else:
        pass
    """ State 8 """
    if GetEventStatus(71110087) == 1 and not GetEventStatus(9308):
        """ State 9 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15011014:About the sakura tree
        AddTalkListData(5, 15011014, 6001)
    else:
        pass
    """ State 10 """
    # goods:9010:Young Lord's Bell Charm
    if not GetEventStatus(9302) and ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1:
        """ State 11 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15011016:Ask about the Bell Charm
        AddTalkListData(7, 15011016, 6001)
    else:
        pass
    """ State 12 """
    if GetWorkValue(0) > 1:
        """ State 13 """
        return 0
    else:
        """ State 14 """
        return 1

def t111110_x51(mode2=_, flag2=71120433, flag3=71120434, text5=11103100, text6=11103500, text7=11103540,
                lot2=61108, lot3=61106, z6=71110084, z7=71110075, z8=71110083):
    """ State 0,2 """
    if not mode2:
        """ State 3,10 """
        assert t111110_x5(text1=text5, flag29=0, mode24=1)
        """ State 6 """
        SetEventState(flag2, 1)
        """ State 11 """
        assert t111110_x6(lot2=lot2)
        """ State 5 """
        Label('L0')
        """ State 9 """
        assert t111110_x5(text1=text6, flag29=0, mode24=1)
        """ State 7 """
        SetEventState(flag2, 0)
        SetEventState(flag3, 1)
        """ State 12 """
        assert t111110_x6(lot2=lot3)
    else:
        """ State 4 """
        if GetEventStatus(flag2) == 1:
            Goto('L0')
        elif GetEventStatus(flag3) == 1:
            pass
        else:
            """ State 15 """
            return 1
    """ State 8,13 """
    assert t111110_x4(text7=text7, z6=z6, flag30=0, mode25=1)
    """ State 1 """
    SetEventState(z7, 1)
    SetEventState(z8, 1)
    SetEventState(flag3, 0)
    """ State 14 """
    return 0

def t111110_x52(lot1=_, flag1=_, z4=_, text3=_, text4=_, mode1=_, z5=_):
    """ State 0,2 """
    if not mode1:
        """ State 3,5 """
        assert t111110_x45(mode5=0, lot1=lot1, flag1=flag1, z4=z4, text3=text3, text4=text4)
    else:
        """ State 4,6 """
        call = t111110_x45(mode5=1, lot1=lot1, flag1=flag1, z4=z4, text3=text3, text4=text4)
        if call.Get() == 0:
            pass
        elif call.Done():
            """ State 8 """
            return 1
    """ State 1 """
    SetEventState(z5, 1)
    """ State 7 """
    return 0

def t111110_x53():
    """ State 0,1 """
    if f116(-1) == 1720003:
        """ State 4,7 """
        assert t111110_x28(z11=-1, z12=1720006, val14=1720006, mode19=1, val15=0.5)
    elif f116(-1) == 1720004:
        """ State 3 """
        pass
    elif f116(-1) == 1720001:
        """ State 2,8 """
        assert t111110_x28(z11=-1, z12=1720005, val14=1720005, mode19=1, val15=0.5)
    else:
        """ State 6,5 """
        assert f116(-1) == 1000000
    """ State 9 """
    return 0

def t111110_x54(text2=11140000, z1=71120421, z2=71120421):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 5 """
        assert t111110_x3(text2=text2, z2=z2, flag31=0, mode26=1)
        """ State 4 """
        SetEventState(z1, 1)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 6 """
    return 0

def t111110_x55(text1=_):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        assert t111110_x5(text1=text1, flag29=0, mode24=1)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t111110_x56():
    """ State 0,6 """
    if GetEventStatus(71120142) == 1 and not GetEventStatus(8415):
        """ State 7 """
        pass
    else:
        """ State 2 """
        if f116(-1) == 1720003 or f116(-1) == 1720004 or f116(-1) == 1720001:
            """ State 3 """
            pass
        else:
            """ State 4 """
            if GetEventStatus(71120141) == 1 and not GetEventStatus(71110696):
                """ State 5 """
                SetEventState(71110696, 1)
                assert GetCurrentStateElapsedFrames() > 2
            else:
                pass
            """ State 8 """
            call = t111110_x57()
            if call.Get() == 1:
                """ State 1 """
                SetEventState(71110695, 1)
            elif call.Done():
                pass
    """ State 9 """
    return 0

def t111110_x57():
    """ State 0,3 """
    # goods:9090:Rice for Kuro
    if (not GetEventStatus(9308) and not GetEventStatus(71110062) and GetEventStatus(8400) == 1 and ComparePlayerInventoryNumber(3,
        9090, 0, 0, 0) == 1 and not GetEventStatus(71110770)):
        """ State 5 """
        if ((not GetEventStatus(50006114) and GetEventStatus(71120145) == 1 and GetEventStatus(71110071)
            == 1) or GetEventStatus(71120148) == 1):
            pass
        else:
            """ State 4 """
            if (GetEventStatus(71120147) == 1 and not GetEventStatus(71110061) and GetEventStatus(50006114)
                == 1):
                pass
            else:
                """ State 6 """
                Label('L0')
                return 0
    else:
        """ State 1 """
        if (GetEventStatus(71110752) == 1 and not GetEventStatus(71110760) and not GetEventStatus(71110761)
            and not GetEventStatus(71110753)):
            Goto('L0')
        else:
            """ State 2 """
            if GetEventStatus(140) == 1 and not GetEventStatus(71120412) and not GetEventStatus(71110753):
                Goto('L0')
            else:
                pass
    """ State 7 """
    return 1

def t111110_x58():
    """ State 0,1 """
    if GetEventStatus(8410) == 1:
        """ State 4 """
        if GetEventStatus(71110770) == 1 or GetEventStatus(71110060) == 1:
            """ State 9 """
            # talk:11109650:Did you meet with Lord Isshin?
            assert t111110_x4(text7=11109650, z6=71110062, flag30=0, mode25=1)
        else:
            """ State 7 """
            # talk:11102850:(cough) Hmm... This dust is awful.
            assert t111110_x4(text7=11102850, z6=71110062, flag30=0, mode25=1)
        """ State 5 """
        SetEventState(71120415, 1)
    else:
        """ State 3 """
        if GetEventStatus(71110770) == 1:
            """ State 8 """
            # talk:11109600:Did you meet with Lord Isshin?
            assert t111110_x4(text7=11109600, z6=71110062, flag30=0, mode25=1)
        else:
            """ State 6 """
            # talk:11102800:(cough) Hmm... This dust is awful.
            assert t111110_x4(text7=11102800, z6=71110062, flag30=0, mode25=1)
    """ State 2 """
    SetEventState(71110063, 1)
    """ State 10 """
    return 0

