# -*- coding: utf-8 -*-
def t101630_1():
    """ State 0,6 """
    Label('L0')
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1575) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1570) == 1 and GetEventStatus(71500028)
              == 1):
            """ State 29 """
            DisplayOneLineHelp(-1)
            # talk:40000080:Ahh, you have come back.
            TalkToPlayer(40000080, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 30 """
                SetEventState(71500028, 0)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                """ State 3 """
                Label('L1')
                ClearTalkProgressData()
                """ State 2 """
                ForceEndTalk(0)
                if GetDistanceToPlayer() <= 12 and GetEventStatus(1570) == 1 and not GetEventStatus(71500028):
                    """ State 28 """
                    # talk:40000060:Why! You!
                    TalkToPlayer(40000060, -1, -1)
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 31 """
                        SetEventState(71500028, 1)
                        continue
                    elif GetDistanceToPlayer() >= 15:
                        """ State 34 """
                        ForceEndTalk(0)
                        continue
                else:
                    continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1571) == 1 and GetEventStatus(71500031)
              == 1):
            """ State 24 """
            DisplayOneLineHelp(-1)
            # talk:40000220:I am free. Now I can get back to work...
            TalkToPlayer(40000220, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 25 """
                SetEventState(71500032, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1571) == 1 and GetEventStatus(71500030)
              == 1 and not GetEventStatus(71500031)):
            """ State 22 """
            DisplayOneLineHelp(-1)
            # talk:40000200:Yes, very sorry, your reward will have to wait.
            TalkToPlayer(40000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 23 """
                SetEventState(71500031, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1571) == 1 and not GetEventStatus(71500030)):
            """ State 20 """
            DisplayOneLineHelp(-1)
            # talk:40000100:Thank you, yes, sincerely.
            TalkToPlayer(40000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 21 """
                SetEventState(71500030, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1570) == 1 and GetEventStatus(71500025)
              == 1):
            """ State 18 """
            DisplayOneLineHelp(-1)
            # talk:40000040:Please, I have duties to fulfil, and I will reward you\nhandsomely.
            TalkToPlayer(40000040, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(71500027, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1570) == 1 and not GetEventStatus(71500025)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:40000000:Oh? Still human, are you?
            TalkToPlayer(40000000, -1, -1)
            SetEventState(71500038, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71500025, 1)
                SetEventState(11010593, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                Goto('L1')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3.5 and not GetEventStatus(1574) and not GetEventStatus(1575)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 3.5)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1575):
            """ State 1 """
            DisplayOneLineHelp(-1)
        """ State 7 """
        ClearTalkProgressData()
        def ExitPause():
            RemoveMyAggro()
        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
            """ State 32 """
            # talk:40000500:You despicable...
            TalkToPlayer(40000500, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                Goto('L1')
        elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71500037)
              and GetSelfHP() <= 90 and not GetEventStatus(11010190)):
            """ State 35 """
            # talk:40000410:You leave me no choice.
            TalkToPlayer(40000410, -1, -1)
            SetEventState(71500037, 1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 13 """
                Label('L2')
                SetEventState(71500037, 1)
                """ State 11 """
                Label('L3')
                ClearTalkDisabledState()
                RemoveMyAggro()
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 10):
                Goto('L1')
        elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71500037)
              and GetSelfHP() <= 90):
            """ State 12 """
            # talk:40000400:You leave me no choice.
            TalkToPlayer(40000400, -1, -1)
            SetEventState(71500037, 1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                Goto('L2')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 10):
                Goto('L1')
        elif GetEventStatus(1574) == 1:
            """ State 10 """
            Label('L4')
            ForceEndTalk(3)
            Goto('L3')
        elif (not GetEventStatus(71500034) and IsPlayerAttacking() == 1 and GetDistanceToPlayer() <=
              5 and GetEventStatus(71500033) == 1):
            """ State 26 """
            # talk:40000360:Keh keh keh. Are you sure about this?
            TalkToPlayer(40000360, -1, -1)
            SetEventState(71500034, 1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 27 """
                SetEventState(71500034, 1)
                Goto('L3')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                Goto('L1')
        elif not GetEventStatus(71500033) and IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5:
            """ State 8 """
            # talk:40000340:Well, what have we here?
            TalkToPlayer(40000340, -1, -1)
            SetEventState(71500033, 1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 9 """
                SetEventState(71500033, 1)
                Goto('L3')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                Goto('L1')
        elif GetEventStatus(71500036) == 1:
            Goto('L4')
        else:
            Goto('L4')
        """ State 33 """
        ClearTalkProgressData()
        def ExitPause():
            RemoveMyAggro()
        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
        break
    """ State 16 """
    # talk:40000500:You despicable...
    TalkToPlayer(40000500, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L1')

