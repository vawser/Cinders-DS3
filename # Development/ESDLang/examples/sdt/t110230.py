# -*- coding: utf-8 -*-
def t110230_1():
    """ State 0,1 """
    t110230_x30(flag1=1279, flag2=1275, flag3=1276, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001,
                val6=7002301, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode1=1, val7=1000000,
                val8=1000000, val9=1000000, mode2=0, mode3=1, mode4=1, val10=1000000, val11=1000000,
                mode5=0, flag9=6000, mode6=0)

def t110230_1000():
    """ State 0,3 """
    # goods:9010:Young Lord's Bell Charm, goods:2503:Aromatic Flower, goods:9560:Dragonrot Blood Sample, goods:3000:Healing Gourd, goods:4400:Gourd Seed, goods:9011:Father's Bell Charm, goods:2502:Aromatic Branch
    assert (t110230_x0(goods1=9010, goods2=2503, z1=1100, goods3=9560, goods4=3000, goods5=4400, z2=9550,
            goods6=9011, goods7=2502, mode8=0))
    """ State 2 """
    def WhilePaused():
        c1119(0)

def t110230_2000():
    """ State 0,3 """
    assert (t110230_x23(val6=7002301, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
            mode7=0, flag5=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000))
    """ State 2 """
    SetEventState(71100409, 1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110230_x0(goods1=9010, goods2=2503, z1=1100, goods3=9560, goods4=3000, goods5=4400, z2=9550, goods6=9011,
               goods7=2502, mode8=0):
    """ State 0,54 """
    assert GetCurrentStateElapsedFrames() > 10 and f116(-1) == 1000000
    """ State 1 """
    if GetEventStatus(71100448) == 1 and mode8 == 1:
        """ State 40,146 """
        call = t110230_x20(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                           z2=z2)
        if call.Get() == 1:
            """ State 83 """
            if not GetEventStatus(71110179) and GetEventStatus(71100401) == 1:
                """ State 84,150 """
                # talk:23101100:I've been waiting for you.
                assert t110230_x27(text1=23101100, flag41=0, mode25=1)
                """ State 151 """
                assert t110230_x28(lot1=62320)
                """ State 85 """
                SetEventState(71110179, 1)
                """ State 86 """
                Label('L0')
                c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                call = t110230_x1(goods8=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4,
                                  goods5=goods5, z2=z2)
                def WhilePaused():
                    c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                def ExitPause():
                    c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                if call.Done():
                    pass
                elif call.Done():
                    pass
            else:
                """ State 106 """
                # talk:23001900:It never fails, Lord Isshin disappears the moment I take my eyes off of him.
                def WhilePaused():
                    c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                assert t110230_x26(text2=23001900, flag17=71110168, flag43=0, mode27=1)
                Goto('L0')
        elif call.Done():
            pass
    elif GetEventStatus(71100447) == 1 and not mode8:
        """ State 41 """
        if not GetEventStatus(71110152):
            """ State 43,147 """
            call = t110230_x20(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                               z2=z2)
            if call.Get() == 1:
                """ State 107 """
                # talk:23100800:What are you doing?
                def WhilePaused():
                    c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                assert t110230_x26(text2=23100800, flag17=71110152, flag43=0, mode27=1)
                """ State 53 """
                SetEventState(70004001, 1)
                SetEventState(70004000, 1)
                Goto('L0')
            elif call.Done():
                pass
        else:
            """ State 44,148 """
            call = t110230_x20(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                               z2=z2)
            if call.Get() == 1:
                """ State 108 """
                # talk:23100900:For my research...
                def WhilePaused():
                    c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                assert t110230_x27(text1=23100900, flag41=0, mode25=1)
                Goto('L0')
            elif call.Done():
                pass
    elif GetEventStatus(71100449) == 1 and not mode8:
        """ State 42,149 """
        call = t110230_x20(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                           z2=z2)
        if call.Get() == 1:
            """ State 109 """
            # talk:23102200:Master Wolf, you're here too.
            def WhilePaused():
                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
            assert t110230_x26(text2=23102200, flag17=71110156, flag43=0, mode27=1)
            Goto('L0')
        elif call.Done():
            pass
    else:
        """ State 2 """
        if GetEventStatus(1260) == 1:
            """ State 3,130 """
            call = t110230_x20(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                               z2=z2)
            if call.Get() == 1:
                """ State 5 """
                if not GetEventStatus(71110150):
                    """ State 87 """
                    # talk:23100300:You truly... returned from the dead. 
                    def WhilePaused():
                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                    assert t110230_x26(text2=23100300, flag17=71110150, flag43=0, mode27=1)
                    Goto('L0')
                else:
                    """ State 116 """
                    # goods:9010:Young Lord's Bell Charm
                    call = t110230_x19(goods8=9010, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4,
                                       goods5=goods5, z2=z2, goods6=goods6, goods7=goods7)
                    if call.Get() == 1:
                        """ State 55 """
                        if ((GetEventStatus(71120425) == 1 or GetEventStatus(71120429) == 1 or GetEventStatus(71120428)
                            == 1) and not GetEventStatus(71110157)):
                            """ State 119 """
                            # talk:23003200:...I saw...
                            assert t110230_x26(text2=23003200, flag17=71110157, flag43=0, mode27=1)
                        else:
                            """ State 76 """
                            if not GetEventStatus(71110181) and GetEventStatus(8250) == 1:
                                """ State 77,136 """
                                # talk:23110500:.........
                                assert t110230_x26(text2=23110500, flag17=71110181, flag43=0, mode27=1)
                            else:
                                """ State 6 """
                                if DoesPlayerHaveSpEffect(400) == 1:
                                    """ State 7,88 """
                                    # talk:23101000:Master Wolf...
                                    def WhilePaused():
                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert t110230_x27(text1=23101000, flag41=0, mode25=1)
                                    Goto('L0')
                                else:
                                    """ State 8,89 """
                                    # talk:23100400:I'm glad you've come, Master Wolf.
                                    def WhilePaused():
                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert t110230_x27(text1=23100400, flag41=0, mode25=1)
                                    Goto('L0')
                    elif call.Done():
                        pass
            elif call.Done():
                pass
        elif GetEventStatus(1268) == 1:
            """ State 4,117 """
            # goods:9010:Young Lord's Bell Charm
            call = t110230_x19(goods8=9010, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                               z2=z2, goods6=goods6, goods7=goods7)
            if call.Get() == 1:
                """ State 131 """
                call = t110230_x20(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4,
                                   goods5=goods5, z2=z2)
                if call.Get() == 1:
                    """ State 9 """
                    if not GetEventStatus(71110158) and not GetEventStatus(71110189):
                        """ State 145 """
                        # talk:23101700:... You're here, Master Wolf.
                        def WhilePaused():
                            c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                        assert t110230_x27(text1=23101700, flag41=0, mode25=1)
                        Goto('L0')
                    elif not GetEventStatus(71110189):
                        """ State 144 """
                        # talk:23101802:I don't want to lose Lord Kuro...
                        def WhilePaused():
                            c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                        assert t110230_x27(text1=23101802, flag41=0, mode25=1)
                        Goto('L0')
                    else:
                        """ State 10 """
                        if not GetEventStatus(71110155) and GetEventStatus(9317) == 1:
                            """ State 90 """
                            # talk:23102100:I have it.
                            def WhilePaused():
                                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                            assert t110230_x27(text1=23102100, flag41=0, mode25=1)
                            """ State 15 """
                            SetEventState(71110155, 1)
                            """ State 14 """
                            SetEventState(71110154, 1)
                            """ State 13 """
                            SetEventState(71110153, 1)
                            Goto('L0')
                        else:
                            """ State 11 """
                            # goods:9011:Father's Bell Charm
                            if (ComparePlayerInventoryNumber(3, goods6, 2, 0, 0) == 1 and not GetEventStatus(71110154)
                                and GetEventStatus(8304) == 1):
                                """ State 92 """
                                # talk:23102000:You've come back from an old memory, I see.
                                def WhilePaused():
                                    c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                assert t110230_x27(text1=23102000, flag41=0, mode25=1)
                                Goto('L0')
                            else:
                                """ State 12 """
                                # goods:9011:Father's Bell Charm
                                if (ComparePlayerInventoryNumber(3, goods6, 2, 0, 0) == 1 and not GetEventStatus(71110153)
                                    and not GetEventStatus(8304)):
                                    """ State 91 """
                                    # talk:23101900:Master Owl's bell...
                                    def WhilePaused():
                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert t110230_x27(text1=23101900, flag41=0, mode25=1)
                                    Goto('L0')
                                else:
                                    """ State 114 """
                                    # talk:23101600:Oh, Master Wolf. I'm glad you've come.
                                    def WhilePaused():
                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert t110230_x27(text1=23101600, flag41=0, mode25=1)
                                    Goto('L0')
                elif call.Done():
                    pass
            elif call.Done():
                pass
        elif GetEventStatus(1261) == 1:
            """ State 16,132 """
            call = t110230_x15(mode24=1, flag39=71110703, flag40=71110704, z6=23100300)
            if call.Get() == 1:
                """ State 18 """
                if not GetEventStatus(71110055):
                    """ State 19 """
                    if not GetEventStatus(71110160):
                        """ State 20,93 """
                        # talk:23000300:At long last I've managed to fulfill my master's orders.
                        assert t110230_x26(text2=23000300, flag17=71110160, flag43=0, mode27=1)
                    else:
                        """ State 21,94 """
                        # talk:23000400:There's someone I think you'd like to see...
                        assert t110230_x27(text1=23000400, flag41=0, mode25=1)
                else:
                    """ State 78 """
                    if not GetEventStatus(71110059):
                        """ State 79,138 """
                        # talk:23000550:I see that you've spoken to Lord Kuro.
                        assert t110230_x26(text2=23000550, flag17=71110159, flag43=0, mode27=1)
                    else:
                        """ State 80 """
                        if GetEventStatus(1281) == 1:
                            """ State 81,140 """
                            # talk:23000600:My Lord is not in this castle keep, he is in one of the separate watchtowers.\n
                            assert t110230_x27(text1=23000600, flag41=0, mode25=1)
                        else:
                            """ State 22 """
                            if not GetEventStatus(51110760):
                                """ State 23 """
                                if not GetEventStatus(71110161):
                                    """ State 27 """
                                    if not GetEventStatus(71110159):
                                        """ State 97 """
                                        # talk:23000500:I see that you've spoken to Lord Kuro.
                                        def WhilePaused():
                                            c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9,
                                                  9, 9, 9, 9)
                                        assert (t110230_x26(text2=23000500, flag17=71110161, flag43=0,
                                                mode27=1))
                                    else:
                                        """ State 139 """
                                        # talk:23000560:The Divine Heir has asked me to find Lord Isshin.
                                        def WhilePaused():
                                            c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9,
                                                  9, 9, 9, 9)
                                        assert (t110230_x26(text2=23000560, flag17=71110161, flag43=0,
                                                mode27=1))
                                else:
                                    """ State 28,98 """
                                    # talk:23000600:My Lord is not in this castle keep, he is in one of the separate watchtowers.\n
                                    def WhilePaused():
                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert t110230_x27(text1=23000600, flag41=0, mode25=1)
                                """ State 99 """
                                c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                                def WhilePaused():
                                    c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                                def ExitPause():
                                    c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                                assert t110230_x15(mode24=0, flag39=71110703, flag40=71110704, z6=23100300)
                            else:
                                """ State 24 """
                                if not GetEventStatus(71110162):
                                    """ State 25,95 """
                                    # talk:23000700:So... Lord Isshin wasn't in his watchtower?
                                    assert t110230_x26(text2=23000700, flag17=71110162, flag43=0, mode27=1)
                                else:
                                    """ State 26,96 """
                                    # talk:23000800:Lord Isshin was not in his watchtower.
                                    assert t110230_x27(text1=23000800, flag41=0, mode25=1)
            elif call.Done():
                pass
        elif GetEventStatus(1265) == 1:
            """ State 17 """
            if not GetEventStatus(71110164):
                """ State 29,100 """
                # talk:23001700:.........
                assert t110230_x26(text2=23001700, flag17=71110164, flag43=0, mode27=1)
            else:
                """ State 30,101 """
                # talk:23001800:Back then...
                assert t110230_x27(text1=23001800, flag41=0, mode25=1)
        elif GetEventStatus(1272) == 1:
            """ State 31,135 """
            call = t110230_x20(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                               z2=z2)
            if call.Get() == 1:
                """ State 134 """
                # talk:23002000:Lord Isshin..., talk:23002050:This key...
                call = t110230_x55(text1=23002000, text2=23002050, lot1=62306, flag16=71100437, flag17=71110166,
                                   mode10=1)
                if call.Get() == 1:
                    """ State 142 """
                    # talk:23002300:Master Wolf..., talk:23002350:What is...?
                    call = t110230_x55(text1=23002300, text2=23002350, lot1=62304, flag16=71100438, flag17=71110170,
                                       mode10=1)
                    if call.Get() == 1:
                        """ State 143 """
                        # talk:23002400:Master Wolf..., talk:23002450:What is...?
                        call = t110230_x55(text1=23002400, text2=23002450, lot1=62304, flag16=71100439,
                                           flag17=71110171, mode10=1)
                        if call.Get() == 1:
                            """ State 74 """
                            if GetEventStatus(11120110) == 1:
                                """ State 75 """
                                # weapon:211000:Shadowrush, weapon:411000:Ashina Cross, weapon:301300:Living Force, weapon:511100:High Monk, goods:2924:Mushin Esoteric Text
                                if ((ComparePlayerInventoryNumber(0, 211000, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(0,
                                    411000, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(0, 301300,
                                    2, 0, 0) == 1 or ComparePlayerInventoryNumber(0, 511100, 2, 0, 0)
                                    == 1) and ComparePlayerInventoryNumber(3, 2924, 0, 0, 0) == 1 and
                                    GetEventStatus(71110188) == 1):
                                    pass
                                else:
                                    """ State 129 """
                                    # talk:23101000:Master Wolf...
                                    def WhilePaused():
                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert t110230_x27(text1=23101000, flag41=0, mode25=1)
                                    Goto('L0')
                            else:
                                """ State 32 """
                                if not GetEventStatus(71110166):
                                    """ State 102 """
                                    # talk:23002000:Lord Isshin..., talk:23002050:This key...
                                    def WhilePaused():
                                        c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert (t110230_x55(text1=23002000, text2=23002050, lot1=62306, flag16=71100437,
                                            flag17=71110166, mode10=0))
                                    Goto('L1')
                                else:
                                    """ State 33 """
                                    if not GetEventStatus(71110167):
                                        """ State 34 """
                                        # goods:2503:Aromatic Flower
                                        if ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1:
                                            """ State 36,103 """
                                            # talk:23002150:Lord Kuro escaped the castle through the secret passage.
                                            def WhilePaused():
                                                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9,
                                                      9, 9, 9, 9, 9)
                                            assert t110230_x27(text1=23002150, flag41=0, mode25=1)
                                        else:
                                            """ State 35,115 """
                                            # talk:23002100:Lord Kuro escaped the castle through the secret passage.
                                            def WhilePaused():
                                                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9,
                                                      9, 9, 9, 9, 9)
                                            assert t110230_x27(text1=23002100, flag41=0, mode25=1)
                                        """ State 52 """
                                        SetEventState(71110167, 1)
                                        Goto('L0')
                                    else:
                                        """ State 37 """
                                        # weapon:211000:Shadowrush, weapon:411000:Ashina Cross, weapon:301300:Living Force, weapon:511100:High Monk, goods:2924:Mushin Esoteric Text
                                        if ((ComparePlayerInventoryNumber(0, 211000, 2, 0, 0) == 1 or
                                            ComparePlayerInventoryNumber(0, 411000, 2, 0, 0) == 1 or
                                            ComparePlayerInventoryNumber(0, 301300, 2, 0, 0) == 1 or
                                            ComparePlayerInventoryNumber(0, 511100, 2, 0, 0) == 1) and
                                            ComparePlayerInventoryNumber(3, 2924, 0, 0, 0) == 1 and GetEventStatus(71110188)
                                            == 1):
                                            pass
                                        else:
                                            """ State 104 """
                                            # talk:23002200:Lord Kuro escaped the castle through the secret passage.
                                            def WhilePaused():
                                                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9,
                                                      9, 9, 9, 9, 9)
                                            assert t110230_x27(text1=23002200, flag41=0, mode25=1)
                                            Goto('L0')
                            """ State 38,39,105 """
                            # talk:23002400:Master Wolf..., talk:23002450:What is...?
                            def WhilePaused():
                                c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                            assert (t110230_x55(text1=23002400, text2=23002450, lot1=62304, flag16=71100439,
                                    flag17=71110171, mode10=0))
                            Goto('L0')
                        elif call.Done():
                            pass
                    elif call.Done():
                        pass
                elif call.Done():
                    pass
            elif call.Done():
                pass
        elif GetEventStatus(1263) == 1:
            """ State 45,133 """
            call = t110230_x20(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                               z2=z2)
            if call.Get() == 1:
                """ State 137 """
                call = t110230_x21(goods7=goods7)
                if call.Get() == 0:
                    """ State 46 """
                    if not GetEventStatus(71110163):
                        """ State 82 """
                        if not GetEventStatus(8301):
                            """ State 110 """
                            # talk:23000900:So, you've met with Lord Isshin?
                            def WhilePaused():
                                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                            assert t110230_x26(text2=23000900, flag17=71110163, flag43=0, mode27=1)
                            Goto('L0')
                        else:
                            """ State 141 """
                            # talk:23000901:Yes, he thanked me.
                            def WhilePaused():
                                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                            assert t110230_x26(text2=23000901, flag17=71110163, flag43=0, mode27=1)
                            Goto('L0')
                    else:
                        """ State 118 """
                        # goods:9010:Young Lord's Bell Charm
                        call = t110230_x19(goods8=9010, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4,
                                           goods5=goods5, z2=z2, goods6=goods6, goods7=goods7)
                        if call.Get() == 1:
                            """ State 47 """
                            if not GetEventStatus(71110079) and GetEventStatus(71110087) == 1:
                                """ State 48 """
                                if not GetEventStatus(71110085):
                                    """ State 49,111 """
                                    # talk:23001000:There is something I would like to ask you.
                                    def WhilePaused():
                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert t110230_x26(text2=23001000, flag17=71110085, flag43=0, mode27=1)
                                    Goto('L0')
                                else:
                                    """ State 50,112 """
                                    # talk:23001100:The Everblossom tree that Lord Takeru brought from his homeland...
                                    def WhilePaused():
                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                                    assert t110230_x27(text1=23001100, flag41=0, mode25=1)
                                    Goto('L0')
                            else:
                                """ State 51 """
                                if (GetEventStatus(71100402) == 1 and GetEventStatus(9308) == 1 and GetEventStatus(71110715)
                                    == 1):
                                    """ State 70,71 """
                                    if GetEventStatus(71110165) == 1:
                                        """ State 73,128 """
                                        # talk:23001500:The Purification requires the Mortal Blade and flowers from the Everblossom. 
                                        def WhilePaused():
                                            c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9,
                                                  9, 9, 9, 9)
                                        assert t110230_x27(text1=23001500, flag41=0, mode25=1)
                                        Goto('L0')
                                    else:
                                        """ State 72,127 """
                                        def WhilePaused():
                                            c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                                        assert t110230_x16(goods7=goods7, flag34=71100444, mode21=0)
                                else:
                                    """ State 63 """
                                    if GetEventStatus(71110710) == 1:
                                        """ State 64 """
                                        if GetEventStatus(71110172) == 1:
                                            """ State 66,67 """
                                            if GetEventStatus(71100402) == 1:
                                                """ State 68,125 """
                                                # talk:23010706:Master Wolf. I might have a place to start.
                                                def WhilePaused():
                                                    c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10,
                                                          0, 9, 9, 9, 9, 9, 9)
                                                assert t110230_x27(text1=23010706, flag41=0, mode25=1)
                                                Goto('L0')
                                            else:
                                                """ State 69,126 """
                                                def WhilePaused():
                                                    c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10,
                                                          0, 9, 9, 9, 9, 9, 9)
                                                assert t110230_x17(mode23=0, flag37=71100442, flag38=71100443)
                                        else:
                                            """ State 65,124 """
                                            def WhilePaused():
                                                c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
                                            assert t110230_x18(mode22=0, flag35=71100440, flag36=71100441)
                                    else:
                                        """ State 57 """
                                        if GetEventStatus(71110084) == 1 and not GetEventStatus(71110078):
                                            """ State 58 """
                                            if GetEventStatus(71110086) == 1:
                                                """ State 60,121 """
                                                # talk:23002900:As I told you before...
                                                def WhilePaused():
                                                    c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10,
                                                          0, 9, 9, 9, 9, 9, 9)
                                                assert t110230_x27(text1=23002900, flag41=0, mode25=1)
                                                Goto('L0')
                                            else:
                                                """ State 59 """
                                                if GetEventStatus(8410) == 1:
                                                    """ State 62,123 """
                                                    # talk:23002800:There is something I'd like to ask..., talk:23002880:This was written by Lord Takeru?
                                                    def WhilePaused():
                                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10,
                                                              0, 9, 9, 9, 9, 9, 9)
                                                    assert (t110230_x55(text1=23002800, text2=23002880,
                                                            lot1=62312, flag16=71110702, flag17=71110086,
                                                            mode10=0))
                                                else:
                                                    """ State 61,122 """
                                                    # talk:23002820:There is something I'd like to ask..., talk:23002880:This was written by Lord Takeru?
                                                    def WhilePaused():
                                                        c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10,
                                                              0, 9, 9, 9, 9, 9, 9)
                                                    assert (t110230_x55(text1=23002820, text2=23002880,
                                                            lot1=62312, flag16=71110701, flag17=71110086,
                                                            mode10=0))
                                        else:
                                            """ State 56 """
                                            if ((GetEventStatus(71120425) == 1 or GetEventStatus(71120429)
                                                == 1 or GetEventStatus(71120428) == 1) and not GetEventStatus(71110157)):
                                                """ State 120 """
                                                # talk:23003300:...I saw...
                                                assert (t110230_x26(text2=23003300, flag17=71110157,
                                                        flag43=0, mode27=1))
                                            else:
                                                """ State 113 """
                                                # talk:23101500:I'm glad you've come, Master Wolf.
                                                def WhilePaused():
                                                    c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10,
                                                          0, 9, 9, 9, 9, 9, 9)
                                                assert t110230_x27(text1=23101500, flag41=0, mode25=1)
                                                Goto('L0')
                        elif call.Done():
                            pass
                elif call.Done():
                    pass
            elif call.Done():
                pass
    """ State 152 """
    Label('L1')
    return 0

