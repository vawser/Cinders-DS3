#-------------------------------------------
#-- Ringfinger Leonhard
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400190_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400190_x14()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400190_x15()
        assert not IsClientPlayer()

def t400190_x0(z5=6000, flag5=1155, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) ==
                1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag5) and not GetEventStatus(flag6) and not GetEventStatus(flag7) and
              not GetEventStatus(flag8) and not GetEventStatus(flag9)):
            pass
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t400190_x1():
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

def t400190_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400190_x3(text3=_, z4=_, flag4=0, mode3=1):
    """ State 0,5 """
    assert t400190_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400190_x4(text2=_, z3=_, flag3=0, mode2=1):
    """ State 0,5 """
    assert t400190_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z3, 1)
    """ State 6 """
    return 0

def t400190_x5(text1=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t400190_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400190_x6(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t400190_x7(z1=28, z2=9029, flag1=6078):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z1)
        OpenItemAcquisitionMenu(3, z2, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t400190_x8():
    """ State 0,1 """
    if GetEventStatus(1141) == 1:
        """ State 2 """
        if not GetEventStatus(50006090):
            """ State 3,23 """
            # talk:19000000:Mm, Unkindled, are we...
            assert t400190_x5(text1=19000000, flag2=0, mode1=1)
            
            # Learn Gesture
            assert t400190_x7(z1=37, z2=9040, flag1=25000305)
            
            """ State 16 """
            # lot:60900:Cracked Red Eye Orb
            assert t400190_x6(lot1=60900)
        else:
            """ State 11 """
            if not GetEventStatus(74000850):
                """ State 12 """
                pass
            else:
                """ State 4,15 """
                # talk:19000100:Pillage embers, for briefly heightened strength, for your duty.
                assert t400190_x5(text1=19000100, flag2=0, mode1=1)
                Goto('L0')
        """ State 17 """
        # talk:19000050:Use them to pillage embers, and briefly heighten your strength, for your duty.
        assert t400190_x4(text2=19000050, z3=74000850, flag3=0, mode2=1)
    elif GetEventStatus(1143) == 1:
        """ State 5 """
        if not GetEventStatus(50006091): # Cracked Red Eye Orbs
            """ State 13,24 """
            # talk:19000200:Well, hasn't it been some time.
            assert t400190_x5(text1=19000200, flag2=0, mode1=1)
            """ State 21 """
            # lot:60910:Lift Chamber Key
            assert t400190_x6(lot1=60910)
        else:
            """ State 14 """
            if not GetEventStatus(74000851):
                """ State 6 """
                pass
            else:
                """ State 7,18 """
                # talk:19000300:If you fancy a proper red eye orb, one uncracked, untainted...
                assert t400190_x5(text1=19000300, flag2=0, mode1=1)
                Goto('L0')
        """ State 22 """
        # talk:19000230:I can see it in your eyes. If you didn't invade, didn't pillage, whatever would you do?
        assert t400190_x4(text2=19000230, z3=74000851, flag3=0, mode2=1)
    else:
        """ State 8 """
        if not GetEventStatus(74000853):
            """ State 9,25 """
            # talk:19000500:Ah-hah, you've found a proper red eye...
            assert t400190_x5(text1=19000500, flag2=0, mode1=1)
            """ State 26 """
            assert t400190_x7(z1=28, z2=9029, flag1=6078)
            """ State 19 """
            # talk:19000550:Now invade and pillage all you like.
            assert t400190_x4(text2=19000550, z3=74000853, flag3=0, mode2=1)
        else:
            """ State 10,20 """
            # talk:19000600:Now invade and pillage all you like.
            assert t400190_x5(text1=19000600, flag2=0, mode1=1)
    """ State 27 """
    Label('L0')
    return 0

def t400190_x9():
    """ State 0,9 """
    assert t400190_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1156) and not GetEventStatus(1157):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t400190_x18()
            if call.Done():
                pass
            elif GetEventStatus(1156) == 1 or GetEventStatus(1157) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t400190_x19()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t400190_x1()
                elif not GetEventStatus(1156) and not GetEventStatus(1157):
                    """ State 8 """
                    pass
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        else:
            """ State 6 """
            pass
    else:
        Goto('L0')
    """ State 13 """
    return 0

def t400190_x10():
    """ State 0,1 """
    if GetEventStatus(1158) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400190_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400190_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400190_x11():
    """ State 0,3 """
    if GetEventStatus(1156) == 1 or GetEventStatus(1157) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400190_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400190_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t400190_x12():
    """ State 0,1,2,3 """
    assert t400190_x1()
    """ State 4 """
    return 0

def t400190_x13():
    """ State 0,1,2 """
    assert t400190_x3(text3=19000400, z4=74000852, flag4=0, mode3=1)
    """ State 3 """
    return 0

def t400190_x14():
    """ State 0,1 """
    while True:
        call = t400190_x16()
        assert not GetEventStatus(1141) and not GetEventStatus(1143) and not GetEventStatus(1145)
        """ State 2 """
        call = t400190_x17()
        assert GetEventStatus(1141) == 1 or GetEventStatus(1143) == 1 or GetEventStatus(1145) == 1

def t400190_x15():
    """ State 0,1 """
    assert t400190_x1()
    """ State 2 """
    return 0

def t400190_x16():
    """ State 0,2 """
    call = t400190_x22()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400190_x10()

def t400190_x17():
    """ State 0 """

def t400190_x18():
    """ State 0,3,4 """
    if not GetEventStatus(74000873):
        """ State 5,10 """
        # talk:19002130:What's wrong with you?
        assert t400190_x3(text3=19002130, z4=74000873, flag4=0, mode3=1)
    else:
        """ State 6,7 """
        SetEventState(74000871, 0)
        SetEventState(74000872, 0)
        SetEventState(74000873, 0)
        """ State 11 """
        # talk:19002140:Can you even hear me? If you can, cease this at once.
        assert t400190_x5(text1=19002140, flag2=0, mode1=1)
    """ State 12 """
    return 0

def t400190_x19():
    """ State 0,3,4 """
    if not GetEventStatus(74000870):
        """ State 1,5 """
        # talk:19002150:I see, I see, as clear as day.
        assert t400190_x3(text3=19002150, z4=74000870, flag4=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 6 """
    return 0

def t400190_x20():
    """ State 0,1,2,3 """
    # talk:19002160:Curses, I can't...die here...
    assert t400190_x5(text1=19002160, flag2=0, mode1=1)
    """ State 4 """
    return 0

def t400190_x21():
    """ State 0,1,2,3 """
    # talk:19002170:You beast. You've trifled with the wrong knight.
    assert t400190_x5(text1=19002170, flag2=0, mode1=1)
    """ State 4 """
    return 0

def t400190_x22():
    """ State 0,6 """
    Label('L0')
    while True:
        call = t400190_x0(z5=6000, flag5=1155, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """ State 3 """
            call = t400190_x8()
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                break
            elif IsPlayerDead() == 1:
                pass
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t400190_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    continue
                elif IsAttackedBySomeone() == 1:
                    break
        elif IsAttackedBySomeone() == 1:
            break
        elif IsPlayerDead() == 1:
            pass
        """ State 2 """
        Label('L1')
        t400190_x11()
        Quit()
    """ State 1 """
    call = t400190_x9()
    def ExitPause():
        RemoveMyAggro()
    if call.Done():
        Goto('L0')
    elif IsPlayerDead() == 1:
        Goto('L1')

