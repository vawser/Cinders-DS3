# -*- coding: utf-8 -*-
def t390250_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t390250_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t390250_x12()
        assert not IsClientPlayer()

def t390250_x0(z3=6000, flag4=1275, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t390250_x1():
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

def t390250_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t390250_x3(text3=_, z2=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t390250_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t390250_x4(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t390250_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z1, 1)
    """ State 6 """
    return 0

def t390250_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t390250_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t390250_x6():
    """ State 0,1 """
    if not GetEventStatus(73900101):
        """ State 3 """
        if not GetEventStatus(73900100):
            """ State 2,18 """
            # talk:25000000:Oh, there you are.
            assert t390250_x4(text2=25000000, z1=73900100, flag2=0, mode2=1)
        else:
            """ State 15,17 """
            # talk:25000100:Hm? Oh...you're not one of them, are you?
            assert t390250_x5(text1=25000100, flag1=0, mode1=1)
            """ State 5 """
            Label('L0')
            ClearTalkListData()
            """ State 6 """
            # action:14015000:Offer help
            AddTalkListData(1, 14015000, -1)
            # action:14015001:Do not help her
            AddTalkListData(2, 14015001, -1)
            """ State 7 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 8 """
            if GetTalkListEntryResult() == 1:
                """ State 20 """
                # talk:25002800:You're here to save me...?
                assert t390250_x5(text1=25002800, flag1=0, mode1=1)
                """ State 9 """
                ClearTalkListData()
                """ State 10 """
                # action:14015004:Save her nonetheless
                AddTalkListData(1, 14015004, -1)
                # action:14015005:Do not save her
                AddTalkListData(2, 14015005, -1)
                """ State 11 """
                OpenConversationChoicesMenu(0)
                assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """ State 12 """
                if GetTalkListEntryResult() == 1:
                    """ State 22 """
                    # talk:25002900:Oh, really. You are no ordinary man.
                    assert t390250_x4(text2=25002900, z1=73900131, flag2=0, mode2=1)
                    """ State 13 """
                    SetEventState(73900101, 1)
                elif GetTalkListEntryResult() == 2:
                    """ State 14,21 """
                    Label('L1')
                    # talk:25000300: 
                    assert t390250_x4(text2=25000300, z1=73900101, flag2=0, mode2=1)
                else:
                    pass
            elif GetTalkListEntryResult() == 2:
                Goto('L1')
            else:
                pass
    else:
        """ State 4,19 """
        # talk:25000400:What is it? Something else?
        assert t390250_x5(text1=25000400, flag1=0, mode1=1)
        Goto('L0')
    """ State 24 """
    return 0

def t390250_x7():
    """ State 0,8 """
    assert t390250_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4 """
        if not GetEventStatus(73900121):
            """ State 7 """
            # talk:25000500: 
            call = t390250_x3(text3=25000500, z2=73900121, flag3=0, mode3=1)
            if call.Done():
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                pass
        elif not GetEventStatus(73900122):
            """ State 10 """
            # talk:25000600: 
            call = t390250_x3(text3=25000600, z2=73900122, flag3=0, mode3=1)
            if call.Done():
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                pass
        else:
            """ State 6 """
            SetEventState(73900121, 0)
            SetEventState(73900122, 0)
            """ State 11 """
            # talk:25000700:Why, you're one of those leeches after all.
            call = t390250_x5(text1=25000700, flag1=0, mode1=1)
            if call.Done():
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                pass
        """ State 9 """
        assert t390250_x1()
    else:
        """ State 5 """
        pass
    """ State 12 """
    Label('L0')
    return 0

def t390250_x8():
    """ State 0,1 """
    if GetEventStatus(1278) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:25000800:Cursed leech, I await you, in the Abyss...
            call = t390250_x5(text1=25000800, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t390250_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t390250_x9():
    """ State 0,2,1,3 """
    return 0

def t390250_x10():
    """ State 0,1,2,3 """
    assert t390250_x1()
    """ State 4 """
    return 0

def t390250_x11():
    """ State 0,1 """
    while True:
        call = t390250_x13()
        assert not GetEventStatus(1260)
        """ State 2 """
        call = t390250_x14()
        assert GetEventStatus(1260) == 1

def t390250_x12():
    """ State 0,1 """
    assert t390250_x1()
    """ State 2 """
    return 0

def t390250_x13():
    """ State 0,2 """
    call = t390250_x15()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t390250_x8()

def t390250_x14():
    """ State 0 """

def t390250_x15():
    """ State 0,5 """
    while True:
        call = t390250_x0(z3=6000, flag4=1275, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t390250_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t390250_x7()
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
                call = t390250_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t390250_x9()