def t110230_x1(goods8=9010, goods2=2503, z1=1100, goods3=9560, goods4=3000, goods5=4400, z2=9550):
    """ State 0,2 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 14 """
        assert t110230_x51(flag30=71100420, flag31=71100421, flag32=71100422, flag33=71100423, z3=71100424)
        """ State 3 """
        # action:15023001:Present Healing Gourd
        AddTalkListDataIf(not GetEventStatus(71110185), 2, 15023001, 6001)
        # action:15023002:Give Gourd Seed
        AddTalkListDataIf(GetEventStatus(71110185) == 1, 3, 15023002, 6001)
        # action:15023004:Ask about what you overheard
        AddTalkListDataIf(GetEventStatus(1268) == 1 and not GetEventStatus(71110189) and GetEventStatus(71100560) == 1,
                          5, 15023004, 6001)
        # goods:9560:Dragonrot Blood Sample, action:15023003:Give Dragonrot Blood Sample
        AddTalkListDataIf(GetEventStatus(71110152) == 1 and not GetEventStatus(71100447) and ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1 and not GetEventStatus(71100400),
                          6, 15023003, 6001)
        # goods:9104:Ashina Sake, action:15000510:Give Drink
        AddTalkListDataIf(((GetEventStatus(71100424) == 1 and GetEventStatus(9303) == 1) or (GetEventStatus(50006230) == 1 and not GetEventStatus(9303) and ComparePlayerInventoryNumber(3, 9104, 2, 0, 0) == 1)) and not GetEventStatus(71100448) and not GetEventStatus(71100447) and not GetEventStatus(1268) and not GetEventStatus(71100449),
                          7, 15000510, 6001)
        # action:15023005:About Dragonrot
        AddTalkListDataIf(GetEventStatus(1272) == 1 and not GetEventStatus(50006234), 8, 15023005, 6001)
        # goods:2924:Mushin Esoteric Text, action:15023006:Isshin's parting words?
        AddTalkListDataIf(GetEventStatus(1272) == 1 and ComparePlayerInventoryNumber(3, 2924, 0, 0, 0) == 1,
                          9, 15023006, 6001)
        # action:15000000:Talk
        AddTalkListDataIf(not GetEventStatus(1272) and not DoesSelfHaveSpEffect(3740030), 10, 15000000,
                          6001)
        """ State 4 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 10:
            """ State 5,23 """
            assert t110230_x7()
        elif GetTalkListEntryResult() == 2:
            """ State 6,15 """
            assert t110230_x3()
        elif GetTalkListEntryResult() == 3:
            """ State 7,17 """
            assert t110230_x4(goods4=goods4, goods5=goods5, z5=30, mode20=0)
        elif GetTalkListEntryResult() == 7:
            """ State 9,20 """
            assert t110230_x2()
        elif GetTalkListEntryResult() == 9:
            """ State 11,22 """
            assert t110230_x9()
        elif GetTalkListEntryResult() == 8:
            """ State 10,21 """
            assert t110230_x8()
        elif GetTalkListEntryResult() == 6:
            """ State 8,19 """
            assert t110230_x6(mode26=0, flag42=71100435, goods3=goods3)
        elif GetTalkListEntryResult() == 5:
            """ State 12,18 """
            assert t110230_x5(mode9=0, flag14=71100432, flag15=71100433)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 13,16 """
            assert t110230_x10(goods8=goods8, goods2=goods2)
            """ State 24 """
            return 0

