function ()
local PC, Speed, LStick = nil
function ExecEvent(state)
    hkbFireEvent(state)
    return 
    
end

function ExecEvents(...)
    local buff = {...}
    for , 1, #buff do
        ExecEvent(buff[f8321_local0])
    end
    
end

function SetWeightIndex()
    if env(ESD_ENV_DS3GetSpecialEffectID, 4000) == TRUE then
        SetVariable("MoveWeightIndex", 4)
        return 
    else
        SetVariable("MoveWeightIndex", 0)
        return 
    end
    
end

function GetEquipType(hand, ...)
    local buff = {...}
    local kind = {}
    local num = 1
    if hand == HAND_BOTH then
        kind[1] = env(ESD_ENV_GetEquipWeaponCategory, HAND_LEFT)
        kind[2] = env(ESD_ENV_GetEquipWeaponCategory, HAND_RIGHT)
        num = 2
    else
        kind[1] = env(ESD_ENV_GetEquipWeaponCategory, hand)
    end
    for , 1, num do
        for , 1, #buff do
            if kind[f8323_local0] == buff[f8323_local3] then
                return TRUE
            end
        end
    end
    local f8323_local0 = FALSE
    return f8323_local0
    
end

function SetVariable(name, value)
    act(148, name, value)
    
end

function SetActiveState(state)
    local num = g_FrameCount % 2 * 2
    if g_StateCondition[num] == nil then
        num = num + 1
    end
    g_StateCondition[num] = state
    return 
    
end

function IsActiveState(state)
    
end

function ExecGuard(state1, state2)
    local kind = env(ESD_ENV_GetEquipWeaponCategory, HAND_LEFT)
    local style = env(ESD_ENV_GetWeaponSwitchState)
    local is_shield = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_SHIELD, WEAPON_CATEGORY_LARGE_SHIELD, WEAPON_CATEGORY_TOCHE)
    if not (style ~= HAND_RIGHT or is_shield ~= FALSE) or env(ESD_ENV_IsPrecisionShoot) == TRUE then
        return FALSE
    end
    if style == HAND_LEFT_BOTH then
        if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW) == TRUE then
            return FALSE
        end
    elseif style == HAND_RIGHT_BOTH and GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW) == TRUE then
        return FALSE
    end
    if kind == WEAPON_CATEGORY_TOCHE then
        if style == HAND_RIGHT then
            SetVariable("IndexGuardStyle", GUARD_STYLE_TOCHE)
        else
            SetVariable("IndexGuardStyle", GUARD_STYLE_DEFAULT)
        end
    else
        SetVariable("IndexGuardStyle", GUARD_STYLE_DEFAULT)
    end
    if state1 ~= nil then
        ExecEvent(state1)
    end
    if state2 ~= nil then
        ExecEvent(state2)
    end
    return TRUE
    
end

function ResetRequest()
    act(9101)
    
end

function CheckActionRequest()
    if g_TimeCheckActionRequest ~= g_FrameCount then
        g_IsActionRequest = env(ESD_ENV_DS3HasActionRequest)
        g_TimeCheckActionRequest = g_FrameCount
    end
    
end

function MoveUpdate()
    local stick_level = g_MoveSpeedLevel
    local is_aim = env(ESD_ENV_IsPrecisionShoot)
    if env(ESD_ENV_DS3ActionDuration, ACTION_ARM_SP_MOVE) > 100 and g_MagicCondition <= 0 then
        if (g_IsLockon == false or g_IsLockon == true and math.abs(g_MoveAngle) < 25) and is_aim == FALSE then
            if stick_level > 0 then
                stick_level = 2
            end
        else
            stick_level = 1
        end
    end
    if g_IsLockon == true or is_aim == TRUE then
        if stick_level > 0 then
            SetVariable("MoveAngleReal", g_MoveAngle)
        end
    else
        SetVariable("MoveAngleReal", 0)
    end
    local f8330_local0 = Speed.IsDashPenalty
    if f8330_local0 == TRUE then
        if stick_level < 1.5 then
            Speed.DashPenaltyCount = Speed.DashPenaltyCount + 1
        end
        if Speed.DashPenaltyCount > 5 then
            Speed.IsDashPenalty = FALSE
            f8330_local0 = Speed
            SETFIELD_R1 2 43 -15
            Speed.SpeedLevel = SPEED_STATE_START_DASH
        end
        if env(ESD_ENV_GetStamina) <= 100 then
            if stick_level > 1 then
                stick_level = 1
            end
        else
            Speed.IsDashPenalty = FALSE
        end
    end
    f8330_local0 = Speed
    local f8330_local1 = f8330_local0
    f8330_local0 = f8330_local0.GetMoveSpeed
    local speed = f8330_local0(f8330_local1, stick_level)
    SetEnableMoveTAE(speed)
    SetVariable("MoveSpeedLevelReal", speed)
    g_MoveSpeedLevelReal = speed
    if speed > 1.5 and Speed.StopCount == 0 then
        if 0 == g_FrameCount % 2 then
            act(1001, -1)
        end
        if env(ESD_ENV_GetStamina) <= 0 then
            Speed.IsDashPenalty = TRUE
        end
    end
    if Speed.MoveCount > 1 then
        if speed >= 0.15000000596046448 and speed <= 1 then
            if Speed.StopCount > 1 then
                g_State = PLAYER_STATE_IDLE
                f8330_local1 = Speed
                SETFIELD_R1 3 56 -15
                SetVariable("LocomotionState", PLAYER_STATE_IDLE)
                SetVariable("MoveSpeedLevelReal", 0)
                g_TimeMoveStop = g_FrameCount
                g_MoveSpeedLevelReal = 0
                f8330_local1 = g_MagicCondition
                if f8330_local1 > 0 then
                    f8330_local1 = ExecEvents
                    f8330_local1("W_Lower", "W_Magic_Continue")
                elseif speed <= 0.3499999940395355 then
                    f8330_local1 = ExecEvent
                    f8330_local1("WalkStop")
                else
                    f8330_local1 = ExecEvent
                    f8330_local1("RunStop")
                end
                return 
            end
        elseif speed > 1.5 and Speed.StopCount > 3 then
            g_State = PLAYER_STATE_IDLE
            SetVariable("LocomotionState", PLAYER_STATE_IDLE)
            SetVariable("MoveSpeedLevelReal", 0)
            g_MoveSpeedLevelReal = 0
            f8330_local1 = Speed
            local f8330_local2 = f8330_local1
            f8330_local1 = f8330_local1.SetSpeedZero
            f8330_local1(f8330_local2)
            f8330_local1 = g_FrameCount
            g_TimeMoveStop = f8330_local1
            f8330_local1 = g_MagicCondition
            if f8330_local1 > 0 then
                f8330_local1 = ExecEvents
                f8330_local1("W_Lower", "W_Magic_Continue")
            else
                f8330_local1 = ExecEvent
                f8330_local1("DashStop")
                f8330_local1 = g_IsGuard
                if f8330_local1 == TRUE then
                    f8330_local1 = ExecGuard
                    f8330_local1("W_GuardOn_Upper", nil)
                end
            end
            return 
        end
    end
    if speed <= 0 then
        g_State = PLAYER_STATE_IDLE
        g_TimeMoveStop = g_FrameCount
        g_MoveSpeedLevelReal = 0
        SetVariable("LocomotionState", PLAYER_STATE_IDLE)
        if g_MagicCondition > 0 then
            ExecEvents("W_Lower", "W_Magic_Continue")
        elseif TRUE == g_IsGuard then
            ExecGuard("W_GuardOn", nil)
            return 
        else
            ExecEvent("Idle_wild")
            return 
        end
    end
    if g_IsLockon == true then
        if g_MoveAngle < 90 and g_MoveAngle > -90 then
            ExecEvent("MoveLockonToDefault")
        elseif g_MoveAngle > 90 or g_MoveAngle < -90 then
            ExecEvent("MoveLockonToMirror")
        end
    end
    
end

function MoveStart(state)
    if env(ESD_ENV_DS3MovementRequest) == TRUE and 0 < g_MoveSpeedLevel then
        local f8331_local0 = Speed
        SETFIELD_R1 1 11 -7
        g_State = PLAYER_STATE_MOVE
        SetVariable("LocomotionState", PLAYER_STATE_MOVE)
        SetEnableMoveTAE(0)
        f8331_local0 = g_IsGuard
        if f8331_local0 == FALSE then
            f8331_local0 = g_IsUseHoldTransition
            if f8331_local0 ~= FALSE then
                f8331_local0 = g_IsLockon
                if f8331_local0 == false then
                    f8331_local0 = ExecEvent
                    f8331_local0("W_Move")
                else
                    f8331_local0 = ExecEvent
                    f8331_local0("W_Move")
                end
            end
            f8331_local0 = ExecEvent
            f8331_local0("W_Move")
        else
            f8331_local0 = 2
            g_GuardUpperCondition = f8331_local0
            f8331_local0 = g_IsUseHoldTransition
            if f8331_local0 == FALSE then
                f8331_local0 = ExecEvent
                f8331_local0("W_Move")
            else
                f8331_local0 = ExecEvent
                f8331_local0("W_Move")
            end
            f8331_local0 = ExecEvent
            f8331_local0(state)
        end
        f8331_local0 = FALSE
        g_IsUseHoldTransition = f8331_local0
        f8331_local0 = -1
        g_TimeMoveStop = f8331_local0
        f8331_local0 = TRUE
        return f8331_local0
    end
    return FALSE
    
end

function GetKickRequest()
    local level, angle = nil
    local f8332_local0 = LStick
    local f8332_local1 = f8332_local0
    f8332_local0 = f8332_local0.GetLStick
    f8332_local0, f8332_local1 = f8332_local0(f8332_local1, 0)
    angle = f8332_local1
    level = f8332_local0
    if level > 0.30000001192092896 then
        f8332_local0 = LStick
        f8332_local1 = f8332_local0
        f8332_local0 = f8332_local0.GetLStick
        f8332_local0, f8332_local1 = f8332_local0(f8332_local1, 3)
        angle = f8332_local1
        level = f8332_local0
        if level <= 0 then
            f8332_local0 = LStick
            f8332_local1 = f8332_local0
            f8332_local0 = f8332_local0.GetLStick
            f8332_local0, f8332_local1 = f8332_local0(f8332_local1, 4)
            angle = f8332_local1
            level = f8332_local0
            if level <= 0 then
                f8332_local0 = TRUE
                return f8332_local0
            end
        end
    end
    f8332_local0 = FALSE
    return f8332_local0
    
end

function SetEnableMoveTAE(speed)
    if speed < 0.75 then
        if g_MoveCondition ~= MOVE_WALK then
            g_MoveCondition = MOVE_WALK
            SetVariable("IsEnableWalkTAE", true)
            SetVariable("IsEnableRunTAE", false)
            SetVariable("IsEnableDashTAE", false)
        end
    elseif speed < 1.5 then
        if g_MoveCondition ~= MOVE_RUN then
            g_MoveCondition = MOVE_RUN
            SetVariable("IsEnableWalkTAE", false)
            SetVariable("IsEnableRunTAE", true)
            SetVariable("IsEnableDashTAE", false)
        end
    elseif g_MoveCondition ~= MOVE_DASH then
        g_MoveCondition = MOVE_DASH
        SetVariable("IsEnableWalkTAE", false)
        SetVariable("IsEnableRunTAE", false)
        SetVariable("IsEnableDashTAE", true)
    end
    
end

function GetAttackRequest()
    local is_kick = GetKickRequest()
    local style = env(ESD_ENV_GetWeaponSwitchState)
    local is_both = FALSE
    local is_arrow = FALSE
    local is_spear = FALSE
    local is_stagg = FALSE
    local right_kind = env(ESD_ENV_GetEquipWeaponCategory, HAND_RIGHT)
    local left_kind = env(ESD_ENV_GetEquipWeaponCategory, HAND_LEFT)
    if style >= HAND_LEFT_BOTH then
        is_both = TRUE
    end
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) == TRUE then
        if is_kick == TRUE then
            return ATTACK_REQUEST_LIGHT_KICK
        elseif is_both == TRUE then
            if style == HAND_LEFT_BOTH then
                is_arrow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
            else
                is_arrow = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
            end
            if is_arrow == TRUE then
                return ATTACK_REQUEST_ARROW_FIRE
            else
                return ATTACK_REQUEST_BOTH_LIGHT
            end
        elseif TRUE == g_IsGuard then
            is_spear = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SPEAR)
            if is_spear == TRUE and hkbGetVariable("IndexGuardStyle") ~= GUARD_STYLE_TOCHE then
                return ATTACK_REQUEST_ATTACK_WHILE_GUARD
            else
                return ATTACK_REQUEST_RIGHT_LIGHT
            end
        else
            is_staff = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF)
            if TRUE == is_staff then
                return ATTACK_REQUEST_INVALID
            end
            is_arrow = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
            if is_arrow == TRUE then
                return ATTACK_REQUEST_ARROW_CHANGE2
            end
            return ATTACK_REQUEST_RIGHT_LIGHT
        end
    end
    if env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) > 100 and g_MoveSpeedLevel <= 0 and is_both == TRUE then
        if style == HAND_LEFT_BOTH then
            is_arrow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
        else
            is_arrow = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
        end
        if is_arrow == TRUE then
            return ATTACK_REQUEST_ARROW_FIRE
        end
    end
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) == TRUE then
        if is_kick == TRUE then
            return ATTACK_REQUEST_HEAVY_KICK
        else
            if style == HAND_RIGHT or style == HAND_RIGHT_BOTH then
                is_arrow = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
            elseif style == HAND_LEFT_BOTH then
                is_arrow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
            end
            if is_arrow == TRUE then
                return ATTACK_REQUEST_ARROW_CHANGE_RIGHT
            elseif is_both == TRUE then
                return ATTACK_REQUEST_BOTH_HEAVY
            else
                return ATTACK_REQUEST_RIGHT_HEAVY
            end
        end
    end
    local is_shield = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_SHIELD, WEAPON_CATEGORY_LARGE_SHIELD)
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE then
        if env(ESD_ENV_IsPrecisionShoot) == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        if is_shield == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        is_arrow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
        if is_arrow == TRUE then
            if is_both == FALSE then
                return ATTACK_REQUEST_ARROW_CHANGE
            else
                return ATTACK_REQUEST_INVALID
            end
        end
        is_staff = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF)
        if TRUE == is_staff then
            return ATTACK_REQUEST_INVALID
        end
        is_arrow = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
        if is_arrow == TRUE and is_both == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        return ATTACK_REQUEST_LEFT_LIGHT
    end
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) == TRUE then
        is_arrow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
        if is_arrow == TRUE then

        else

        end
        if is_both == TRUE then
            if right_kind == WEAPON_CATEGORY_EXTRALARGE_SWORD then
                return ATTACK_REQUEST_STEPIN
            elseif right_kind == WEAPON_CATEGORY_CURVEDSWORD then
                return ATTACK_REQUEST_SPIN
            elseif right_kind == WEAPON_CATEGORY_HALBERD then
                return ATTACK_REQUEST_DRAWSTANCE
            elseif right_kind == WEAPON_CATEGORY_SHORT_SWORD then
                return ATTACK_REQUEST_QUICKITEM
            else
                return ATTACK_REQUEST_LEFT_PARRY
            end
        elseif left_kind == WEAPON_CATEGORY_TOCHE then
            return ATTACK_REQUEST_LEFT_BASH
        elseif is_shield == TRUE then
            return ATTACK_REQUEST_LEFT_PARRY
        else
            return ATTACK_REQUEST_LEFT_HEAVY
        end
    end
    return ATTACK_REQUEST_INVALID
    
end

function ExecAttack(r1, r2, l1, l2, b1, b2)
    if g_IsActionRequest == FALSE and env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) > 100 and g_MoveSpeedLevel > 0 then
        return FALSE
    end
    if env(ESD_ENV_GetStamina) <= 0 then
        return FALSE
    end
    local request = GetAttackRequest()
    if request == ATTACK_REQUEST_INVALID then
        return FALSE
    end
    ExecEvent(TRANS_TO_ALL_BODY)
    act(2006, 0)
    if request == ATTACK_REQUEST_RIGHT_LIGHT then
        ExecEvents(TRANS_TO_ALL_BODY, r1)
        return TRUE
    elseif request == ATTACK_REQUEST_LIGHT_KICK then
        ExecEvents(TRANS_TO_ALL_BODY, "W_AttackRightLightKick")
        return TRUE
    elseif request == ATTACK_REQUEST_RIGHT_HEAVY then
        ExecEvents(TRANS_TO_ALL_BODY, r2)
        return TRUE
    elseif request == ATTACK_REQUEST_HEAVY_KICK then
        ExecEvents(TRANS_TO_ALL_BODY, "W_AttackRightHeavyKick")
        return TRUE
    elseif request == ATTACK_REQUEST_LEFT_LIGHT then
        ExecEvents(TRANS_TO_ALL_BODY, l1)
        return TRUE
    elseif request == ATTACK_REQUEST_LEFT_HEAVY then
        ExecEvents(TRANS_TO_ALL_BODY, l2)
        return TRUE
    elseif request == ATTACK_REQUEST_BOTH_LIGHT then
        ExecEvents(TRANS_TO_ALL_BODY, b1)
        return TRUE
    elseif request == ATTACK_REQUEST_BOTH_HEAVY then
        ExecEvents(TRANS_TO_ALL_BODY, b2)
        return TRUE
    elseif request == ATTACK_REQUEST_ARROW_CHANGE2 then
        if ExecHandChange(HAND_RIGHT, TRUE) == TRUE then
            return TRUE
        end
    elseif request == ATTACK_REQUEST_ARROW_CHANGE then
        if ExecHandChange(HAND_LEFT, TRUE) == TRUE then
            return TRUE
        end
    elseif request == ATTACK_REQUEST_LEFT_BASH then
        ExecEvents(TRANS_TO_ALL_BODY, "W_AttackLeftBash")
        return TRUE
    elseif request == ATTACK_REQUEST_LEFT_PARRY then
        ExecEvents(TRANS_TO_ALL_BODY, "W_AttackLeftParry")
        return TRUE
    elseif request == ATTACK_REQUEST_STEPIN then
        ExecEvents(TRANS_TO_ALL_BODY, "W_StepInFront")
        return TRUE
    elseif request == ATTACK_REQUEST_SPIN then
        g_SpinAngle = g_MoveAngle
        SetVariable("SpinAngle", g_SpinAngle)
        ExecEvents(TRANS_TO_ALL_BODY, "W_Spin")
        act(1001, -25)
        return TRUE
    elseif request == ATTACK_REQUEST_DRAWSTANCE and g_FrameCount - g_LastDrawStanceFrame > 10 then
        if g_MoveSpeedLevel == 0 then
            ExecEvents(TRANS_TO_ALL_BODY, "W_DrawStanceIdle")
            g_LastDrawStanceFrame = g_FrameCount
            return TRUE
        else
            ExecEvents(TRANS_TO_ALL_BODY, "W_DrawStanceMove_Sync")
            g_LastDrawStanceFrame = g_FrameCount
            return TRUE
        end
    elseif request == ATTACK_REQUEST_QUICKITEM then
        local item_type = env(ESD_ENV_GetItemAnimType)
        if item_type == ITEM_THROW_KNIFE then
            ExecEvents(TRANS_TO_ALL_BODY, "W_QuickItemThrowKnife")
            return TRUE
        else
            ExecEventAllBody("W_ItemInvalid")
            return TRUE
        end
    elseif request == ATTACK_REQUEST_ARROW_FIRE then
        ExecEvents(TRANS_TO_ALL_BODY, "W_AttackArrowStart")
        return TRUE
    elseif request == ATTACK_REQUEST_ATTACK_WHILE_GUARD then
        ExecEvents(TRANS_TO_ALL_BODY, "W_AttackRightWhileGuard")
        return TRUE
    elseif request == ATTACK_REQUEST_ARROW_CHANGE_RIGHT then
        SetVariable("IndexArrowChange", HAND_RIGHT)
        if g_State == PLAYER_STATE_MOVE then
            g_IsHalfBlend = TRUE
            ExecEvent("W_ArrowChange_Upper")
        else
            ExecEvents(TRANS_TO_ALL_BODY, "W_ArrowChange")
        end
        return TRUE
    elseif request == ATTACK_REQUEST_ARROW_CHANGE_LEFT then
        SetVariable("IndexArrowChange", HAND_LEFT)
        if g_State == PLAYER_STATE_MOVE then
            g_IsHalfBlend = TRUE
            ExecEvent("W_ArrowChange_Upper")
        else
            ExecEvents(TRANS_TO_ALL_BODY, "W_ArrowChange")
        end
        return TRUE
    end
    return FALSE
    
