# -*- coding: utf-8 -*-
def t200701_1():
    """ State 0,1 """
    Label('L0')
    while True:
        DebugEvent('待機')
        if not GetEventStatus(1901) and CheckActionButtonArea(6000) and not CheckSelfDeath():
            """ State 4 """
            DebugEvent('会話')
            call = t200701_x2()
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                break
            elif GetDistanceToPlayer() >= 5:
                """ State 5 """
                Label('L1')
                DebugEvent('会話範囲外')
                call = t200701_x1()
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
    call = t200701_x0()
    if call.Get() == 1:
        Goto('L2')
    elif call.Get() == 0:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L1')

def t200701_x0():
    """ State 0,1 """
    DisplayOneLineHelp(-1)
    """ State 2 """
    ClearTalkProgressData()
    ForceEndTalk(0)
    CloseShopMessage()
    CloseMenu()
    """ State 6 """
    def ExitPause():
        RemoveMyAggro()
    if CheckSelfDeath() == 1:
        """ State 25 """
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
            # talk:33000800: 
            TalkToPlayer(33000800, -1, -1)
            assert HasTalkEnded() == 1
        else:
            pass
        """ State 27 """
        return 1
    elif IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5:
        """ State 24 """
        DebugEvent('プレイヤーに攻撃された')
        if GetSelfHP() <= 90 and not GetEventStatus(72000009):
            """ State 10,4 """
            # talk:33000700: 
            TalkToPlayer(33000700, -1, -1)
            assert HasTalkEnded() == 1
            """ State 5 """
            SetEventState(72000009, 1)
            """ State 7 """
            Label('L0')
            ClearTalkDisabledState()
        elif not GetEventStatus(72000009):
            """ State 11 """
            if not GetEventStatus(72000005):
                """ State 12,13 """
                # talk:33000600: 
                TalkToPlayer(33000600, -1, -1)
                assert HasTalkEnded() == 1
                """ State 14 """
                SetEventState(72000005, 1)
                Goto('L0')
            elif not GetEventStatus(72000006):
                """ State 15,16 """
                TalkToPlayer(33000610, -1, -1)
                assert HasTalkEnded() == 1
                """ State 17 """
                SetEventState(72000006, 1)
                Goto('L0')
            elif not GetEventStatus(72000007):
                """ State 18,19 """
                TalkToPlayer(33000620, -1, -1)
                assert HasTalkEnded() == 1
                """ State 20 """
                SetEventState(72000007, 1)
                Goto('L0')
            else:
                """ State 21,22 """
                TalkToPlayer(33000630, -1, -1)
                assert HasTalkEnded() == 1
                """ State 23 """
                SetEventState(72000008, 1)
                Goto('L0')
        else:
            pass
    else:
        pass
    """ State 26 """
    return 0

def t200701_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    ForceEndTalk(0)
    CloseMenu()
    CloseShopMessage()
    if CheckSelfDeath() == 1:
        """ State 5 """
        return 1
    elif GetEventStatus(1902) == 1:
        pass
    else:
        """ State 2 """
        # talk:33000400: 
        TalkToPlayer(33000400, -1, -1)
        if HasTalkEnded() == 1:
            """ State 3 """
            SetEventState(72000004, 1)
        elif IsAttackedBySomeone() == 1:
            pass
    """ State 4 """
    return 0