def t110230_x2():
    """ State 0,2 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 9 """
        if not GetEventStatus(1272):
            """ State 10,12 """
            if not GetEventStatus(9303):
                """ State 13 """
                # action:15000500:Treat to Ashina Sake
                AddTalkListData(50, 15000500, 6001)
                assert GetCurrentStateElapsedFrames() > 1
            else:
                """ State 15 """
                assert (t110230_x53(flag26=71100420, flag27=71100421, flag28=71100422, flag29=71100423)
                        and GetCurrentStateElapsedFrames() > 1)
            """ State 3 """
            ShowShopMessage(1)
            if GetTalkListEntryResult() == 50:
                """ State 4,16 """
                def WhilePaused():
                    c1117(1740000, -1)
                assert t110230_x11(mode14=0, flag24=71100420, flag25=71110190)
            elif GetTalkListEntryResult() == 51:
                """ State 5,17 """
                def WhilePaused():
                    c1117(1740000, -1)
                assert t110230_x12(mode13=0, flag22=71100421, flag23=71110191)
            elif GetTalkListEntryResult() == 52:
                """ State 6,18 """
                def WhilePaused():
                    c1117(1740000, -1)
                assert t110230_x13(mode12=0, flag20=71110192, flag21=71100422)
            elif GetTalkListEntryResult() == 53:
                """ State 7,19 """
                def WhilePaused():
                    c1117(1740000, -1)
                assert t110230_x14(mode11=0, flag18=71110193, flag19=71100423)
            elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                """ State 8 """
                break
            """ State 21 """
            assert t110230_x51(flag30=71100420, flag31=71100421, flag32=71100422, flag33=71100423, z3=71100424)
            """ State 14 """
            if GetEventStatus(71100424) == 1:
                pass
            else:
                break
        else:
            """ State 11,20 """
            # talk:23002700:Forgive me, but now's not a time for libations...
            assert t110230_x27(text1=23002700, flag41=0, mode25=1)
            break
    """ State 22 """
    return 0