end

function SetIdleFlag()
    act(9100)
    
end

function ExecMagic()
    if g_IsActionRequest == FALSE then
        return FALSE
    end
    local is_staff, hand = nil
    SetVariable("StateMagic", 1)
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) == TRUE then
        if FALSE == GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF) then
            return FALSE
        end
        hand = HAND_RIGHT
    elseif env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE then
        if FALSE == GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF) then
            return FALSE
        end
        hand = HAND_LEFT
    else
        return FALSE
    end
    local magic_type = env(ESD_ENV_GetMagicAnimType)
    local magic_index = MAGIC_REQUEST_NOTHING
    if magic_type == 0 then
        magic_index = MAGIC_REQUEST_ENBULLET
    elseif magic_type == 1 then
        magic_index = MAGIC_REQUEST_ENCHANT
    elseif magic_type == 2 then

    elseif magic_type == 3 then

    elseif magic_type == 4 then

    elseif magic_type == 5 then
        magic_index = MAGIC_REQUEST_FLAME_RADIATION
    elseif magic_type == 6 then

    elseif magic_type == 7 then

    elseif magic_type == 8 then

    elseif magic_type == 9 then

    elseif magic_type == 10 then

    elseif magic_type == 11 then

    elseif magic_type == 12 then

    elseif magic_type == 13 then

    elseif magic_type == 14 then

    elseif magic_type == 15 then

    elseif magic_type == 16 then

    elseif magic_type == 17 then

    elseif magic_type == 18 then

    elseif magic_type == 19 then

    elseif magic_type == 20 then

    elseif magic_type == 21 then

    elseif magic_type == 22 then

    elseif magic_type == 23 then

    elseif magic_type == 24 then

    elseif magic_type == 254 then
        SetVariable("StateMagic", 3)
    elseif magic_type == 255 then
        SetVariable("StateMagic", 3)
    else
        SetVariable("StateMagic", 3)
    end
    if magic_index == MAGIC_REQUEST_NOTHING then
        return FALSE
    end
    SetVariable("IndexMagicHand", hand)
    SetVariable("IndexMagicType", magic_index)
    ExecEvents("W_Lower", "W_Magic")
    return TRUE
    
end

function ExecGesture()
    if g_IsActionRequest == FALSE then
        return FALSE
    end
    if FALSE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_GESTURE) then
        return FALSE
    end
    local request = env(ESD_ENV_DS3GetGestureRequestNumber)
    if request == INVALID then
        return FALSE
    end
    SetVariable("IndexGesture", request)
    ExecEvent("W_Gesture")
    return TRUE
    
end

function ExecItem()
    if g_IsActionRequest == FALSE then
        return FALSE
    end
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_USE_ITEM) == TRUE then
        local item_type = env(ESD_ENV_GetItemAnimType)
        if item_type == ITEM_RECOVER then
            ExecEventAllBody("W_ItemRecover")
        elseif item_type == ITEM_WEAPON_ENCHANT then
            ExecEventAllBody("W_ItemWeaponEnchant")
        elseif item_type == ITEM_THROW_KNIFE then
            ExecEventAllBody("W_ItemThrowKnife")
        elseif item_type == ITEM_THROW_BOTTLE then
            ExecEventAllBody("W_ItemThrowBottle")
        elseif item_type == ITEM_MEGANE then
            ExecEventAllBody("W_ItemMeganeStart")
        elseif item_type == ITEM_REPAIR then
            ExecEventAllBody("W_ItemWeaponRepair")
        elseif item_type == ITEM_PRAY then
            ExecEventAllBody("W_ItemSoul")
        elseif item_type == ITEM_MESSAGE then
            ExecEventAllBody("W_ItemMessage")
        elseif item_type == ITEM_SOUL then
            ExecEventAllBody("W_ItemSoul")
        elseif item_type == ITEM_DRINK then
            ExecEventAllBody("W_ItemDrinkStart")
        elseif item_type == ITEM_SHOCK_WAVE then
            ExecEventAllBody("W_ItemShockWeaveStart")
        elseif item_type == ITEM_NO_DRINK then
            ExecEventAllBody("W_ItemDrinkNothing")
        elseif item_type == ITEM_INVALID then
            ExecEventAllBody("W_ItemInvalid")
        else
            return FALSE
        end
        ResetRequest()
        return TRUE
    end
    
end

function GetWeaponChangeType(hand)
    local kind = env(ESD_ENV_GetEquipWeaponCategory, hand)
    local left_offset = 0
    if hand == HAND_LEFT then
        left_offset = 4
    end
    if not (kind < 20 or kind > 24) or not (kind < 27 or kind > 31) or not (kind < 33 or kind > 34) or not (kind < 41 or kind > 43) or kind == 49 then
        return WEAPON_CHANGE_REQUEST_RIGHT_WAIST + left_offset
    elseif kind == 25 or kind == 26 or kind == 32 or kind == 35 or kind == 44 or kind == 45 or kind == 46 then
        return WEAPON_CHANGE_REQUEST_RIGHT_SHOULDER + left_offset
    elseif kind >= 36 and kind <= 40 then
        return WEAPON_CHANGE_REQUEST_RIGHT_SPEAR + left_offset
    elseif kind >= 47 and kind <= 48 then
        return WEAPON_CHANGE_REQUEST_RIGHT_BACK + left_offset
    end
    return WEAPON_CHANGE_REQUEST_NOTHING
    
end

function ExecQuickChange()
    if g_IsActionRequest == FALSE then
        return FALSE
    end
    local kind = nil
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_CHANGE_WEAPON_R) == TRUE then
        kind = GetWeaponChangeType(HAND_RIGHT)
    elseif env(ESD_ENV_DS3ActionRequest, ACTION_ARM_CHANGE_WEAPON_L) == TRUE then
        kind = GetWeaponChangeType(HAND_LEFT)
    else
        return FALSE
    end
    if kind == WEAPON_CHANGE_REQUEST_NOTHING then
        return FALSE
    end
    ForwardLeg()
    SetVariable("WeaponChangeType", kind)
    ExecEventAllBody("W_WeaponQuickChange")
    return TRUE
    
end

function ExecWeaponChange()
    if g_IsActionRequest == FALSE then
        return FALSE
    end
    local kind = nil
    if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_CHANGE_WEAPON_R) == TRUE then
        kind = GetWeaponChangeType(HAND_RIGHT)
    elseif env(ESD_ENV_DS3ActionRequest, ACTION_ARM_CHANGE_WEAPON_L) == TRUE then
        kind = GetWeaponChangeType(HAND_LEFT)
    else
        return FALSE
    end
    if kind == WEAPON_CHANGE_REQUEST_NOTHING then
        return FALSE
    end
    SetVariable("WeaponChangeType", kind)
    if g_State == PLAYER_STATE_MOVE then
        g_IsHalfBlend = TRUE
        ExecEvent("W_WeaponChange_Upper")
    else
        ExecEvent("W_Lower")
        ExecEvent("W_WeaponChange")
    end
    g_IsGuard = FALSE
    return TRUE
    
end

function SetHandChangeStyle(s, e)
    SetVariable("HandChangeStartIndex", s)
    SetVariable("HandChangeEndIndex", e)
    
end

function ExecHandQuickChange(hand, is_force)
    if is_force == FALSE then
        if FALSE == g_IsActionRequest then
            return FALSE
        end
        if FALSE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_CHANGE_STYLE) then
            return FALSE
        end
    end
    local style = env(ESD_ENV_GetWeaponSwitchState)
    if style == HAND_RIGHT then
        SetHandChangeStyle(0, 1)
    elseif style == HAND_RIGHT_BOTH then
        SetHandChangeStyle(1, 0)
    end
    ForwardLeg()
    ExecEventAllBody("W_HandQuickChange")
    return TRUE
    
end

function GetHandChangeType(hand)
    local kind = env(ESD_ENV_GetEquipWeaponCategory, hand)
    if not (kind < 20 or kind > 24) or not (kind < 27 or kind > 31) or not (kind < 32 or kind > 34) or not (kind < 41 or kind > 43) or kind == 49 then
        if hand == HAND_RIGHT then
            return WEAPON_CHANGE_REQUEST_RIGHT_WAIST
        elseif hand == HAND_LEFT then
            return WEAPON_CHANGE_REQUEST_LEFT_WAIST
        end
    elseif kind == 25 or kind == 26 or kind == 32 or kind == 35 or kind == 44 or kind == 45 or kind == 46 or kind >= 47 and kind <= 49 then
        if hand == HAND_RIGHT then
            return WEAPON_CHANGE_REQUEST_RIGHT_SHOULDER
        elseif hand == HAND_LEFT then
            return WEAPON_CHANGE_REQUEST_LEFT_SHOULDER
        end
    elseif kind >= 36 and kind <= 40 then
        if hand == HAND_RIGHT then
            return WEAPON_CHANGE_REQUEST_RIGHT_SPEAR
        elseif hand == HAND_LEFT then
            return WEAPON_CHANGE_REQUEST_LEFT_SPEAR
        end
    elseif kind >= 47 and kind <= 49 then
        if hand == HAND_RIGHT then
            return WEAPON_CHANGE_REQUEST_RIGHT_WAIST
        elseif hand == HAND_LEFT then
            return WEAPON_CHANGE_REQUEST_LEFT_WAIST
        end
    end
    return WEAPON_CHANGE_REQUEST_NOTHING
    
end

function ExecHandChange(hand, is_force)
    if is_force == FALSE then
        if FALSE == g_IsActionRequest then
            return FALSE
        end
        if FALSE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_CHANGE_STYLE) then
            return FALSE
        end
    end
    local style = env(ESD_ENV_GetWeaponSwitchState)
    local kind = nil
    if style == HAND_RIGHT then
        if hand == HAND_RIGHT then
            kind = GetHandChangeType(HAND_LEFT)
            if kind == WEAPON_CHANGE_REQUEST_LEFT_WAIST then
                SetHandChangeStyle(0, 4)
            elseif kind == WEAPON_CHANGE_REQUEST_LEFT_BACK then
                SetHandChangeStyle(1, 4)
            elseif kind == WEAPON_CHANGE_REQUEST_LEFT_SHOULDER then
                SetHandChangeStyle(2, 4)
            end
            act(104, 1)
        else
            kind = GetHandChangeType(HAND_RIGHT)
            if kind == WEAPON_CHANGE_REQUEST_RIGHT_WAIST then
                SetHandChangeStyle(6, 9)
            elseif kind == WEAPON_CHANGE_REQUEST_RIGHT_BACK then
                SetHandChangeStyle(7, 9)
            elseif kind == WEAPON_CHANGE_REQUEST_RIGHT_SHOULDER then
                SetHandChangeStyle(8, 9)
            else
                SetHandChangeStyle(7, 9)
            end
            act(104, 2)
        end
    elseif style == HAND_RIGHT_BOTH then
        kind = GetHandChangeType(HAND_LEFT)
        if kind == WEAPON_CHANGE_REQUEST_LEFT_WAIST then
            SetHandChangeStyle(3, 0)
        elseif kind == WEAPON_CHANGE_REQUEST_LEFT_BACK then
            SetHandChangeStyle(4, 1)
        elseif kind == WEAPON_CHANGE_REQUEST_LEFT_SHOULDER then
            SetHandChangeStyle(5, 2)
        else
            SetHandChangeStyle(3, 0)
        end
        act(104, 3)
    elseif style == HAND_LEFT_BOTH then
        kind = GetHandChangeType(HAND_RIGHT)
        if kind == WEAPON_CHANGE_REQUEST_RIGHT_WAIST then
            SetHandChangeStyle(9, 5)
        elseif kind == WEAPON_CHANGE_REQUEST_RIGHT_BACK then
            SetHandChangeStyle(10, 6)
        elseif kind == WEAPON_CHANGE_REQUEST_RIGHT_SHOULDER then
            SetHandChangeStyle(11, 7)
        else
            SetHandChangeStyle(10, 8)
        end
        act(104, 1)
    end
    if g_State == PLAYER_STATE_MOVE then
        g_IsHalfBlend = TRUE
        ExecEvent("W_HandChange_Upper")
    else
        ExecEvent("W_Lower")
        ExecEvent("W_HandChange")
    end
    g_IsGuard = FALSE
    ResetRequest()
    return TRUE
    
end

function GetEvasionReqest()
    if env(ESD_ENV_GetStamina) >= STAMINA_MINIMUM then
        if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_SP_MOVE) == TRUE then
            local speed = g_MoveSpeedLevelReal
            if speed > SPEED_ENABLE_JUMP then
                return ATTACK_REQUEST_JUMP
            end
        end
        if env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) == TRUE then
            return ATTACK_REQUEST_ROLLING
        elseif env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) == TRUE then
            return ATTACK_REQUEST_BACKSTEP
        end
    end
    return ATTACK_REQUEST_NOTHING
    
end

function ExecEvasion(flag)
    if g_IsActionRequest == FALSE then
        return FALSE
    end
    local request = nil
    request = GetEvasionReqest()
    if request == ATTACK_REQUEST_NOTHING then
        return FALSE
    end
    if request == ATTACK_REQUEST_ROLLING then
        act(1001, STAMINA_REDUCE_ROLLING)
        local f8348_local0 = Speed
        local f8348_local1 = f8348_local0
        f8348_local0 = f8348_local0.SetSpeedZero
        f8348_local0(f8348_local1)
        f8348_local0 = g_MoveAngle
        if f8348_local0 >= 0 then
            f8348_local0 = SetVariable
            f8348_local0("RollingDirection", 1)
        else
            f8348_local0 = SetVariable
            f8348_local0("RollingDirection", 0)
        end
        f8348_local0 = g_IsLockon
        if f8348_local0 == true then
            f8348_local0 = SetVariable
            f8348_local0("RollingAngle", g_MoveAngle)
        else
            f8348_local0 = SetVariable
            f8348_local0("RollingAngle", 0)
        end
        f8348_local0 = ExecEvents
        f8348_local0(TRANS_TO_ALL_BODY, "W_Rolling")
    elseif request == ATTACK_REQUEST_JUMP then
        act(1001, STAMINA_REDUCE_ROLLING)
        local f8348_local0 = Speed
        local f8348_local1 = f8348_local0
        f8348_local0 = f8348_local0.SetSpeedZero
        f8348_local0(f8348_local1)
        f8348_local0 = ExecEvents
        f8348_local0(TRANS_TO_ALL_BODY, "W_Jump")
    elseif request == ATTACK_REQUEST_BACKSTEP then
        act(1001, STAMINA_REDUCE_ROLLING)
        ExecEvents(TRANS_TO_ALL_BODY, "W_BackStep")
        local f8348_local0 = Speed
        local f8348_local1 = f8348_local0
        f8348_local0 = f8348_local0.SetSpeedZero
        f8348_local0(f8348_local1)
    end
    ResetRequest()
    return TRUE
    
end

function ExecQuickTurn()
    if g_IsLockon == false then
        return FALSE
    end
    local turn_angle = hkbGetVariable("TurnAngle")
    if math.abs(turn_angle) < 45 then
        return FALSE
    end
    if turn_angle >= -135 and turn_angle < -45 then
        act(9105, 90)
        act(9104)
        ExecEvent("W_QuickTurnLeft90")
    elseif turn_angle >= 45 and turn_angle < 135 then
        act(9105, 90)
        act(9104)
        ExecEvent("W_QuickTurnRight90")
    elseif turn_angle >= -180 and turn_angle < -135 then
        act(9105, 180)
        act(9104)
        ExecEvent("W_QuickTurnLeft180")
    elseif turn_angle >= 135 and turn_angle <= 180 then
        act(9105, 180)
        act(9104)
        ExecEvent("W_QuickTurnRight180")
    end
    return TRUE
    
end

