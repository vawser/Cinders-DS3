# -*- coding: utf-8 -*-
def t121200_1():
    """ State 0,1 """
    while True:
        DebugEvent('unknow')
        if (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
            and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
            <= 45 and GetDistanceToPlayer() <= 1.6):
            """ State 2 """
            # action:10010130:View Plaque of Legends
            DisplayOneLineHelp(10010130)
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 1.6)):
            """ State 3 """
            DisplayOneLineHelp(-1)
        elif (GetEventStatus(765) == 1 and GetOneLineHelpStatus() == 1 and IsPlayerTalkingToMe() == 1
              and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer() <= 1.6):
            """ State 17 """
            # action:150401:Plaque of Legends is only available online.
            OpenGenericDialog(7, 150401, 1, 0, 2)
            DebugEvent('オフライン')
            DisplayOneLineHelp(-1)
            if IsPlayerDead() == 1 or HasPlayerBeenAttacked() == 1:
                """ State 15 """
                Label('L0')
                ForceCloseGenericDialog()
                ForceEndTalk(0)
                ClearTalkProgressData()
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L0')
            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                """ State 16 """
                Label('L1')
                ClearTalkDisabledState()
                DebugEvent('会話タイマークリア')
                ClearTalkActionState()
                ForceCloseGenericDialog()
            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 1.6 and GetOneLineHelpStatus() == 1):
            """ State 10 """
            ClearTalkActionState()
            DisplayOneLineHelp(-1)
            ClearPlayerDamageInfo()
            if GetDistanceToPlayer() >= 2:
                pass
            else:
                break
            """ State 13 """
            Label('L2')
            ForceEndTalk(0)
            ClearTalkProgressData()
            CloseShopMessage()
            DebugEvent('リスト強制開放')
            """ State 14 """
            ClearTalkDisabledState()
            DebugEvent('会話タイマーをクリア　待機へ')
    """ State 4 """
    while True:
        ShowShopMessage(0, 0, 0)
        # action:15000400:Duel Legends
        AddTalkListData(1, 15000400, -1)
        # action:15000405:2v2 Legends
        AddTalkListData(2, 15000405, -1)
        # action:15000410:Four-man Battle Legends
        AddTalkListData(3, 15000410, -1)
        # action:15000415:3v3 Legends
        AddTalkListData(4, 15000415, -1)
        # action:15000416:Six-man Battle Legends
        AddTalkListData(5, 15000416, -1)
        # action:15000005:Leave
        AddTalkListData(6, 15000005, -1)
        def ExitPause():
            ClearTalkListData()
        if IsPlayerDead() == 1:
            Goto('L2')
        elif HasPlayerBeenAttacked() == 1:
            Goto('L2')
        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
              == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 2):
            Goto('L2')
        elif GetTalkListEntryResult() == 6:
            break
        elif not GetTalkListEntryResult():
            break
        elif GetTalkListEntryResult() == 1:
            """ State 6 """
            OpenArenaRanking(0)
            if HasPlayerBeenAttacked() == 1:
                """ State 9 """
                Label('L3')
                CloseMenu()
                Goto('L2')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 2):
                Goto('L3')
            elif not IsRankingMenuOpen(0):
                pass
        elif GetTalkListEntryResult() == 2:
            """ State 5 """
            OpenArenaRanking(5)
            if HasPlayerBeenAttacked() == 1:
                Goto('L3')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 2):
                Goto('L3')
            elif not IsRankingMenuOpen(5):
                pass
        elif GetTalkListEntryResult() == 3:
            """ State 12 """
            OpenArenaRanking(10)
            if HasPlayerBeenAttacked() == 1:
                Goto('L3')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 2):
                Goto('L3')
            elif not IsRankingMenuOpen(10):
                pass
        elif GetTalkListEntryResult() == 4:
            """ State 7 """
            OpenArenaRanking(20)
            if HasPlayerBeenAttacked() == 1:
                Goto('L3')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 2):
                Goto('L3')
            elif not IsRankingMenuOpen(20):
                pass
        elif GetTalkListEntryResult() == 5:
            """ State 8 """
            OpenArenaRanking(15)
            if HasPlayerBeenAttacked() == 1:
                Goto('L3')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 2):
                Goto('L3')
            elif not IsRankingMenuOpen(15):
                pass
    """ State 11 """
    Goto('L2')