def t110230_x3():
    """ State 0,1 """
    # talk:23110000:You made this gourd?
    assert t110230_x26(text2=23110000, flag17=71110185, flag43=0, mode27=1)
    """ State 2 """
    return 0

def t110230_x4(goods4=3000, goods5=4400, z5=30, mode20=_):
    """ State 0,15 """
    if not mode20:
        """ State 16,1 """
        # goods:3000:Healing Gourd
        if not f109(0) > GetItemHeldNumLimit(3, goods4):
            """ State 2 """
            # goods:4400:Gourd Seed
            if ComparePlayerInventoryNumber(3, goods5, 4, 1, 0) == 1:
                """ State 4,22 """
                # action:13000001:Consume Gourd Seed to increase maximum uses of Healing Gourd?
                call = t110230_x22(action2=13000001)
                if call.Done() and GetGenericDialogButtonResult() == 1:
                    """ State 14 """
                    if not GetEventStatus(71110186):
                        """ State 13,26 """
                        # talk:23110100:Is this a gourd seed?
                        assert t110230_x27(text1=23110100, flag41=0, mode25=1)
                    else:
                        """ State 12 """
                        pass
                    """ State 7 """
                    # goods:4400:Gourd Seed
                    PlayerEquipmentQuantityChange(3, goods5, -1)
                    SetEventState(71100430, 1)
                    """ State 8 """
                    c1108(f109(0) + 1, 0)
                    # goods:3000:Healing Gourd
                    if f109(0) > GetItemHeldNumLimit(3, goods4):
                        """ State 10,9 """
                        RequestUnlockTrophy(8)
                    else:
                        """ State 11 """
                        pass
                    """ State 24 """
                    # action:13000002:Maximum Healing Gourd uses increased.
                    assert t110230_x29(action1=13000002)
                    """ State 21 """
                    if not GetEventStatus(71110186):
                        """ State 19,27 """
                        Label('L0')
                        # talk:23110150:...... Such a strange medicine...
                        assert t110230_x26(text2=23110150, flag17=71110186, flag43=0, mode27=1)
                        """ State 18 """
                        Label('L1')
                        SetEventState(71100430, 0)
                    else:
                        """ State 20 """
                        Goto('L1')
                elif call.Done():
                    """ State 6 """
                    pass
            else:
                """ State 5,23 """
                # action:13000000:You don't have any Gourd Seeds.
                assert t110230_x29(action1=13000000)
        else:
            """ State 3,25 """
            # action:13000003:The Healing Gourd cannot be upgraded further.
            assert t110230_x29(action1=13000003)
    else:
        """ State 17 """
        if GetEventStatus(71100430) == 1:
            Goto('L0')
        else:
            """ State 29 """
            return 1
    """ State 28 """
    return 0

def t110230_x5(mode9=_, flag14=71100432, flag15=71100433):
    """ State 0,1 """
    if not mode9:
        """ State 2,13 """
        if not GetEventStatus(71110158):
            """ State 14 """
            # talk:23111400:One of us must die.
            assert t110230_x27(text1=23111400, flag41=0, mode25=1)
        else:
            """ State 17 """
            # talk:23101800:So in order for the Purification to be possible...
            assert t110230_x27(text1=23101800, flag41=0, mode25=1)
        """ State 4 """
        ClearTalkListData()
        """ State 5 """
        # action:14023007:Ask what she is hiding
        AddTalkListData(1, 14023007, 6001)
        # action:14023006:Leave quietly
        AddTalkListData(2, 14023006, 6001)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 7 """
            Label('L0')
            """ State 9 """
            SetEventState(flag14, 1)
            """ State 15 """
            # talk:23111600:What are you hiding...?, talk:23111650:Is this a bell...?
            assert (t110230_x55(text1=23111600, text2=23111650, lot1=62302, flag16=71100434, flag17=71110189,
                    mode10=0))
        elif GetTalkListEntryResult() == 2:
            """ State 8 """
            Label('L1')
            """ State 10 """
            SetEventState(flag15, 1)
            """ State 16 """
            # talk:23111500:.........
            assert t110230_x26(text2=23111500, flag17=71110158, flag43=0, mode27=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 12 """
            pass
    else:
        """ State 3 """
        if GetEventStatus(flag14) == 1:
            Goto('L0')
        elif GetEventStatus(flag15) == 1:
            Goto('L1')
        else:
            """ State 19 """
            return 1
    """ State 11 """
    SetEventState(flag14, 0)
    SetEventState(flag15, 0)
    SetEventState(71100434, 0)
    """ State 18 """
    return 0

def t110230_x6(mode26=_, flag42=71100435, goods3=9560):
    """ State 0,1 """
    if not mode26:
        """ State 2,4 """
        SetEventState(flag42, 1)
        """ State 5 """
        # goods:9560:Dragonrot Blood Sample
        PlayerEquipmentQuantityChange(3, goods3, -1)
    else:
        """ State 3 """
        if GetEventStatus(flag42) == 1:
            pass
        else:
            """ State 10 """
            return 1
    """ State 8 """
    # talk:23111000:I've obtained one.  
    assert t110230_x26(text2=23111000, flag17=71100400, flag43=0, mode27=1)
    """ State 7 """
    SetEventState(70004002, 1)
    """ State 6 """
    SetEventState(flag42, 0)
    """ State 9 """
    return 0

