# -*- coding: utf-8 -*-
def t510770_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t510770_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t510770_x12()
        assert not IsClientPlayer()

def t510770_x0(z3=6000, flag7=1895, flag8=6000, flag9=6000, flag10=6000, flag11=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) ==
                1 or GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag7) and not GetEventStatus(flag8) and not GetEventStatus(flag9) and
              not GetEventStatus(flag10) and not GetEventStatus(flag11)):
            pass
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t510770_x1():
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

def t510770_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t510770_x3(text1=_, flag1=_, flag6=0, mode3=1):
    """ State 0,5 """
    assert t510770_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t510770_x4(text5=_, z2=_, flag5=0, mode2=1):
    """ State 0,5 """
    assert t510770_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text5, -1, -1, flag5)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 6 """
    return 0

def t510770_x5(text4=_, flag4=0, mode1=1):
    """ State 0,4 """
    assert t510770_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t510770_x6():
    """ State 0,1 """
    if not GetEventStatus(75100250):
        """ State 11 """
        assert t510770_x5(text4=87000000, flag4=0, mode1=1)
        """ State 2 """
        ClearTalkListData()
        assert (not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
                and not CheckSpecificPersonGenericDialogIsOpen(2))
        """ State 3 """
        AddTalkListData(1, 14077000, -1)
        AddTalkListData(2, 14077001, -1)
        """ State 4 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 6,12 """
            assert t510770_x5(text4=87000100, flag4=0, mode1=1)
            """ State 8 """
            Label('L0')
            SetEventState(75100250, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 7,13 """
            assert t510770_x5(text4=87000200, flag4=0, mode1=1)
            Goto('L0')
        else:
            pass
    else:
        """ State 9 """
        if not GetEventStatus(75100251):
            """ State 14 """
            assert t510770_x4(text5=87000300, z2=75100251, flag5=0, mode2=1)
        else:
            """ State 10 """
            if not GetEventStatus(75100252):
                """ State 15 """
                assert t510770_x4(text5=87000400, z2=75100252, flag5=0, mode2=1)
            else:
                """ State 16 """
                assert t510770_x5(text4=87000500, flag4=0, mode1=1)
    """ State 17 """
    return 0

def t510770_x7(z1=-1, flag1=75100271, flag2=75100272, flag3=75100273, text1=87000700, text2=87000710,
               text3=87000720, text4=87000730):
    """ State 0,6 """
    assert t510770_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1896) and not GetEventStatus(1897)
    """ State 2 """
    if GetDistanceToPlayer() < 10:
        """ State 5,8 """
        call = t510770_x15(flag1=flag1, flag2=flag2, flag3=flag3, text1=text1, text2=text2, text3=text3,
                           text4=text4)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t510770_x1()
    else:
        """ State 4 """
        pass
    """ State 9 """
    return 0

def t510770_x8():
    """ State 0,1 """
    if GetEventStatus(1898) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t510770_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t510770_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t510770_x9():
    """ State 0,3 """
    if GetEventStatus(1896) == 1 or GetEventStatus(1897) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t510770_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t510770_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t510770_x10():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t510770_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t510770_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t510770_x11():
    """ State 0,1 """
    while True:
        call = t510770_x13(z1=-1, flag1=75100271, flag2=75100272, flag3=75100273, text1=87000700, text2=87000710,
                           text3=87000720, text4=87000730)
        assert not GetEventStatus(1880)
        """ State 2 """
        call = t510770_x14()
        assert GetEventStatus(1880) == 1

def t510770_x12():
    """ State 0,1 """
    assert t510770_x1()
    """ State 2 """
    return 0

def t510770_x13(z1=-1, flag1=75100271, flag2=75100272, flag3=75100273, text1=87000700, text2=87000710,
                text3=87000720, text4=87000730):
    """ State 0,2 """
    call = t510770_x17(z1=z1, flag1=flag1, flag2=flag2, flag3=flag3, text1=text1, text2=text2, text3=text3,
                       text4=text4)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t510770_x8()

def t510770_x14():
    """ State 0,1 """
    assert t510770_x1()
    """ State 2 """
    return 0

def t510770_x15(flag1=75100271, flag2=75100272, flag3=75100273, text1=87000700, text2=87000710, text3=87000720,
                text4=87000730):
    """ State 0,1 """
    if not GetEventStatus(flag1):
        """ State 3 """
        assert t510770_x3(text1=text1, flag1=flag1, flag6=0, mode3=1)
    elif not GetEventStatus(flag2):
        """ State 5 """
        assert t510770_x3(text1=text2, flag1=flag2, flag6=0, mode3=1)
    elif not GetEventStatus(flag3):
        """ State 6 """
        assert t510770_x3(text1=text3, flag1=flag3, flag6=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(flag1, 0)
        SetEventState(flag2, 0)
        SetEventState(flag3, 0)
        """ State 4 """
        assert t510770_x5(text4=text4, flag4=0, mode1=1)
    """ State 7 """
    return 0

def t510770_x16():
    """ State 0,1 """
    return 0

def t510770_x17(z1=-1, flag1=75100271, flag2=75100272, flag3=75100273, text1=87000700, text2=87000710,
                text3=87000720, text4=87000730):
    """ State 0,5 """
    while True:
        call = t510770_x0(z3=6000, flag7=1895, flag8=6000, flag9=6000, flag10=6000, flag11=6000)
        if call.Done():
            """ State 3 """
            call = t510770_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t510770_x7(z1=z1, flag1=flag1, flag2=flag2, flag3=flag3, text1=text1, text2=text2,
                                  text3=text3, text4=text4)
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
                call = t510770_x10()
                if call.Done():
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t510770_x9()

def t510770_x18():
    """ State 0,1,2 """
    assert t510770_x5(text4=87000800, flag4=0, mode1=1)
    """ State 3 """
    return 0

def t510770_x19():
    """ State 0,1,2 """
    return 0

