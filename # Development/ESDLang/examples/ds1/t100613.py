# -*- coding: utf-8 -*-
def t100613_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1254) and GetDistanceToPlayer() <= 5:
            """ State 18 """
            Label('L0')
            ForceCloseMenu()
            # talk:23000500:Curses...
            TalkToPlayer(23000500, -1, -1)
            DisplayOneLineHelp(-1)
            if GetDistanceToPlayer() >= 5:
                pass
            elif HasTalkEnded() == 1:
                continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1250) == 1 and GetEventStatus(71000010)
              == 1):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:23000040:...Oh, there you are...
            TalkToPlayer(23000040, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 27 """
                    ForceCloseMenu()
                    # talk:23000500:Curses...
                    TalkToPlayer(23000500, -1, -1)
                    DisplayOneLineHelp(-1)
                    if GetDistanceToPlayer() >= 5:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        continue
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71000009)
                      and GetSelfHP() <= 90 and GetEventStatus(71000000) == 1):
                    """ State 12 """
                    ForceCloseMenu()
                    # talk:23000400:Curse the heavens! Are you mad!
                    TalkToPlayer(23000400, -1, -1)
                    SetEventState(71000009, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        Label('L2')
                        SetEventState(71000009, 1)
                        """ State 11 """
                        Label('L3')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71000009)
                      and GetSelfHP() <= 90):
                    """ State 29 """
                    ForceCloseMenu()
                    # talk:23000450:Curse the heavens! Are you mad!
                    TalkToPlayer(23000450, -1, -1)
                    SetEventState(71000009, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif GetEventStatus(1253) == 1:
                    """ State 10 """
                    Label('L4')
                    ForceEndTalk(3)
                    Goto('L3')
                elif (not GetEventStatus(71000008) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    ForceCloseMenu()
                    # talk:23000300:Whoa!
                    TalkToPlayer(23000300, -1, -1)
                    SetEventState(71000008, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71000008, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif (not GetEventStatus(71000011) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000008) == 1):
                    """ State 21 """
                    ForceCloseMenu()
                    # talk:23000320:What are you doing?!
                    TalkToPlayer(23000320, -1, -1)
                    SetEventState(71000011, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 22 """
                        SetEventState(71000011, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif (not GetEventStatus(71000012) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000011) == 1 and GetEventStatus(71000000) == 1):
                    """ State 23 """
                    ForceCloseMenu()
                    # talk:23000340:It is I, Laurentius!
                    TalkToPlayer(23000340, -1, -1)
                    SetEventState(71000012, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 24 """
                        SetEventState(71000012, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif (not GetEventStatus(71000013) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000012) == 1 and GetEventStatus(71000000) == 1):
                    """ State 25 """
                    ForceCloseMenu()
                    # talk:23000360:I have no bone to pick with you!
                    TalkToPlayer(23000360, -1, -1)
                    SetEventState(71000013, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 26 """
                        SetEventState(71000013, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif GetEventStatus(71000013) == 1:
                    Goto('L4')
                else:
                    Goto('L4')
                """ State 28 """
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                Goto('L0')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1251) == 1 and not GetEventStatus(71000000)):
            """ State 15 """
            DisplayOneLineHelp(-1)
            # talk:23000100:...Th-thank you.
            TalkToPlayer(23000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 16 """
                SetEventState(71000000, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2.5 and not GetEventStatus(1253) and not GetEventStatus(1254)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2.5)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1254):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1251) == 1 and GetEventStatus(71000000)
              == 1):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:23000200:Oh, hello there.
            TalkToPlayer(23000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(1250) == 1 and not GetEventStatus(71000010) and GetDistanceToPlayer() <=
              10 and GetPlayerYDistance() < 1.5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10):
            """ State 19 """
            ForceCloseMenu()
            DisplayOneLineHelp(-1)
            # talk:23000020:...You
            TalkToPlayer(23000020, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 20 """
                SetEventState(71000010, 1)
                continue
            elif GetDistanceToPlayer() >= 12:
                pass
        """ State 3 """
        Label('L5')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