def t110230_x7():
    """ State 0,1 """
    if not GetEventStatus(71110180):
        """ State 2,22 """
        # talk:23110200:I'd like to make a request.
        assert t110230_x26(text2=23110200, flag17=71110180, flag43=0, mode27=1)
    else:
        """ State 10 """
        if not GetEventStatus(71110173):
            """ State 11,26 """
            # talk:23110300:So... it's not a birthmark...
            assert t110230_x26(text2=23110300, flag17=71110173, flag43=0, mode27=1)
        else:
            """ State 12 """
            if not GetEventStatus(71110720):
                """ State 27 """
                # talk:23110400:I still don't understand the particulars, but... 
                assert t110230_x26(text2=23110400, flag17=71110720, flag43=0, mode27=1)
            else:
                """ State 13 """
                if GetEventStatus(8250) == 1 and not GetEventStatus(71110721):
                    """ State 28 """
                    # talk:23110600:This power... it comes from Lord Kuro's...
                    assert t110230_x26(text2=23110600, flag17=71110721, flag43=0, mode27=1)
                else:
                    """ State 6 """
                    if GetEventStatus(70003299) == 1 and not GetEventStatus(71110722) and not GetEventStatus(71110152):
                        """ State 29 """
                        # talk:23110800:There must be a way to treat the Dragonrot.
                        assert t110230_x26(text2=23110800, flag17=71110722, flag43=0, mode27=1)
                    else:
                        """ State 5 """
                        if GetEventStatus(71110152) == 1 and not GetEventStatus(71110723) and not GetEventStatus(71100400):
                            """ State 30 """
                            # talk:23110900:For my research...
                            assert t110230_x26(text2=23110900, flag17=71110723, flag43=0, mode27=1)
                        else:
                            """ State 4 """
                            if (GetEventStatus(71100400) == 1 and not GetEventStatus(71110724) and not
                                GetEventStatus(71100401)):
                                """ State 31 """
                                # talk:23111100:I can now continue my research on the Dragonrot with the blood sample you gave me. 
                                assert t110230_x26(text2=23111100, flag17=71110724, flag43=0, mode27=1)
                            else:
                                """ State 3 """
                                if GetEventStatus(71100401) == 1 and not GetEventStatus(71110725):
                                    """ State 32 """
                                    # talk:23111300:There was a Dragonrot epidemic in Ashina once before.
                                    assert t110230_x26(text2=23111300, flag17=71110725, flag43=0, mode27=1)
                                else:
                                    """ State 21 """
                                    if GetEventStatus(71100402) == 1 and not GetEventStatus(71110726):
                                        """ State 35 """
                                        # talk:23112200:Lord Kuro is...
                                        assert (t110230_x26(text2=23112200, flag17=71110726, flag43=0,
                                                mode27=1))
                                    else:
                                        """ State 18 """
                                        if GetEventStatus(71110189) == 1:
                                            """ State 7,23 """
                                            # talk:23112300:Master Wolf...
                                            assert t110230_x27(text1=23112300, flag41=0, mode25=1)
                                        elif GetEventStatus(71100402) == 1:
                                            """ State 8,24 """
                                            # talk:23112200:Lord Kuro is...
                                            assert t110230_x27(text1=23112200, flag41=0, mode25=1)
                                        elif GetEventStatus(9303) == 1:
                                            """ State 9,25 """
                                            # talk:23112400:Master Wolf...
                                            assert t110230_x27(text1=23112400, flag41=0, mode25=1)
                                        elif GetEventStatus(71100401) == 1:
                                            """ State 17,36 """
                                            # talk:23111300:There was a Dragonrot epidemic in Ashina once before.
                                            assert t110230_x27(text1=23111300, flag41=0, mode25=1)
                                        elif GetEventStatus(71100400) == 1:
                                            """ State 16,37 """
                                            # talk:23111100:I can now continue my research on the Dragonrot with the blood sample you gave me. 
                                            assert t110230_x27(text1=23111100, flag41=0, mode25=1)
                                        elif GetEventStatus(71110152) == 1:
                                            """ State 15,38 """
                                            # talk:23110900:For my research...
                                            assert t110230_x27(text1=23110900, flag41=0, mode25=1)
                                        elif GetEventStatus(70003299) == 1:
                                            """ State 14,39 """
                                            # talk:23110800:There must be a way to treat the Dragonrot.
                                            assert t110230_x27(text1=23110800, flag41=0, mode25=1)
                                        elif GetEventStatus(8250) == 1:
                                            """ State 19,33 """
                                            # talk:23110600:This power... it comes from Lord Kuro's...
                                            assert t110230_x27(text1=23110600, flag41=0, mode25=1)
                                        else:
                                            """ State 20,34 """
                                            # talk:23110400:I still don't understand the particulars, but... 
                                            assert t110230_x27(text1=23110400, flag41=0, mode25=1)
    """ State 40 """
    return 0

def t110230_x8():
    """ State 0,2 """
    # talk:23010600:For those who have the Dragonrot...
    assert t110230_x26(text2=23010600, flag17=71110179, flag43=0, mode27=1)
    """ State 3 """
    assert t110230_x28(lot1=62320)
    """ State 1 """
    SetEventState(70004002, 1)
    SetEventState(70004001, 1)
    SetEventState(70004000, 1)
    SetEventState(71100401, 1)
    """ State 4 """
    return 0

