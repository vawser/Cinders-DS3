# -*- coding: utf-8 -*-
def t511000_1():
    """State 0,1"""
    t511000_x7()
    Quit()

def t511000_x0(action3=_):
    """State 0,1"""
    OpenGenericDialog(8, action3, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t511000_x1():
    """State 0,1"""
    if not CheckSpecificPersonTalkHasEnded(0):
        """State 7"""
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """State 6"""
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """State 2"""
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """State 3"""
        ForceCloseGenericDialog()
    else:
        pass
    """State 4"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 5"""
        ForceCloseMenu()
    else:
        pass
    """State 8"""
    return 0

def t511000_x2(gesture1=17, z4=9019, flag3=6067):
    """State 0,1"""
    if GetEventStatus(flag3) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(gesture1)
        OpenItemAcquisitionMenu(3, z4, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

def t511000_x3(actionbutton1=_, flag1=6001, flag2=_):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        assert CompareBonfireState(1)
        """State 4"""
        if GetEventStatus(flag2) == 1:
            """State 5"""
            assert GetEventStatus(flag1) == 1 and not GetEventStatus(flag2)
            """State 6"""
            assert GetCurrentStateElapsedTime() > 1
        elif GetEventStatus(flag1) == 1 and not GetEventStatus(flag2):
            pass
        """State 3"""
        if CompareBonfireState(0):
            pass
        elif CheckActionButtonArea(actionbutton1):
            break
        elif (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
              and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif not GetEventStatus(flag1) or GetEventStatus(flag2) == 1:
            pass
    """State 7"""
    return 0

def t511000_x4(action2=_):
    """State 0,1"""
    OpenGenericDialog(7, action2, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t511000_x5(action1=10010713):
    """State 0,1"""
    # action:10010713:"Game installation incomplete.\nCannot travel between bonfires."
    OpenGenericDialog(1, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t511000_x6(goods1=150, goods6=_):
    """State 0,1"""
    if (not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 0 * 2) and not IsEquipmentIDObtained(3,
        goods1 + 1 + goods6 * 40 + 1 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 +
        2 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 3 * 2) and not IsEquipmentIDObtained(3,
        goods1 + 1 + goods6 * 40 + 4 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 +
        5 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 6 * 2) and not IsEquipmentIDObtained(3,
        goods1 + 1 + goods6 * 40 + 7 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 +
        8 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 9 * 2)):
        """State 2"""
        if (not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 10 * 2) and not IsEquipmentIDObtained(3,
            goods1 + 1 + goods6 * 40 + 11 * 2) and not IsEquipmentIDObtained(3, goods1 + 12 + goods6
            * 40 + 12 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 13 * 2) and not
            IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 14 * 2) and not IsEquipmentIDObtained(3,
            goods1 + 1 + goods6 * 40 + 15 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 *
            40 + 16 * 2) and not IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 17 * 2) and not
            IsEquipmentIDObtained(3, goods1 + 1 + goods6 * 40 + 18 * 2) and not IsEquipmentIDObtained(3,
            goods1 + 1 + goods6 * 40 + 19 * 2)):
            """State 3"""
            if (not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 0 * 2) and not IsEquipmentIDObtained(3,
                goods1 + 0 + goods6 * 40 + 1 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 + goods6
                * 40 + 2 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 3 * 2) and
                not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 4 * 2) and not IsEquipmentIDObtained(3,
                goods1 + 0 + goods6 * 40 + 5 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 + goods6
                * 40 + 6 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 7 * 2) and
                not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 8 * 2) and not IsEquipmentIDObtained(3,
                goods1 + 0 + goods6 * 40 + 9 * 2)):
                """State 4"""
                if (not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 10 * 2) and not IsEquipmentIDObtained(3,
                    goods1 + 0 + goods6 * 40 + 11 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 +
                    goods6 * 40 + 12 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 +
                    13 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 14 * 2) and not
                    IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 15 * 2) and not IsEquipmentIDObtained(3,
                    goods1 + 0 + goods6 * 40 + 16 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 +
                    goods6 * 40 + 17 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 +
                    18 * 2) and not IsEquipmentIDObtained(3, goods1 + 0 + goods6 * 40 + 19 * 2)):
                    """State 5"""
                    return 0
                else:
                    pass
            else:
                pass
        else:
            pass
    else:
        pass
    """State 6"""
    return 1

def t511000_x7():
    """State 0,1"""
    t511000_x8()
    Quit()
    """Unused"""
    """State 2"""
    t511000_x11()
    Quit()
    """State 3"""
    return 0

