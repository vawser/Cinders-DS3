# -*- coding: utf-8 -*-
def t350793_1():
    """ State 0,1 """
    Label('L0')
    while True:
        DebugEvent('待機')
        if not GetEventStatus(1901) and CheckActionButtonArea(6000) and not CheckSelfDeath():
            """ State 4 """
            DebugEvent('会話')
            call = t350793_x2()
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                break
            elif GetDistanceToPlayer() >= 5:
                """ State 5 """
                Label('L1')
                DebugEvent('会話範囲外')
                call = t350793_x1()
                if call.Get() == 1:
                    pass
                elif call.Get() == 0:
                    continue
                elif IsAttackedBySomeone() == 1:
                    break
        elif IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
            break
        """ State 2 """
        Label('L2')
        DebugEvent('死亡状態')
        Quit()
    """ State 3 """
    DebugEvent('被攻撃')
    call = t350793_x0()
    if call.Get() == 1:
        Goto('L2')
    elif call.Get() == 0:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L1')

def t350793_x0():
    """ State 0,1 """
    DisplayOneLineHelp(-1)
    """ State 2 """
    ClearTalkProgressData()
    ForceEndTalk(0)
    CloseShopMessage()
    CloseMenu()
    ClearTalkListData()
    """ State 6 """
    def ExitPause():
        RemoveMyAggro()
    if CheckSelfDeath() == 1:
        """ State 19 """
        ClearTalkProgressData()
        ForceEndTalk(0)
        CloseShopMessage()
        CloseMenu()
        """ State 9 """
        DebugEvent('死亡')
        if GetDistanceToPlayer() <= 5:
            """ State 8 """
            ClearTalkProgressData()
            ForceEndTalk(0)
            CloseShopMessage()
            CloseMenu()
            """ State 3 """
            TalkToPlayer(90000080, -1, -1)
            assert HasTalkEnded() == 1
        else:
            pass
        """ State 21 """
        return 1
    elif IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5:
        """ State 18 """
        DebugEvent('プレイヤーに攻撃された')
        if GetSelfHP() <= 0 and not GetEventStatus(70000320):
            """ State 10,4 """
            # talk:33000700: 
            TalkToPlayer(33000700, -1, -1)
            assert HasTalkEnded() == 1
            """ State 5 """
            SetEventState(70000320, 1)
            """ State 7 """
            Label('L0')
            ClearTalkDisabledState()
        elif not GetEventStatus(70000320):
            """ State 11 """
            if not GetEventStatus(70000310):
                """ State 12,13 """
                TalkToPlayer(90000060, -1, -1)
                assert HasTalkEnded() == 1
                """ State 14 """
                SetEventState(70000310, 1)
                Goto('L0')
            elif not GetEventStatus(70000311):
                """ State 15,16 """
                TalkToPlayer(90000070, -1, -1)
                assert HasTalkEnded() == 1
                """ State 17 """
                SetEventState(70000311, 1)
                Goto('L0')
            else:
                pass
        else:
            pass
    else:
        pass
    """ State 20 """
    return 0

def t350793_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    ForceEndTalk(0)
    CloseMenu()
    CloseShopMessage()
    ClearTalkListData()
    if CheckSelfDeath() == 1:
        """ State 5 """
        return 1
    elif GetEventStatus(1902) == 1:
        pass
    else:
        """ State 2 """
        TalkToPlayer(90000030, -1, -1)
        if HasTalkEnded() == 1:
            """ State 3 """
            SetEventState(72000004, 1)
        elif IsAttackedBySomeone() == 1:
            pass
    """ State 4 """
    return 0

def t350793_x2():
    """ State 0,3 """
    DisplayOneLineHelp(-1)
    """ State 2 """
    DebugEvent('会話状態')
    if GetEventStatus(13000501) == 1:
        """ State 20,19 """
        TalkToPlayer(90000050, -1, -1)
        assert HasTalkEnded() == 1
    elif not GetEventStatus(70000300):
        """ State 4,1 """
        TalkToPlayer(90000000, -1, -1)
        assert HasTalkEnded() == 1
        """ State 5 """
        SetEventState(70000300, 1)
        """ State 18 """
        Label('L0')
        assert not GetEventStatus(13000401)
        """ State 7 """
        while True:
            AddTalkListData(1, 15000200, -1)
            # action:15000000:Talk
            AddTalkListData(2, 15000000, -1)
            # action:15000005:Leave
            AddTalkListData(3, 15000005, -1)
            # action:15000150:Travel
            AddTalkListData(4, 15000150, -1)
            """ State 9,10 """
            ShowShopMessage(0, 0, 0)
            if GetTalkListEntryResult() == 1:
                break
            elif GetTalkListEntryResult() == 2:
                """ State 12 """
                DebugEvent('会話状態')
                """ State 15 """
                TalkToPlayer(90000020, -1, -1)
                assert HasTalkEnded() == 1
            elif GetTalkListEntryResult() == 3 or not GetTalkListEntryResult():
                """ State 13 """
                DebugEvent('会話状態')
                assert HasTalkEnded() == 1
                Goto('L1')
        """ State 11 """
        DebugEvent('会話状態')
        """ State 14 """
        TalkToPlayer(90000010, -1, -1)
        assert HasTalkEnded() == 1
        """ State 16 """
        # action:10010745:
        OpenGenericDialog(2, 10010745, 3, 4, 2)
        if GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
            """ State 21 """
            SetEventState(13000510, 1)
            """ State 17 """
            # action:90000011:
            OpenGenericDialog(1, 90000011, 1, 0, 2)
            assert not IsGenericDialogOpen()
            """ State 25 """
            SetEventState(13000501, 1)
        elif GetGenericDialogButtonResult() == 2 or not GetGenericDialogButtonResult():
            pass
        elif GetGenericDialogButtonResult() == 2:
            pass
    else:
        """ State 6,8 """
        TalkToPlayer(90000040, -1, -1)
        assert HasTalkEnded() == 1
        Goto('L0')
    """ State 26 """
    Label('L1')
    return 0