function ExecFallStart(is_jump)
    if env(ESD_ENV_IsFalling) == TRUE then
        if is_jump == TRUE then
            if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
                ExecEventAllBody("W_FallJumpStart")
                return TRUE
            end
        else
            ExecEventAllBody("W_FallStart")
            return TRUE
        end
    end
    return FALSE
    
end

function ExecThrowFallStart()
    if env(ESD_ENV_IsFalling) == TRUE then
        ExecEvent("ThrowFall")
        return TRUE
    end
    
end

function ExecEventAllBody(state)
    g_MoveSpeedLevelReal = 0
    local f8352_local0 = Speed
    local f8352_local1 = f8352_local0
    f8352_local0 = f8352_local0.SetSpeedZero
    f8352_local0(f8352_local1)
    f8352_local0 = ExecEvents
    f8352_local0(TRANS_TO_ALL_BODY, state)
    
end

function ExecDamage()
    local is_weak = env(ESD_ENV_GetIsWeakPoint)
    local damage_angle = env(ESD_ENV_GetReceivedDamageDirection)
    local damage_level = env(ESD_ENV_GetDamageLevel)
    if g_HP <= 0 then
        if env(ESD_ENV_DS3GetKnockbackDistance) < 0 then
            if damage_angle == 0 then
                damage_angle = 1
            elseif damage_angle == 1 then
                damage_angle = 0
            elseif damage_angle == 2 then
                damage_angle = 3
            elseif damage_angle == 3 then
                damage_angle = 2
            end
        end
        SetVariable("DamageDirection", damage_angle)
        if env(ESD_ENV_GetStateChangeType, CONDITION_TYPE_STONE) == TRUE then
            SetVariable("IndexDeath", DEATH_TYPE_STONE)
        elseif env(ESD_ENV_IsOnLadder) == TRUE then
            SetVariable("IndexDeath", DEATH_TYPE_LADDER)
        elseif is_weak == TRUE then
            SetVariable("IndexDeath", DEATH_TYPE_WEAK)
        elseif damage_level == DAMAGE_LEVEL_EXLARGE or damage_level == DAMAGE_LEVEL_SMALL_BLOW or damage_level == DAMAGE_LEVEL_BLAST then
            SetVariable("IndexDeath", DEATH_TYPE_BLAST)
        elseif damage_level == DAMAGE_LEVEL_FLING then
            SetVariable("IndexDeath", DEATH_TYPE_FLING)
        else
            SetVariable("DamageState", g_FrameCount % 4)
            if damage_angle == 3 then
                SetVariable("IndexDeath", DEATH_TYPE_COMMON_BACK)
            else
                SetVariable("IndexDeath", DEATH_TYPE_COMMON)
            end
        end
        ExecEventAllBody("W_DeathStart")
        return TRUE
    elseif env(ESD_ENV_IsInvincibleDebugMode) == FALSE and (env(ESD_ENV_GetStateChangeType, SP_TYPE_STONE) == TRUE or env(ESD_ENV_GetStateChangeType, SP_TYPE_CRYSTAL) == TRUE) then
        ExecEventAllBody("W_DeathTaint")
        return TRUE
    end
    local damage_type = env(ESD_ENV_GetReceivedDamageType)
    if damage_type == DAMAGE_TYPE_PARRY then
        ExecEventAllBody("W_DamageParry")
        return TRUE
    end
    local style = env(ESD_ENV_GetWeaponSwitchState)
    local kind = nil
    if damage_type >= GUARD_DAMAGE_GURDED and damage_type <= GUARD_DAMAGE_WALL_LEFT then
        local weapon_change_type = env(ESD_ENV_GetWeaponSwitchState)
        if damage_type == GUARD_DAMAGE_GURDED or damage_type == GUARD_DAMAGE_GURDED_LEFT then
            if weapon_change_type == HAND_RIGHT then
                SetVariable("GuardDamageIndex", 0)
            elseif weapon_change_type == HAND_LEFT or weapon_change_type == HAND_RIGHT_BOTH then
                SetVariable("GuardDamageIndex", 2)
            else
                SetVariable("GuardDamageIndex", 1)
            end
            act(141, DAMAGE_FLAG_GUARD_BREAK)
            ExecEventAllBody("W_GuardDamageBreak")
            return TRUE
        elseif damage_type == GUARD_DAMGE_GUARDBREAK then
            if style == HAND_RIGHT_BOTH then
                SetVariable("IndexGuardBreak", 0)
            else
                kind = env(ESD_ENV_GetEquipWeaponCategory, HAND_LEFT)
                if kind == WEAPON_CATEGORY_LARGE_SHIELD then
                    SetVariable("IndexGuardBreak", 1)
                else
                    SetVariable("IndexGuardBreak", 0)
                end
            end
            act(141, DAMAGE_FLAG_GUARD_BREAK)
            ExecEventAllBody("W_GuardBreak")
            return TRUE
        elseif damage_type == GUARD_DAMAGE_WALL_RIGHT then
            if style == HAND_RIGHT_BOTH then
                SetVariable("GuardDamageIndex", 2)
                act(141, DAMAGE_FLAG_GUARD_BREAK)
                ExecEventAllBody("W_GuardBreakWall")
                return TRUE
            else
                SetVariable("GuardDamageIndex", 1)
                act(141, DAMAGE_FLAG_GUARD_BREAK)
                ExecEventAllBody("W_GuardBreakWall")
                return TRUE
            end
        elseif damage_type == GUARD_DAMAGE_WALL_LEFT then
            SetVariable("GuardDamageIndex", 0)
            act(141, DAMAGE_FLAG_GUARD_BREAK)
            ExecEventAllBody("W_GuardBreakWall")
            return TRUE
        elseif damage_type == GUARD_DAMAGE_GUARDBREAK_BLAST then
            act(141, DAMAGE_FLAG_SMALL_BLOW)
            ExecEventAllBody("W_DamageSmallBlow")
            return TRUE
        elseif damage_type == GUARD_DAMAGE_GUARDBREAK_FLING then
            act(141, DAMAGE_FLAG_FLING)
            ExecEventAllBody("W_DamageFling")
            return TRUE
        end
    else
        local guard_damage_level = env(ESD_ENV_GetGuardLevelAction)
        if guard_damage_level > 0 then
            if env(ESD_ENV_DS3GetSpecialEffectID, 1903) == TRUE then
                return FALSE
            elseif guard_damage_level == 1 then
                act(141, DAMAGE_FLAG_GUARD_SMALL)
                ExecEventAllBody("W_GuardDamageSmall")
            elseif guard_damage_level == 3 then
                act(141, DAMAGE_FLAG_GUARD_LARGE)
                ExecEventAllBody("W_GuardDamageMiddle")
            elseif guard_damage_level == 4 then
                act(141, DAMAGE_FLAG_GUARD_EXLARGE)
                ExecEventAllBody("W_GuardDamageLarge")
            else
                act(141, DAMAGE_FLAG_GUARD_LARGE)
                ExecEventAllBody("W_GuardDamageMiddle")
            end
            return TRUE
        end
    end
    if env(ESD_ENV_HasReceivedAnyDamage) == FALSE and damage_level == 0 then
        return FALSE
    end
    if env(ESD_ENV_DS3GetKnockbackDistance) < 0 then
        if damage_angle == 0 then
            damage_angle = 1
        elseif damage_angle == 1 then
            damage_angle = 0
        elseif damage_angle == 2 then
            damage_angle = 3
        elseif damage_angle == 3 then
            damage_angle = 2
        end
    end
    SetVariable("DamageDirection", damage_angle)
    if is_weak == TRUE then
        act(141, DAMAGE_FLAG_WEAK)
        ExecEventAllBody("W_DamageWeak")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_SMALL then
        act(141, DAMAGE_FLAG_SMALL)
        ExecEventAllBody("W_DamageSmall")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_MIDDLE then
        act(141, DAMAGE_FLAG_MEDIUM)
        ExecEventAllBody("W_DamageMiddle")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_LARGE then
        act(141, DAMAGE_FLAG_LARGE)
        ExecEventAllBody("W_DamageLarge")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_EXLARGE then
        act(141, DAMAGE_FLAG_LARGE_BLOW)
        ExecEventAllBody("W_DamageExLarge")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_PUSH then
        act(141, DAMAGE_FLAG_PUSH)
        ExecEventAllBody("W_DamagePush")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_SMALL_BLOW then
        act(141, DAMAGE_FLAG_SMALL_BLOW)
        ExecEventAllBody("W_DamageSmallBlow")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_BLAST then
        act(141, DAMAGE_FLAG_LARGE_BLOW)
        ExecEventAllBody("W_DamageBlast")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_MINIMUM then
        act(141, DAMAGE_FLAG_MINIMUM)
        SetVariable("Random", g_FrameCount % 3)
        ExecEventAllBody("W_DamageMinimum")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_FLING then
        act(141, DAMAGE_FLAG_FLING)
        ExecEventAllBody("W_DamageFling")
        return TRUE
    elseif damage_level == DAMAGE_LEVEL_BREATH then
        act(141, DAMAGE_FLAG_BREATH)
        ExecEventAllBody("W_DamageBreath")
        return TRUE
    end
    return FALSE
    
end

function ExecFalling(is_enable_falling_death)
    local height = env(ESD_ENV_GetFallHeight) / 100
    local damage_type = env(ESD_ENV_GetReceivedDamageType)
    if damage_type == DAMAGE_TYPE_DEATH_FALLING then
        ExecEventAllBody("W_FallDeath")
        return TRUE
    end
    if is_enable_falling_death == TRUE and height >= 60 then
        ExecEventAllBody("W_FallDeath")
        return TRUE
    end
    if env(ESD_ENV_IsLanding) == TRUE then
        if g_FallStyle == FALL_DEFAULT then
            if height > 10 then
                if g_HP <= 0 then
                    SetVariable("IndexDeath", DEATH_TYPE_LAND)
                    ExecEventAllBody("W_DeathStart")
                    return TRUE
                else
                    SetVariable("LandIndex", LAND_HEAVY)
                end
            elseif height > 8 then
                if g_HP <= 0 then
                    SetVariable("IndexDeath", DEATH_TYPE_LAND)
                    ExecEventAllBody("W_DeathStart")
                    return TRUE
                else
                    SetVariable("LandIndex", LAND_MIDDLE)
                end
            elseif TRUE == g_IsJumpFall and height > 0 then
                if g_HP <= 0 then
                    SetVariable("IndexDeath", DEATH_TYPE_LAND_LOW)
                    ExecEventAllBody("W_DeathStart")
                    return TRUE
                else
                    SetVariable("LandIndex", LAND_JUMP)
                end
            elseif height > 3 then
                if g_HP <= 0 then
                    SetVariable("IndexDeath", DEATH_TYPE_LAND_LOW)
                    ExecEventAllBody("W_DeathStart")
                    return TRUE
                else
                    SetVariable("LandIndex", LAND_DEFAULT)
                end
            else
                if g_HP <= 0 then
                    SetVariable("IndexDeath", DEATH_TYPE_LAND_LOW)
                    ExecEventAllBody("W_DeathStart")
                    return TRUE
                else
                    ExecEventAllBody("Idle_wild")
                end
                return TRUE
            end
            g_IsJumpFall = FALSE
            ExecEventAllBody("W_Land")
            return TRUE
        else
            ExecEventAllBody("W_LandFallAttack")
            return TRUE
        end
    end
    if g_FallStyle == FALL_DEFAULT then
        local f8354_local0 = env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1)
        if f8354_local0 > 0 then
            local check_weapon = nil
            local condition = env(ESD_ENV_GetWeaponSwitchState)
            if condition == HAND_LEFT_BOTH then
                check_weapon = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, WEAPON_CATEGORY_FIST_CUT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_SMALL_SHIELD, WEAPON_CATEGORY_LARGE_SHIELD, WEAPON_CATEGORY_TOCHE)
            else
                check_weapon = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, WEAPON_CATEGORY_FIST_CUT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_SMALL_SHIELD, WEAPON_CATEGORY_LARGE_SHIELD, WEAPON_CATEGORY_TOCHE)
            end
            if check_weapon == FALSE then
                g_FallStyle = FALL_ATTACK
                ExecEventAllBody("W_FallAttackStart")
                return TRUE
            else
                return 
            end
        end
    end
    
end

function ExecGuardOnCancelTiming()
    if env(ESD_ENV_IsGuardFromAtkCancel) == TRUE and (env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE or env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) > 0) and TRUE == ExecGuard("W_Lower", "W_GuardOn_Long") then
        g_IsGuard = TRUE
        return TRUE
    end
    return FALSE
    
end

function LadderGetUpdateTiming()
    return env(ESD_ENV_DS3GetGeneralTAEFlag, 0)
    
end

function LadderUpDown()
    if g_LadderUpOrDown == LADDER_CALL_UP then
        act(108, LADDER_CALL_UP)
    elseif g_LadderUpOrDown == LADDER_CALL_DOWN then
        act(108, LADDER_CALL_DOWN)
    else

    end
    
end

function LadderUpdateIdle()
    if g_HP <= 0 then
        ExecEvent("W_LadderDeathStart")
        return TRUE
    end
    if TRUE == g_IsLadderDamage then
        if env(ESD_ENV_GetStamina) <= 80 then
            if g_LadderState == HAND_STATE_RIGHT then
                ExecEvent("W_LadderDamageLargeLeft")
            else
                ExecEvent("W_LadderDamageLargeRight")
            end
        elseif g_LadderState == HAND_STATE_RIGHT then
            ExecEvent("W_LadderDamageSmallLeft")
        else
            ExecEvent("W_LadderDamageSmallRight")
        end
        g_IsLadderDamage = FALSE
        return TRUE
    end
    if 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_SP_MOVE) then
        SetVariable("LadderSpeed", 1.100000023841858)
    elseif env(ESD_ENV_DS3ActionDuration, ACTION_ARM_SP_MOVE) > 100 then
        SetVariable("LadderSpeed", 1.399999976158142)
    end
    if g_EventCommand == 2 then
        if env(ESD_ENV_IsSomeoneOnLadder, LADDER_CONFLICT_CHECK_DIST) == FALSE then
            if g_LadderState == HAND_STATE_LEFT then
                g_LadderState = HAND_STATE_RIGHT
                g_LadderExitCondition = LADDER_ACTION_UP_RIGHT
                ExecEvent("W_LadderUpRight")
            else
                g_LadderState = HAND_STATE_LEFT
                g_LadderExitCondition = LADDER_ACTION_UP_LEFT
                ExecEvent("W_LadderUpLeft")
            end
            return TRUE
        end
    elseif g_EventCommand == 3 then
        if env(ESD_ENV_IsSomeoneUnderLadder, LADDER_CONFLICT_CHECK_DIST) == FALSE then
            if g_LadderState == HAND_STATE_LEFT then
                g_LadderState = HAND_STATE_RIGHT
                g_LadderExitCondition = LADDER_ACTION_DOWN_RIGHT
                ExecEvent("W_LadderDownLeft")
            else
                g_LadderState = HAND_STATE_LEFT
                g_LadderExitCondition = LADDER_ACTION_DOWN_LEFT
                ExecEvent("W_LadderDownRight")
            end
            return TRUE
        end
    elseif g_EventCommand == 4 then
        if env(ESD_ENV_IsSomeoneOnLadder, LADDER_CONFLICT_CHECK_DIST) == FALSE then
            g_LadderExitCondition = LADDER_ACTION_END_TOP
            if g_LadderState == HAND_STATE_LEFT then
                g_LadderState = HAND_STATE_RIGHT
                ExecEvent("W_LadderEndTopLeft")
            else
                g_LadderState = HAND_STATE_LEFT
                ExecEvent("W_LadderEndTopRight")
            end
            return TRUE
        end
    elseif g_EventCommand == 5 and env(ESD_ENV_IsSomeoneUnderLadder, LADDER_CONFLICT_CHECK_DIST) == FALSE then
        g_LadderExitCondition = LADDER_ACTION_END_BOTTOM
        if g_LadderState == HAND_STATE_LEFT then
            LadderState = HAND_STATE_RIGHT
            ExecEvent("W_LadderEndBottomLeft")
        else
            g_LadderState = HAND_STATE_LEFT
            ExecEvent("W_LadderEndBottomRight")
        end
        return TRUE
    end
    return FALSE
    
end

function LadderUpdate()
    if g_HP <= 0 then
        ExecEvent("W_LadderDeathStart")
        return TRUE
    end
    if g_IsLadderDamage == FALSE and TRUE == env(ESD_ENV_HasReceivedAnyDamage) then
        g_IsLadderDamage = TRUE
    end
    if FALSE == g_IsLadderUpdate and TRUE == LadderGetUpdateTiming() then
        g_IsLadderUpdate = TRUE
        LadderSetEndState()
    end
    if TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        if 0 < g_EventCommand then
            if TRUE == LadderUpdateIdle() then

            else

            end
            g_IsLadderUpdate = FALSE
            return TRUE
        end
        if g_LadderState == LADDER_HAND_LEFT then
            ExecEvent("W_LadderIdleLeft")
        else
            ExecEvent("W_LadderIdleRight")
        end
        g_IsLadderUpdate = FALSE
        return TRUE
    end
    
end

function LadderCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    act(102, THROW_STATE_INVALID)
    act(103, THROW_STATE_DEFAULT)
    if g_HP <= 0 then
        ExecEvent("W_LadderDeathStart")
        return TRUE
    end
    if env(ESD_ENV_HasReceivedAnyDamage) == TRUE then
        if env(ESD_ENV_GetStamina) <= 80 then
            if g_LadderState == HAND_STATE_RIGHT then
                ExecEvent("W_LadderDamageLargeLeft")
            else
                ExecEvent("W_LadderDamageLargeRight")
            end
        elseif g_LadderState == HAND_STATE_RIGHT then
            ExecEvent("W_LadderDamageSmallLeft")
        else
            ExecEvent("W_LadderDamageSmallRight")
        end
        return TRUE
    end
    
end

