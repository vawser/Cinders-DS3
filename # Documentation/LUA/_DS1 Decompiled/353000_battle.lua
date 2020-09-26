REGISTER_GOAL(GOAL_LakeBeast353000_Battle, "LakeBeast353000Battle")
local Att3000_Dist_min = 29.5
local Att3000_Dist_max = 41
local Att3001_Dist_min = 37.6
local Att3001_Dist_max = 42.2
local Att3002_Dist_min = 36.4
local Att3002_Dist_max = 45.9
local Att3003_Dist_min = 52
local Att3003_Dist_max = 58.5
local Att3004_Dist_min = 61.7
local Att3004_Dist_max = 72
local Att3005_Dist_min = 38
local Att3005_Dist_max = 57.2
local Att3006_Dist_min = 42.9
local Att3006_Dist_max = 58.6
local Att3007_Dist_min = 39.8
local Att3007_Dist_max = 60
local Att3008_Dist_min = 61.5
local Att3008_Dist_max = 71.8
REGISTER_GOAL_NO_UPDATE(GOAL_LakeBeast353000_Battle, 1)
OnIf_353000 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistYSigned(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if codeNo == 0 then
      if targetDist >= 72 then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2, 4), TARGET_ENE_0, 0, 0, 0)
      elseif targetDist >= 40 then
         if fate <= 35 then
            goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2, 4), TARGET_ENE_0, 0, 0, 0)
         elseif fate <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, -1)
            LakeBeast353000_Act07(ai, goal)
         else
            local LeaveDist = targetDist + 10
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 5), TARGET_ENE_0, LeaveDist, TARGET_ENE_0, true, -1)
         end
      elseif fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2, 4), TARGET_ENE_0, 0, 0, 0)
      else
         local LeaveDist = targetDist + 10
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 5), TARGET_ENE_0, LeaveDist, TARGET_ENE_0, true, -1)
      end
   elseif codeNo == 1 then
      if targetDistY >= 5 and targetDist >= 67 then
         LakeBeast353000_Act05(ai, goal)
      elseif targetDistY >= 2.5 and targetDist >= 54 then
         if fate <= 80 then
            LakeBeast353000_Act11(ai, goal)
         else
            LakeBeast353000_Act05(ai, goal)
         end
      elseif targetDist >= 90 then
         LakeBeast353000_Act05(ai, goal)
      elseif targetDist >= 80 then
         if fate <= 50 then
            LakeBeast353000_Act05(ai, goal)
         else
            LakeBeast353000_Act11(ai, goal)
         end
      elseif targetDist >= 58 then
         if fate <= 90 then
            LakeBeast353000_Act11(ai, goal)
         else
            LakeBeast353000_Act05(ai, goal)
         end
      elseif targetDist >= 51 then
         LakeBeast353000_Act04(ai, goal)
      elseif targetDist >= 42.9 and targetDist <= 58.6 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 37) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and fate <= 80 then
         LakeBeast353000_Act09(ai, goal)
      elseif targetDist >= 39.8 and targetDist <= 60 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 28.4) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and fate <= 80 then
         LakeBeast353000_Act10(ai, goal)
      elseif targetDist >= 37.6 and targetDist <= 42.2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 49.2) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and fate <= 80 then
         LakeBeast353000_Act02(ai, goal)
      elseif targetDist >= 36.4 and targetDist <= 45.9 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 52.4) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and fate <= 80 then
         LakeBeast353000_Act03(ai, goal)
      elseif targetDist >= 41 then
         LakeBeast353000_Act08(ai, goal)
      elseif targetDist >= 38 then
         if fate <= 50 then
            LakeBeast353000_Act01(ai, goal)
         else
            LakeBeast353000_Act08(ai, goal)
         end
      else
         LakeBeast353000_Act01(ai, goal)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

