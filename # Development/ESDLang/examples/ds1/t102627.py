# -*- coding: utf-8 -*-
def t102627_1():
    """ State 0,80 """
    SetEventState(71100055, 0)
    """ State 6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1462) and GetDistanceToPlayer() <= 5:
            """ State 16 """
            Label('L0')
            # talk:37002900:Heheh, not too shabby...
            TalkToPlayer(37002900, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (GetEventStatus(1461) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71100055) and
              GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 77 """
            DisplayOneLineHelp(-1)
            # talk:37003000:Now, that's just embarrassing.
            TalkToPlayer(37003000, -1, -1)
            SetEventState(71100055, 1)
            assert HasTalkEnded() == 1
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11400200) == 1 and GetEventStatus(11010700)
              == 1 and GetEventStatus(71100049) == 1):
            """ State 51 """
            DisplayOneLineHelp(-1)
            # talk:37002300:Damn, that stench...And I was really beginning to like it here!
            TalkToPlayer(37002300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 29 """
                    # talk:37002900:Heheh, not too shabby...
                    TalkToPlayer(37002900, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L6')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71100025)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:37002800:Lousy rat! You have some nerve!
                    TalkToPlayer(37002800, -1, -1)
                    SetEventState(71100025, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71100025, 1)
                        """ State 11 """
                        Label('L2')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L6')
                elif GetEventStatus(1464) == 1:
                    """ State 10 """
                    Label('L3')
                    ForceEndTalk(3)
                    Goto('L2')
                elif GetEventStatus(1461) == 1:
                    Goto('L3')
                elif (not GetEventStatus(71100023) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71100022) == 1):
                    """ State 75 """
                    # talk:37002730:Stop that! Oi!
                    TalkToPlayer(37002730, -1, -1)
                    SetEventState(71100023, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 76 """
                        SetEventState(71100023, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif (not GetEventStatus(71100022) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71100021) == 1):
                    """ State 73 """
                    # talk:37002720:What in the...!
                    TalkToPlayer(37002720, -1, -1)
                    SetEventState(71100022, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 74 """
                        SetEventState(71100022, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif (not GetEventStatus(71100021) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71100020) == 1):
                    """ State 71 """
                    # talk:37002710:Oww!
                    TalkToPlayer(37002710, -1, -1)
                    SetEventState(71100021, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 72 """
                        SetEventState(71100021, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif (not GetEventStatus(71100020) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:37002700:Ooph!
                    TalkToPlayer(37002700, -1, -1)
                    SetEventState(71100020, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71100020, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif GetEventStatus(71100023) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
                """ State 30 """
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 52 """
                SetEventState(71100050, 1)
                SetEventState(11020597, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11400200) == 1 and GetEventStatus(11010700)
              == 1 and not GetEventStatus(71100049)):
            """ State 49 """
            DisplayOneLineHelp(-1)
            # talk:37002200:Did you ring the second bell?
            TalkToPlayer(37002200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 50 """
                SetEventState(71100049, 1)
                SetEventState(71100046, 1)
                SetEventState(71100026, 1)
                SetEventState(71100027, 1)
                SetEventState(71100028, 1)
                SetEventState(71100047, 1)
                SetEventState(71100048, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100046) and GetEventStatus(11400200)
              == 1):
            """ State 78 """
            DisplayOneLineHelp(-1)
            # talk:37000450:Why, what a surprise. I didn't expect you to make it.
            TalkToPlayer(37000450, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 66 """
                Label('L4')
                SetEventState(71100046, 1)
                SetEventState(71100026, 1)
                SetEventState(71100027, 1)
                SetEventState(71100028, 1)
                if True:
                    continue
                else:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100046) and GetEventStatus(11010700)
              == 1):
            """ State 65 """
            DisplayOneLineHelp(-1)
            # talk:37000400:Why, what a surprise. I didn't expect you to make it.
            TalkToPlayer(37000400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L4')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100038) == 1 and not GetEventStatus(71100039)
              and GetPlayerChrType() == 8):
            """ State 25 """
            DisplayOneLineHelp(-1)
            # talk:37001600:What are you looking at?
            TalkToPlayer(37001600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 26 """
                SetEventState(71100039, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100037) == 1 and not GetEventStatus(71100038)
              and GetPlayerChrType() == 8):
            """ State 23 """
            DisplayOneLineHelp(-1)
            # talk:37001500:Hm, what? Restoring your humanity?
            TalkToPlayer(37001500, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 24 """
                SetEventState(71100038, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100037) and GetPlayerChrType()
              == 8 and GetEventStatus(71100026) == 1):
            """ State 21 """
            DisplayOneLineHelp(-1)
            # talk:37001400:Oh, your face! You're practically Hollow.
            TalkToPlayer(37001400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 22 """
                SetEventState(71100037, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(751) == 1 and not GetEventStatus(71100040)
              and GetEventStatus(71100026) == 1):
            """ State 43 """
            DisplayOneLineHelp(-1)
            # talk:37001700:Oi, hold on...Don't tell me, have you been cursed?
            TalkToPlayer(37001700, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 44 """
                SetEventState(71100040, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:2600:Weapon Smithbox
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100051) and GetEventStatus(71100026)
              == 1 and not IsEquipmentIDObtained(3, 2600) and GetEventStatus(11010901) == 1):
            """ State 53 """
            DisplayOneLineHelp(-1)
            # talk:37003100:Don't you ever think to forge your weapons?
            TalkToPlayer(37003100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 54 """
                SetEventState(71100051, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100026) == 1 and not GetEventStatus(71100052)
              and IsPlayerCurrentWeaponDamaged() == 1):
            """ State 55 """
            DisplayOneLineHelp(-1)
            # talk:37003150:Don't you ever repair your weapons?
            TalkToPlayer(37003150, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 56 """
                SetEventState(71100052, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100044) and GetEventStatus(71100043)
              == 1 and GetEventStatus(1175) == 1):
            """ State 61 """
            DisplayOneLineHelp(-1)
            # talk:37002100:That maiden?
            TalkToPlayer(37002100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 62 """
                SetEventState(71100044, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100043) and GetEventStatus(71100026)
              == 1 and GetEventStatus(71100042) == 1 and GetEventStatus(1175) == 1):
            """ State 59 """
            DisplayOneLineHelp(-1)
            # talk:37002000:Did you hear about the maiden?
            TalkToPlayer(37002000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 60 """
                SetEventState(71100043, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100042) and GetEventStatus(71100026)
              == 1 and GetEventStatus(1171) == 1 and ComparePlayerStatus(11, 0, 1) == 1):
            """ State 79 """
            DisplayOneLineHelp(-1)
            # talk:37001950:Did you see her?
            TalkToPlayer(37001950, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 46 """
                Label('L5')
                SetEventState(71100042, 1)
                if True:
                    continue
                else:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100042) and GetEventStatus(71100026)
              == 1 and GetEventStatus(1171) == 1):
            """ State 45 """
            DisplayOneLineHelp(-1)
            # talk:37001900:Did you see her?
            TalkToPlayer(37001900, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1092) == 1 and not GetEventStatus(71100041)
              and GetEventStatus(71100026) == 1):
            """ State 57 """
            DisplayOneLineHelp(-1)
            # talk:37001800:Oi, did you see him?
            TalkToPlayer(37001800, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 58 """
                SetEventState(71100041, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100048) == 1 and not GetEventStatus(71100035)
              and not GetEventStatus(11026105)):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:37000600:Have you been to the ruins of New Londo below?
            TalkToPlayer(37000600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 18 """
                SetEventState(71100035, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100048) and GetEventStatus(71100047)
              == 1):
            """ State 47 """
            DisplayOneLineHelp(-1)
            # talk:37002600:Well, what are you going to do?
            TalkToPlayer(37002600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 48 """
                SetEventState(71100048, 1)
                SetEventState(11026105, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100047) and GetEventStatus(71100046)
              == 1):
            """ State 67 """
            DisplayOneLineHelp(-1)
            # talk:37000300:What's wrong? Get a bit of a scare out there?
            TalkToPlayer(37000300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 68 """
                SetEventState(71100047, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1112) == 1 and not GetEventStatus(71100030)
              and GetEventStatus(71100026) == 1):
            """ State 35 """
            DisplayOneLineHelp(-1)
            # talk:37001000:How did that nutty sorcerer make it back?
            TalkToPlayer(37001000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 36 """
                SetEventState(71100030, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100032) and GetEventStatus(71100026)
              == 1 and GetEventStatus(1252) == 1):
            """ State 39 """
            DisplayOneLineHelp(-1)
            # talk:37001100:How did that old man make it back?
            TalkToPlayer(37001100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 40 """
                SetEventState(71100032, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100029) and GetEventStatus(11010790)
              == 1 and GetEventStatus(71100026) == 1 and GetEventStatus(1110) == 1):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:37000700:How did that silly sorcerer's apprentice end up?
            TalkToPlayer(37000700, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71100029, 1)
                SetEventState(11026105, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100031) and GetEventStatus(11010597)
              == 1 and GetEventStatus(71100026) == 1 and GetEventStatus(1250) == 1):
            """ State 37 """
            DisplayOneLineHelp(-1)
            # talk:37000800:How did that raggedy old chum end up?
            TalkToPlayer(37000800, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 38 """
                SetEventState(71100031, 1)
                SetEventState(11026105, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100045) and GetEventStatus(71100036)
              == 1 and not GetEventStatus(11026105)):
            """ State 63 """
            DisplayOneLineHelp(-1)
            # talk:37002400:You again?
            TalkToPlayer(37002400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 64 """
                SetEventState(71100045, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71020020) == 1 and not GetEventStatus(71100036)
              and not GetEventStatus(11026105) and GetEventStatus(71100026) == 1):
            """ State 19 """
            DisplayOneLineHelp(-1)
            # talk:37001300:Oh, have you seen that terribly morose lass?
            TalkToPlayer(37001300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 20 """
                SetEventState(71100036, 1)
                SetEventState(11026105, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100028) and GetEventStatus(71100027)
              == 1):
            """ State 33 """
            DisplayOneLineHelp(-1)
            # talk:37000200:Bloody hell, what is it now?
            TalkToPlayer(37000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 34 """
                SetEventState(71100028, 1)
                SetEventState(11026105, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100027) and GetEventStatus(71100026)
              == 1):
            """ State 31 """
            DisplayOneLineHelp(-1)
            # talk:37000100:Hm? What, you want to hear more?
            TalkToPlayer(37000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 32 """
                SetEventState(71100027, 1)
                SetEventState(11026105, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100026)):
            """ State 27 """
            DisplayOneLineHelp(-1)
            # talk:37000000:Well, what do we have here? You must be a new arrival.
            TalkToPlayer(37000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 28 """
                SetEventState(71100026, 1)
                SetEventState(11026105, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1):
            """ State 69 """
            DisplayOneLineHelp(-1)
            # talk:37002500:Hm? What now?
            TalkToPlayer(37002500, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 70 """
                SetEventState(71100053, 1)
                SetEventState(11026105, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1461) and not GetEventStatus(1462)
              and not GetEventStatus(1464)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1462):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L6')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