function LadderStart()
    if g_EventCommand == LADDER_ACTION_START_BOTTOM then
        if env(ESD_ENV_IsSomeoneOnLadder, LADDER_CONFLICT_CHECK_DIST) == FALSE then
            g_IsLadder = TRUE
            g_LadderState = LADDER_HAND_LEFT
            g_LadderExitCondition = LADDER_ACTION_START_BOTTOM
            ExecEvent("W_LadderStartBottom")
            return TRUE
        end
    elseif g_EventCommand == LADDER_ACTION_START_TOP and env(ESD_ENV_IsSomeoneUnderLadder, LADDER_CONFLICT_CHECK_DIST) == FALSE then
        g_IsLadder = TRUE
        g_LadderState = LADDER_HAND_LEFT
        g_LadderExitCondition = LADDER_ACTION_START_TOP
        ExecEvent("W_LadderStartTop")
        return TRUE
    end
    return FALSE
    
end

function LadderSetEndState()
    if g_LadderExitCondition == LADDER_ACTION_START_BOTTOM then
        LadderSetExitState(LADDER_CALL_UP, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_START_TOP then
        LadderSetExitState(LADDER_CALL_DOWN, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_UP_RIGHT then
        LadderSetExitState(LADDER_CALL_UP, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_UP_LEFT then
        LadderSetExitState(LADDER_CALL_UP, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_DOWN_RIGHT then
        LadderSetExitState(LADDER_CALL_DOWN, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_DOWN_LEFT then
        LadderSetExitState(LADDER_CALL_DOWN, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_ATTACK_UP_RIGHT then
        LadderSetExitState(LADDER_CALL_DOWN, TRUE)
    elseif g_LadderExitCondition == LADDER_ACTION_ATTACK_UP_LEFT then
        LadderSetExitState(LADDER_CALL_DOWN, TRUE)
    elseif g_LadderExitCondition == LADDER_ACTION_ATTACK_DOWN_RIGHT then
        LadderSetExitState(LADDER_CALL_DOWN, TRUE)
    elseif g_LadderExitCondition == LADDER_ACTION_ATTACK_DOWN_LEFT then
        LadderSetExitState(LADDER_CALL_DOWN, TRUE)
    elseif g_LadderExitCondition == LADDER_ACTION_COAST_START_RIGHT then
        LadderSetExitState(LADDER_CALL_DOWN, TRUE)
    elseif g_LadderExitCondition == LADDER_ACTION_COAST_RIGHT then
        LadderSetExitState(LADDER_CALL_DOWN, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_COAST_LANDING then
        LadderSetExitState(LADDER_CALL_DOWN, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_END_TOP then
        LadderSetExitState(LADDER_CALL_UP, FALSE)
    elseif g_LadderExitCondition == LADDER_ACTION_END_BOTTOM then
        LadderSetExitState(LADDER_CALL_DOWN, FALSE)
    else

    end
    
end

function LadderSetEnterState(is_idle)
    act(133, g_LadderExitCondition)
    act(140, g_LadderState)
    act(107, TRUE)
    act(103, LADDER_ACTION_INVALID)
    if is_idle == TRUE then
        act(1100, TRUE)
    else
        act(145)
    end
    act(147)
    return 
    
end

function LadderSetExitState(event_call, is_idle)
    act(107, FALSE)
    if is_idle == TRUE then
        act(1100, FALSE)
    else
        act(108, event_call)
    end
    
end

function LadderAttack()
    if env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) > 0 then
        g_LadderExitCondition = LADDER_ACTION_ATTACK_UP_RIGHT
        if g_LadderState == HAND_STATE_LEFT then
            LadderSetEnterState(TRUE)
            SetVariable("LadderAttackState", 0)
        else
            LadderSetEnterState(TRUE)
            SetVariable("LadderAttackState", 1)
        end
        ExecEvent("W_LadderAttack")
        return TRUE
    elseif env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R2) > 0 then
        g_LadderExitCondition = LADDER_ACTION_ATTACK_UP_RIGHT
        if g_LadderState == HAND_STATE_RIGHT then
            LadderSetEnterState(TRUE)
            SetVariable("LadderAttackState", 2)
        else
            LadderSetEnterState(TRUE)
            SetVariable("LadderAttackState", 3)
        end
        ExecEvent("W_LadderAttack")
        return TRUE
    end
    if env(ESD_ENV_DS3ActionDuration, ACTION_ARM_SP_MOVE) > 250 and 0 >= g_MoveSpeedLevel and env(ESD_ENV_IsSomeoneUnderLadder, LADDER_CONFLICT_CHECK_DIST) == FALSE then
        if g_EventCommand == 5 then
            g_LadderExitCondition = LADDER_ACTION_END_BOTTOM
            if g_LadderState == HAND_STATE_LEFT then
                LadderState = HAND_STATE_RIGHT
                ExecEvent("W_LadderEndBottomLeft")
            else
                g_LadderState = HAND_STATE_LEFT
                ExecEvent("W_LadderEndBottomRight")
            end
            return TRUE
        else
            g_LadderExitCondition = LADDER_ACTION_COAST_START_RIGHT
            ExecEvent("LadderCoastStart")
            return TRUE
        end
    end
    return FALSE
    
end

function LadderCoast(hand)
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        if env(ESD_ENV_IsLadderEventEnd, 2) == TRUE then
            ExecEvent("LadderCoastLanding")
            return TRUE
        else
            LadderSetEndState()
            if env(ESD_ENV_IsSomeoneUnderLadder, LADDER_CONFLICT_CHECK_DIST) == TRUE or env(ESD_ENV_DS3ActionDuration, ACTION_ARM_SP_MOVE) <= 0 or 0 < g_MoveSpeedLevel then
                ExecEvent("LadderCoastStop")
                return TRUE
            end
        end
        if hand == LADDER_HAND_LEFT then
            ExecEvent("LadderCoastRight")
            return TRUE
        else
            ExecEvent("LadderCoastLeft")
            return TRUE
        end
    end
    return FALSE
    
end

function IdleCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    SetIdleFlag()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    CheckActionRequest()
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        return 
    end
    if TRUE == ExecQuickTurn() then
        return 
    end
    if (env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE or env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) > 0) and TRUE == ExecGuard("W_GuardStart", nil) then
        g_IsGuard = TRUE
        return 
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if TRUE == ExecMagic() then
        return 
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return 
    end
    if 1 <= g_GuardUpperCondition and g_GuardUpperCondition <= 2 and TRUE == ExecGuard("W_Lower", nil) then
        g_GuardUpperCondition = 0
    end
    if g_TimeMoveStop ~= -1 and g_FrameCount - g_TimeMoveStop < 10 then
        g_IsUseHoldTransition = TRUE
    end
    if TRUE == MoveStart(nil) then
        g_IsUseHoldTransition = FALSE
        g_TimeMoveStop = -1
        return 
    end
    g_TimeMoveStop = -1
    if TRUE == ExecGesture() then
        return 
    end
    if TRUE == LadderStart() then
        return 
    end
    
end

function SetAttackQueue(r1, r2, l1, l2, b1, b2)
    if r1 == nil then
        g_r1 = "W_AttackRightLight1"
    else
        g_r1 = r1
    end
    if r2 == nil then
        g_r2 = "W_AttackRightHeavy1Start"
    else
        g_r2 = r2
    end
    if l1 == nil then
        g_l1 = "W_AttackLeftLight1"
    else
        g_l1 = l1
    end
    if l2 == nil then
        g_l2 = "W_AttackLeftHeavy1"
    else
        g_l2 = l2
    end
    if b1 == nil then
        g_b1 = "W_AttackBothLight1"
    else
        g_b1 = b1
    end
    if b2 == nil then
        g_b2 = "W_AttackBothHeavy1"
    else
        g_b2 = b2
    end
    
end

function AttackCommonFunction(r1, r2, l1, l2, b1, b2)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    if TRUE == g_IsAttackStart then
        SetAttackQueue(r1, r2, l1, l2, b1, b2)
        g_IsAttackStart = FALSE
    end
    CheckActionRequest()
    if hkbIsNodeActive("AttackLeftParry_Selector") then
        act(102, THROW_STATE_DEFAULT)
        act(103, THROW_STATE_DEFAULT)
    else
        act(102, THROW_STATE_INVALID)
        act(103, THROW_STATE_DEFAULT)
    end
    if TRUE == ExecDamage() then
        g_IsCharging = 0
        return TRUE
    end
    if TRUE == ExecFallStart(FALSE) then
        g_IsCharging = 0
        return TRUE
    end
    if TRUE == ExecGuardOnCancelTiming() then
        g_IsCharging = 0
        return TRUE
    end
    if TRUE == ExecHandQuickChange(HAND_RIGHT, FALSE) then
        g_IsCharging = 0
        return TRUE
    end
    if TRUE == ExecQuickChange() then
        g_IsCharging = 0
        return TRUE
    end
    if ExecEvasion(TRUE) == TRUE then
        g_IsCharging = 0
        return TRUE
    end
    if TRUE == ExecItem() then
        g_IsCharging = 0
        return TRUE
    end
    if ExecAttack(r1, r2, l1, l2, b1, b2) == TRUE then
        ResetRequest()
        g_IsCharging = 0
        return TRUE
    end
    if TRUE == MoveStart(nil) then
        g_IsCharging = 0
        g_IsUseHoldTransition = FALSE
        g_TimeMoveStop = -1
        return TRUE
    end
    if TRUE == ExecGesture() then
        g_IsCharging = 0
        return TRUE
    end
    return FALSE
    
end

function ThrowCommonFunction()
    CheckActionRequest()
    if env(ESD_ENV_DS3IsHitWall) == TRUE and env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_THROWING) == TRUE then
        ExecEvent("W_ThrowCollision")
        return TRUE
    end
    if TRUE == ExecDamage() then
        return TRUE
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return TRUE
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return TRUE
    end
    if TRUE == ExecWeaponChange() then
        return TRUE
    end
    if TRUE == ExecEvasion() then
        return TRUE
    end
    if TRUE == ExecItem() then
        return TRUE
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return TRUE
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return TRUE
    end
    
end

function ThrowCollisionCommonFunction()
    if env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_ENABLE_POWER_RAGDOLL) == TRUE then
        SetVariable("EnablePowerRagdoll", true)
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_POWER_RAGDOLL_BLEND_FRACTION) == TRUE then
        SetVariable("PowerRagdollBlendFraction", false)
    end
    if env(ESD_ENV_IsTruelyLanding) == TRUE then
        ExecEvent("W_ThrowLand")
        return TRUE
    end
    
end

function GestureCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        return TRUE
    end
    if TRUE == ExecFallStart(FALSE) then
        return TRUE
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return TRUE
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return TRUE
    end
    if TRUE == ExecWeaponChange() then
        return TRUE
    end
    if TRUE == ExecEvasion(FALSE) then
        return TRUE
    end
    if TRUE == ExecItem() then
        return TRUE
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return TRUE
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return TRUE
    end
    
end

function MagicCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    if TRUE == ExecDamage() then
        return TRUE
    end
    if TRUE == ExecFallStart(FALSE) then
        return TRUE
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return TRUE
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return TRUE
    end
    if TRUE == ExecWeaponChange() then
        return TRUE
    end
    if TRUE == ExecEvasion(FALSE) then
        return TRUE
    end
    if TRUE == ExecItem() then
        return TRUE
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return TRUE
    end
    
end

function ArrowCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    if TRUE == ExecDamage() then
        return TRUE
    end
    if TRUE == ExecFallStart(FALSE) then
        return TRUE
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return TRUE
    end
    if TRUE == ExecWeaponChange() then
        return TRUE
    end
    if TRUE == ExecEvasion(FALSE) then
        return TRUE
    end
    if TRUE == ExecItem() then
        return TRUE
    end
    
end

function EvasionCommonFunction(is_jump, r1, r2, l1, l2, b1, b2)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        return 
    end
    if ExecFallStart(is_jump) == TRUE then
        return 
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return 
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if ExecEvasion(TRUE) == TRUE then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if ExecAttack(r1, r2, l1, l2, b1, b2) == TRUE then
        return 
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return 
    end
    
end

function DamageCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        return 
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return 
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return 
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return 
    end
    
end

function QuickTurnCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    act(9104)
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return 
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return 
    end
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE and TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return 
    end
    
end

function LandCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    act(102, THROW_STATE_INVALID)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return 
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if TRUE == ExecAttack("W_AttackRightLightStep", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return 
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return 
    end
    
end

function ItemCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    act(117, TRUE)
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        return TRUE
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return 
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return 
    end
    
end

function StopCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    if FALSE == g_IsHalfBlend then
        SetIdleFlag()
    end
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        return 
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_GUARD_CANCEL) == FALSE then
        if 1 <= g_GuardUpperCondition and g_GuardUpperCondition <= 2 then
            if (env(ESD_ENV_DS3ActionCancelRequest, ACTION_ARM_L1) == TRUE or env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) <= 0) and TRUE == ExecGuard("W_Lower", "W_GuardEnd") then
                g_IsGuard = FALSE
                ResetRequest()
                return 
            end
        elseif FALSE == g_IsGuard and (env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE or env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) > 0) and TRUE == ExecGuard("W_Lower", "W_GuardStart") then
            g_IsGuard = TRUE
            ResetRequest()
            return 
        end
    elseif (env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE or env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) > 0) and TRUE == ExecGuard("W_GuardOn", nil) then
        g_IsGuard = TRUE
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        return TRUE
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecEvasion() then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if TRUE == ExecQuickTurn() then
        return 
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return 
    end
    g_State = PLAYER_STATE_IDLE
    if g_TimeMoveStop ~= -1 and g_FrameCount - g_TimeMoveStop < 10 then
        g_IsUseHoldTransition = TRUE
    end
    if 1 <= g_GuardUpperCondition and g_GuardUpperCondition <= 2 then
        if TRUE == MoveStart("W_GuardOn_Upper") then
            g_IsUseHoldTransition = FALSE
            g_TimeMoveStop = -1
            return 
        end
        g_TimeMoveStop = -1
    elseif FALSE == g_IsMagic then
        if TRUE == MoveStart(nil) then
            g_IsUseHoldTransition = FALSE
            g_TimeMoveStop = -1
            return 
        end
        g_TimeMoveStop = -1
    end
    if TRUE == LadderStart() then
        return 
    end
    
end

function MoveCommonFunction()
    if g_MagicCondition > 0 then
        MoveUpdate()
        return 
    end
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    if FALSE == g_IsHalfBlend or TRUE == g_IsGuard then
        SetIdleFlag()
    end
    if hkbGetVariable("LocomotionState") ~= PLAYER_STATE_MOVE then
        SetVariable("LocomotionState", PLAYER_STATE_MOVE)
    end
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    act(2001, MOVE_RATE_DEFAULT)
    CheckActionRequest()
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        return 
    end
    if 1 <= g_GuardUpperCondition and g_GuardUpperCondition <= 2 then
        if (env(ESD_ENV_DS3ActionCancelRequest, ACTION_ARM_L1) == TRUE or 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1)) and TRUE == ExecGuard("W_GuardEnd_Upper", nil) then
            g_IsGuard = FALSE
            ResetRequest()
            return 
        end
    elseif (FALSE == g_IsHalfBlend or TRUE == g_IsGuard) and (env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE or 0 < env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1)) and TRUE == ExecGuard("W_GuardStart_Upper", nil) then
        g_IsGuard = TRUE
        ResetRequest()
        return 
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if TRUE == ExecMagic() then
        return 
    end
    if 1 < g_MoveSpeedLevelReal then
        if TRUE == ExecAttack("W_AttackRightLightDash", "W_AttackRightHeavyKick", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothDash", "W_AttackBothHeavyKick") then
            return 
        end
    elseif TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return 
    end
    if TRUE == LadderStart() then
        return 
    end
    if 7790 <= g_EventCommand and g_EventCommand <= 7794 then
        ExecEvent("W_PursuerMove")
    end
    MoveUpdate()
    g_IsHalfBlend = FALSE
    
end

function GuardCommonFunction(is_guard_end)
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    SetIdleFlag()
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        return 
    end
    if is_guard_end == FALSE or TRUE == g_IsGuard then
        if (env(ESD_ENV_DS3ActionCancelRequest, ACTION_ARM_L1) == TRUE or env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) <= 0) and TRUE == ExecGuard("W_Lower", "W_GuardEnd") then
            g_IsGuard = FALSE
            return 
        end
    elseif (env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L1) == TRUE or env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) > 0) and TRUE == ExecGuard("W_Lower", "W_GuardStart") then
        g_IsGuard = TRUE
        return 
    end
    if g_State ~= PLAYER_STATE_MOVE then
        if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
            return 
        end
        if TRUE == ExecWeaponChange() then
            return 
        end
    end
    if TRUE == ExecItem() then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == ExecMagic() then
        return 
    end
    if TRUE == ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1") then
        return 
    end
    if g_State ~= PLAYER_STATE_MOVE then
        if 1 <= g_GuardUpperCondition and g_GuardUpperCondition <= 2 then
            if TRUE == MoveStart("W_GuardOn_Upper") then
                return 
            end
        elseif is_guard_end == TRUE then
            if TRUE == MoveStart(nil) then
                return 
            end
        elseif TRUE == MoveStart("W_GuardOn_Upper") then
            return 
        end
    end
    
end

function WeaponChangeCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        g_IsHalfBlend = FALSE
        return 
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_DISENABLE_GUARD) == FALSE and env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) > 0 then
        g_IsGuard = TRUE
        if g_State == PLAYER_STATE_IDLE then
            if TRUE == ExecGuard("W_Lower", "W_GuardStart") then
                g_IsGuard = TRUE
                ResetRequest()
                g_IsHalfBlend = FALSE
                return 
            end
        elseif TRUE == ExecGuard("W_GuardStart_Upper", nil) then
            ResetRequest()
            return 
        end
    end
    if g_State == PLAYER_STATE_IDLE and 0 < g_MoveSpeedLevel then
        local f8383_local0 = Speed
        SETFIELD_R1 0 53 -33
        g_State = PLAYER_STATE_MOVE
        SetVariable("LocomotionState", PLAYER_STATE_MOVE)
        ExecEvent("W_Move")
        ExecEvent("W_WeaponChange_Upper_Continue")
        return 
    end
    if TRUE == ExecDamage() then
        return TRUE
    end
    if TRUE == ExecFallStart(FALSE) then
        return TRUE
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return TRUE
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return TRUE
    end
    if TRUE == ExecEvasion(FALSE) then
        return TRUE
    end
    if TRUE == ExecItem() then
        return TRUE
    end
    if TRUE == ExecAttack(r1, r2, l1, l2, b1, b2) then
        return TRUE
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return TRUE
    end
    