def t200701_x2():
    """ State 0,35 """
    DisplayOneLineHelp(-1)
    """ State 21 """
    DebugEvent('会話状態')
    if GetEventStatus(72000004) == 1:
        """ State 15 """
        DebugEvent('離れて戻ってきた')
        """ State 9 """
        # talk:33000500:This farewell gift is for you.
        TalkToPlayer(33000500, -1, -1)
        assert HasTalkEnded() == 1
        """ State 10 """
        SetEventState(72000004, 0)
    elif not GetEventStatus(72000000):
        """ State 14 """
        DebugEvent('初回挨拶')
        """ State 7 """
        # talk:33000000:Ahh, the wait has been long, Unkindled One.
        TalkToPlayer(33000000, -1, -1)
        assert HasTalkEnded() == 1
        """ State 8 """
        SetEventState(72000000, 1)
    else:
        """ State 13 """
        DebugEvent('挨拶')
        if GetEventStatus(0) == 72000001:
            """ State 1 """
            TalkToPlayer(33000120, -1, -1)
            DebugEvent('会話：挨拶')
            assert HasTalkEnded() == 1
            """ State 16 """
            SetEventState(72000001, 1)
        elif not GetEventStatus(72000002):
            """ State 17 """
            TalkToPlayer(33000120, -1, -1)
            DebugEvent('会話：挨拶')
            assert HasTalkEnded() == 1
            """ State 18 """
            SetEventState(72000002, 1)
        else:
            """ State 19 """
            TalkToPlayer(33000120, -1, -1)
            DebugEvent('会話：挨拶')
            assert HasTalkEnded() == 1
            """ State 20 """
            SetEventState(72000003, 1)
    """ State 2 """
    while True:
        # action:15000010:Purchase Item
        AddTalkListData(1, 15000010, -1)
        # action:15000000:Talk
        AddTalkListData(2, 15000000, -1)
        # action:15000005:Leave
        AddTalkListData(3, 15000005, -1)
        """ State 3 """
        ClearTalkActionState()
        """ State 4 """
        ShowShopMessage(0, 0, 0)
        DebugEvent('会話リスト表示')
        def ExitPause():
            ClearTalkListData()
        if GetTalkListEntryResult() == 2:
            """ State 11 """
            DebugEvent('話す')
            if not GetEventStatus(72000010):
                """ State 6 """
                # talk:33000900:What on earth?
                TalkToPlayer(33000900, -1, -1)
                assert HasTalkEnded() == 1
                """ State 22 """
                SetEventState(72000010, 1)
            elif not GetEventStatus(72000011):
                """ State 23 """
                # talk:33001000:Whatever is this about?
                TalkToPlayer(33001000, -1, -1)
                CloseShopMessage()
                assert HasTalkEnded() == 1
                """ State 24 """
                SetEventState(72000011, 1)
            elif not GetEventStatus(72000012):
                """ State 25 """
                TalkToPlayer(33001100, -1, -1)
                CloseShopMessage()
                assert HasTalkEnded() == 1
                """ State 26 """
                SetEventState(72000012, 1)
            elif not GetEventStatus(72000013):
                """ State 27 """
                TalkToPlayer(33001200, -1, -1)
                CloseShopMessage()
                assert HasTalkEnded() == 1
                """ State 28 """
                SetEventState(72000013, 1)
            elif not GetEventStatus(72000014):
                """ State 29 """
                TalkToPlayer(33001300, -1, -1)
                CloseShopMessage()
                assert HasTalkEnded() == 1
                """ State 30 """
                SetEventState(72000014, 1)
            elif not GetEventStatus(72000015):
                """ State 31 """
                TalkToPlayer(33001400, -1, -1)
                CloseShopMessage()
                assert HasTalkEnded() == 1
                """ State 34 """
                SetEventState(72000015, 1)
            else:
                """ State 33 """
                TalkToPlayer(33001500, -1, -1)
                CloseShopMessage()
                assert HasTalkEnded() == 1
                """ State 32 """
                SetEventState(72000016, 1)
        elif GetTalkListEntryResult() == 1:
            """ State 12 """
            DebugEvent('アイテムを買う')
            """ State 5 """
            OpenRegularShop(-1, -1)
            assert not IsMenuOpen(11)
        elif GetTalkListEntryResult() == 3 or not GetTalkListEntryResult():
            """ State 36 """
            DebugEvent('立ち去る')
            if not DidYouDoSomethingInTheMenu(11):
                """ State 37 """
                # talk:33000200:What is wrong, Unkindled One?
                TalkToPlayer(33000200, -1, -1)
                assert HasTalkEnded() == 1
            elif DidYouDoSomethingInTheMenu(11) == 1:
                """ State 38 """
                TalkToPlayer(33000320, -1, -1)
                assert HasTalkEnded() == 1
            """ State 39 """
            ClearTalkDisabledState()
            """ State 40 """
            return 0