def t110230_x9():
    """ State 0,3 """
    if not GetEventStatus(71110188):
        """ State 1,4 """
        # weapon:211000:Shadowrush, weapon:411000:Ashina Cross, weapon:301300:Living Force, weapon:511100:High Monk, goods:2924:Mushin Esoteric Text
        if ((ComparePlayerInventoryNumber(0, 211000, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(0,
            411000, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(0, 301300, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(0,
            511100, 2, 0, 0) == 1) and ComparePlayerInventoryNumber(3, 2924, 0, 0, 0) == 1):
            """ State 7 """
            # talk:23002300:Master Wolf..., talk:23002350:What is...?
            def WhilePaused():
                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
            assert (t110230_x55(text1=23002300, text2=23002350, lot1=62304, flag16=71100438, flag17=71110170,
                    mode10=0))
        else:
            """ State 5 """
            # talk:23002500:Lord Isshin entrusted me with something.
            assert t110230_x26(text2=23002500, flag17=71110188, flag43=0, mode27=1)
    else:
        """ State 2,6 """
        # talk:23002600:The item that Lord Isshin entrusted me with...
        assert t110230_x27(text1=23002600, flag41=0, mode25=1)
    """ State 8 """
    return 0

def t110230_x10(goods8=9010, goods2=2503):
    """ State 0,11 """
    if GetEventStatus(1272) == 1:
        """ State 13,15 """
        if GetEventStatus(11120110) == 1:
            """ State 16,25 """
            # talk:23120100:Good-bye...
            assert t110230_x27(text1=23120100, flag41=0, mode25=1)
        else:
            """ State 14 """
            # goods:2503:Aromatic Flower
            if ComparePlayerInventoryNumber(3, 2503, 2, 0, 0) == 1:
                """ State 23 """
                # talk:23020100:I pray...
                assert t110230_x27(text1=23020100, flag41=0, mode25=1)
            else:
                """ State 24 """
                # talk:23020000:Please, go to Lord Kuro.
                assert t110230_x27(text1=23020000, flag41=0, mode25=1)
    else:
        """ State 12,5 """
        if GetEventStatus(70002000) == 1 and not GetEventStatus(50006234):
            """ State 6,19 """
            # talk:23120100:Good-bye...
            assert t110230_x27(text1=23120100, flag41=0, mode25=1)
        else:
            """ State 1 """
            # goods:9010:Young Lord's Bell Charm
            if (not GetEventStatus(132) and ComparePlayerInventoryNumber(3, goods8, 2, 0, 0) == 1 and
                not GetEventStatus(1268) and not GetEventStatus(71100447) and not GetEventStatus(71100449)):
                """ State 2 """
                if GetEventStatus(71100155) == 1:
                    """ State 3,17 """
                    # talk:23120300:Oh...?  Did I hear the ringing of a chime?
                    assert t110230_x27(text1=23120300, flag41=0, mode25=1)
                else:
                    """ State 4,18 """
                    # talk:23120350:Oh...?  Did I hear the ringing of a chime?
                    assert t110230_x27(text1=23120350, flag41=0, mode25=1)
            else:
                """ State 7 """
                if GetEventStatus(71100402) == 1:
                    """ State 8,20 """
                    # talk:23120500:Goodbye... Master Wolf.
                    assert t110230_x27(text1=23120500, flag41=0, mode25=1)
                elif GetEventStatus(9303) == 1:
                    """ State 9,21 """
                    # talk:23120400:Goodbye.
                    assert t110230_x27(text1=23120400, flag41=0, mode25=1)
                else:
                    """ State 10,22 """
                    # talk:23120000:Goodbye.
                    assert t110230_x27(text1=23120000, flag41=0, mode25=1)
    """ State 26 """
    return 0

def t110230_x11(mode14=_, flag24=71100420, flag25=71110190):
    """ State 0,3 """
    if not mode14:
        """ State 5,15 """
        # action:12095000:Give Ashina Sake?
        call = t110230_x22(action2=12095000)
        if call.Get() == 0:
            """ State 12 """
            if not GetEventStatus(9303):
                pass
            else:
                """ State 8 """
                # goods:9100:Ashina Sake
                if ComparePlayerInventoryNumber(3, 9100, 2, 0, 0) == 1:
                    """ State 10,1 """
                    SetEventState(flag24, 1)
                    """ State 13 """
                    # goods:9100:Ashina Sake
                    assert t110230_x54(goods9=9100, goods10=9100, mode15=1)
                    """ State 14 """
                    Label('L0')
                    # talk:23111800:I brought sake.
                    assert t110230_x27(text1=23111800, flag41=0, mode25=1)
                    """ State 2 """
                    SetEventState(flag25, 1)
                    Goto('L1')
                else:
                    """ State 11 """
                    pass
            """ State 16 """
            # talk:23111700:I brought sake.
            assert t110230_x27(text1=23111700, flag41=0, mode25=1)
        elif call.Done():
            """ State 9 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(flag24) == 1 and not GetEventStatus(flag25):
            """ State 7 """
            Goto('L0')
        else:
            """ State 6,18 """
            return 1
    """ State 17 """
    Label('L1')
    return 0

def t110230_x12(mode13=_, flag22=71100421, flag23=71110191):
    """ State 0,3 """
    if not mode13:
        """ State 5,12 """
        # action:12095001:Give Unrefined Sake?
        call = t110230_x22(action2=12095001)
        if call.Get() == 0:
            """ State 8,1 """
            SetEventState(flag22, 1)
            """ State 10 """
            # goods:9101:Unrefined Sake, goods:9105:Unrefined Sake
            assert t110230_x54(goods9=9101, goods10=9105, mode15=1)
            """ State 11 """
            Label('L0')
            # talk:23111900:Here, for you.
            assert t110230_x27(text1=23111900, flag41=0, mode25=1)
            """ State 2 """
            SetEventState(flag23, 1)
        elif call.Done():
            """ State 9 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(flag22) == 1 and not GetEventStatus(flag23):
            """ State 7 """
            Goto('L0')
        else:
            """ State 6,14 """
            return 1
    """ State 13 """
    return 0

def t110230_x13(mode12=_, flag20=71110192, flag21=71100422):
    """ State 0,3 """
    if not mode12:
        """ State 5,12 """
        # action:12095002:Give Monkey Booze?
        call = t110230_x22(action2=12095002)
        if call.Get() == 0:
            """ State 8,1 """
            SetEventState(flag20, 1)
            """ State 10 """
            # goods:9102:Monkey Booze
            assert t110230_x54(goods9=9102, goods10=9102, mode15=1)
            """ State 11 """
            Label('L0')
            # talk:23112000:Here.
            assert t110230_x27(text1=23112000, flag41=0, mode25=1)
            """ State 2 """
            SetEventState(flag21, 1)
        elif call.Done():
            """ State 9 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(flag20) == 1 and not GetEventStatus(flag21):
            """ State 7 """
            Goto('L0')
        else:
            """ State 6,14 """
            return 1
    """ State 13 """
    return 0

def t110230_x14(mode11=_, flag18=71110193, flag19=71100423):
    """ State 0,3 """
    if not mode11:
        """ State 5,12 """
        # action:12095003:Give Dragonspring Sake?
        call = t110230_x22(action2=12095003)
        if call.Get() == 0:
            """ State 8,1 """
            SetEventState(flag18, 1)
            """ State 10 """
            # goods:9103:Dragonspring Sake
            assert t110230_x54(goods9=9103, goods10=9103, mode15=1)
            """ State 11 """
            Label('L0')
            # talk:23112100:Have some sake.
            assert t110230_x27(text1=23112100, flag41=0, mode25=1)
            """ State 2 """
            SetEventState(flag19, 1)
        elif call.Done():
            """ State 9 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(flag18) == 1 and not GetEventStatus(flag19):
            """ State 7 """
            Goto('L0')
        else:
            """ State 6,14 """
            return 1
    """ State 13 """
    return 0

def t110230_x15(mode24=_, flag39=71110703, flag40=71110704, z6=23100300):
    """ State 0,1 """
    if not mode24:
        """ State 3,6 """
        c1110()
        """ State 5 """
        ClearTalkListData()
        """ State 7 """
        # action:14023000:Ask how to find Isshin
        AddTalkListData(1, 14023000, 6001)
        # action:14023001:Say nothing
        AddTalkListData(2, 14023001, 6001)
        """ State 8 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 9,12 """
            Label('L0')
            SetEventState(flag39, 1)
            if GetEventStatus(71100505) == 1:
                """ State 16,20 """
                # talk:23010000:Is there a way to get in?
                assert t110230_x27(text1=23010000, flag41=0, mode25=1)
                """ State 15 """
                Label('L1')
                SetEventState(71110161, 1)
            else:
                """ State 17,21 """
                # talk:23010010:Is there a way to get in?
                assert t110230_x27(text1=23010010, flag41=0, mode25=1)
                Goto('L1')
        elif GetTalkListEntryResult() == 2:
            """ State 10,13 """
            Label('L2')
            SetEventState(flag40, 1)
            if GetEventStatus(71100505) == 1:
                """ State 18,22 """
                # talk:23010100:Understood.
                assert t110230_x27(text1=23010100, flag41=0, mode25=1)
                Goto('L1')
            else:
                """ State 19,23 """
                # talk:23010150:Understood.
                assert t110230_x27(text1=23010150, flag41=0, mode25=1)
                Goto('L1')
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 11 """
            pass
    else:
        """ State 2 """
        if GetEventStatus(flag39) == 1:
            Goto('L0')
        elif GetEventStatus(flag40) == 1:
            Goto('L2')
        else:
            """ State 4,25 """
            return 1
    """ State 14 """
    SetEventState(flag39, 0)
    SetEventState(flag40, 0)
    """ State 24 """
    return 0

def t110230_x16(goods7=2502, flag34=71100444, mode21=_):
    """ State 0,3 """
    if not mode21:
        """ State 4,18 """
        # talk:23001400:Master Wolf...
        assert t110230_x27(text1=23001400, flag41=0, mode25=1)
        """ State 2 """
        SetEventState(flag34, 1)
        """ State 19 """
        assert t110230_x28(lot1=62308)
    else:
        """ State 5 """
        if GetEventStatus(flag34) == 1 and not GetEventStatus(71110165):
            """ State 6 """
            pass
        else:
            """ State 7,25 """
            return 1
    """ State 1 """
    if not GetEventStatus(71110085):
        """ State 10 """
        # goods:2502:Aromatic Branch
        if ComparePlayerInventoryNumber(3, goods7, 2, 0, 0) == 1:
            """ State 11,20 """
            # talk:23001410:Purification?
            assert t110230_x27(text1=23001410, flag41=0, mode25=1)
            """ State 16 """
            SetEventState(71110169, 1)
        else:
            """ State 12,21 """
            # talk:23001460:Purification?
            assert t110230_x27(text1=23001460, flag41=0, mode25=1)
        """ State 15 """
        SetEventState(71110085, 1)
    else:
        """ State 9 """
        # goods:2502:Aromatic Branch
        if ComparePlayerInventoryNumber(3, goods7, 2, 0, 0) == 1:
            """ State 13,22 """
            # talk:23009000:Purification?
            assert t110230_x27(text1=23009000, flag41=0, mode25=1)
            """ State 17 """
            SetEventState(71110169, 1)
        else:
            """ State 14,23 """
            # talk:23009050:Purification?
            assert t110230_x27(text1=23009050, flag41=0, mode25=1)
    """ State 8 """
    SetEventState(71110165, 1)
    SetEventState(flag34, 0)
    """ State 24 """
    return 0

def t110230_x17(mode23=_, flag37=71100442, flag38=71100443):
    """ State 0,1 """
    if not mode23:
        """ State 3,18 """
        # talk:23001300:Are you sure the Divine Heir knows...
        assert t110230_x27(text1=23001300, flag41=0, mode25=1)
        """ State 6 """
        c1110()
        """ State 5 """
        ClearTalkListData()
        """ State 7 """
        # action:14023004:I've reconsidered.  Kuro must live
        AddTalkListData(1, 14023004, 6001)
        # action:14023005:My mind is made up
        AddTalkListData(2, 14023005, 6001)
        """ State 8 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 9,12 """
            Label('L0')
            SetEventState(flag37, 1)
            """ State 16 """
            # talk:23010400:I.... cannot allow my lord to die.
            assert t110230_x27(text1=23010400, flag41=0, mode25=1)
            """ State 15 """
            SetEventState(71100402, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 10,13 """
            Label('L1')
            SetEventState(flag38, 1)
            """ State 17 """
            # talk:23010500:.........
            assert t110230_x27(text1=23010500, flag41=0, mode25=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 11,21 """
            return 2
    else:
        """ State 2 """
        if GetEventStatus(flag37) == 1:
            Goto('L0')
        elif GetEventStatus(flag38) == 1:
            Goto('L1')
        else:
            """ State 4,20 """
            return 1
    """ State 14 """
    SetEventState(flag37, 0)
    SetEventState(flag38, 0)
    """ State 19 """
    return 0

def t110230_x18(mode22=_, flag35=71100440, flag36=71100441):
    """ State 0,1 """
    if not mode22:
        """ State 3,19 """
        # talk:23003100:"I must do, what must be done..."
        assert t110230_x27(text1=23003100, flag41=0, mode25=1)
        """ State 6 """
        c1110()
        """ State 5 """
        ClearTalkListData()
        """ State 7 """
        # action:14023002:I agree.  Kuro cannot be allowed to die
        AddTalkListData(1, 14023002, 6001)
        # action:14023003:No.  My lord's will is Severance
        AddTalkListData(2, 14023003, 6001)
        """ State 8 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 9,12 """
            Label('L0')
            SetEventState(flag35, 1)
            """ State 17 """
            # talk:23010700:I will not let my lord die.
            assert t110230_x27(text1=23010700, flag41=0, mode25=1)
            """ State 15 """
            SetEventState(71100402, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 10,13 """
            Label('L1')
            SetEventState(flag36, 1)
            """ State 18 """
            # talk:23010800:I refuse.
            assert t110230_x27(text1=23010800, flag41=0, mode25=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 11,22 """
            return 2
    else:
        """ State 2 """
        if GetEventStatus(flag35) == 1:
            Goto('L0')
        elif GetEventStatus(flag36) == 1:
            Goto('L1')
        else:
            """ State 4,21 """
            return 1
    """ State 16 """
    SetEventState(71110172, 1)
    """ State 14 """
    SetEventState(flag35, 0)
    SetEventState(flag36, 0)
    """ State 20 """
    return 0

def t110230_x19(goods8=9010, goods2=2503, z1=1100, goods3=9560, goods4=3000, goods5=4400, z2=9550, goods6=9011,
                goods7=2502):
    """ State 0,16 """
    # talk:23101400:It seems the Sculptor's Dragonrot has been cured., talk:23101450:What is it?
    call = t110230_x55(text1=23101400, text2=23101450, lot1=62310, flag16=71100436, flag17=71110174,
                       mode10=1)
    if call.Get() == 1:
        """ State 7 """
        if not GetEventStatus(71110177) and GetEventStatus(70003299) == 1:
            """ State 8,15 """
            # talk:23100700:...Have you seen the Sculptor lately?
            def WhilePaused():
                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
            assert t110230_x27(text1=23100700, flag41=0, mode25=1)
            """ State 9 """
            SetEventState(71110181, 1)
            SetEventState(71110176, 1)
            SetEventState(71110177, 1)
            SetEventState(71110175, 1)
            """ State 10 """
            SetEventState(70004000, 1)
            """ State 12 """
            c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
            def WhilePaused():
                c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
            def ExitPause():
                c1120(2, 10, 0, 9, 9, 9, 9, 9, 9)
            assert (t110230_x1(goods8=goods8, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5,
                    z2=z2))
        else:
            """ State 1 """
            if GetEventStatus(62) == 1 and not GetEventStatus(71110176) and not GetEventStatus(70003299):
                """ State 13 """
                # talk:23100600:Hmm...?
                assert t110230_x26(text2=23100600, flag17=71110176, flag43=0, mode27=1)
            else:
                """ State 2 """
                if not GetEventStatus(71110179) and GetEventStatus(71100401) == 1:
                    """ State 3,17 """
                    # talk:23101100:I've been waiting for you.
                    assert t110230_x27(text1=23101100, flag41=0, mode25=1)
                    """ State 18 """
                    assert t110230_x28(lot1=62320)
                    """ State 4 """
                    SetEventState(71110179, 1)
                else:
                    """ State 5 """
                    if not GetEventStatus(71110174) and GetEventStatus(71100147) == 1:
                        """ State 6,11 """
                        if not GetEventStatus(71100575):
                            """ State 14 """
                            # talk:23101400:It seems the Sculptor's Dragonrot has been cured., talk:23101450:What is it?
                            def WhilePaused():
                                c5120(GetCurrentStateElapsedTime() > 0.5, 2, 10, 0, 9, 9, 9, 9, 9, 9)
                            assert (t110230_x55(text1=23101400, text2=23101450, lot1=62310, flag16=71100436,
                                    flag17=71110174, mode10=0))
                        else:
                            """ State 19 """
                            # talk:23101490:It seems the Sculptor's Dragonrot has been cured.
                            assert t110230_x26(text2=23101490, flag17=71110174, flag43=0, mode27=1)
                            """ State 20 """
                            assert t110230_x28(lot1=62310)
                    else:
                        """ State 22 """
                        return 1
    elif call.Done():
        pass
    """ State 21 """
    return 0

def t110230_x20(goods1=9010, goods2=2503, z1=1100, goods3=9560, goods4=3000, goods5=4400, z2=9550):
    """ State 0,1 """
    if (not GetEventStatus(1272) and not GetEventStatus(1265) and not GetEventStatus(1261) and not GetEventStatus(1268)
        and not GetEventStatus(71100448) and not GetEventStatus(71100447) and not GetEventStatus(71100449)):
        """ State 10 """
        call = t110230_x11(mode14=1, flag24=71100420, flag25=71110190)
        def WhilePaused():
            c1117(1740000, -1)
        if call.Get() == 1:
            """ State 11 """
            call = t110230_x12(mode13=1, flag22=71100421, flag23=71110191)
            def WhilePaused():
                c1117(1740000, -1)
            if call.Get() == 1:
                """ State 12 """
                call = t110230_x13(mode12=1, flag20=71110192, flag21=71100422)
                def WhilePaused():
                    c1117(1740000, -1)
                if call.Get() == 1:
                    """ State 13 """
                    call = t110230_x14(mode11=1, flag18=71110193, flag19=71100423)
                    def WhilePaused():
                        c1117(1740000, -1)
                    if call.Get() == 1:
                        """ State 3 """
                        Label('L0')
                        if GetEventStatus(1268) == 1:
                            """ State 14 """
                            # talk:23111600:What are you hiding...?, talk:23111650:Is this a bell...?
                            call = t110230_x55(text1=23111600, text2=23111650, lot1=62302, flag16=71100434,
                                               flag17=71110189, mode10=1)
                            if call.Get() == 1:
                                """ State 8 """
                                call = t110230_x5(mode9=1, flag14=71100432, flag15=71100433)
                                if call.Get() == 1:
                                    pass
                                elif call.Done():
                                    Goto('L1')
                            elif call.Done():
                                """ State 6 """
                                SetEventState(71100432, 0)
                                SetEventState(71100434, 0)
                                Goto('L1')
                        else:
                            """ State 4 """
                            pass
                        """ State 5,7 """
                        call = t110230_x4(goods4=goods4, goods5=goods5, z5=30, mode20=1)
                        if call.Get() == 1:
                            """ State 9 """
                            call = t110230_x6(mode26=1, flag42=71100435, goods3=goods3)
                            if call.Get() == 1:
                                """ State 16 """
                                return 1
                            elif call.Done():
                                pass
                        elif call.Done():
                            pass
                    elif call.Done():
                        pass
                elif call.Done():
                    pass
            elif call.Done():
                pass
        elif call.Done():
            pass
    else:
        """ State 2 """
        Goto('L0')
    """ State 15 """
    Label('L1')
    return 0

def t110230_x21(goods7=2502):
    """ State 0,1 """
    call = t110230_x16(goods7=goods7, flag34=71100444, mode21=1)
    if call.Get() == 1:
        """ State 2 """
        # talk:23002820:There is something I'd like to ask..., talk:23002880:This was written by Lord Takeru?
        call = t110230_x55(text1=23002820, text2=23002880, lot1=62312, flag16=71110701, flag17=71110086,
                           mode10=1)
        if call.Get() == 1:
            """ State 3 """
            # talk:23002800:There is something I'd like to ask..., talk:23002880:This was written by Lord Takeru?
            call = t110230_x55(text1=23002800, text2=23002880, lot1=62312, flag16=71110702, flag17=71110086,
                               mode10=1)
            if call.Get() == 1:
                """ State 4 """
                call = t110230_x18(mode22=1, flag35=71100440, flag36=71100441)
                if call.Get() == 1:
                    """ State 5 """
                    call = t110230_x17(mode23=1, flag37=71100442, flag38=71100443)
                    if call.Get() == 1:
                        """ State 6 """
                        return 0
                    elif call.Done():
                        pass
                elif call.Done():
                    pass
            elif call.Done():
                pass
        elif call.Done():
            pass
    elif call.Done():
        pass
    """ State 7 """
    return 1

def t110230_x22(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t110230_x23(val6=7002301, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode7=0,
                flag5=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110230_x56(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
                           mode7=mode7, flag5=flag5)
        if call.Done():
            break
        elif (not f116(-1) == val7 and not f116(-1) == val8 and not f116(-1) == val9 and not DoesSelfHaveSpEffect(4510)
              and not val7 == -1 and not f116(-1) == val10 and not f116(-1) == val11):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val7 or f116(-1) == val8 or f116(-1) == val9 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val10 and f116(-1) == val11))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val7 and not f116(-1) == val8 and not f116(-1) == val9 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val10 and not f116(-1) == val11):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t110230_x24():
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

def t110230_x25():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110230_x26(text2=_, flag17=_, flag43=0, mode27=1):
    """ State 0,7 """
    assert t110230_x25() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag43:
        """ State 1 """
        TalkToPlayer(text2, -1, -1, flag43, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text2, -1, -1, flag43, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode27:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag17, 1)
    """ State 8 """
    return 0

def t110230_x27(text1=_, flag41=0, mode25=1):
    """ State 0,6 """
    assert t110230_x25() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag41:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag41, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag41, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode25:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t110230_x28(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
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

def t110230_x29(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t110230_x30(flag1=1279, flag2=1275, flag3=1276, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001,
                val6=7002301, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode1=1, val7=1000000,
                val8=1000000, val9=1000000, mode2=0, mode3=1, mode4=1, val10=1000000, val11=1000000,
                mode5=0, flag9=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110230_x31(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                           flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode1=mode1, val7=val7,
                           val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10,
                           val11=val11, mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t110230_x46(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t110230_x32(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t110230_x31(val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001, val6=7002301, flag5=6000, flag6=6001,
                flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=0, mode3=1,
                mode4=1, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t110230_x48(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110230_x33(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag8) == 1:
            Goto('L0')
        elif not GetEventStatus(flag4) and GetEventStatus(flag7) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t110230_x34(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110230_x35(val2=val2, val3=val3)

def t110230_x32(flag1=1279, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110230_x43()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110230_x24()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110230_x33(val1=5, mode1=1, mode2=0, mode3=1, mode4=1, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110230_x41(mode2=mode2, mode4=mode4)
    def WhilePaused():
        c1117(mode1, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode3 == 1, 0.1)
        c5120(val1 == 1 and not mode1 and mode5 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t110230_x38()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110230_x37()
    """ State 4 """
    return 0

def t110230_x34(val5=12):
    """ State 0,1 """
    call = t110230_x47()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110230_x24()
    """ State 3 """
    return 0

def t110230_x35(val2=10, val3=12):
    """ State 0,4 """
    assert t110230_x24() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110230_x40()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110230_x24()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110230_x36(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110230_x45()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110230_x24()
    """ State 4 """
    return 0

def t110230_x37():
    """ State 0,1 """
    assert t110230_x24()
    """ State 2 """
    return 0

def t110230_x38():
    """ State 0,2 """
    assert t110230_x24()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110230_x39(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t110230_x44()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t110230_x24()

def t110230_x40():
    """ State 0,1 """
    assert t110230_x42(z4=1101, mode16=0, mode17=0, mode18=0, mode19=0)
    """ State 2 """
    return 0

def t110230_x41(mode2=0, mode4=1):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode2 == 1 and not mode4, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode2 == 1 and mode4 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t110230_x42(z4=1000, mode16=0, mode17=0, mode18=0, mode19=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110230_x42(z4=_, mode16=0, mode17=0, mode18=0, mode19=0):
    """ State 0,4 """
    if f118(z4) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z4)
        assert f117() == mode16 or f117() == mode17 or f117() == mode18 or f117() == mode19
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110230_x43():
    """ State 0,1 """
    call = t110230_x42(z4=1103, mode16=0, mode17=0, mode18=0, mode19=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110230_x24()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110230_x44():
    """ State 0,2 """
    call = t110230_x42(z4=1102, mode16=0, mode17=0, mode18=0, mode19=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110230_x45():
    """ State 0,1 """
    assert t110230_x42(z4=1001, mode16=0, mode17=0, mode18=0, mode19=0)
    """ State 2 """
    return 0

def t110230_x46(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t110230_x39(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110230_x49(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110230_x36(val2=val2, val3=val3)

def t110230_x47():
    """ State 0,1 """
    assert t110230_x42(z4=1100, mode16=0, mode17=0, mode18=0, mode19=0)
    """ State 2 """
    return 0

def t110230_x48(val6=7002301, flag5=6000, flag6=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t110230_x42(z4=2000, mode16=0, mode17=0, mode18=0, mode19=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110230_x23(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode7=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110230_x49(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110230_x50()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110230_x24()
    """ State 4 """
    return 0

def t110230_x50():
    """ State 0,1 """
    assert t110230_x42(z4=1002, mode16=0, mode17=0, mode18=0, mode19=0)
    """ State 2 """
    return 0

def t110230_x51(flag30=71100420, flag31=71100421, flag32=71100422, flag33=71100423, z3=71100424):
    """ State 0,3 """
    # goods:9100:Ashina Sake
    call = t110230_x52(flag26=flag30, goods11=9100)
    if call.Get() == 0:
        """ State 1 """
        Label('L0')
        SetEventState(z3, 1)
    elif call.Done():
        """ State 4 """
        # goods:9104:Ashina Sake
        call = t110230_x52(flag26=flag30, goods11=9104)
        if call.Get() == 0:
            Goto('L0')
        elif call.Done():
            """ State 5 """
            # goods:9101:Unrefined Sake
            call = t110230_x52(flag26=flag31, goods11=9101)
            if call.Get() == 0:
                Goto('L0')
            elif call.Done():
                """ State 6 """
                # goods:9105:Unrefined Sake
                call = t110230_x52(flag26=flag31, goods11=9105)
                if call.Get() == 0:
                    Goto('L0')
                elif call.Done():
                    """ State 7 """
                    # goods:9102:Monkey Booze
                    call = t110230_x52(flag26=flag32, goods11=9102)
                    if call.Get() == 0:
                        Goto('L0')
                    elif call.Done():
                        """ State 8 """
                        # goods:9103:Dragonspring Sake
                        call = t110230_x52(flag26=flag33, goods11=9103)
                        if call.Get() == 0:
                            Goto('L0')
                        elif call.Done():
                            """ State 2 """
                            SetEventState(z3, 0)
    """ State 9 """
    return 0

def t110230_x52(flag26=_, goods11=_):
    """ State 0,1 """
    if ComparePlayerInventoryNumber(3, goods11, 2, 0, 0) == 1 and not GetEventStatus(flag26):
        """ State 2,4 """
        return 0
    else:
        """ State 3,5 """
        return 1

def t110230_x53(flag26=71100420, flag27=71100421, flag28=71100422, flag29=71100423):
    """ State 0,1,9 """
    # goods:9100:Ashina Sake
    call = t110230_x52(flag26=flag26, goods11=9100)
    if call.Get() == 1:
        """ State 10 """
        # goods:9104:Ashina Sake
        call = t110230_x52(flag26=flag26, goods11=9104)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 2 """
            Label('L0')
            # action:15000500:Treat to Ashina Sake
            AddTalkListData(50, 15000500, 6001)
    elif call.Done():
        Goto('L0')
    """ State 6,11 """
    # goods:9101:Unrefined Sake
    call = t110230_x52(flag26=flag27, goods11=9101)
    if call.Get() == 1:
        """ State 12 """
        # goods:9105:Unrefined Sake
        call = t110230_x52(flag26=flag27, goods11=9105)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 3 """
            Label('L1')
            # action:15000501:Treat to Unrefined Sake
            AddTalkListData(51, 15000501, 6001)
    elif call.Done():
        Goto('L1')
    """ State 7,13 """
    # goods:9102:Monkey Booze
    call = t110230_x52(flag26=flag28, goods11=9102)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 4 """
        # action:15000502:Treat to Monkey Booze
        AddTalkListData(52, 15000502, 6001)
    """ State 8,14 """
    # goods:9103:Dragonspring Sake
    call = t110230_x52(flag26=flag29, goods11=9103)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 5 """
        # action:15000503:Treat to Dragonspring Sake
        AddTalkListData(53, 15000503, 6001)
    """ State 15 """
    return 0

def t110230_x54(goods9=_, goods10=_, mode15=1):
    """ State 0,2 """
    if mode15 == 1:
        """ State 3 """
        Label('L0')
        if ComparePlayerInventoryNumber(3, goods9, 2, 0, 0) == 1:
            """ State 1 """
            PlayerEquipmentQuantityChange(3, goods9, -1)
        else:
            """ State 4 """
            Label('L1')
            if ComparePlayerInventoryNumber(3, goods10, 2, 0, 0) == 1:
                """ State 5 """
                PlayerEquipmentQuantityChange(3, goods10, -1)
            else:
                Goto('L0')
    else:
        Goto('L1')
    """ State 6 """
    return 0

def t110230_x55(text1=_, text2=_, lot1=_, flag16=_, flag17=_, mode10=_):
    """ State 0,3 """
    if not mode10:
        """ State 4,8 """
        assert t110230_x27(text1=text1, flag41=0, mode25=1)
        """ State 2 """
        SetEventState(flag16, 1)
        """ State 10 """
        assert t110230_x28(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag16) == 1 and not GetEventStatus(flag17):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t110230_x26(text2=text2, flag17=flag17, flag43=0, mode27=1)
    """ State 11 """
    return 0

def t110230_x56(val6=7002301, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode7=0,
                flag5=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag6) == 1 or GetEventStatus(flag10) == 1 or GetEventStatus(flag11) ==
                1 or GetEventStatus(flag12) == 1 or GetEventStatus(flag13) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag5)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag6) and not GetEventStatus(flag10) and not GetEventStatus(flag11)
                  and not GetEventStatus(flag12) and not GetEventStatus(flag13)):
                Continue('mainloop')
            elif GetEventStatus(flag5) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