end

function ArrowChangeCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    if g_State ~= PLAYER_STATE_MOVE then
        CheckActionRequest()
        act(102, THROW_STATE_DEFAULT)
        act(103, THROW_STATE_DEFAULT)
        if TRUE == ExecDamage() then
            g_IsHalfBlend = FALSE
            return 
        end
        if env(ESD_ENV_IsGuardFromAtkCancel) == TRUE and env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) > 0 then
            g_IsGuard = TRUE
            if g_State == PLAYER_STATE_IDLE then
                if TRUE == ExecGuard("W_Lower", "W_GuardStart") then
                    g_IsGuard = TRUE
                    ResetRequest()
                    g_IsHalfBlend = FALSE
                    return 
                end
            elseif TRUE == ExecGuard("W_GuardStart_Upper", nil) then
                ResetRequest()
                return 
            end
        end
        if g_State == PLAYER_STATE_IDLE and 0 < g_MoveSpeedLevel then
            local f8384_local0 = Speed
            SETFIELD_R1 0 53 -36
            g_State = PLAYER_STATE_MOVE
            SetVariable("LocomotionState", PLAYER_STATE_MOVE)
            ExecEvent("W_Move")
            ExecEvent("W_ArrowChange_Upper_Continue")
            return 
        end
    end
    if g_State == PLAYER_STATE_MOVE and env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        ExecEvent("W_Lower")
        g_IsHalfBlend = FALSE
    end
    
end

function HandChangeCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecDamage() then
        g_IsHalfBlend = FALSE
        return 
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_DISENABLE_GUARD) == FALSE and env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) > 0 then
        if g_State == PLAYER_STATE_IDLE then
            if TRUE == ExecGuard("W_Lower", "W_GuardStart") then
                g_IsGuard = TRUE
                ResetRequest()
                g_IsHalfBlend = FALSE
                return 
            end
        elseif TRUE == ExecGuard("W_GuardStart_Upper") then
            ResetRequest()
            return 
        end
    end
    if TRUE == ExecItem() then
        return 
    end
    if g_State == PLAYER_STATE_IDLE and 0 < g_MoveSpeedLevel then
        local f8385_local0 = Speed
        SETFIELD_R1 0 56 -33
        g_State = PLAYER_STATE_MOVE
        SetVariable("LocomotionState", PLAYER_STATE_MOVE)
        ExecEvent("W_Move")
        ExecEvent("W_HandChange_Upper_Continue")
        return 
    end
    
end

function EventCommonFunction()
    if env(ESD_ENV_DS3HasThrowRequest) == TRUE then
        return FALSE
    end
    CheckActionRequest()
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if TRUE == ExecGuardOnCancelTiming() then
        return 
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecEvasion(FALSE) then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    local f8386_local0 = ExecAttack
    local f8386_local1 = "W_AttackRightLight1"
    local f8386_local2 = "W_AttackRightHeavy1Start"
    local f8386_local3, f8386_local4 = nil
    if f8386_local0(f8386_local1, f8386_local2, f8386_local3, f8386_local4, "W_AttackBothLight1", "W_AttackBothHeavy1") == TRUE then
        return 
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return 
    end
    if 7790 <= g_EventCommand and g_EventCommand <= 7794 then
        ExecEvent("W_PursuerIdle")
    end
    
end

function Idle_onActivate()
    ResetRequest()
    g_State = PLAYER_STATE_IDLE
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    testframecount = g_FrameCount
    
end

function Idle_onUpdate()
    IdleCommonFunction()
    
end

function DashStop_onActivate()
    ResetRequest()
    g_State = PLAYER_STATE_IDLE
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    
end

function DashStop_onUpdate()
    StopCommonFunction()
    g_GuardUpperCondition = 0
    
end

function RunStop_onActivate()
    ResetRequest()
    g_State = PLAYER_STATE_IDLE
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    
end

function RunStop_onUpdate()
    StopCommonFunction()
    g_GuardUpperCondition = 0
    
end

function WalkStop_onActivate()
    ResetRequest()
    g_State = PLAYER_STATE_IDLE
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    
end

function WalkStop_onUpdate()
    StopCommonFunction()
    g_GuardUpperCondition = 0
    
end

function Rolling_onActivate()
    ResetRequest()
    g_State = PLAYER_STATE_IDLE
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    
end

function Rolling_onUpdate()
    act(101, FALSE)
    local f8396_local0 = EvasionCommonFunction
    local f8396_local1 = FALSE
    local f8396_local2 = "W_AttackRightLightStep"
    local f8396_local3 = "W_AttackRightHeavy2Start"
    local f8396_local4, f8396_local5 = nil
    f8396_local0(f8396_local1, f8396_local2, f8396_local3, f8396_local4, f8396_local5, "W_AttackBothStep", "W_AttackBothHeavy2")
    
end

function BackStep_onActivate()
    ResetRequest()
    g_State = PLAYER_STATE_IDLE
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    act(2001, 1.2000000476837158)
    
end

function BackStep_onUpdate()
    act(101, FALSE)
    local f8398_local0 = EvasionCommonFunction
    local f8398_local1 = FALSE
    local f8398_local2 = "W_AttackRightLightDash"
    local f8398_local3 = "W_AttackRightHeavyKick"
    local f8398_local4, f8398_local5 = nil
    f8398_local0(f8398_local1, f8398_local2, f8398_local3, f8398_local4, f8398_local5, "W_AttackBothDash", "W_AttackBothHeavy2")
    
end

function Jump_onActivate()
    ResetRequest()
    g_State = PLAYER_STATE_IDLE
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    
end

function Jump_onUpdate()
    act(101, FALSE)
    local f8400_local0 = EvasionCommonFunction
    local f8400_local1 = TRUE
    local f8400_local2 = "W_AttackRightLightStep"
    local f8400_local3 = "W_AttackRightHeavy2Start"
    local f8400_local4, f8400_local5 = nil
    f8400_local0(f8400_local1, f8400_local2, f8400_local3, f8400_local4, f8400_local5, "W_AttackBothStep", "W_AttackBothHeavy2")
    
end

local DebugMoveTime = -1
function Move_onActivate()
    ResetRequest()
    SetVariable("LocomotionState", PLAYER_STATE_MOVE)
    g_State = PLAYER_STATE_MOVE
    
end

function Move_onUpdate()
    g_TimeMoveUpdate = g_FrameCount
    MoveCommonFunction()
    g_GuardUpperCondition = 0
    
end

function Move_onDeactivate()
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    SetVariable("LowerState", 0)
    g_State = PLAYER_STATE_IDLE
    
end

function GuardStart_onActivate()
    g_GuardCondition = 0
    ResetRequest()
    
end

function GuardStart_onUpdate()
    g_GuardCondition = 1
    GuardCommonFunction(FALSE)
    
end

function GuardOn_onActivate()
    ResetRequest()
    
end

function GuardOn_onUpdate()
    g_GuardCondition = 2
    GuardCommonFunction(FALSE)
    
end

function GuardEnd_onActivate()
    ResetRequest()
    
end

function GuardEnd_onUpdate()
    g_GuardCondition = 3
    GuardCommonFunction(TRUE)
    
end

function GuardStart_Upper_onActivate()
    g_GuardUpperCondition = 1
    ResetRequest()
    
end

function GuardStart_Upper_onUpdate()
    g_GuardUpperCondition = 1
    
end

function GuardOn_Upper_onActivate()
    ResetRequest()
    
end

function GuardOn_Upper_onUpdate()
    g_GuardUpperCondition = 2
    
end

function GuardEnd_Upper_onActivate()
    ResetRequest()
    
end

function GuardEnd_Upper_onUpdate()
    g_GuardUpperCondition = 3
    
end

function FallStart_onActivate()
    ResetRequest()
    g_FallStyle = FALL_DEFAULT
    
end

function FallStart_onUpdate()
    act(101, FALSE)
    ExecFalling(TRUE)
    
end

function FallJumpStart_onActivate()
    ResetRequest()
    g_FallStyle = FALL_DEFAULT
    g_IsJumpFall = TRUE
    
end

function FallJumpStart_onUpdate()
    act(101, FALSE)
    ExecFalling()
    
end

function FallLoop_onActivate()
    ResetRequest()
    
end

function FallLoop_onUpdate()
    act(101, FALSE)
    ExecFalling(TRUE)
    
end

function FallAttackStart_onActivate()
    ResetRequest()
    
end

function FallAttackStart_onUpdate()
    act(101, FALSE)
    ExecFalling()
    
end

function FallAttackLoop_onActivate()
    ResetRequest()
    
end

function FallAttackLoop_onUpdate()
    act(101, FALSE)
    ExecFalling(TRUE)
    
end

function FallAttackCancel_onActivate()
    ResetRequest()
    
end

function FallAttackCancel_onUpdate()
    act(101, FALSE)
    ExecFalling()
    
end

function FallDeath_onActivate()
    ResetRequest()
    
end

function FallDeath_onUpdate()
    act(101, FALSE)
    ExecFalling(FALSE)
    
end

function FallDeathLoop_onActivate()
    ResetRequest()
    
end

function FallDeathLoop_onUpdate()
    act(101, FALSE)
    ExecFalling(FALSE)
    
end

function Land_onActivate()
    ResetRequest()
    g_DisableFallAttack = FALSE
    
end

function Land_onUpdate()
    act(101, FALSE)
    LandCommonFunction()
    
end

function LandFallAttack_onActivate()
    ResetRequest()
    
end

function LandFallAttack_onUpdate()
    act(101, FALSE)
    LandCommonFunction()
    
end

function DamageSmall_onActivate()
    ResetRequest()
    
end

function DamageSmall_onUpdate()
    act(101, FALSE)
    act(2001, 0)
    DamageCommonFunction()
    
end

function DamageMiddle_onActivate()
    ResetRequest()
    
end

function DamageMiddle_onUpdate()
    act(101, FALSE)
    act(2001, 0)
    DamageCommonFunction()
    
end

function DamageLarge_onActivate()
    ResetRequest()
    
end

function DamageLarge_onUpdate()
    act(101, FALSE)
    act(2001, 0)
    DamageCommonFunction()
    
end

function DamageWeak_onActivate()
    ResetRequest()
    
end

function DamageWeak_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function DamageMinimum_onActivate()
    ResetRequest()
    
end

function DamageMinimum_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function DamageFling_onActivate()
    ResetRequest()
    
end

function DamageFling_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function DamageExLarge_onActivate()
    ResetRequest()
    
end

function DamageExLarge_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function DamagePush_onActivate()
    ResetRequest()
    
end

function DamagePush_onUpdate()
    act(101, FALSE)
    act(2001, 0)
    DamageCommonFunction()
    
end

function DamageSmallBlow_onActivate()
    ResetRequest()
    
end

function DamageSmallBlow_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function DamageBlast_onActivate()
    ResetRequest()
    
end

function DamageBlast_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function DamageBreath_onActivate()
    ResetRequest()
    
end

function DamageBreath_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function DamageParry_onActivate()
    ResetRequest()
    
end

function DamageParry_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function GuardDamageSmall_onActivate()
    ResetRequest()
    
end

function GuardDamageSmall_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function GuardDamageMiddle_onActivate()
    ResetRequest()
    
end

function GuardDamageMiddle_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function GuardDamageLarge_onActivate()
    ResetRequest()
    
end

function GuardDamageLarge_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function GuardBreak_onActivate()
    ResetRequest()
    
end

function GuardBreak_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function GuardDamageBreak_onActivate()
    ResetRequest()
    
end

function GuardDamageBreak_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function GuardBreakWall_onActivate()
    ResetRequest()
    
end

function GuardBreakWall_onUpdate()
    act(101, FALSE)
    DamageCommonFunction()
    
end

function DeathStart_onActivate()
    ResetRequest()
    
end

function DeathIdle_onActivate()
    ResetRequest()
    act(1101, TRUE)
    act(126, TRUE)
    
end

function DeathIdle_onDeactivate()
    act(1101, FALSE)
    act(126, FALSE)
    
end

function DeathTaintIdle_onActivate()
    ResetRequest()
    act(1101, TRUE)
    act(126, TRUE)
    
end

function DeathTaintIdle_onDeactivate()
    act(1101, FALSE)
    act(126, FALSE)
    
end

function DeathLand_onActivate()
    ResetRequest()
    
end

function DeathStone_onActivate()
    ResetRequest()
    
end

function DeathWeak_onActivate()
    ResetRequest()
    
end

function DeathSmallBlast_onActivate()
    ResetRequest()
    
end

function DeathFling_onActivate()
    ResetRequest()
    
end

function DeathBlast_onActivate()
    ResetRequest()
    
end

function DeathDrown_onActivate()
    ResetRequest()
    
end

function DeathFlame_onActivate()
    ResetRequest()
    
end

function DeathFlameBack_onActivate()
    ResetRequest()
    
end

function DeathCommon_onActivate()
    ResetRequest()
    
end

function DeathLadder_onActivate()
    ResetRequest()
    
end

function DeathLadder_onUpdate()
    g_IsLadder = FALSE
    
end

function DeathCommonBack_onActivate()
    ResetRequest()
    
end

function DeathTaint_onActivate()
    ResetRequest()
    
end

function QuickTurnLeft180_onUpdate()
    act(101, FALSE)
    QuickTurnCommonFunction()
    
end

function QuickTurnLeft90_onUpdate()
    act(101, FALSE)
    QuickTurnCommonFunction()
    
end

function QuickTurnRight180_onUpdate()
    act(101, FALSE)
    QuickTurnCommonFunction()
    
end

function QuickTurnRight90_onUpdate()
    act(101, FALSE)
    QuickTurnCommonFunction()
    
end

function AttackRight_onActivate()
    act(132)
    act(109, ATTACK_TYPE_DEFAULT)
    g_MoveSpeedLevelReal = 0
    local f8495_local0 = Speed
    local f8495_local1 = f8495_local0
    f8495_local0 = f8495_local0.SetSpeedZero
    f8495_local0(f8495_local1)
    
end

function AttackRightLight1_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightLight1_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight2", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight2", "W_AttackBothHeavy1")
    
end

function AttackRightLight1_onDeactivate()
    ExecEvent("LayerLeftArmOut")
    
end

function AttackRightLight2_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightLight2_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight3", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight3", "W_AttackBothHeavy1")
    
end

function AttackRightLight3_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightLight3_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight2", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight2", "W_AttackBothHeavy1")
    
end

function AttackRightLightKick_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightLightKick_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackRightLightStep_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightLightStep_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackRightLightDash_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightLightDash_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight3", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackRightHeavy1Start_onActivate()
    ResetRequest()
    g_IsCharging = 1
    
end

function AttackRightHeavy1Start_onUpdate()
    act(101, FALSE)
    g_IsCharging = 1
    if AttackCommonFunction() == TRUE then
        g_IsCharging = 0
        return 
    end
    if 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R2) then
        g_IsCharging = 0
    end
    if 1 == env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_CHARGING) and g_IsCharging == 0 then
        ExecEvent("W_AttackRightHeavy1End")
        return 
    end
    
end

function AttackRightHeavy1End_onActivate()
    g_IsAttackStart = TRUE
    ResetRequest()
    
end

function AttackRightHeavy1End_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy2Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy2")
    
end

function AttackRightHeavy1Charge_onActivate()
    ResetRequest()
    g_IsCharging = 1
    
end

function AttackRightHeavy1Charge_onUpdate()
    act(101, FALSE)
    g_IsCharging = 1
    if AttackCommonFunction() == TRUE then
        g_IsCharging = 0
        return 
    end
    if 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R2) then
        g_IsCharging = 0
        ExecEvent("W_AttackRightHeavy1End")
        return 
    end
    
end

function AttackRightHeavy1ChargeEnd_onActivate()
    g_IsAttackStart = TRUE
    ResetRequest()
    g_IsCharging = 0
    
end

function AttackRightHeavy1ChargeEnd_onUpdate()
    act(2001, 0.699999988079071)
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy2Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy2")
    
end

function AttackRightHeavy1_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightHeavy1_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy2", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy2")
    
end

function AttackRightHeavy1Sub_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightHeavy1Sub_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy2Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy2")
    
end

function AttackRightHeavy2Start_onActivate()
    ResetRequest()
    g_IsCharging = 1
    
end

function AttackRightHeavy2Start_onUpdate()
    act(101, FALSE)
    if AttackCommonFunction() == TRUE then
        return 
    end
    if env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R2) <= 0 then
        g_IsCharging = 0
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_CHARGING) == 1 and 0 == g_IsCharging then
        ExecEvent("W_AttackRightHeavy2End")
        return 
    end
    
end

function AttackRightHeavy2End_onActivate()
    g_IsAttackStart = TRUE
    ResetRequest()
    
end

function AttackRightHeavy2End_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackRightHeavy2Charge_onActivate()
    ResetRequest()
    g_IsCharging = 1
    
end

function AttackRightHeavy2Charge_onUpdate()
    if AttackCommonFunction() == TRUE then
        return 
    end
    act(101, FALSE)
    if env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R2) <= 0 then
        g_IsCharging = 0
        ExecEvent("W_AttackRightHeavy2End")
    end
    
end

function AttackRightHeavy2ChargeEnd_onActivate()
    g_IsAttackStart = TRUE
    ResetRequest()
    g_IsCharging = 0
    
end

