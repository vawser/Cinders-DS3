REGISTER_GOAL(GOAL_FourKnightD237000_Battle, "FourKnightD237000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.1
local Att3003_Dist_min = 0
local Att3003_Dist_max = 3.5
local Att3005_Dist_min = 2.5
local Att3005_Dist_max = 4
local Att3006_Dist_min = 4
local Att3006_Dist_max = 6
local Att3007_Dist_min = 6
local Att3007_Dist_max = 7.5
local Att3009_Dist_min = 0
local Att3009_Dist_max = 4.1
REGISTER_GOAL_NO_UPDATE(GOAL_FourKnightD237000_Battle, 1)
FourKnightD237000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   local GetWellSpace_Odds = 100
   if ai:ChkNearLowHpFriend(1, 20) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1012775) and not ai:HasSpecialEffectId(TARGET_SELF, 5470) then
      if targetDist >= 8 then
         actPerArr[5] = 900
      elseif targetDist >= 4 then
         actPerArr[5] = 50
      elseif targetDist >= 2.5 then
         actPerArr[5] = 45
      else
         actPerArr[5] = 20
      end
   end
   if ai:IsInsideTargetRegion(TARGET_SELF, 1012775) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1012776) then
      actPerArr[1] = 40
      actPerArr[3] = 60
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1012775) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1012777) then
      actPerArr[6] = 100
   elseif targetDist >= 8 then
      actPerArr[1] = 40
      actPerArr[2] = 0
      actPerArr[3] = 60
      actPerArr[4] = 0
      actPerArr[9] = 0
   elseif targetDist >= 4 then
      actPerArr[1] = 25
      actPerArr[2] = 15
      actPerArr[3] = 15
      actPerArr[4] = 15
      actPerArr[7] = 15
      actPerArr[9] = 15
   elseif targetDist >= 2.5 then
      actPerArr[1] = 10
      actPerArr[2] = 15
      actPerArr[3] = 0
      actPerArr[4] = 50
      actPerArr[7] = 10
      actPerArr[9] = 15
   else
      actPerArr[1] = 0
      actPerArr[2] = 10
      actPerArr[3] = 0
      actPerArr[4] = 70
      actPerArr[7] = 10
      actPerArr[9] = 10
   end
   actFuncArr[1] = REGIST_FUNC(ai, goal, FourKnightD237000_Act01)
   defFuncParamTbl[2] = {Att3000_Dist_max, 0, 20, 40, nil, nil, nil, nil}
   actFuncArr[3] = REGIST_FUNC(ai, goal, FourKnightD237000_Act03)
   actFuncArr[4] = REGIST_FUNC(ai, goal, FourKnightD237000_Act04)
   actFuncArr[5] = REGIST_FUNC(ai, goal, FourKnightD237000_Act05)
   actFuncArr[6] = REGIST_FUNC(ai, goal, FourKnightD237000_Act06)
   actFuncArr[7] = REGIST_FUNC(ai, goal, FourKnightD237000_Act07)
   defFuncParamTbl[9] = {Att3003_Dist_max, 0, 40, 100, 3003, 3004, nil, nil}
   local atkAfterFunc = REGIST_FUNC(ai, goal, FourKnightD237000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, actPerArr, actFuncArr, atkAfterFunc, defFuncParamTbl)
end

FourKnightD237000_Act01 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act03 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if targetDist <= 5 then
      if fate <= 40 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 721, TARGET_ENE_0, 0.5, AI_DIR_TYPE_B, 7.5)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
      end
   elseif targetDist <= 10 then
      if fate <= 30 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0.5, AI_DIR_TYPE_B, 4.5)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist >= 5 then
   elseif fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 721, TARGET_ENE_0, 0.5, AI_DIR_TYPE_B, 7.5)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act06 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3009_Dist_max, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

FourKnightD237000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 10 then
   elseif fate <= 90 then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
      return true
   end
   return false
end

OnIf_237000 = function(ai, goal, codeNo)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local canStep701 = 0
   local canStep702 = 0
   local canStep703 = 0
   local canStep711 = 0
   local canStep712 = 0
   local canStep713 = 0
   local canStep721 = 0
   local canStep722 = 0
   local canStep723 = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 7.5) then
      canStep721 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 7.5) then
      canStep722 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 7.5) then
      canStep723 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 4.5) then
      canStep711 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 4.5) then
      canStep712 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 4.5) then
      canStep713 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3.5) then
      canStep701 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3.5) then
      canStep702 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 3.5) then
      canStep703 = 1
   end
   if canStep723 == 1 or canStep722 == 1 or canStep721 == 1 then
      if canStep721 == 1 or canStep723 == 0 and canStep722 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 721, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
      elseif fate3 <= 50 or canStep722 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 723, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 722, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      end
      return true
   elseif canStep713 == 1 or canStep712 == 1 or canStep711 == 1 then
      if canStep711 == 1 or canStep713 == 0 and canStep712 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif fate3 <= 50 or canStep712 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      end
      return true
   elseif canStep701 == 1 or canStep703 == 0 and canStep702 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 1)
   elseif fate3 <= 50 or canStep702 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 1)
   end
   return true
end

FourKnightD237000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FourKnightD237000Battle_Terminate = function(ai, goal)
end

FourKnightD237000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local canStep701 = 0
   local canStep702 = 0
   local canStep703 = 0
   local canStep711 = 0
   local canStep712 = 0
   local canStep713 = 0
   local canStep721 = 0
   local canStep722 = 0
   local canStep723 = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 7.5) then
      canStep721 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 7.5) then
      canStep722 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 7.5) then
      canStep723 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 4.5) then
      canStep711 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 4.5) then
      canStep712 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 4.5) then
      canStep713 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3.5) then
      canStep701 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3.5) then
      canStep702 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 3.5) then
      canStep703 = 1
   end
   local distNearRes = 3.5
   local oddsNearRes = 30
   if Damaged_Act(ai, goal, distNearRes, oddsNearRes) then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   end
   if ai:IsInterupt(INTERUPT_Damaged) and targetDist >= 6 then
      goal:ClearSubGoal()
      if fate <= 25 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      elseif fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      end
      return true
   end
   local distGuardBreak_Act = 3.1
   local oddsGuardBreak_Act = 50
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Int = 6.5
   local oddsMissSwing_Int = 50
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 8
   local oddsUseItem_Act = 15
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist <= 3.1 then
         if fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, Att3005_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) and fate <= 20 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
      return true
   end
   return false
end


