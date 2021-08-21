RegisterTableGoal(GOAL_EnemyTunableAttack, "GOAL_EnemyTunableAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyTunableAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyTunableAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), arg2:GetParam(1), arg2:GetParam(0), 0, 0, 0, 0, 0)
    return 
end

RegisterTableGoal(GOAL_EnemyTunableComboAttack, "GOAL_EnemyTunableComboAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyTunableComboAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyTunableComboAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, arg2:GetLife(), arg2:GetParam(1), arg2:GetParam(0), 0, 0, 0, 0, 0, 0)
    return 
end

RegisterTableGoal(GOAL_EnemyComboRepeat, "GOAL_EnemyComboRepeat")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyComboRepeat)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyComboRepeat, true)
Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, arg2:GetLife(), arg2:GetParam(1), arg2:GetParam(0), 0, 0, 0)
    return 
end

RegisterTableGoal(GOAL_EnemyComboFinal, "GOAL_EnemyComboFinal")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyComboFinal, true)
Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, arg2:GetLife(), arg2:GetParam(1), arg2:GetParam(0), 0, 0, 0)
    return 
end

return 
