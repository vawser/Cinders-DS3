# -*- coding: utf-8 -*-
def t400261_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400261_x10()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400261_x11()
        assert not IsClientPlayer()

def t400261_x0(z2=6000, flag3=1295, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag3) == 1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) ==
                1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag3) and not GetEventStatus(flag4) and not GetEventStatus(flag5) and
              not GetEventStatus(flag6) and not GetEventStatus(flag7)):
            pass
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t400261_x1():
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

def t400261_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400261_x3(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400261_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400261_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400261_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400261_x5():
    """ State 0,5 """
    if not GetEventStatus(14000722):
        """ State 8 """
        # talk:26000050:Ahh, who's there?
        assert t400261_x3(text2=26000050, z1=14000722, flag2=0, mode2=1)
    else:
        """ State 7 """
        # talk:26001800:Ahh, ahh, sweet Champion. Where have you been?
        assert t400261_x4(text1=26001800, flag1=0, mode1=1)
        """ State 6 """
        SetEventState(74000386, 1)
        call = t400261_x16()
        def ExitPause():
            SetEventState(74000386, 0)
        if call.Get() == 1:
            """ State 4 """
            pass
        elif call.Done():
            """ State 1 """
            if GetEventStatus(1284) == 1:
                """ State 2 """
                SetEventState(74000381, 1)
            else:
                """ State 3 """
                SetEventState(74000382, 1)
    """ State 9 """
    return 0

def t400261_x6():
    """ State 0,6 """
    assert t400261_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 5,8 """
        call = t400261_x15()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t400261_x1()
    else:
        """ State 4 """
        pass
    """ State 9 """
    return 0

def t400261_x7():
    """ State 0,1 """
    if GetEventStatus(1298) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400261_x14()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400261_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400261_x8():
    """ State 0,2,1,3 """
    return 0

def t400261_x9():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t400261_x1()
    """ State 5 """
    return 0

def t400261_x10():
    """ State 0,1 """
    while True:
        call = t400261_x12()
        assert (not GetEventStatus(1284) and not GetEventStatus(1285)) or not GetEventStatus(1318)
        """ State 2 """
        call = t400261_x13()
        assert (GetEventStatus(1284) == 1 or GetEventStatus(1285) == 1) and GetEventStatus(1318) == 1

def t400261_x11():
    """ State 0,1 """
    assert t400261_x1()
    """ State 2 """
    return 0

def t400261_x12():
    """ State 0,2 """
    call = t400261_x17()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400261_x7()

def t400261_x13():
    """ State 0 """

def t400261_x14():
    """ State 0,1 """
    if GetEventStatus(1285) == 1:
        """ State 2 """
        if GetEventStatus(74000352) == 1:
            """ State 4 """
            # talk:26003300:Ohh, a knight of Carim...
            assert t400261_x4(text1=26003300, flag1=0, mode1=1)
        else:
            """ State 5 """
            # talk:26003200:Ahh, thank you ever so much.
            assert t400261_x4(text1=26003200, flag1=0, mode1=1)
    else:
        """ State 3,6 """
        # talk:26002600:What have you done, sweet Champion of Ash...
        assert t400261_x4(text1=26002600, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t400261_x15():
    """ State 0,4 """
    if GetEventStatus(74000352) == 1:
        """ State 3 """
        if not GetEventStatus(74000371):
            """ State 6 """
            # talk:26002200: 
            assert t400261_x3(text2=26002200, z1=74000371, flag2=0, mode2=1)
        else:
            """ State 5 """
            SetEventState(74000371, 0)
            SetEventState(74000372, 0)
            SetEventState(74000373, 0)
            """ State 7 """
            # talk:26002300: 
            assert t400261_x3(text2=26002300, z1=74000372, flag2=0, mode2=1)
    else:
        """ State 1 """
        if not GetEventStatus(74000373):
            """ State 8 """
            # talk:26002400:Have mercy, please!
            assert t400261_x3(text2=26002400, z1=74000373, flag2=0, mode2=1)
        else:
            """ State 2 """
            SetEventState(74000371, 0)
            SetEventState(74000372, 0)
            SetEventState(74000373, 0)
            """ State 9 """
            # talk:26002500:Please, stop this, sweet Champion!
            assert t400261_x4(text1=26002500, flag1=0, mode1=1)
    """ State 10 """
    return 0

def t400261_x16():
    """ State 0,1 """
    if GetEventStatus(74000387) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedTime() > 5
        """ State 3 """
        return 0
    elif not GetEventStatus(74000386):
        """ State 4 """
        return 1

def t400261_x17():
    """ State 0,6 """
    while True:
        call = t400261_x0(z2=6000, flag3=1295, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if call.Done():
            """ State 4 """
            call = t400261_x5()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 2 """
                Label('L0')
                call = t400261_x6()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 5 """
                call = t400261_x9()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif GetEventStatus(14000722) == 1 and not GetEventStatus(14005722):
            """ State 1 """
            assert not GetEventStatus(14000722) or GetEventStatus(14005722) == 1
    """ State 3 """
    t400261_x8()