function AttackRightHeavy2ChargeEnd_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackRightHeavy2_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightHeavy2_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackRightHeavyKick_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightHeavyKick_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLightStep", "W_AttackRightHeavy2Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackRightWhileGuard_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackRightWhileGuard_onUpdate()
    act(101, FALSE)
    AttackCommonFunction("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1", "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackLeft_onActivate()
    act(132)
    act(109, ATTACK_TYPE_DEFAULT)
    g_MoveSpeedLevelReal = 0
    local f8535_local0 = Speed
    local f8535_local1 = f8535_local0
    f8535_local0 = f8535_local0.SetSpeedZero
    f8535_local0(f8535_local1)
    
end

function AttackLeftParry_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackLeftParry_onUpdate()
    act(101, FALSE)
    local f8537_local0 = AttackCommonFunction
    local f8537_local1 = "W_AttackRightLight2"
    local f8537_local2 = "W_AttackRightHeavy1Start"
    local f8537_local3, f8537_local4, f8537_local5, f8537_local6 = nil
    f8537_local0(f8537_local1, f8537_local2, f8537_local3, f8537_local4, f8537_local5, f8537_local6)
    
end

function AttackLeftBash_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackLeftBash_onUpdate()
    act(101, FALSE)
    local f8539_local0 = AttackCommonFunction
    local f8539_local1 = "W_AttackRightLight2"
    local f8539_local2 = "W_AttackRightHeavy1Start"
    local f8539_local3, f8539_local4, f8539_local5, f8539_local6 = nil
    f8539_local0(f8539_local1, f8539_local2, f8539_local3, f8539_local4, f8539_local5, f8539_local6)
    
end

function AttackLeftLight1_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackLeftLight1_onUpdate()
    act(101, FALSE)
    local f8541_local0 = AttackCommonFunction
    local f8541_local1 = "W_AttackRightLight1"
    local f8541_local2 = "W_AttackRightHeavy1Start"
    local f8541_local3 = "W_AttackLeftLight2"
    local f8541_local4 = "W_AttackLeftHeavy1"
    local f8541_local5, f8541_local6 = nil
    f8541_local0(f8541_local1, f8541_local2, f8541_local3, f8541_local4, f8541_local5, f8541_local6)
    
end

function AttackLeftLight2_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackLeftLight2_onUpdate()
    act(101, FALSE)
    local f8543_local0 = AttackCommonFunction
    local f8543_local1 = "W_AttackRightLight1"
    local f8543_local2 = "W_AttackRightHeavy1Start"
    local f8543_local3 = "W_AttackLeftLight3"
    local f8543_local4 = "W_AttackLeftHeavy1"
    local f8543_local5, f8543_local6 = nil
    f8543_local0(f8543_local1, f8543_local2, f8543_local3, f8543_local4, f8543_local5, f8543_local6)
    
end

function AttackLeftLight3_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackLeftLight3_onUpdate()
    act(101, FALSE)
    local f8545_local0 = AttackCommonFunction
    local f8545_local1 = "W_AttackRightLight1"
    local f8545_local2 = "W_AttackRightHeavy1Start"
    local f8545_local3 = "W_AttackLeftLight2"
    local f8545_local4 = "W_AttackLeftHeavy1"
    local f8545_local5, f8545_local6 = nil
    f8545_local0(f8545_local1, f8545_local2, f8545_local3, f8545_local4, f8545_local5, f8545_local6)
    
end

function AttackLeftHeavy1_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackLeftHeavy1_onUpdate()
    act(101, FALSE)
    local f8547_local0 = AttackCommonFunction
    local f8547_local1 = "W_AttackRightLight1"
    local f8547_local2 = "W_AttackRightHeavy1Start"
    local f8547_local3 = "W_AttackLeftLight1"
    local f8547_local4 = "W_AttackLeftHeavy2"
    local f8547_local5, f8547_local6 = nil
    f8547_local0(f8547_local1, f8547_local2, f8547_local3, f8547_local4, f8547_local5, f8547_local6)
    
end

function AttackLeftHeavy2_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackLeftHeavy2_onUpdate()
    act(101, FALSE)
    local f8549_local0 = AttackCommonFunction
    local f8549_local1 = "W_AttackRightLight1"
    local f8549_local2 = "W_AttackRightHeavy1Start"
    local f8549_local3 = "W_AttackLeftLight1"
    local f8549_local4 = "W_AttackLeftHeavy1"
    local f8549_local5, f8549_local6 = nil
    f8549_local0(f8549_local1, f8549_local2, f8549_local3, f8549_local4, f8549_local5, f8549_local6)
    
end

function AttackBoth_onActivate()
    act(132)
    act(109, ATTACK_TYPE_BOTH_DEFAULT)
    g_MoveSpeedLevelReal = 0
    local f8550_local0 = Speed
    local f8550_local1 = f8550_local0
    f8550_local0 = f8550_local0.SetSpeedZero
    f8550_local0(f8550_local1)
    
end

function AttackBothLight1_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothLight1_onUpdate()
    act(101, FALSE)
    local f8552_local0 = AttackCommonFunction
    local f8552_local1 = "W_AttackRightLight2"
    local f8552_local2, f8552_local3, f8552_local4 = nil
    f8552_local0(f8552_local1, f8552_local2, f8552_local3, f8552_local4, "W_AttackBothLight2", "W_AttackBothHeavy1Sub")
    
end

function AttackBothLight2_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothLight2_onUpdate()
    act(101, FALSE)
    local f8554_local0 = AttackCommonFunction
    local f8554_local1 = "W_AttackRightLight3"
    local f8554_local2, f8554_local3, f8554_local4 = nil
    f8554_local0(f8554_local1, f8554_local2, f8554_local3, f8554_local4, "W_AttackBothLight3", "W_AttackBothHeavy1")
    
end

function AttackBothLight3_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothLight3_onUpdate()
    act(101, FALSE)
    local f8556_local0 = AttackCommonFunction
    local f8556_local1 = "W_AttackRightLight2"
    local f8556_local2, f8556_local3, f8556_local4 = nil
    f8556_local0(f8556_local1, f8556_local2, f8556_local3, f8556_local4, "W_AttackBothLight2", "W_AttackBothHeavy1Sub")
    
end

function AttackBothHeavy1_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothHeavy1_onUpdate()
    act(101, FALSE)
    local f8558_local0 = AttackCommonFunction
    local f8558_local1 = nil
    local f8558_local2 = "W_AttackRightHeavy1Start"
    local f8558_local3, f8558_local4 = nil
    f8558_local0(f8558_local1, f8558_local2, f8558_local3, f8558_local4, "W_AttackBothLight1", "W_AttackBothHeavy2")
    
end

function AttackBothHeavy1Sub_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothHeavy1Sub_onUpdate()
    act(101, FALSE)
    local f8560_local0 = AttackCommonFunction
    local f8560_local1 = nil
    local f8560_local2 = "W_AttackRightHeavy2Start"
    local f8560_local3, f8560_local4 = nil
    f8560_local0(f8560_local1, f8560_local2, f8560_local3, f8560_local4, "W_AttackBothLight1", "W_AttackBothHeavy2")
    
end

function AttackBothHeavy2_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothHeavy2_onUpdate()
    act(101, FALSE)
    local f8562_local0 = AttackCommonFunction
    local f8562_local1 = nil
    local f8562_local2 = "W_AttackRightHeavy1Start"
    local f8562_local3, f8562_local4 = nil
    f8562_local0(f8562_local1, f8562_local2, f8562_local3, f8562_local4, "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackBothDash_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothDash_onUpdate()
    act(101, FALSE)
    local f8564_local0 = AttackCommonFunction
    local f8564_local1, f8564_local2, f8564_local3, f8564_local4 = nil
    f8564_local0(f8564_local1, f8564_local2, f8564_local3, f8564_local4, "W_AttackBothStep", "W_AttackBothHeavy2")
    
end

function AttackBothStep_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothStep_onUpdate()
    act(101, FALSE)
    local f8566_local0 = AttackCommonFunction
    local f8566_local1, f8566_local2, f8566_local3, f8566_local4 = nil
    f8566_local0(f8566_local1, f8566_local2, f8566_local3, f8566_local4, "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackBothLightKick_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothLightKick_onUpdate()
    act(101, FALSE)
    local f8568_local0 = AttackCommonFunction
    local f8568_local1, f8568_local2, f8568_local3, f8568_local4 = nil
    f8568_local0(f8568_local1, f8568_local2, f8568_local3, f8568_local4, "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackBothHeavyKick_onActivate()
    ResetRequest()
    g_IsAttackStart = TRUE
    
end

function AttackBothHeavyKick_onUpdate()
    act(101, FALSE)
    local f8570_local0 = AttackCommonFunction
    local f8570_local1, f8570_local2, f8570_local3, f8570_local4 = nil
    f8570_local0(f8570_local1, f8570_local2, f8570_local3, f8570_local4, "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function AttackArrow_Activate()
    act(112, TRUE)
    act(113, TRUE)
    act(1100, TRUE)
    g_MoveSpeedLevelReal = 0
    local f8571_local0 = Speed
    local f8571_local1 = f8571_local0
    f8571_local0 = f8571_local0.SetSpeedZero
    f8571_local0(f8571_local1)
    
end

function AttackArrow_Deactivate()
    act(1100, FALSE)
    act(109, -1)
    act(112, FALSE)
    act(113, FALSE)
    
end

function AttackArrowStart_onActivate()
    ResetRequest()
    
end

function AttackArrowStart_onUpdate()
    act(101, FALSE)
    if ArrowCommonFunction() == TRUE then
        act(112, FALSE)
        return 
    end
    if TRUE == env(ESD_ENV_DS3GetGeneralTAEFlag, 0) then
        if TRUE == env(ESD_ENV_IsOutOfAmmo, 0) then
            SetVariable("NoAmmo", 1)
        else
            SetVariable("NoAmmo", 0)
        end
    end
    if TRUE == env(ESD_ENV_DS3GetGeneralTAEFlag, 0) and env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) > 0 then
        act(112, FALSE)
        ExecEvent("W_AttackArrowLoop")
        return 
    end
    
end

function AttackArrowFire_onActivate()
    ResetRequest()
    
end

function AttackArrowFire_onUpdate()
    act(101, FALSE)
    if ArrowCommonFunction() == TRUE then
        act(112, FALSE)
        return 
    end
    
end

function AttackArrowLoop_onActivate()
    ResetRequest()
    
end

function AttackArrowLoop_onUpdate()
    act(101, FALSE)
    if g_MoveSpeedLevel > 0 then
        MoveStart()
        return 
    end
    if ArrowCommonFunction() == TRUE then
        act(112, FALSE)
        return 
    end
    if 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) then
        ExecEvent("W_AttackArrowFire")
        return 
    end
    
end

function AttackArrowRelease_onActivate()
    ResetRequest()
    act(112, FALSE)
    
end

function AttackArrowRelease_onUpdate()
    act(101, FALSE)
    if ArrowCommonFunction() == TRUE then
        act(112, FALSE)
        return 
    end
    
end

function StepInFront_onActivate()
    ResetRequest()
    act(1001, -25)
    
end

function StepInFront_onUpdate()
    act(101, FALSE)
    local f8582_local0 = AttackCommonFunction
    local f8582_local1, f8582_local2, f8582_local3, f8582_local4 = nil
    f8582_local0(f8582_local1, f8582_local2, f8582_local3, f8582_local4, "StepInSlash", "StepInUppercut")
    f8582_local0 = Speed
    f8582_local1 = f8582_local0
    f8582_local0 = f8582_local0.SetSpeedDash
    f8582_local0(f8582_local1)
    
end

function StepInUppercut_onActivate()
    ResetRequest()
    
end

function StepInUppercut_onUpdate()
    act(101, FALSE)
    local f8584_local0 = AttackCommonFunction
    local f8584_local1, f8584_local2, f8584_local3, f8584_local4 = nil
    f8584_local0(f8584_local1, f8584_local2, f8584_local3, f8584_local4, "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function StepInSlash_onActivate()
    ResetRequest()
    
end

function StepInSlash_onUpdate()
    act(101, FALSE)
    local f8586_local0 = AttackCommonFunction
    local f8586_local1, f8586_local2, f8586_local3, f8586_local4 = nil
    f8586_local0(f8586_local1, f8586_local2, f8586_local3, f8586_local4, "W_AttackBothLight1", "W_AttackBothHeavy1")
    
end

function StepInDashStart_onActivate()
    ResetRequest()
    SetVariable("LocomotionState", PLAYER_STATE_MOVE)
    g_State = PLAYER_STATE_MOVE
    
end

function StepInDashStart_onUpdate()
    g_TimeMoveUpdate = g_FrameCount
    g_GuardUpperCondition = 0
    
end

function StepInDashStart_onDeactivate()
    SetVariable("LocomotionState", PLAYER_STATE_IDLE)
    SetVariable("LowerState", 0)
    g_State = PLAYER_STATE_IDLE
    
end

function Spin_onActivate()
    ResetRequest()
    
end

function Spin_onUpdate()
    act(101, FALSE)
    local request = GetAttackRequest()
    if request == ATTACK_REQUEST_SPIN then
        ResetRequest()
        g_SpinAngle = g_MoveAngle
        SetVariable("SpinAngle", g_SpinAngle)
        ExecEvent("SpinSelftrans")
        act(1001, -25)
        return TRUE
    end
    local f8591_local0 = AttackCommonFunction
    local f8591_local1 = "W_AttackRightLightStep"
    local f8591_local2 = "W_AttackRightHeavy2Start"
    local f8591_local3, f8591_local4 = nil
    f8591_local0(f8591_local1, f8591_local2, f8591_local3, f8591_local4, "W_AttackBothStep", "W_AttackBothHeavy2")
    
end

function SpinSelftrans_onActivate()
    ResetRequest()
    
end

function SpinSelftrans_onUpdate()
    act(101, FALSE)
    local request = GetAttackRequest()
    if request == ATTACK_REQUEST_SPIN then
        ResetRequest()
        g_SpinAngle = g_MoveAngle
        SetVariable("SpinAngle", g_SpinAngle)
        ExecEvent("Spin")
        act(1001, -25)
        return TRUE
    end
    local f8593_local0 = AttackCommonFunction
    local f8593_local1 = "W_AttackRightLightStep"
    local f8593_local2 = "W_AttackRightHeavy2Start"
    local f8593_local3, f8593_local4 = nil
    f8593_local0(f8593_local1, f8593_local2, f8593_local3, f8593_local4, "W_AttackBothStep", "W_AttackBothHeavy2")
    
end

function SpinLeftAttack_onActivate()
    ResetRequest()
    
end

function SpinLeftAttack_onUpdate()
    act(101, FALSE)
    local f8595_local0 = AttackCommonFunction
    local f8595_local1, f8595_local2, f8595_local3, f8595_local4 = nil
    f8595_local0(f8595_local1, f8595_local2, f8595_local3, f8595_local4, "W_SpinLeftAttack", "W_AttackBothHeavy1")
    
end

function SpinRightAttack_onActivate()
    ResetRequest()
    
end

function SpinRightAttack_onUpdate()
    act(101, FALSE)
    local f8597_local0 = AttackCommonFunction
    local f8597_local1, f8597_local2, f8597_local3, f8597_local4 = nil
    f8597_local0(f8597_local1, f8597_local2, f8597_local3, f8597_local4, "W_SpinRightAttack", "W_AttackBothHeavy1")
    
end

function DrawStanceIdle_onActivate()
    ResetRequest()
    
end

function DrawStanceIdle_onUpdate()
    SetIdleFlag()
    act(101, FALSE)
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if ExecDamage() == TRUE then
        return 
    end
    if ExecFallStart(FALSE) == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
        g_LastDrawStanceFrame = g_FrameCount
        ExecEvent("W_Idle")
        return 
    end
    if TRUE == env(ESD_ENV_DS3MovementRequest) and 0 < g_MoveSpeedLevel then
        ExecEvent("W_DrawStanceMove")
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if env(ESD_ENV_GetStamina) > 0 then
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) or TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) then
            SetVariable("RollingAngle", g_MoveAngle)
            ExecEvent("W_DrawStanceStep")
            act(1001, -20)
            return 
        end
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) and g_FrameCount - g_LastDrawStanceFrame > 5 then
            ExecEvent("W_DrawStanceAttackLight")
            return 
        elseif TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
            ExecEvent("W_DrawStanceAttackHeavy")
            return 
        end
    end
    
end

function DrawStanceMove_onActivate()
    ResetRequest()
    
end

function DrawStanceMove_onUpdate()
    SetIdleFlag()
    act(101, FALSE)
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if ExecDamage() == TRUE then
        return 
    end
    if ExecFallStart(FALSE) == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
        g_LastDrawStanceFrame = g_FrameCount
        ExecEvent("W_Move_Sync")
        return 
    end
    if g_MoveSpeedLevel <= 0 then
        ExecEvent("W_DrawStanceIdle")
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if env(ESD_ENV_GetStamina) > 0 then
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) or TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) then
            SetVariable("RollingAngle", g_MoveAngle)
            ExecEvent("W_DrawStanceStep")
            act(1001, -20)
            return 
        end
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) and g_FrameCount - g_LastDrawStanceFrame > 5 then
            ExecEvent("W_DrawStanceAttackLight")
            return 
        elseif TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
            ExecEvent("W_DrawStanceAttackHeavy")
            return 
        end
    end
    
end

function DrawStanceAttackLight_onActivate()
    ResetRequest()
    
end

function DrawStanceAttackLight_onUpdate()
    act(101, FALSE)
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if ExecDamage() == TRUE then
        return 
    end
    if ExecFallStart(FALSE) == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) then
        ExecEvent("W_Idle")
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
        g_LastDrawStanceFrame = g_FrameCount
        ExecEvent("W_DrawStanceMove")
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if env(ESD_ENV_GetStamina) > 0 then
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) or TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) then
            SetVariable("RollingAngle", g_MoveAngle)
            ExecEvent("W_DrawStanceStep")
            act(1001, -20)
            return 
        end
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) then
            ResetRequest()
            ExecEvent("W_DrawStanceAttackLight")
            return 
        elseif TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) then
            ExecEvent("W_DrawStanceAttackHeavy")
            return 
        end
    end
    
end

function DrawStanceAttackHeavy_onActivate()
    ResetRequest()
    
end

function DrawStanceAttackHeavy_onUpdate()
    act(101, FALSE)
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if ExecDamage() == TRUE then
        return 
    end
    if ExecFallStart(FALSE) == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
        g_LastDrawStanceFrame = g_FrameCount
        ExecEvent("W_Idle")
        return 
    end
    if TRUE == env(ESD_ENV_DS3MovementRequest) and 0 < g_MoveSpeedLevel then
        ExecEvent("W_DrawStanceMove")
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if env(ESD_ENV_GetStamina) > 0 then
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) or TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) then
            SetVariable("RollingAngle", g_MoveAngle)
            ExecEvent("W_DrawStanceStep")
            act(1001, -20)
            return 
        end
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) then
            ExecEvent("W_DrawStanceAttackLight")
            return 
        elseif TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) then
            ResetRequest()
            ExecEvent("W_DrawStanceAttackHeavy")
            return 
        end
    end
    
