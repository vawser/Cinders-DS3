# -*- coding: utf-8 -*-
def t121661_1():
    """ State 0,1 """
    while True:
        DebugEvent('最初')
        if (DoesPlayerHaveSpEffect() >= 0 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
            <= 3.4 and CheckSpecificPersonGenericDialogIsOpen() == 1):
            """ State 4 """
            Label('L0')
            c177()
            StartBonfireAnimLoop()
            ReportConversationEndToHavokBehavior(1)
            ClearTalkActionState()
            DisplayOneLineHelp(-1)
            ClearPlayerDamageInfo()
            SetEventState(760, 0)
            if GetWhetherEnemiesAreNearby(14, 1) == 1 or IsPlayerDead() == 1 or CheckSelfDeath() == 1:
                pass
            elif not GetTalkListEntryResult():
                """ State 9 """
                EndBonfireKindleAnimLoop()
            """ State 7 """
            OpenConversationChoicesMenu()
            ForceEndTalk(0)
            ClearTalkProgressData()
            CloseShopMessage()
            DebugEvent('リスト強制開放')
            EndBonfireKindleAnimLoop()
            """ State 8 """
            ClearTalkDisabledState()
            DebugEvent('会話タイマーをクリア　待機へ')
        elif (GetOneLineHelpStatus() == 1 and (GetWhetherEnemiesAreNearby(14, 1) == 1 or IsTalkingToSomeoneElse()
              or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
              > 45 or GetDistanceToPlayer() > 2)):
            pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.4 and GetOneLineHelpStatus() == 1 and CheckSpecificPersonGenericDialogIsOpen() ==
              1):
            Goto('L0')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.4 and GetOneLineHelpStatus() == 1 and not CheckSpecificPersonGenericDialogIsOpen()):
            """ State 2 """
            DisplayOneLineHelp(-1)
            """ State 3 """
            # action:150400:Battle of Stoicism is only available online.
            OpenGenericDialog(7, 150400, 1, 0, 2)
            if (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
                > 2)):
                pass
            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                pass
            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                pass
        elif (not GetOneLineHelpStatus() and not GetWhetherEnemiesAreNearby(15, 1) and HasDisableTalkPeriodElapsed()
              == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath() and not IsCharacterDisabled()
              and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2):
            """ State 5 """
            # action:10010131:Duel: Ruins
            DisplayOneLineHelp(10010131)
            continue
        """ State 6 """
        DisplayOneLineHelp(-1)