LakeBeast353000Battle_Activate = function(ai, goal)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local GetWellSpace_Odds = 0
   ai:AddObserveRegion(0, TARGET_ENE_0, 1322703)
   ai:AddObserveRegion(1, TARGET_ENE_0, 1322704)
   ai:AddObserveRegion(2, TARGET_SELF, 1322705)
   ai:AddObserveRegion(3, TARGET_SELF, 1322706)
   local ApproachTarget_Odds = 0
   if ai:IsInsideTargetRegion(TARGET_SELF, 1322705) then
      if targetDist >= 72 then
         ApproachTarget_Odds = 100
      elseif targetDist >= 45.9 then
         ApproachTarget_Odds = 50
      else
         ApproachTarget_Odds = 20
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1322706) then
      if targetDist >= 72 then
         ApproachTarget_Odds = 100
      elseif targetDist >= 45.9 then
         ApproachTarget_Odds = 50
      else
         ApproachTarget_Odds = 20
      end
   else
      ApproachTarget_Odds = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local fateApproach = ai:GetRandam_Int(1, 100)
   if fateApproach <= ApproachTarget_Odds then
      LakeBeast353000_Act07(ai, goal)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   local fateGWS = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

LakeBeast353000_Act01 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 40, -1, 20)
end

LakeBeast353000_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 40)
end

LakeBeast353000_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, 40)
end

LakeBeast353000_Act04 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 60, -1, 20)
end

LakeBeast353000_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 70, -1, 20)
end

LakeBeast353000_Act06 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None)
end

LakeBeast353000_Act07 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1322705) then
      ai:SetEventMoveTarget(1322751)
      local A1 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322752)
      local A2 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322753)
      local A3 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322754)
      local A4 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322755)
      local A5 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322756)
      local A6 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      local minDist = math.min(A1, A2, A3, A4, A5, A6)
      if minDist == A1 then
         NearPoint = 1322751
      elseif minDist == A2 then
         NearPoint = 1322752
      elseif minDist == A3 then
         NearPoint = 1322753
      elseif minDist == A4 then
         NearPoint = 1322754
      elseif minDist == A5 then
         NearPoint = 1322755
      else
         NearPoint = 1322756
      end
   else
      ai:SetEventMoveTarget(1322761)
      local B1 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322762)
      local B2 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322763)
      local B3 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322764)
      local B4 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322765)
      local B5 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322766)
      local B6 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322767)
      local B7 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      local minDist = math.min(B1, B2, B3, B4, B5, B6, B7)
      if minDist == B1 then
         NearPoint = 1322761
      elseif minDist == B2 then
         NearPoint = 1322762
      elseif minDist == B3 then
         NearPoint = 1322763
      elseif minDist == B4 then
         NearPoint = 1322764
      elseif minDist == B5 then
         NearPoint = 1322765
      elseif minDist == B6 then
         NearPoint = 1322766
      else
         NearPoint = 1322767
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   ai:SetEventMoveTarget(NearPoint)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 1, TARGET_ENE_0, true, -1)
end

LakeBeast353000_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 45, -1, 20)
end

LakeBeast353000_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, 45)
end

LakeBeast353000_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, 45)
end

LakeBeast353000_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 70, -1, 20)
end

LakeBeast353000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LakeBeast353000Battle_Terminate = function(ai, goal)
end

LakeBeast353000Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true and ai:IsInsideTargetRegion(TARGET_SELF, 1322705) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1322703) then
      goal:ClearSubGoal()
      ai:SetTimer(0, 60)
      goal:AddSubGoal(GOAL_COMMON_Attack, 20, 3010, TARGET_ENE_0, DIST_Far, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true and ai:IsInsideTargetRegion(TARGET_SELF, 1322706) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1322704) then
      goal:ClearSubGoal()
      ai:SetTimer(0, 60)
      goal:AddSubGoal(GOAL_COMMON_Attack, 20, 3010, TARGET_ENE_0, DIST_Far, 0)
      return true
   end
   return false
end