end

function DrawStanceAttackDashLight_onActivate()
    ResetRequest()
    
end

function DrawStanceAttackDashLight_onUpdate()
    act(101, FALSE)
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    if ExecDamage() == TRUE then
        return 
    end
    if ExecFallStart(FALSE) == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) then
        ExecEvent("W_Idle")
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
        g_LastDrawStanceFrame = g_FrameCount
        ExecEvent("W_DrawStanceMove")
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if env(ESD_ENV_GetStamina) > 0 then
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) or TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) then
            SetVariable("RollingAngle", g_MoveAngle)
            ExecEvent("W_DrawStanceStep")
            act(1001, -20)
            return 
        end
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) then
            ResetRequest()
            ExecEvent("W_DrawStanceAttackLight")
            return 
        elseif TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) then
            ExecEvent("W_DrawStanceAttackHeavy")
            return 
        end
    end
    
end

function DrawStanceAttackDashHeavy_onActivate()
    ResetRequest()
    
end

function DrawStanceAttackDashHeavy_onUpdate()
    act(101, FALSE)
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    act(2001, 1.2000000476837158)
    if ExecDamage() == TRUE then
        return 
    end
    if ExecFallStart(FALSE) == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
        g_LastDrawStanceFrame = g_FrameCount
        ExecEvent("W_Idle")
        return 
    end
    if TRUE == env(ESD_ENV_DS3MovementRequest) and 0 < g_MoveSpeedLevel then
        ExecEvent("W_DrawStanceMove")
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if env(ESD_ENV_GetStamina) > 0 then
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) or TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) then
            SetVariable("RollingAngle", g_MoveAngle)
            ExecEvent("W_DrawStanceStep")
            act(1001, -20)
            return 
        end
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) then
            ExecEvent("W_DrawStanceAttackLight")
            return 
        elseif TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) then
            ResetRequest()
            ExecEvent("W_DrawStanceAttackHeavy")
            return 
        end
    end
    
end

function DrawStanceStep_onActivate()
    ResetRequest()
    
end

function DrawStanceStep_onUpdate()
    act(101, FALSE)
    act(102, THROW_STATE_DEFAULT)
    act(103, THROW_STATE_DEFAULT)
    act(2001, 0.699999988079071)
    if ExecDamage() == TRUE then
        return 
    end
    if ExecFallStart(FALSE) == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_L2) and g_FrameCount - g_LastDrawStanceFrame > 5 then
        g_LastDrawStanceFrame = g_FrameCount
        ExecEvent("W_Idle")
        return 
    end
    if TRUE == env(ESD_ENV_DS3MovementRequest) and 0 < g_MoveSpeedLevel then
        ExecEvent("W_DrawStanceMove")
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if TRUE == ExecItem() then
        return 
    end
    if env(ESD_ENV_GetStamina) > 0 then
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_ROLLING) or TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_BACKSTEP) then
            SetVariable("RollingAngle", g_MoveAngle)
            ExecEvent("W_DrawStanceStep")
            ResetRequest()
            act(1001, -20)
            return 
        end
        if TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R1) then
            if TRUE == env(ESD_ENV_DS3GetGeneralTAEFlag, 11) then
                ExecEvent("W_DrawStanceAttackDashLight")
                return 
            else
                ExecEvent("W_DrawStanceAttackLight")
                return 
            end
        elseif TRUE == env(ESD_ENV_DS3ActionRequest, ACTION_ARM_R2) then
            if TRUE == env(ESD_ENV_DS3GetGeneralTAEFlag, 11) then
                ExecEvent("W_DrawStanceAttackDashHeavy")
                return 
            else
                ExecEvent("W_DrawStanceAttackHeavy")
                return 
            end
        end
    end
    
end

function QuickItemThrowKnife_onActivate()
    ResetRequest()
    
end

function QuickItemThrowKnife_onUpdate()
    act(101, FALSE)
    AttackCommonFunction(g_r1, g_r2, g_l1, g_l2, g_b1, g_b2)
    
end

function WeaponChangeStart_onActivate()
    ResetRequest()
    
end

function WeaponChangeStart_onUpdate()
    g_IsHalfBlend = TRUE
    WeaponChangeCommonFunction()
    
end

function WeaponChangeEnd_onActivate()
    ResetRequest()
    
end

function WeaponChangeEnd_onUpdate()
    g_IsHalfBlend = TRUE
    WeaponChangeCommonFunction()
    if TRUE == env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_WEAPONCHANGE_END) then
        g_IsHalfBlend = FALSE
        if g_State == PLAYER_STATE_MOVE then
            ExecEvent("W_Lower")
            return 
        else
            ExecEvents("W_Lower", "Idle_wild")
            return 
        end
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    
end

function WeaponQuickChange_onActivate()
    ResetRequest()
    
end

function WeaponQuickChange_onUpdate()
    act(101, FALSE)
    if ExecDamage() == TRUE then
        return TRUE
    end
    if ExecFallStart(FALSE) == TRUE then
        return TRUE
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return TRUE
    end
    if ExecHandChange(HAND_RIGHT, FALSE) == TRUE then
        return TRUE
    end
    if ExecEvasion(FALSE) == TRUE then
        return TRUE
    end
    if TRUE == ExecItem() then
        return TRUE
    end
    if TRUE == ExecAttack(g_r1, g_r2, g_l1, g_l2, g_b1, g_b2) then
        return TRUE
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return TRUE
    end
    
end

function HandChangeStart_onActivate()
    ResetRequest()
    
end

function HandChangeStart_onUpdate()
    if g_State == PLAYER_STATE_MOVE then
        g_IsHalfBlend = TRUE
    end
    HandChangeCommonFunction()
    
end

function HandChangeEnd_onActivate()
    ResetRequest()
    
end

function HandChangeEnd_onUpdate()
    if g_State == PLAYER_STATE_MOVE then
        g_IsHalfBlend = TRUE
    end
    HandChangeCommonFunction()
    if TRUE == env(ESD_ENV_DS3GetGeneralTAEFlag, TAE_FLAG_WEAPONCHANGE_END) then
        g_IsHalfBlend = FALSE
        if g_State == PLAYER_STATE_MOVE then
            ExecEvent("W_Lower")
            return 
        else
            ExecEvents("W_Lower", "Idle_wild")
            return 
        end
    end
    if TRUE == ExecHandChange(HAND_RIGHT, FALSE) then
        return 
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    
end

function HandQuickChange_onActivate()
    ResetRequest()
    
end

function HandQuickChange_onUpdate()
    act(101, FALSE)
    if ExecDamage() == TRUE then
        return TRUE
    end
    if ExecFallStart(FALSE) == TRUE then
        return TRUE
    end
    if TRUE == ExecGuardOnCancelTiming() then
        return TRUE
    end
    if TRUE == ExecWeaponChange() then
        return 
    end
    if ExecEvasion(FALSE) == TRUE then
        return TRUE
    end
    if TRUE == ExecItem() then
        return TRUE
    end
    if TRUE == ExecAttack(g_r1, g_r2, g_l1, g_l2, g_b1, g_b2) then
        return TRUE
    end
    if TRUE == MoveStart(nil) then
        g_TimeMoveStop = -1
        return TRUE
    end
    
end

function ArrowChange_onActivate()
    ResetRequest()
    
end

function ArrowChange_onUpdate()
    g_IsHalfBlend = TRUE
    ArrowChangeCommonFunction()
    
end

function ItemWeaponRecover_onActivate()
    ResetRequest()
    
end

function ItemWeaponRecover_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemWeaponEnchant_onActivate()
    ResetRequest()
    
end

function ItemWeaponEnchant_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemThrowKnife_onActivate()
    ResetRequest()
    
end

function ItemThrowKnife_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemThrowBottle_onActivate()
    ResetRequest()
    
end

function ItemThrowBottle_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemMeganeStart_onActivate()
    ResetRequest()
    
end

function ItemMeganeStart_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemMeganeLoop_onActivate()
    ResetRequest()
    
end

function ItemMeganeLoop_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemMeganeEnd_onActivate()
    ResetRequest()
    
end

function ItemMeganeEnd_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemWeaponRepair_onActivate()
    ResetRequest()
    
end

function ItemWeaponRepair_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemSoul_onActivate()
    ResetRequest()
    
end

function ItemSoul_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemDrinkStart_onActivate()
    ResetRequest()
    
end

function ItemDrinkStart_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemDrinkNothing_onActivate()
    ResetRequest()
    
end

function ItemDrinkNothing_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemDrinking_onActivate()
    ResetRequest()
    
end

function ItemDrinking_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemDrinkEnd_onActivate()
    ResetRequest()
    
end

function ItemDrinkEnd_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemInvalid_onActivate()
    ResetRequest()
    
end

function ItemInvalid_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemShockWeaveStart_onActivate()
    ResetRequest()
    
end

function ItemShockWeaveStart_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function ItemShockWeaveEnd_onActivate()
    ResetRequest()
    
end

function ItemShockWeaveEnd_onUpdate()
    act(101, FALSE)
    ItemCommonFunction()
    
end

function Gesture_onActivate()
    ResetRequest()
    
end

function Gesture_onUpdate()
    act(101, FALSE)
    GestureCommonFunction()
    
end

function MagicLaunch_onActivate()
    ResetRequest()
    g_MagicCondition = 1
    g_IsMagicCharging = 1
    
end

function MagicLaunch_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 1
    if MagicCommonFunction() == TRUE then
        return 
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 1) == 1 then
        if hkbGetVariable("IndexMagicHand") == 0 and 1 <= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L2) then
            ExecEvent("W_MagicDouble")
            return 
        elseif 1 == hkbGetVariable("IndexMagicHand") and 1 <= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R2) then
            ExecEvent("W_MagicDouble")
            return 
        end
    end
    if hkbGetVariable("IndexMagicHand") == 0 and env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) <= 0 then
        g_IsMagicCharging = 0
    elseif 1 == hkbGetVariable("IndexMagicHand") and env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) <= 0 then
        g_IsMagicCharging = 0
    end
    if 1 == env(ESD_ENV_DS3GetGeneralTAEFlag, 0) and 1 == g_IsMagicCharging then
        ExecEvent("W_MagicCharge")
        return 
    end
    
end

function MagicLaunch_onDeactivate()
    g_MagicCondition = 0
    
end

function MagicDouble_onActivate()
    ResetRequest()
    SetVariable("MagicChargeIndex", 0)
    chargetime = 0
    g_MagicCondition = 1
    g_IsMagicCharging = 1
    
end

function MagicDouble_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 1
    if MagicCommonFunction() == TRUE then
        return 
    end
    if hkbGetVariable("IndexMagicHand") == 0 and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) then
        g_IsMagicCharging = 0
    elseif 1 == hkbGetVariable("IndexMagicHand") and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) then
        g_IsMagicCharging = 0
    end
    if 1 == env(ESD_ENV_DS3GetGeneralTAEFlag, 0) then
        if 1 == g_IsMagicCharging then
            SetVariable("MagicChargeIndex", 0)
            chargetime = 0
            ExecEvent("W_MagicChargeDouble")
            return 
        else
            g_IsMagicCharging = 0
            SetVariable("MagicChargeIndex", 0)
            chargetime = 0
            ExecEvent("W_MagicDoubleFire")
            return 
        end
    end
    
end

function MagicDouble_onDeactivate()
    g_MagicCondition = 0
    
end

local chargestart = 0
local chargetime = 0
function MagicCharge_onActivate()
    ResetRequest()
    g_MagicCondition = 1
    g_IsMagicCharging = 1
    local f8668_local0 = g_FrameCount
    SETUPVAL_R1 0 0 0
    
end

function MagicCharge_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 1
    if MagicCommonFunction() == TRUE then
        ResetRequest()
        SetVariable("MagicChargeIndex", 0)
        g_IsMagicCharging = 0
        g_MagicCondition = 0
        return 
    end
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 1) == 1 then
        if 0 == hkbGetVariable("IndexMagicHand") and 1 <= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L2) then
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicDouble")
            return 
        elseif 1 == hkbGetVariable("IndexMagicHand") and 1 <= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R2) then
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicDouble")
            return 
        end
    end
    if 0 < g_MoveSpeedLevel then
        ExecEvents("W_Move", "W_Magic_Upper_Continue")
    end
    if 0 == hkbGetVariable("IndexMagicHand") and 0 < env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) then
        ExecEvents("LayerLeftArmIn", "W_AttackRightLight1")
    end
    if 0 == hkbGetVariable("IndexMagicHand") and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) then
        g_IsMagicCharging = 0
    elseif 1 == hkbGetVariable("IndexMagicHand") and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) then
        g_IsMagicCharging = 0
    end
    if 0 == hkbGetVariable("IndexMagicHand") and 0 <= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) then
        chargetime = g_FrameCount - chargestart
    elseif 1 == hkbGetVariable("IndexMagicHand") and 0 <= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) then
         = g_FrameCount - chargestart
    end
    if chargetime >= 60 then
        SetVariable("MagicChargeIndex", 1)
    end
    if 0 == hkbGetVariable("IndexMagicHand") and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) then
        if 1 == hkbGetVariable("MagicChargeIndex") then
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicChargeFire")
            return 
        else
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicFire")
            return 
        end
    elseif 1 == hkbGetVariable("IndexMagicHand") and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) then
        if 1 == hkbGetVariable("MagicChargeIndex") then
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicChargeFire")
            return 
        else
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicFire")
            return 
        end
    end
    
end

function MagicCharge_onDeactivate()
    g_MagicCondition = 0
    
end

function MagicChargeDouble_onActivate()
    ResetRequest()
    g_MagicCondition = 1
    g_IsMagicCharging = 1
    local f8671_local0 = g_FrameCount
    SETUPVAL_R1 0 0 0
    
end

function MagicChargeDouble_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 1
    if MagicCommonFunction() == TRUE then
        ResetRequest()
        SetVariable("MagicChargeIndex", 0)
        g_IsMagicCharging = 0
        g_MagicCondition = 0
        return 
    end
    if 0 < g_MoveSpeedLevel then
        ExecEvents("W_Move", "W_Magic_Upper_Continue")
    end
    if 0 == hkbGetVariable("IndexMagicHand") and 0 <= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) then
        chargetime = g_FrameCount - chargestart
    elseif 1 == hkbGetVariable("IndexMagicHand") and 0 <= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) then
         = g_FrameCount - chargestart
    end
    if chargetime >= 60 then
        SetVariable("MagicChargeIndex", 1)
    end
    if 0 == hkbGetVariable("IndexMagicHand") and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_L1) then
        if 1 == hkbGetVariable("MagicChargeIndex") then
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicChargeDoubleFire")
            return 
        else
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEventw("W_Lower", "W_MagicDoubleFire")
            return 
        end
    elseif 1 == hkbGetVariable("IndexMagicHand") and 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_R1) then
        if 1 == hkbGetVariable("MagicChargeIndex") then
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicChargeDoubleFire")
            return 
        else
            g_IsMagicCharging = 0
            g_MagicCondition = 0
            SetVariable("MagicChargeIndex", 0)
            ExecEvents("W_Lower", "W_MagicDoubleFire")
            return 
        end
    end
    
end

function MagicFire_onActivate()
    ResetRequest()
    g_MagicCondition = 2
    
end

function MagicFire_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 2
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        if g_State == PLAYER_STATE_MOVE then
            ExecEvent("W_Lower")
        else
            ExecEvents("W_Lower", "Idle_wild")
        end
    end
    if TRUE == MagicCommonFunction() then
        return 
    end
    
end

function MagicFire_onDeactivate()
    g_MagicCondition = 0
    
end

function MagicChargeFire_onActivate()
    ResetRequest()
    g_MagicCondition = 2
    
end

function MagicChargeFire_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 2
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        if g_State == PLAYER_STATE_MOVE then
            ExecEvent("W_Lower")
        else
            ExecEvents("W_Lower", "Idle_wild")
        end
    end
    if TRUE == MagicCommonFunction() then
        return 
    end
    
end

function MagicChargeFire_onDeactivate()
    g_MagicCondition = 0
    
end

function MagicDoubleFire_onActivate()
    ResetRequest()
    g_MagicCondition = 2
    
end

function MagicDoubleFire_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 2
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        if g_State == PLAYER_STATE_MOVE then
            ExecEvent("W_Lower")
        else
            ExecEvents("W_Lower", "Idle_wild")
        end
    end
    if TRUE == MagicCommonFunction() then
        return 
    end
    
end

function MagicDoubleFire_onDeactivate()
    g_MagicCondition = 0
    
end

function MagicChargeDoubleFire_onActivate()
    ResetRequest()
    g_MagicCondition = 2
    
end

function MagicChargeDoubleFire_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 2
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        if g_State == PLAYER_STATE_MOVE then
            ExecEvent("W_Lower")
        else
            ExecEvents("W_Lower", "Idle_wild")
        end
    end
    if TRUE == MagicCommonFunction() then
        return 
    end
    
end

function MagicChargeDoubleFire_onDeactivate()
    g_MagicCondition = 0
    
end

function MagicInvalid_onActivate()
    ResetRequest()
    g_MagicCondition = 3
    
end

function MagicInvalid_onUpdate()
    act(101, FALSE)
    g_MagicCondition = 3
    if MagicCommonFunction() == TRUE then

    else

    end
    
end

function MagicInvalid_onDeactivate()
    g_MagicCondition = 0
    
end

function Throw_onActivate()
    local ThrowId = env(ESD_ENV_GetThrowAnimID)
    SetVariable("ThrowID", ThrowId)
    
end

function Throw_onDeactivate()
    act(135)
    act(139)
    
end

function ThrowAtk_onActivate()
    ResetRequest()
    ExecEvent("W_LowerContinue")
    
end

function ThrowAtk_onUpdate()
    local ThrowID = hkbGetVariable("ThrowID")
    act(101, FALSE)
    if ThrowCommonFunction() == TRUE then
        act(135)
        act(139)
    end
    
end

function ThrowDef_onActivate()
    ResetRequest()
    ExecEvent("W_LowerContinue")
    
