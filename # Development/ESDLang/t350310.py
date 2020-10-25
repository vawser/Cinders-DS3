# -*- coding: utf-8 -*-
def t350310_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350310_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350310_x10()
        assert not IsClientPlayer()

def t350310_x0(z5=6000, flag5=1395, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
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

def t350310_x1():
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

def t350310_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t350310_x3(text3=31001000, z4=73500100, flag4=0, mode3=1):
    """ State 0,5 """
    assert t350310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    # talk:31001000:Hello! Hello!
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

def t350310_x4(text2=_, z3=_, flag3=0, mode2=1):
    """ State 0,5 """
    assert t350310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350310_x5(text1=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t350310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350310_x6(z1=16, z2=9018, flag1=6066):
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

def t350310_x7():
    """ State 0,1 """
    if not GetEventStatus(73500102):
        """ State 12 """
        if not GetEventStatus(73500105):
            """ State 2 """
            if not GetEventStatus(73500103):
                """ State 14 """
                # talk:31001100:Oh!
                assert t350310_x5(text1=31001100, flag2=0, mode1=1)
            else:
                """ State 15 """
                # talk:31001500:I'm in quite a pickle indeed.
                assert t350310_x5(text1=31001500, flag2=0, mode1=1)
            """ State 3 """
            ClearTalkListData()
            """ State 19 """
            # protector:74000000:Catarina Helm, protector:74001000:Catarina Armor, protector:74002000:Catarina Gauntlets, protector:74003000:Catarina Leggings
            call = t350310_x14(armor1=74000000, armor2=74001000, armor3=74002000, armor4=74003000)
            if call.Get() == 0:
                """ State 4 """
                # action:14021000:Throw armor
                AddTalkListData(1, 14021000, -1)
                # action:14021001:Haven't seen it
                AddTalkListData(2, 14021001, -1)
            elif call.Get() == 3:
                """ State 13 """
                # action:14021000:Throw armor
                AddTalkListData(1, 14021000, -1)
                # action:14006002:Do nothing
                AddTalkListData(2, 14006002, -1)
            elif call.Get() == 2:
                """ State 5 """
                # action:14021002:Haven't seen it
                AddTalkListData(2, 14021002, -1)
            elif call.Get() == 1:
                """ State 8 """
                # action:14006002:Do nothing
                AddTalkListData(2, 14006002, -1)
            """ State 6 """
            OpenConversationChoicesMenu(0)
            """ State 7 """
            if not GetTalkListEntryResult():
                Goto('L0')
            elif GetTalkListEntryResult() == 1:
                """ State 11 """
                # protector:74000000:Catarina Helm
                PlayerEquipmentQuantityChange(1, 74000000, -1)
                # protector:74001000:Catarina Armor
                PlayerEquipmentQuantityChange(1, 74001000, -1)
                # protector:74002000:Catarina Gauntlets
                PlayerEquipmentQuantityChange(1, 74002000, -1)
                # protector:74003000:Catarina Leggings
                PlayerEquipmentQuantityChange(1, 74003000, -1)
                SetEventState(73500105, 1)
                assert GetCurrentStateElapsedTime() > 3
            elif GetTalkListEntryResult() == 2:
                """ State 9 """
                if not GetEventStatus(73500103):
                    """ State 17 """
                    # talk:31001400:Oh, yes, I see...
                    assert t350310_x4(text2=31001400, z3=73500103, flag3=0, mode2=1)
                    Goto('L0')
                else:
                    """ State 10 """
                    Goto('L0')
        else:
            pass
        """ State 16 """
        # talk:31001200:Ah, oh! My armour!
        assert t350310_x4(text2=31001200, z3=73500102, flag3=0, mode2=1)
        """ State 20 """
        assert t350310_x6(z1=16, z2=9018, flag1=6066)
    else:
        """ State 18 """
        # talk:31001300:No need to worry about me.
        assert t350310_x5(text1=31001300, flag2=0, mode1=1)
    """ State 21 """
    Label('L0')
    return 0

def t350310_x8():
    """ State 0,1,3,4 """
    assert t350310_x1()
    """ State 5 """
    return 0

def t350310_x9():
    """ State 0,1 """
    while True:
        call = t350310_x11()
        assert not GetEventStatus(1383)
        """ State 2 """
        call = t350310_x12()
        assert GetEventStatus(1383) == 1

def t350310_x10():
    """ State 0,1 """
    assert t350310_x1()
    """ State 2 """
    return 0

def t350310_x11():
    """ State 0,3 """
    while True:
        call = t350310_x0(z5=6000, flag5=1395, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """ State 1 """
            call = t350310_x7()
            if call.Done():
                continue
            elif GetDistanceToPlayer() > 5:
                pass
        elif GetDistanceToPlayer() < 5 and not GetEventStatus(73500100):
            """ State 4 """
            call = t350310_x13()
            if call.Done():
                continue
            elif GetDistanceToPlayer() > 12:
                pass
        """ State 2 """
        assert t350310_x8() and GetDistanceToPlayer() < 4.9

def t350310_x12():
    """ State 0 """

def t350310_x13():
    """ State 0,1 """
    # talk:31001000:Hello! Hello!
    assert t350310_x3(text3=31001000, z4=73500100, flag4=0, mode3=1)
    """ State 2 """
    return 0

def t350310_x14(armor1=74000000, armor2=74001000, armor3=74002000, armor4=74003000):
    """ State 0,1 """
    # protector:74000000:Catarina Helm, protector:74001000:Catarina Armor, protector:74002000:Catarina Gauntlets, protector:74003000:Catarina Leggings
    if (ComparePlayerInventoryNumber(1, armor1, 4, 1, 0) == 1 and ComparePlayerInventoryNumber(1, armor2,
        4, 1, 0) == 1 and ComparePlayerInventoryNumber(1, armor3, 4, 1, 0) == 1 and ComparePlayerInventoryNumber(1,
        armor4, 4, 1, 0) == 1):
        pass
    else:
        Goto('L0')
    """ State 3 """
    if not GetEventStatus(73500103):
        """ State 4 """
        return 0
    else:
        """ State 7 """
        return 3
    """ State 2 """
    Label('L0')
    if not GetEventStatus(73500103):
        """ State 6 """
        return 2
    else:
        """ State 5 """
        return 1

