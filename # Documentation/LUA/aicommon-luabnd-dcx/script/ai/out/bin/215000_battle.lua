-- Registration
RegisterTableGoal(GOAL_CrystalLizard_215000_Battle, "GOAL_CrystalLizard_215000_Battle")

local CrystalLizard215000Battle_Activate = Goal

-- Initiialization
CrystalLizard215000Battle_Activate.Initialize = function(ai, goal, func1_arg2, func1_arg3)
end

-- Activation
CrystalLizard215000Battle_Activate = Goal
CrystalLizard215000Battle_Activate.Activate = function(ai, goal, func2_arg2)
   Init_Pseudo_Global(goal, func2_arg2)
   goal:SetStringIndexedNumber("Dist_SideStep", 0)
   goal:SetStringIndexedNumber("Dist_BackStep", 0)
   
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   
   local targetDist = goal:GetDist(TARGET_ENE_0)
   local randomInt = goal:GetRandam_Int(1, 100)
   local param_doAdmirer = goal:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local eventNo = goal:GetEventRequest()
   local RUNAWAY_LIFETIME = 6
   
   if 0 == goal:GetNumber(0) then
      actPerArr[9] = 100
   else
      actPerArr[1] = 100
   end
   
   actFuncArr[1] = REGIST_FUNC(goal, func2_arg2, CrystalLizard215000_Act01)
   actFuncArr[9] = REGIST_FUNC(goal, func2_arg2, CrystalLizard215000_Act9)
   
   local atkAfterFunc = REGIST_FUNC(goal, func2_arg2, CrystalLizard215000_ActAfter_AdjustSpace)
   
   Common_Battle_Activate(goal, func2_arg2, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

-- Activate
CrystalLizard215000Battle_Activate = function(ai, goal, func3_arg2)
   local AttID = 3000
   local func3localVar4 = 999 - ai:GetMapHitRadius(TARGET_SELF)
   local func3localVar5 = -1
   local func3localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, AttID, TARGET_SELF, func3localVar4, func3localVar5, func3localVar6, 0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

-- Act 1
CrystalLizard215000_Act01 = CrystalLizard215000Battle_Activate
CrystalLizard215000Battle_Activate = function(ai, goal, func4_arg2)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, 100, TARGET_SELF, false, -1):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
   local AttID = 3000
   local func4localVar4 = 999 - ai:GetMapHitRadius(TARGET_SELF)
   local func4localVar5 = -1
   local func4localVar6 = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, AttID, TARGET_SELF, func4localVar4, func4localVar5, func4localVar6, 0, 0)
end

-- Act 9
CrystalLizard215000_Act9 = CrystalLizard215000Battle_Activate
CrystalLizard215000Battle_Activate = function(ai, goal, func5_arg2)
   goal:AddSubGoal(GOAL_Template991010_AfterAttackAct, 10)
end

-- Update
CrystalLizard215000_ActAfter_AdjustSpace = CrystalLizard215000Battle_Activate
CrystalLizard215000Battle_Activate = Goal
CrystalLizard215000Battle_Activate.Update = function(ai, goal, func6_arg2)
   return Update_Default_NoSubGoal(ai, goal, func6_arg2)
end

-- Terminate
CrystalLizard215000Battle_Activate = Goal
CrystalLizard215000Battle_Activate.Terminate = function(ai, goal, func7_arg2)
end

-- Interrupt
CrystalLizard215000Battle_Activate = Goal
CrystalLizard215000Battle_Activate.Interrupt_Damaged = function(ai, goal, func8_arg2)
   goal:Replaning()
   goal:SetNumber(0, 0)
end