def t511000_x8():
    # Light Bonfire
    """State 0,1"""
    if CompareBonfireLevel(5, 0) == 1:
        """State 2"""
        Label('L0')
    else:
        """State 3,20"""
        call = t511000_x3(actionbutton1=6100, flag1=6001, flag2=74000010)
        if call.Done():
            """State 7"""
            TurnCharacterToFaceEntity(-1, 10000, -1)
            assert GetWhetherChrEventAnimHasEnded(10000) == 1 and GetCurrentStateElapsedFrames() > 1
            """State 4"""
            OfferHumanity()
            assert CompareBonfireLevel(5, 0) == 1
            """State 10"""
            UpdatePlayerRespawnPoint()
            """State 12"""
            RequestUnlockTrophy(41)
            """State 9"""
            SetEventState(13000000, 1)
            Goto('L0')
        elif CompareBonfireLevel(5, 0) == 1:
            """State 13"""
            RequestUnlockTrophy(41)
            """State 14"""
            SetEventState(13000000, 1)
    
    # Rest at Bonfire
    while True:
        """State 19"""
        call = t511000_x3(actionbutton1=6102, flag1=6001, flag2=74000010)
        if call.Done():
            break
        elif GetEventStatus(14000618) == 1 and GetEventStatus(6500) == 1:
            """State 16"""
            if (GetIsOnline() == 1 and not GetIsNetPenalizedForArena() and CompareBonfireState(1) and
                not GetEventStatus(74000010)):
                """State 21"""
                TurnCharacterToFaceEntity(68011, 10000, -1)
                call = t511000_x12()
                def ExitPause():
                    TurnCharacterToFaceEntity(68012, 10000, -1)
                    SetEventState(14005617, 0)
                    SetEventState(14000618, 0)
                if call.Done():
                    Goto('L0')
                elif (HasPlayerBeenAttacked() == 1 or GetDistanceToPlayer() > 3 or CompareBonfireState(0)
                      or IsPlayerDead() == 1):
                    pass
            else:
                """State 15"""
                SetEventState(14000618, 0)
                SetEventState(14005617, 0)
                continue
        """State 18"""
        Label('L1')
        assert t511000_x14()
        Goto('L0')
    """State 5"""
    ClearPlayerDamageInfo()
    """State 6"""
    SetTalkTime(1)
    """State 8"""
    TurnCharacterToFaceEntity(-1, 10000, -1)
    assert GetWhetherChrEventAnimHasEnded(10000) == 1 and GetCurrentStateElapsedFrames() > 1
    """State 11"""
    UpdatePlayerRespawnPoint()
    """State 17"""
    StartBonfireAnimLoop()
    call = t511000_x12()
    def ExitPause():
        EndBonfireKindleAnimLoop()
        SetEventState(14005617, 0)
        SetEventState(14000618, 0)
    if call.Done():
        Goto('L0')
    elif (HasPlayerBeenAttacked() == 1 or GetDistanceToPlayer() > 3 or CompareBonfireState(0) or IsPlayerDead()
          == 1):
        Goto('L1')
    """Unused"""
    """State 22"""
    return 0

def t511000_x9():
    """State 0,4"""
    call = t511000_x1()
    if call.Done() and CompareBonfireLevel(5, 0) == 1:
        pass
    elif call.Done():
        """State 2,5"""
        call = t511000_x3(actionbutton1=6100, flag1=6001, flag2=6000)
        if call.Done():
            """State 3"""
            OfferHumanity()
            assert CompareBonfireLevel(5, 0) == 1
        elif CompareBonfireLevel(5, 0) == 1:
            pass
    """State 1"""
    Quit()
    """Unused"""
    """State 6"""
    return 0

def t511000_x10():
    """State 0,1"""
    assert t511000_x1()
    """State 2"""
    return 0

def t511000_x11():
    """State 0"""
    while True:
        """State 1"""
        call = t511000_x9()
        assert IsClientPlayer() == 1
        """State 2"""
        call = t511000_x10()
        assert not IsClientPlayer()
    """Unused"""
    """State 3"""
    return 0

