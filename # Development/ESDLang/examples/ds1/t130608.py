# -*- coding: utf-8 -*-
def t130608_1():
    """ State 0,6 """
    while True:
        DebugEvent('待機　更新距離を25に設定')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1198):
            """ State 17 """
            Label('L0')
            # talk:18020600:N...no...this can't be...
            TalkToPlayer(18020600, -1, -1)
            DisplayOneLineHelp(-1)
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1200) == 1):
            """ State 28 """
            DisplayOneLineHelp(-1)
            # talk:18020100:You there, please, help me...
            TalkToPlayer(18020100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1:
                    """ State 26 """
                    # talk:18020600:N...no...this can't be...
                    TalkToPlayer(18020600, -1, -1)
                    DisplayOneLineHelp(-1)
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L4')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71300049)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:18020500:By the Lords! You damn fool!
                    TalkToPlayer(18020500, -1, -1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71300049, 1)
                        """ State 11 """
                        Label('L2')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif GetEventStatus(1197) == 1:
                    """ State 10 """
                    Label('L3')
                    ForceEndTalk(3)
                    Goto('L2')
                elif (not GetEventStatus(71300045) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:18020400:Hrg!
                    TalkToPlayer(18020400, -1, -1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71300045, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (GetEventStatus(71300045) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71300046)):
                    """ State 18 """
                    # talk:18020410:Ooh!
                    TalkToPlayer(18020410, -1, -1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 19 """
                        SetEventState(71300046, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (GetEventStatus(71300046) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71300047)):
                    """ State 20 """
                    # talk:18020420:Mrgm!
                    TalkToPlayer(18020420, -1, -1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 21 """
                        SetEventState(71300047, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (GetEventStatus(71300047) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71300048)):
                    """ State 22 """
                    # talk:18020430:Ooph!
                    TalkToPlayer(18020430, -1, -1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 23 """
                        SetEventState(71300048, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif GetEventStatus(71300048) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
                """ State 27 """
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 29 """
                SetEventState(71300050, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(1200) == 1 and not GetEventStatus(11306100) and GetDistanceToPlayer() <=
              4 and not GetEventStatus(71300050)):
            """ State 24 """
            DisplayOneLineHelp(-1)
            # talk:18020000:Help me!
            TalkToPlayer(18020000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 25 """
                SetEventState(11306100, 1)
                continue
            elif GetDistanceToPlayer() >= 7:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1201) == 1 and GetEventStatus(71300051)
              == 1):
            """ State 16 """
            DisplayOneLineHelp(-1)
            # talk:18020300:Please, rest assured.
            TalkToPlayer(18020300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1201) == 1 and not GetEventStatus(71300051)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:18020200:Phew...I am saved.
            TalkToPlayer(18020200, -1, -1)
            SetEventState(71300052, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71300051, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1197) and not GetEventStatus(1198)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1198):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L4')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

