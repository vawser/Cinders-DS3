# -*- coding: utf-8 -*-
def t370295_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370295_x19()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370295_x20()
        assert not IsClientPlayer()

def t370295_x0():
    """ State 0,1,2 """
    if not GetEventStatus(50006190):
        """ State 3,10 """
        # talk:29001300:Oh, I thought it might be you. Good to see you.
        assert t370295_x15(text2=29001300, z3=73700150, flag3=0, mode2=1)
        """ State 8 """
        # lot:61900:Ring of the Evil Eye
        assert t370295_x17(lot1=61900)
    else:
        """ State 6 """
        if not GetEventStatus(73700150):
            """ State 5,9 """
            # talk:29001350:Oh, I thought it might be you. Good to see you.
            assert t370295_x15(text2=29001350, z3=73700150, flag3=0, mode2=1)
        else:
            """ State 4,7 """
            # talk:29001400:Ahh, you are brave indeed. To face your duty alone.
            assert t370295_x16(text1=29001400, flag2=0, mode1=1)
            """ State 11 """
            assert t370295_x18(z1=26, z2=9027, flag1=6076)
    """ State 12 """
    return 0

def t370295_x1():
    """ State 0,9 """
    assert t370295_x12()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1356) and not GetEventStatus(1357):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t370295_x7()
            if call.Done():
                pass
            elif GetEventStatus(1356) == 1 or GetEventStatus(1357) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t370295_x8()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t370295_x12()
                elif not GetEventStatus(1356) and not GetEventStatus(1357):
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

def t370295_x2():
    """ State 0,1 """
    if GetEventStatus(1358) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t370295_x9()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t370295_x12()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t370295_x3():
    """ State 0,3 """
    if GetEventStatus(1356) == 1 or GetEventStatus(1357) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            pass
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t370295_x4():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t370295_x12()
    """ State 5 """
    return 0

def t370295_x5():
    """ State 0,2 """
    call = t370295_x10()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t370295_x2()

def t370295_x6():
    """ State 0 """

def t370295_x7():
    """ State 0,1 """
    if not GetEventStatus(73700173):
        """ State 4,9 """
        # talk:29001830:What's happened to you?
        assert t370295_x14(text3=29001830, z4=73700173, flag4=0, mode3=1)
    else:
        """ State 5,6 """
        SetEventState(73700171, 0)
        SetEventState(73700172, 0)
        SetEventState(73700173, 0)
        """ State 10 """
        # talk:29001930:Please, stop this!
        assert t370295_x16(text1=29001930, flag2=0, mode1=1)
    """ State 11 """
    return 0

def t370295_x8():
    """ State 0,3 """
    if not GetEventStatus(73700170):
        """ State 1,4 """
        # talk:29002030:You've gone Hollow, have you?
        assert t370295_x14(text3=29002030, z4=73700170, flag4=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t370295_x9():
    """ State 0,1 """
    if GetEventStatus(8263) == 1:
        """ State 2 """
        # talk:29002430: 
        assert t370295_x16(text1=29002430, flag2=0, mode1=1)
    else:
        """ State 3 """
        # talk:29002330: 
        assert t370295_x16(text1=29002330, flag2=0, mode1=1)
    """ State 4 """
    return 0

def t370295_x10():
    """ State 0,5 """
    while True:
        call = t370295_x11(z5=6000, flag5=1355, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """ State 3 """
            call = t370295_x0()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1356) == 1 and not GetEventStatus(73700170)):
                """ State 1 """
                Label('L0')
                call = t370295_x1()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t370295_x4()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1356) == 1 and not GetEventStatus(73700170)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t370295_x3()

def t370295_x11(z5=6000, flag5=1355, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
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

def t370295_x12():
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

def t370295_x13():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t370295_x14(text3=_, z4=_, flag4=0, mode3=1):
    """ State 0,5 """
    assert t370295_x13() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t370295_x15(text2=_, z3=73700150, flag3=0, mode2=1):
    """ State 0,5 """
    assert t370295_x13() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t370295_x16(text1=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t370295_x13() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t370295_x17(lot1=61900):
    """ State 0,1 """
    # lot:61900:Ring of the Evil Eye
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t370295_x18(z1=26, z2=9027, flag1=6076):
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

def t370295_x19():
    """ State 0,1 """
    while True:
        call = t370295_x5()
        assert not GetEventStatus(1347) or GetEventStatus(9013) == 1 or GetEventStatus(13700651) == 1
        """ State 2 """
        call = t370295_x6()
        assert GetEventStatus(1347) == 1 and not GetEventStatus(9013) and not GetEventStatus(13700651)

def t370295_x20():
    """ State 0,1 """
    assert t370295_x12()
    """ State 2 """
    return 0