def t511000_x12():
    """State 0,33"""
    if (GetEventStatus(14000618) == 1 and GetEventStatus(6500) == 1 and (GetEventStatus(6951) == 1 or
        GetEventStatus(6952) == 1)):
        """State 32,44"""
        SetEventState(14000618, 0)
        assert (GetCurrentStateElapsedTime() > 2 and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and
                not CheckSpecificPersonGenericDialogIsOpen(2)) and not CheckSpecificPersonGenericDialogIsOpen(2))
        """State 43,30"""
        Label('L0')
        if not GetIsOnline():
            """State 37,56"""
            assert t511000_x4(action2=13000060)
        elif GetIsNetPenalizedForArena() == 1:
            """State 38,55"""
            assert t511000_x4(action2=13000061)
        else:
            """State 31"""
            UndeadMatch()
            def WhilePaused():
                SetEventState(14005617, 1)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    else:
        """State 11"""
        assert GetCurrentStateElapsedTime() > 2
        """State 50"""
        assert t511000_x2(gesture1=17, z4=9019, flag3=6067)
        """State 51"""
        # goods:150:Estus Flask, goods:151:Estus Flask, goods:190:Ashen Estus Flask, goods:191:Ashen Estus Flask, goods:152:Estus Flask+1, goods:153:Estus Flask+1, goods:192:Ashen Estus Flask+1, goods:193:Ashen Estus Flask+1, goods:154:Estus Flask+2, goods:155:Estus Flask+2, goods:194:Ashen Estus Flask+2, goods:195:Ashen Estus Flask+2, goods:156:Estus Flask+3, goods:157:Estus Flask+3, goods:196:Ashen Estus Flask+3, goods:197:Ashen Estus Flask+3, goods:158:Estus Flask+4, goods:159:Estus Flask+4, goods:198:Ashen Estus Flask+4, goods:199:Ashen Estus Flask+4, goods:160:Estus Flask+5, goods:161:Estus Flask+5, goods:200:Ashen Estus Flask+5, goods:201:Ashen Estus Flask+5, goods:162:Estus Flask+6, goods:163:Estus Flask+6, goods:202:Ashen Estus Flask+6, goods:203:Ashen Estus Flask+6, goods:164:Estus Flask+7, goods:165:Estus Flask+7, goods:204:Ashen Estus Flask+7, goods:205:Ashen Estus Flask+7, goods:166:Estus Flask+8, goods:167:Estus Flask+8, goods:206:Ashen Estus Flask+8, goods:207:Ashen Estus Flask+8, goods:168:Estus Flask+9, goods:169:Estus Flask+9, goods:208:Ashen Estus Flask+9, goods:209:Ashen Estus Flask+9, goods:170:Estus Flask+10, goods:171:Estus Flask+10, goods:210:Ashen Estus Flask+10, goods:211:Ashen Estus Flask+10
        assert t511000_x19(goods1=150, z1=10, z2=11)
        """State 23"""
        MainBonfireMenuFlag()
    while True:
        """State 1"""
        ClearTalkListData()
        """State 2"""
        
        # Face the End
        AddTalkListDataIf(GetEventStatus(25000120) == 1 and GetEventStatus(9327) == 0, 9, 80040000, -1)
        
        # Level Up
        AddTalkListData(6, 15002000, -1)
        
        # Attune Spell
        AddTalkListData(2, 15000130, -1)
        
        # Organize Storage Box
        AddTalkListData(1, 15000220, -1)
        
        # Reinforce Estus Flask
        AddTalkListData(3, 15002003, -1)
        
        # Burn Undead Bone Shard
        AddTalkListData(4, 15000160, -1)
        
        # Allot Estus
        AddTalkListData(5, 15002002, -1)
        
        # Begin journey <?nextLoopCount?>
        AddTalkListDataIf(GetEventStatus(25000130) == 1, 20, 15000331, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """State 5"""
        ShowShopMessage(1)
        def WhilePaused():
            SetEventStateIf(not GetEventStatus(14005617) and (GetEventStatus(2051) == 1 or IsMultiplayerInProgress() == 1), 14005617, 1)
            
        # Organize Storage Box
        if GetTalkListEntryResult() == 1:
            """State 4"""
            ForceCloseMenu()
            """State 15"""
            OpenRepository()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
         # Attune Spell
        elif GetTalkListEntryResult() == 2:
            """State 7,8"""
            OpenMagicEquip(1000, 1000)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
        # Reinforce Estus Flask
        elif GetTalkListEntryResult() == 3:
            assert (t511000_x24() and not (CheckSpecificPersonMenuIsOpen(8, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)))
            continue
        # Burn Undead Bone Shard
        elif GetTalkListEntryResult() == 4:
            if GetEventStatus(2051) == 1:
                assert t511000_x4(action2=13000071)
                continue
            else:
                # goods:2143:Undead Bone Shard
                assert t511000_x13()
                continue
        # Allot Estus
        elif GetTalkListEntryResult() == 5:
            assert (t511000_x21() and not (CheckSpecificPersonMenuIsOpen(8, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)))
            continue
        # Level up
        elif GetTalkListEntryResult() == 6:
            OpenSoul()
            assert not (CheckSpecificPersonMenuIsOpen(10, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Face the End
        elif GetTalkListEntryResult() == 9:
            SetEventState(25000121, 1)
            SetEventState(25000122, 1)
            return 0
        # Begin journey <?nextLoopCount?>
        elif GetTalkListEntryResult() == 20:
            if GetEventStatus(2051) == 1 or IsMultiplayerInProgress() == 1:
                assert t511000_x4(action2=13000072)
                continue
            else:
                call = t511000_x0(action3=12000300)
                if call.Get() == 0:
                    SetEventState(74000012, 1)
                    SetEventState(14005617, 0)
                    SetEventState(9902, 1)
                    SetEventState(9901, 1)
                    assert GetCurrentStateElapsedTime() > 10
                    Goto('L2')
                elif call.Get() == 1:
                    pass
                    
                Label('L1')
                continue
        # Leave
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            pass
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            assert (not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
                    and not CheckSpecificPersonGenericDialogIsOpen(2))
            continue
        Label('L2')
        return 0
    """Unused"""
    """State 21"""
    Label('L3')
    Quit()
    """State 47"""
    # action:99000101:""
    call = t511000_x0(action3=99000101)
    if call.Get() == 0:
        Goto('L3')
    elif call.Get() == 1:
        Goto('L1')

def t511000_x13():
    """State 0,6"""
    if GetTotalBonfireLevel() <= 11:
        """State 5"""
        # goods:2143:Undead Bone Shard
        if ComparePlayerInventoryNumber(3, 2143, 2, 0, 0) == 1:
            """State 1,10"""
            # action:12000200:"Burn <?gdsparam@2143?>?"
            call = t511000_x0(action3=12000200)
            if call.Get() == 0:
                """State 3,8"""
                BonfireActivation(GetTotalBonfireLevel() + 1)
                """State 9"""
                # goods:2143:Undead Bone Shard
                PlayerEquipmentQuantityChange(3, 2143, -1)
                """State 13"""
                # goods:150:Estus Flask, goods:151:Estus Flask, goods:190:Ashen Estus Flask, goods:191:Ashen Estus Flask, goods:152:Estus Flask+1, goods:153:Estus Flask+1, goods:192:Ashen Estus Flask+1, goods:193:Ashen Estus Flask+1, goods:154:Estus Flask+2, goods:155:Estus Flask+2, goods:194:Ashen Estus Flask+2, goods:195:Ashen Estus Flask+2, goods:156:Estus Flask+3, goods:157:Estus Flask+3, goods:196:Ashen Estus Flask+3, goods:197:Ashen Estus Flask+3, goods:158:Estus Flask+4, goods:159:Estus Flask+4, goods:198:Ashen Estus Flask+4, goods:199:Ashen Estus Flask+4, goods:160:Estus Flask+5, goods:161:Estus Flask+5, goods:200:Ashen Estus Flask+5, goods:201:Ashen Estus Flask+5, goods:162:Estus Flask+6, goods:163:Estus Flask+6, goods:202:Ashen Estus Flask+6, goods:203:Ashen Estus Flask+6, goods:164:Estus Flask+7, goods:165:Estus Flask+7, goods:204:Ashen Estus Flask+7, goods:205:Ashen Estus Flask+7, goods:166:Estus Flask+8, goods:167:Estus Flask+8, goods:206:Ashen Estus Flask+8, goods:207:Ashen Estus Flask+8, goods:168:Estus Flask+9, goods:169:Estus Flask+9, goods:208:Ashen Estus Flask+9, goods:209:Ashen Estus Flask+9, goods:170:Estus Flask+10, goods:171:Estus Flask+10, goods:210:Ashen Estus Flask+10, goods:211:Ashen Estus Flask+10
                assert t511000_x15(goods3=150, z3=10, val1=11) and GetCurrentStateElapsedTime() > 2
            elif call.Get() == 1:
                """State 4"""
                pass
        else:
            """State 2,12"""
            # action:13000201:"No <?gdsparam@2143?> in inventory"
            assert t511000_x4(action2=13000201)
    else:
        """State 7,11"""
        # action:13000200:"Cannot kindle any further"
        assert t511000_x4(action2=13000200)
    """State 14"""
    return 0

def t511000_x14():
    """State 0,1"""
    assert t511000_x1()
    """State 2"""
    return 0

def t511000_x15(goods3=150, z3=10, val1=11):
    """State 0,5"""
    # goods:151:Estus Flask, goods:153:Estus Flask+1, goods:155:Estus Flask+2, goods:157:Estus Flask+3, goods:159:Estus Flask+4, goods:161:Estus Flask+5, goods:163:Estus Flask+6, goods:165:Estus Flask+7, goods:167:Estus Flask+8, goods:169:Estus Flask+9, goods:171:Estus Flask+10, goods:150:Estus Flask, goods:152:Estus Flask+1, goods:154:Estus Flask+2, goods:156:Estus Flask+3, goods:158:Estus Flask+4, goods:160:Estus Flask+5, goods:162:Estus Flask+6, goods:164:Estus Flask+7, goods:166:Estus Flask+8, goods:168:Estus Flask+9, goods:170:Estus Flask+10
    call = t511000_x6(goods1=goods3, goods6=0)
    if call.Get() == 1:
        """State 1,7"""
        # goods:150:Estus Flask, goods:152:Estus Flask+1, goods:154:Estus Flask+2, goods:156:Estus Flask+3, goods:158:Estus Flask+4, goods:160:Estus Flask+5, goods:162:Estus Flask+6, goods:164:Estus Flask+7, goods:166:Estus Flask+8, goods:168:Estus Flask+9, goods:170:Estus Flask+10
        assert t511000_x16(goods1=goods3, goods4=0, goods5=0)
        """State 8"""
        # goods:151:Estus Flask, goods:153:Estus Flask+1, goods:155:Estus Flask+2, goods:157:Estus Flask+3, goods:159:Estus Flask+4, goods:161:Estus Flask+5, goods:163:Estus Flask+6, goods:165:Estus Flask+7, goods:167:Estus Flask+8, goods:169:Estus Flask+9, goods:171:Estus Flask+10
        assert t511000_x16(goods1=goods3, goods4=0, goods5=1)
    elif call.Done():
        """State 2"""
        pass
    """State 6"""
    # goods:191:Ashen Estus Flask, goods:193:Ashen Estus Flask+1, goods:195:Ashen Estus Flask+2, goods:197:Ashen Estus Flask+3, goods:199:Ashen Estus Flask+4, goods:201:Ashen Estus Flask+5, goods:203:Ashen Estus Flask+6, goods:205:Ashen Estus Flask+7, goods:207:Ashen Estus Flask+8, goods:209:Ashen Estus Flask+9, goods:211:Ashen Estus Flask+10, goods:190:Ashen Estus Flask, goods:192:Ashen Estus Flask+1, goods:194:Ashen Estus Flask+2, goods:196:Ashen Estus Flask+3, goods:198:Ashen Estus Flask+4, goods:200:Ashen Estus Flask+5, goods:202:Ashen Estus Flask+6, goods:204:Ashen Estus Flask+7, goods:206:Ashen Estus Flask+8, goods:208:Ashen Estus Flask+9, goods:210:Ashen Estus Flask+10
    call = t511000_x6(goods1=goods3, goods6=1)
    if call.Get() == 1:
        """State 3,9"""
        # goods:190:Ashen Estus Flask, goods:192:Ashen Estus Flask+1, goods:194:Ashen Estus Flask+2, goods:196:Ashen Estus Flask+3, goods:198:Ashen Estus Flask+4, goods:200:Ashen Estus Flask+5, goods:202:Ashen Estus Flask+6, goods:204:Ashen Estus Flask+7, goods:206:Ashen Estus Flask+8, goods:208:Ashen Estus Flask+9, goods:210:Ashen Estus Flask+10
        assert t511000_x16(goods1=goods3, goods4=1, goods5=0)
        """State 10"""
        # goods:191:Ashen Estus Flask, goods:193:Ashen Estus Flask+1, goods:195:Ashen Estus Flask+2, goods:197:Ashen Estus Flask+3, goods:199:Ashen Estus Flask+4, goods:201:Ashen Estus Flask+5, goods:203:Ashen Estus Flask+6, goods:205:Ashen Estus Flask+7, goods:207:Ashen Estus Flask+8, goods:209:Ashen Estus Flask+9, goods:211:Ashen Estus Flask+10
        assert t511000_x16(goods1=goods3, goods4=1, goods5=1)
    elif call.Done():
        """State 4"""
        pass
    """State 11"""
    assert (t511000_x17(mode1=1, val2=2, val3=3, val4=4, val5=5, val6=6, val7=7, val8=8, val9=9, val10=10,
            val11=11))
    """State 12"""
    assert t511000_x18(val1=val1)
    """State 13"""
    return 0

def t511000_x16(goods1=150, goods4=_, goods5=_):
    """State 0,1"""
    if IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 0 * 2) == 1:
        """State 2"""
        ReplaceTool(goods1 + goods4 * 40 + 0 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 1 * 2) == 1:
        """State 3"""
        ReplaceTool(goods1 + goods4 * 40 + 1 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 2 * 2) == 1:
        """State 4"""
        ReplaceTool(goods1 + goods4 * 40 + 2 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 3 * 2) == 1:
        """State 5"""
        ReplaceTool(goods1 + goods4 * 40 + 3 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 4 * 2) == 1:
        """State 6"""
        ReplaceTool(goods1 + goods4 * 40 + 4 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 5 * 2) == 1:
        """State 7"""
        ReplaceTool(goods1 + goods4 * 40 + 5 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 6 * 2) == 1:
        """State 8"""
        ReplaceTool(goods1 + goods4 * 40 + 6 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 7 * 2) == 1:
        """State 9"""
        ReplaceTool(goods1 + goods4 * 40 + 7 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 8 * 2) == 1:
        """State 10"""
        ReplaceTool(goods1 + goods4 * 40 + 8 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 9 * 2) == 1:
        """State 11"""
        ReplaceTool(goods1 + goods4 * 40 + 9 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    elif IsEquipmentIDObtained(3, goods1 + goods5 + goods4 * 40 + 10 * 2) == 1:
        """State 12"""
        ReplaceTool(goods1 + goods4 * 40 + 10 * 2 + goods5, goods1 + goods4 * 40 + goods5 + 2 * (GetTotalBonfireLevel() - 1),
                    1)
    else:
        """State 13"""
        pass
    """State 14"""
    return 0

def t511000_x17(mode1=1, val2=2, val3=3, val4=4, val5=5, val6=6, val7=7, val8=8, val9=9, val10=10, val11=11):
    """State 0,1"""
    if GetTotalBonfireLevel() <= mode1:
        """State 13"""
        Label('L0')
    else:
        """State 2"""
        SetEventState(6020, 1)
        if GetTotalBonfireLevel() <= val2:
            Goto('L0')
        else:
            """State 3"""
            SetEventState(6021, 1)
            if GetTotalBonfireLevel() <= val3:
                Goto('L0')
            else:
                """State 4"""
                SetEventState(6022, 1)
                if GetTotalBonfireLevel() <= val4:
                    Goto('L0')
                else:
                    """State 5"""
                    SetEventState(6023, 1)
                    if GetTotalBonfireLevel() <= val5:
                        Goto('L0')
                    else:
                        """State 6"""
                        SetEventState(6024, 1)
                        if GetTotalBonfireLevel() <= val6:
                            Goto('L0')
                        else:
                            """State 7"""
                            SetEventState(6025, 1)
                            if GetTotalBonfireLevel() <= val7:
                                Goto('L0')
                            else:
                                """State 8"""
                                SetEventState(6026, 1)
                                if GetTotalBonfireLevel() <= val8:
                                    Goto('L0')
                                else:
                                    """State 9"""
                                    SetEventState(6027, 1)
                                    if GetTotalBonfireLevel() <= val9:
                                        Goto('L0')
                                    else:
                                        """State 10"""
                                        SetEventState(6028, 1)
                                        if GetTotalBonfireLevel() <= val10:
                                            Goto('L0')
                                        else:
                                            """State 11"""
                                            SetEventState(6029, 1)
                                            if GetTotalBonfireLevel() <= val11:
                                                Goto('L0')
                                            else:
                                                """State 14"""
                                                SetEventState(6030, 1)
    """State 15"""
    return 0
    """Unused"""
    """State 12"""
    Quit()

def t511000_x18(val1=11):
    """State 0,3"""
    if GetTotalBonfireLevel() <= val1:
        """State 2"""
        pass
    else:
        """State 1,4"""
        RequestUnlockTrophy(15)
    """State 5"""
    return 0

def t511000_x19(goods1=150, z1=10, z2=11):
    """State 0,1"""
    if GetEventStatus(6030) == 1:
        """State 12"""
        BonfireActivation(11)
    elif GetEventStatus(6029) == 1:
        """State 11"""
        BonfireActivation(10)
    elif GetEventStatus(6028) == 1:
        """State 10"""
        BonfireActivation(9)
    elif GetEventStatus(6027) == 1:
        """State 9"""
        BonfireActivation(8)
    elif GetEventStatus(6026) == 1:
        """State 8"""
        BonfireActivation(7)
    elif GetEventStatus(6025) == 1:
        """State 7"""
        BonfireActivation(6)
    elif GetEventStatus(6024) == 1:
        """State 6"""
        BonfireActivation(5)
    elif GetEventStatus(6023) == 1:
        """State 5"""
        BonfireActivation(4)
    elif GetEventStatus(6022) == 1:
        """State 4"""
        BonfireActivation(3)
    elif GetEventStatus(6021) == 1:
        """State 3"""
        BonfireActivation(2)
    else:
        """State 2"""
        BonfireActivation(1)
    """State 13,19"""
    # goods:151:Estus Flask, goods:153:Estus Flask+1, goods:155:Estus Flask+2, goods:157:Estus Flask+3, goods:159:Estus Flask+4, goods:161:Estus Flask+5, goods:163:Estus Flask+6, goods:165:Estus Flask+7, goods:167:Estus Flask+8, goods:169:Estus Flask+9, goods:171:Estus Flask+10, goods:150:Estus Flask, goods:152:Estus Flask+1, goods:154:Estus Flask+2, goods:156:Estus Flask+3, goods:158:Estus Flask+4, goods:160:Estus Flask+5, goods:162:Estus Flask+6, goods:164:Estus Flask+7, goods:166:Estus Flask+8, goods:168:Estus Flask+9, goods:170:Estus Flask+10
    call = t511000_x6(goods1=goods1, goods6=0)
    if call.Get() == 1:
        """State 14,21"""
        # goods:150:Estus Flask, goods:152:Estus Flask+1, goods:154:Estus Flask+2, goods:156:Estus Flask+3, goods:158:Estus Flask+4, goods:160:Estus Flask+5, goods:162:Estus Flask+6, goods:164:Estus Flask+7, goods:166:Estus Flask+8, goods:168:Estus Flask+9, goods:170:Estus Flask+10
        assert t511000_x16(goods1=goods1, goods4=0, goods5=0)
        """State 22"""
        # goods:151:Estus Flask, goods:153:Estus Flask+1, goods:155:Estus Flask+2, goods:157:Estus Flask+3, goods:159:Estus Flask+4, goods:161:Estus Flask+5, goods:163:Estus Flask+6, goods:165:Estus Flask+7, goods:167:Estus Flask+8, goods:169:Estus Flask+9, goods:171:Estus Flask+10
        assert t511000_x16(goods1=goods1, goods4=0, goods5=1)
    elif call.Done():
        """State 15"""
        pass
    """State 20"""
    # goods:191:Ashen Estus Flask, goods:193:Ashen Estus Flask+1, goods:195:Ashen Estus Flask+2, goods:197:Ashen Estus Flask+3, goods:199:Ashen Estus Flask+4, goods:201:Ashen Estus Flask+5, goods:203:Ashen Estus Flask+6, goods:205:Ashen Estus Flask+7, goods:207:Ashen Estus Flask+8, goods:209:Ashen Estus Flask+9, goods:211:Ashen Estus Flask+10, goods:190:Ashen Estus Flask, goods:192:Ashen Estus Flask+1, goods:194:Ashen Estus Flask+2, goods:196:Ashen Estus Flask+3, goods:198:Ashen Estus Flask+4, goods:200:Ashen Estus Flask+5, goods:202:Ashen Estus Flask+6, goods:204:Ashen Estus Flask+7, goods:206:Ashen Estus Flask+8, goods:208:Ashen Estus Flask+9, goods:210:Ashen Estus Flask+10
    call = t511000_x6(goods1=goods1, goods6=1)
    if call.Get() == 1:
        """State 16,23"""
        # goods:190:Ashen Estus Flask, goods:192:Ashen Estus Flask+1, goods:194:Ashen Estus Flask+2, goods:196:Ashen Estus Flask+3, goods:198:Ashen Estus Flask+4, goods:200:Ashen Estus Flask+5, goods:202:Ashen Estus Flask+6, goods:204:Ashen Estus Flask+7, goods:206:Ashen Estus Flask+8, goods:208:Ashen Estus Flask+9, goods:210:Ashen Estus Flask+10
        assert t511000_x16(goods1=goods1, goods4=1, goods5=0)
        """State 24"""
        # goods:191:Ashen Estus Flask, goods:193:Ashen Estus Flask+1, goods:195:Ashen Estus Flask+2, goods:197:Ashen Estus Flask+3, goods:199:Ashen Estus Flask+4, goods:201:Ashen Estus Flask+5, goods:203:Ashen Estus Flask+6, goods:205:Ashen Estus Flask+7, goods:207:Ashen Estus Flask+8, goods:209:Ashen Estus Flask+9, goods:211:Ashen Estus Flask+10
        assert t511000_x16(goods1=goods1, goods4=1, goods5=1)
    elif call.Done():
        """State 17"""
        pass
    """State 18,25"""
    return 0

def t511000_x20():
    """State 0,1"""
    if GetTotalBonfireLevel() < 1:
        """State 2"""
        SetEventState(74000015, 1)
    elif GetTotalBonfireLevel() < 2:
        """State 3"""
        SetEventState(74000016, 1)
    elif GetTotalBonfireLevel() < 3:
        """State 4"""
        SetEventState(74000017, 1)
    elif GetTotalBonfireLevel() < 4:
        """State 5"""
        SetEventState(74000018, 1)
    elif GetTotalBonfireLevel() < 5:
        """State 6"""
        SetEventState(74000019, 1)
    elif GetTotalBonfireLevel() < 6:
        """State 7"""
        SetEventState(74000020, 1)
    elif GetTotalBonfireLevel() < 7:
        """State 8"""
        SetEventState(74000021, 1)
    elif GetTotalBonfireLevel() < 8:
        """State 9"""
        SetEventState(74000022, 1)
    elif GetTotalBonfireLevel() < 9:
        """State 10"""
        SetEventState(74000023, 1)
    elif GetTotalBonfireLevel() < 10:
        """State 11"""
        SetEventState(74000024, 1)
    else:
        """State 12"""
        SetEventState(74000025, 1)
    """State 13"""
    return 0

def t511000_x21():
    """State 0,6"""
    call = t511000_x22(0)
    if call.Get() == 1:
        """State 1,7"""
        call = t511000_x22(1)
        if call.Get() == 1:
            """State 3,4"""
            OpenEstusAllotMenu()
            assert not (CheckSpecificPersonMenuIsOpen(14, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif call.Done():
            """State 5,9"""
            # action:13002014:"No <?gdsparam@190?> in inventory"
            assert t511000_x23(action1=13002014)
    elif call.Done():
        """State 2,8"""
        # action:13002013:"No <?gdsparam@150?> in inventory"
        assert t511000_x23(action1=13002013)
    """State 10"""
    return 0
    
def t511000_x22(offset=_):
    """State 0,1"""
    if (not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 0 * 2) and not IsEquipmentIDObtained(3,
        150 + 1 + offset * 40 + 1 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 +
        2 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 3 * 2) and not IsEquipmentIDObtained(3,
        150 + 1 + offset * 40 + 4 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 +
        5 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 6 * 2) and not IsEquipmentIDObtained(3,
        150 + 1 + offset * 40 + 7 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 +
        8 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 9 * 2)):
        """State 2"""
        if (not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 10 * 2) and not IsEquipmentIDObtained(3,
            150 + 1 + offset * 40 + 11 * 2) and not IsEquipmentIDObtained(3, 150 + 12 + offset
            * 40 + 12 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 13 * 2) and not
            IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 14 * 2) and not IsEquipmentIDObtained(3,
            150 + 1 + offset * 40 + 15 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset *
            40 + 16 * 2) and not IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 17 * 2) and not
            IsEquipmentIDObtained(3, 150 + 1 + offset * 40 + 18 * 2) and not IsEquipmentIDObtained(3,
            150 + 1 + offset * 40 + 19 * 2)):
            """State 3"""
            if (not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 0 * 2) and not IsEquipmentIDObtained(3,
                150 + 0 + offset * 40 + 1 * 2) and not IsEquipmentIDObtained(3, 150 + 0 + offset
                * 40 + 2 * 2) and not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 3 * 2) and
                not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 4 * 2) and not IsEquipmentIDObtained(3,
                150 + 0 + offset * 40 + 5 * 2) and not IsEquipmentIDObtained(3, 150 + 0 + offset
                * 40 + 6 * 2) and not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 7 * 2) and
                not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 8 * 2) and not IsEquipmentIDObtained(3,
                150 + 0 + offset * 40 + 9 * 2)):
                """State 4"""
                if (not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 10 * 2) and not IsEquipmentIDObtained(3,
                    150 + 0 + offset * 40 + 11 * 2) and not IsEquipmentIDObtained(3, 150 + 0 +
                    offset * 40 + 12 * 2) and not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 +
                    13 * 2) and not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 14 * 2) and not
                    IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 15 * 2) and not IsEquipmentIDObtained(3,
                    150 + 0 + offset * 40 + 16 * 2) and not IsEquipmentIDObtained(3, 150 + 0 +
                    offset * 40 + 17 * 2) and not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 +
                    18 * 2) and not IsEquipmentIDObtained(3, 150 + 0 + offset * 40 + 19 * 2)):
                    """State 5"""
                    return 0
                else:
                    pass
            else:
                pass
        else:
            pass
    else:
        pass
    """State 6"""
    return 1
    