end

function ThrowDef_onUpdate()
    act(101, FALSE)
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE and 0 >= g_HP then
        ExecEvent("ThrowDeath")
        return 
    end
    if env(ESD_ENV_IsThrowSuccess) == TRUE then
        ExecEvent("W_ThrowEscape")
        return 
    end
    if TRUE == ThrowCommonFunction() then
        act(135)
        act(139)
        return 
    end
    
end

function ThrowCollision_onActivate()
    ResetRequest()
    
end

function ThrowCollision_onUpdate()
    act(101, FALSE)
    if env(ESD_ENV_IsTruelyLanding) == TRUE then

    else

    end
    if TRUE == ThrowCollisionCommonFunction() then
        act(135)
        act(139)
    end
    
end

function ThrowFall_onActivate()
    ResetRequest()
    
end

function ThrowFall_onUpdate()
    act(101, FALSE)
    ThrowCollisionCommonFunction()
    
end

function ThrowLand_onActivate()
    ResetRequest()
    
end

function ThrowLand_onUpdate()
    act(101, FALSE)
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE and 0 >= g_HP then
        ExecEvent("ThrowLandDeath")
    end
    
end

function ThrowEscape_onActivate()
    ResetRequest()
    
end

function ThrowEscape_onUpdate()
    act(101, FALSE)
    if ThrowCommonFunction() == TRUE then
        act(135)
        act(139)
        return 
    end
    
end

function ThrowLandDeath_onActivate()
    act(136, THROW_TYPE_DEATH)
    
end

function ThrowLandDeath_onUpdate()
    act(101, FALSE)
    
end

function ThrowLandDeathIdle_onActivate()
    act(136, THROW_TYPE_INVALID)
    
end

function ThrowLandDeathIdle_onUpdate()
    act(101, FALSE)
    
end

function ThrowDeath_onActivate()
    act(136, THROW_TYPE_DEATH)
    
end

function ThrowDeath_onUpdate()
    act(101, FALSE)
    
end

function ThrowDeathIdle_onActivate()
    act(136, THROW_TYPE_INVALID)
    
end

function ThrowDeathIdle_onUpdate()
    act(101, FALSE)
    
end

local TestFlame = -1
local TestBlendrate = 0
local EVENT_BLEND_RATE = 30
function Event_onActivate()
    if hkbGetVariable("TestIsEventBlend") then
        TestFlame = -1
        SetVariable("TestEventBlend_Move", 1)
        SetVariable("TestEventBlend_Event", 0)
        TestBlendrate = 0
        EVENT_BLEND_RATE = hkbGetVariable("TestBlendRate")
    end
    
end

function Event_onUpdate()
    if hkbGetVariable("TestIsEventBlend") then
         = TestBlendrate + 1
        SetVariable("TestEventBlend_Move", 1 - TestBlendrate / EVENT_BLEND_RATE)
        SetVariable("TestEventBlend_Event", TestBlendrate / EVENT_BLEND_RATE)
    end
    
end

function Event7000_onActivate()
    ResetRequest()
    
end

function Event7000_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7110_onActivate()
    ResetRequest()
    
end

function Event7110_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7111_onActivate()
    ResetRequest()
    
end

function Event7111_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7112_onActivate()
    ResetRequest()
    
end

function Event7112_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7113_onActivate()
    ResetRequest()
    
end

function Event7113_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7114_onActivate()
    ResetRequest()
    
end

function Event7114_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7115_onActivate()
    ResetRequest()
    
end

function Event7115_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7120_onActivate()
    ResetRequest()
    
end

function Event7120_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7121_onActivate()
    ResetRequest()
    
end

function Event7121_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7410_onActivate()
    ResetRequest()
    
end

function Event7410_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7411_onActivate()
    ResetRequest()
    
end

function Event7411_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7412_onActivate()
    ResetRequest()
    
end

function Event7412_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7413_onActivate()
    ResetRequest()
    
end

function Event7413_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7414_onActivate()
    ResetRequest()
    
end

function Event7414_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7500_onActivate()
    ResetRequest()
    
end

function Event7500_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7501_onActivate()
    ResetRequest()
    
end

function Event7501_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7503_onActivate()
    ResetRequest()
    
end

function Event7503_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7520_onActivate()
    ResetRequest()
    
end

function Event7520_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7521_onActivate()
    ResetRequest()
    
end

function Event7521_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7522_onActivate()
    ResetRequest()
    
end

function Event7522_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event7905_onActivate()
    ResetRequest()
    
end

function Event7905_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event8000_onActivate()
    ResetRequest()
    
end

function Event8000_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event8002_onActivate()
    ResetRequest()
    
end

function Event8002_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event8279_onActivate()
    ResetRequest()
    
end

function Event8279_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event9998_onActivate()
    ResetRequest()
    ExecEvent("W_Idle")
    
end

function Event9999_onActivate()
    ResetRequest()
    
end

function Event9999_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event60732_onActivate()
    ResetRequest()
    
end

function Event60732_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event60733_onActivate()
    ResetRequest()
    
end

function Event60733_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event60750_onActivate()
    ResetRequest()
    
end

function Event60750_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event60760_onActivate()
    ResetRequest()
    
end

function Event60760_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event60770_onActivate()
    ResetRequest()
    
end

function Event60770_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event60780_onActivate()
    ResetRequest()
    
end

function Event60780_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event60790_onActivate()
    ResetRequest()
    
end

function Event60790_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

function Event60800_onActivate()
    ResetRequest()
    
end

function Event60800_onUpdate()
    act(101, FALSE)
    act(9102)
    EventCommonFunction()
    
end

local TestAbandonedTime = -1
function Abandoned_onActivate()
    local f8779_local0 = g_FrameCount
    SETUPVAL_R1 0 0 0
    
end

function Abandoned_onUpdate()
    if TestAbandonedTime + 20 < g_FrameCount and 100 < env(ESD_ENV_DS3ActionDuration, ACTION_ARM_ACTION) then
        IncNum(1)
        ExecEvent("W_DamageExLarge")
        act(108, 511099)
    end
    
end

function BonfireInitialize_onActivate()
    ResetRequest()
    
end

function BonfireInitialize_onUpdate()
    act(101, FALSE)
    act(9102)
    
end

function BonfireStart_onActivate()
    ResetRequest()
    
end

function BonfireStart_onUpdate()
    act(101, FALSE)
    if env(ESD_ENV_DS3GetGeneralTAEFlag, 0) == TRUE then
        act(9102)
    end
    
end

function BonfireLoop_onActivate()
    ResetRequest()
    
end

function BonfireLoop_onUpdate()
    act(101, FALSE)
    act(9102)
    
end

function BonfireEnd_onActivate()
    ResetRequest()
    
end

function BonfireEnd_onUpdate()
    act(101, FALSE)
    act(9102)
    
end

function CultIdle_onActivate()
    ResetRequest()
    
end

function CultIdle_onUpdate()
    act(2005, CULT_STATE_IDLE)
    if g_MoveSpeedLevel > 0 then
        act(108, 90000)
        act(2005, CULT_STATE_MOVE)
        ExecEvent("CultMove")
        return 
    end
    if 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_ACTION) then
        act(2005, CULT_STATE_RELESE)
        ExecEvent("CultRelease")
        return 
    end
    if ExecDamage() == TRUE then
        act(2005, CULT_STATE_RELESE)
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        act(2005, CULT_STATE_RELESE)
        return 
    end
    
end

function CultMove_onActivate()
    ResetRequest()
    
end

function CultMove_onUpdate()
    act(2005, CULT_STATE_MOVE)
    if g_MoveSpeedLevel <= 0 then
        act(2005, CULT_STATE_IDLE)
        act(108, 90001)
        ExecEvent("CultIdle")
        return 
    end
    if 0 >= env(ESD_ENV_DS3ActionDuration, ACTION_ARM_ACTION) then
        act(2005, CULT_STATE_RELESE)
        ExecEvent("CultRelease")
        return 
    end
    if ExecDamage() == TRUE then
        act(2005, CULT_STATE_FORCE_RELEASE)
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        act(2005, CULT_STATE_FORCE_RELEASE)
        return 
    end
    
end

function CultCatch_onActivate()
    ResetRequest()
    
end

function CultCatch_onUpdate()
    act(101, FALSE)
    if ExecDamage() == TRUE then
        act(2005, CULT_STATE_FORCE_RELEASE)
        return 
    end
    if ExecFallStart(FALSE) == TRUE then
        act(2005, CULT_STATE_FORCE_RELEASE)
        return 
    end
    
end

function CultRelease_onActivate()
    ResetRequest()
    
end

function CultRelease_onUpdate()
    act(101, FALSE)
    
end

function PursuerIdle_onActivate()
    ResetRequest()
    
end

function PursuerIdle_onUpdate()
    if g_EventCommand == 7796 or g_IsForceReturn == TRUE then
        g_IsForceReturn = TRUE
        ExecEvent("Idle_wild")
        return 
    end
    if g_MoveSpeedLevel > 0 then
        ExecEvent("PursuerMove")
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        return 
    end
    
end

function PursuerMove_onActivate()
    ResetRequest()
    
end

function PursuerMove_onUpdate()
    if g_EventCommand == 7796 or g_IsForceReturn == TRUE then
        g_IsForceReturn = TRUE
        ExecEvent("W_Move")
        return 
    end
    if g_MoveSpeedLevel <= 0 then
        ExecEvent("PursuerIdle")
        return 
    end
    if TRUE == ExecDamage() then
        return 
    end
    if TRUE == ExecFallStart(FALSE) then
        return 
    end
    
end

function Ladder_onActivate()
    act(138, FALSE)
    
end

function Ladder_onDeactivate()
    g_IsLadder = FALSE
    act(107, FALSE)
    act(138, TRUE)
    
end

function LadderStartBottom_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    
end

function LadderStartBottom_onUpdate()
    act(101, FALSE)
    LadderUpdate()
    
end

function LadderUpRight_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    
end

function LadderUpRight_onUpdate()
    act(101, FALSE)
    if LadderCommonFunction() == TRUE then
        return 
    end
    if TRUE == LadderUpdate() then
        return 
    end
    
end

function LadderUpLeft_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    
end

function LadderUpLeft_onUpdate()
    act(101, FALSE)
    if LadderCommonFunction() == TRUE then
        return 
    end
    if TRUE == LadderUpdate() then
        return 
    end
    
end

function LadderDownLeft_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    
end

function LadderDownLeft_onUpdate()
    act(101, FALSE)
    if LadderCommonFunction() == TRUE then
        return 
    end
    if TRUE == LadderUpdate() then
        return 
    end
    
end

function LadderDownRight_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    
end

function LadderDownRight_onUpdate()
    act(101, FALSE)
    if LadderCommonFunction() == TRUE then
        return 
    end
    if TRUE == LadderUpdate() then
        return 
    end
    
end

function LadderEndBottomLeft_onActivate()
    g_IsLadder = FALSE
    
end

function LadderEndBottomLeft_onUpdate()
    act(101, FALSE)
    
end

function LadderEndBottomRight_onActivate()
    g_IsLadder = FALSE
    
end

function LadderEndBottomRight_onUpdate()
    act(101, FALSE)
    
end

function LadderEndTopLeft_onActivate()
    g_IsLadder = FALSE
    
end

function LadderEndTopLeft_onUpdate()
    act(101, FALSE)
    
end

function LadderEndTopRight_onActivate()
    g_IsLadder = FALSE
    
end

function LadderEndTopRight_onUpdate()
    act(101, FALSE)
    
end

function LadderStartTop_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    
end

function LadderStartTop_onUpdate()
    act(101, FALSE)
    if LadderCommonFunction() == TRUE then
        return 
    end
    if TRUE == LadderUpdate() then
        return 
    end
    
end

function LadderIdleLeft_onActivate()
    ResetRequest()
    LadderSetEnterState(TRUE)
    act(133, 8)
    
end

function LadderIdleLeft_onUpdate()
    act(101, FALSE)
    g_IsLadderDamage = env(ESD_ENV_HasReceivedAnyDamage)
    if LadderUpdateIdle() == TRUE then
        return 
    end
    LadderAttack()
    
end

function LadderIdleRight_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    act(133, 9)
    
end

function LadderIdleRight_onUpdate()
    act(101, FALSE)
    g_IsLadderDamage = env(ESD_ENV_HasReceivedAnyDamage)
    if LadderUpdateIdle() == TRUE then
        return 
    end
    LadderAttack()
    
end

function LadderAttackUpRight_onActivate()
    ResetRequest()
    
end

function LadderAttackUpRight_onUpdate()
    act(101, FALSE)
    if LadderCommonFunction() == TRUE then
        return 
    end
    if TRUE == env(ESD_ENV_DS3IsMoveCancelPossible) then
        ExecEvent("W_LadderIdleLeft")
    end
    
end

function LadderAttackUpLeft_onActivate()
    ResetRequest()
    
end

function LadderAttackUpLeft_onUpdate()
    act(101, FALSE)
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE then
        ExecEvent("W_LadderIdleRight")
    end
    
end

function LadderAttackDownRight_onActivate()
    ResetRequest()
    
end

function LadderAttackDownRight_onUpdate()
    act(101, FALSE)
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE then
        ExecEvent("W_LadderIdleRight")
    end
    
end

function LadderAttackDownLeft_onActivate()
    ResetRequest()
    
end

function LadderAttackDownLeft_onUpdate()
    act(101, FALSE)
    if env(ESD_ENV_DS3IsMoveCancelPossible) == TRUE then
        ExecEvent("W_LadderIdleLeft")
    end
    
end

function LadderCoastStart_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    g_LadderExitCondition = LADDER_ACTION_COAST_RIGHT
    
end

function LadderCoastStart_onUpdate()
    act(101, FALSE)
    
end

function LadderCoastRight_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    g_LadderExitCondition = LADDER_ACTION_COAST_RIGHT
    
end

function LadderCoastRight_onUpdate()
    act(101, FALSE)
    LadderCoast(LADDER_HAND_RIGHT)
    
end

function LadderCoastStop_onActivate()
    ResetRequest()
    LadderSetEnterState(FALSE)
    g_LadderExitCondition = LADDER_ACTION_COAST_RIGHT
    
end

function LadderCoastStop_onUpdate()
    act(101, FALSE)
    
end

function LadderCoastLanding_onActivate()
    g_IsLadder = FALSE
    
end

function LadderCoastLanding_onUpdate()
    act(101, FALSE)
    
end

function LadderCoastLeft_onUpdate()
    act(101, FALSE)
    LadderCoast(LADDER_HAND_LEFT)
    
end

function LadderDamageLargeRight_onUpdate()
    act(101, FALSE)
    
end

function LadderDamageSmallRight_onUpdate()
    act(101, FALSE)
    
end

function LadderDamageLargeLeft_onUpdate()
    act(101, FALSE)
    
end

function LadderDamageSmallLeft_onUpdate()
    act(101, FALSE)
    
end

function LadderDeathStart_onActivate()
    act(140, -1)
    act(107, FALSE)
    g_IsLadder = FALSE
    
end

function LadderDeathStart_onUpdate()
    act(101, FALSE)
    
end

function LadderDeathLoop_onUpdate()
    act(101, FALSE)
    if env(ESD_ENV_IsLanding) == TRUE then
        ExecEvent("LadderDeathLand")
    end
    
end

function LadderDeathLand_onActivate()
    g_IsLadder = FALSE
    
end

function LadderDeathLand_onUpdate()
    act(101, FALSE)
    
end

function LadderDeathIdle_onUpdate()
    act(101, FALSE)
    
end

function Initialize()
    Speed = SpeedControll.New()
    LStick = Stick.New()
    local f8854_local0 = Speed
    local f8854_local1 = f8854_local0
    f8854_local0 = f8854_local0.SetStatePoints
    f8854_local0(f8854_local1, 0, 0, SPEED_STATE_START_DASH, 1, SPEED_STATE_START_DASH + 4, 1, MAX_SPEED_LEVEL, 2)
    
end

function SetDefaultFlag()
    act(102, THROW_STATE_INVALID)
    act(103, THROW_STATE_INVALID)
    if g_IsLadder == FALSE then
        act(133, LADDER_ACTION_INVALID)
    end
    act(109, ATTACK_TYPE_INVALID)
    act(101, TRUE)
    act(111, TRUE)
    if hkbIsNodeActive("Item_SM") then
        act(117, TRUE)
    else
        act(117, FALSE)
    end
    
end

function Update()
    act(147)
    SetVariable("EnablePowerRagdoll", false)
    g_MoveSpeedLevel = hkbGetVariable("MoveSpeedLevel")
    g_IsLockon = hkbGetVariable("IsLockon")
    g_MoveAngle = hkbGetVariable("MoveAngle")
    g_SpinAngle = hkbGetVariable("MoveAngle")
    g_HP = env(ESD_ENV_GetHP)
    g_FrameCount = g_FrameCount + 1
    g_EventCommand = env(ESD_ENV_GetCommandIDFromEvent, 0)
    local f8856_local0 = LStick
    local f8856_local1 = f8856_local0
    f8856_local0 = f8856_local0.ReserveLStick
    f8856_local0(f8856_local1)
    f8856_local0 = SetDefaultFlag
    f8856_local0()
    f8856_local0 = SetWeightIndex
    f8856_local0()
    f8856_local0 = env
    f8856_local0 = f8856_local0(2010)
    g_MaxStamina = f8856_local0
    f8856_local0 = env
    f8856_local0 = f8856_local0(1001)
    g_CurrentStamina = f8856_local0
    f8856_local0 = g_CurrentStamina
    f8856_local0 = f8856_local0 / g_MaxStamina
    g_StaminaPercentage = f8856_local0
    f8856_local0 = SetVariable
    f8856_local0("StaminaPercentage", g_StaminaPercentage)
    f8856_local0 = hkbGetVariable
    f8856_local0 = f8856_local0("IsRightFootForward")
    g_ForwardLeg = f8856_local0
    f8856_local0 = g_IsMagicCharging
    if f8856_local0 > 0 then

    else

    end
    
end

function ModifiersLayer_onGenerate()
    
end

global = {}
function dummy()
    
end

global.__index = function (table, element)
    return dummy
    
end

setmetatable(_G, global)

end
