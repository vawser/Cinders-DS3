# -*- coding: utf-8 -*-
def t400790_1():
    """ State 0,1 """
    Label('L0')
    while True:
        DebugEvent('待機')
        if not GetEventStatus(1901) and CheckActionButtonArea(6000) and not CheckSelfDeath():
            """ State 4 """
            DebugEvent('会話')
            call = t400790_x2()
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                break
            elif GetDistanceToPlayer() >= 5:
                """ State 5 """
                Label('L1')
                DebugEvent('会話範囲外')
                call = t400790_x1()
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
    call = t400790_x0()
    if call.Get() == 1:
        Goto('L2')
    elif call.Get() == 0:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L1')

def t400790_x0():
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
        if GetSelfHP() <= 0 and not GetEventStatus(74009080):
            """ State 10,4 """
            # talk:33000700: 
            TalkToPlayer(33000700, -1, -1)
            assert HasTalkEnded() == 1
            """ State 5 """
            SetEventState(74009080, 1)
            """ State 7 """
            Label('L0')
            ClearTalkDisabledState()
        elif not GetEventStatus(74009080):
            """ State 11 """
            if not GetEventStatus(74009081):
                """ State 12,13 """
                TalkToPlayer(90000060, -1, -1)
                assert HasTalkEnded() == 1
                """ State 14 """
                SetEventState(74009081, 1)
                Goto('L0')
            elif not GetEventStatus(74009082):
                """ State 15,16 """
                TalkToPlayer(90000070, -1, -1)
                assert HasTalkEnded() == 1
                """ State 17 """
                SetEventState(74009082, 1)
                Goto('L0')
            else:
                pass
        else:
            pass
    else:
        pass
    """ State 20 """
    return 0

def t400790_x1():
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
            SetEventState(74009090, 1)
        elif IsAttackedBySomeone() == 1:
            pass
    """ State 4 """
    return 0

def t400790_x2():
    """ State 0,3 """
    DisplayOneLineHelp(-1)
    """ State 2 """
    DebugEvent('会話状態')
    if not GetEventStatus(74009000):
        """ State 4,1 """
        TalkToPlayer(90000000, -1, -1)
        assert HasTalkEnded() == 1
        """ State 5 """
        SetEventState(74009000, 1)
    else:
        """ State 6,8 """
        TalkToPlayer(90000040, -1, -1)
        assert HasTalkEnded() == 1
    """ State 13 """
    ClearTalkListData()
    """ State 7 """
    while True:
        # action:15000100:Level Up
        AddTalkListData(1, 15000100, -1)
        # action:15000005:Leave
        AddTalkListData(3, 15000005, -1)
        """ State 9 """
        ShowShopMessage(0, 0, 0)
        if GetTalkListEntryResult() == 1:
            """ State 14 """
            OpenSoul()
            DebugEvent('ソウルショップ')
            assert not IsMenuOpen(23)
        elif GetTalkListEntryResult() == 3 or not GetTalkListEntryResult():
            """ State 11 """
            DebugEvent('会話状態')
            ClearTalkListData()
            assert HasTalkEnded() == 1
            """ State 15 """
            return 0