def t511000_x23(action1=_):
    """State 0,1"""
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0
    
def t511000_x24():
    """State 0,18"""
    call = t511000_x22(0)
    if call.Get() == 1:
        """State 10,19"""
        call = t511000_x22(1)
        if call.Get() == 1:
            """State 12,9"""
            if GetEstusAllocation(0) + GetEstusAllocation(1) < 9:
                """State 1"""
                # goods:2141:Estus Shard
                if ComparePlayerInventoryNumber(3, 2141, 2, 0, 0) == 1:
                    """State 2,14"""
                    # action:12002003:"Use <?gdsparam@2141?> to reinforce Estus Flask?"
                    call = t511000_x25(12002003)
                    if call.Get() == 0:
                        """State 4,6"""
                        # goods:2141:Estus Shard
                        PlayerEquipmentQuantityChange(3, 2141, -1)
                        """State 7"""
                        EstusAllocationUpdate(GetEstusAllocation(0) + 1, 0)
                        """State 16"""
                        # action:13002010:"Reinforced Estus Flask, increasing number of uses\n"
                        assert t511000_x23(action1=13002010)
                        """State 22"""
                        assert t511000_x26()
                    elif call.Done():
                        """State 5"""
                        pass
                else:
                    """State 3,15"""
                    # action:13002011:"No <?gdsparam@2141?> in inventory"
                    assert t511000_x23(action1=13002011)
            else:
                """State 8,17"""
                # action:13002012:"Cannot reinforce further"
                assert t511000_x23(action1=13002012)
        elif call.Done():
            """State 13,21"""
            # action:13002014:"No <?gdsparam@190?> in inventory"
            assert t511000_x23(action1=13002014)
    elif call.Done():
        """State 11,20"""
        # action:13002013:"No <?gdsparam@150?> in inventory"
        assert t511000_x23(action1=13002013)
    """State 23"""
    return 0
    
def t511000_x25(action=_):
    """State 0,1"""
    
    OpenGenericDialog(8, action, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1
        
def t511000_x26():
    """State 0,3"""
    if GetEstusAllocation(0) + GetEstusAllocation(1) < 14:
        """State 2"""
        pass
    else:
        """State 1,4"""
        RequestUnlockTrophy(16)
    """State 5"""
    return 0