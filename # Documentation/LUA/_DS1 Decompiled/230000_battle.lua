REGISTER_GOAL(GOAL_HaikaiDemon230000_Battle, "HaikaiDemon230000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 3.8
local Att3002_Dist_min = 0
local Att3002_Dist_max = 4
local Att3003_Dist_min = 0
local Att3003_Dist_max = 8
local Att3005_Dist_min = 0
local Att3005_Dist_max = 7.5
local Att3006_Dist_min = -1.3
local Att3006_Dist_max = 0
local Att3007_Dist_min = 6.5
local Att3007_Dist_max = 8.7
local Att3008_Dist_min = 11.8
local Att3008_Dist_max = 13.5
local Att3009_Dist_min = 5.5
local Att3009_Dist_max = 25
REGISTER_GOAL_NO_UPDATE(GOAL_HaikaiDemon230000_Battle, 1)
HaikaiDemon230000Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local myThinkId = ai:GetNpcThinkParamID()
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local BattleArea01 = 0
   local BattleArea02 = 0
   local BattleArea03 = 0
   local BattleArea04 = 0
   local BattleArea05 = 0
   local ShootBattleArea01 = 0
   local ShootBattleArea02 = 0
   local CanStep = 1
   local LJump = 1
   if myThinkId == 230000 then
      BattleArea01 = 1302750
      BattleArea02 = 1302750
      BattleArea03 = 1302750
      BattleArea04 = 1302750
      BattleArea05 = 1302751
      ShootBattleArea01 = 1302752
      ShootBattleArea02 = 1302752
   elseif myThinkId == 230001 then
      BattleArea01 = 1502734
      BattleArea02 = 1502734
      BattleArea03 = 1502734
      BattleArea04 = 1502734
      BattleArea05 = 1502735
      ShootBattleArea01 = 1502731
      ShootBattleArea02 = 1502732
   elseif myThinkId == 230002 then
      BattleArea01 = 1502733
      BattleArea02 = 1502733
      BattleArea03 = 1502733
      BattleArea04 = 1502733
      BattleArea05 = 1502733
      ShootBattleArea01 = 1502731
      ShootBattleArea02 = 1502731
   elseif myThinkId == 230003 then
      BattleArea01 = 1012795
      BattleArea02 = 1012795
      BattleArea03 = 1012795
      BattleArea04 = 1012795
      BattleArea05 = 1012795
      ShootBattleArea01 = 1012796
      ShootBattleArea02 = 1012797
      LJump = 0
      if not ai:IsInsideTargetRegion(TARGET_SELF, BattleArea01) then
         CanStep = 0
      elseif myThinkId == 230004 then
         BattleArea01 = 1512760
         BattleArea02 = 1512760
         BattleArea03 = 1512760
         BattleArea04 = 1512760
         BattleArea05 = 1512760
         ShootBattleArea01 = 1512761
         ShootBattleArea02 = 1512762
         if not ai:IsInsideTargetRegion(TARGET_SELF, BattleArea01) then
            CanStep = 0
            LJump = 0
         elseif myThinkId == 230005 then
            BattleArea01 = 1412740
            BattleArea02 = 1412740
            BattleArea03 = 1412740
            BattleArea04 = 1412740
            BattleArea05 = 1412740
            ShootBattleArea01 = 1412741
            ShootBattleArea02 = 1412742
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      if ai:IsInsideTargetRegion(TARGET_ENE_0, BattleArea01) or ai:IsInsideTargetRegion(TARGET_ENE_0, BattleArea02) or ai:IsInsideTargetRegion(TARGET_ENE_0, BattleArea03) or ai:IsInsideTargetRegion(TARGET_ENE_0, BattleArea04) or ai:IsInsideTargetRegion(TARGET_ENE_0, BattleArea05) then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) and targetDist <= 0.8 then
            Act04Per = 85
            Act05Per = 15
         elseif targetDist >= 12.3 then
            Act01Per = 5
            Act02Per = 10
            Act04Per = 75
            Act06Per = 10
         elseif targetDist >= 7 then
            Act02Per = 40
            Act03Per = 5
            Act04Per = 40
            Act06Per = 15
         elseif targetDist >= 4 then
            Act01Per = 55
            Act02Per = 25
            Act03Per = 20
         elseif targetDist >= 2.2 then
            Act01Per = 70
            Act03Per = 20
            Act05Per = 10
         else
            Act01Per = 55
            Act03Per = 15
            Act05Per = 30
         end
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, ShootBattleArea01) or ai:IsInsideTargetRegion(TARGET_ENE_0, ShootBattleArea02) then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) and targetDist <= 0.8 then
            Act04Per = 85
            Act05Per = 15
         elseif targetDist >= 8 then
            Act06Per = 75
            Act07Per = 25
         elseif targetDist >= 5.5 then
            Act02Per = 40
            Act06Per = 45
            Act07Per = 15
         elseif targetDist >= 3.8 then
            Act02Per = 85
            Act07Per = 15
         else
            Act01Per = 50
            Act02Per = 45
            Act07Per = 5
         end
      else
         Act07Per = 100
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per)
      if fateAct <= Act01Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, Att3000_Dist_max, TARGET_SELF, false, -1)
         if fate <= 10 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 70)
         elseif fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 70)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 70)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, Att3003_Dist_max, TARGET_SELF, false, -1)
         if fate <= 10 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 70)
         elseif fate <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 70)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 70)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         end
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, Att3006_Dist_max, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         GetWellSpace_Odds = 100
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
         if Att3008_Dist_min <= targetDist and fate <= 40 and LJump == 1 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, Att3008_Dist_max, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
            GetWellSpace_Odds = 100
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, Att3007_Dist_max, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
            GetWellSpace_Odds = 100
         end
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0)
         GetWellSpace_Odds = 0
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
         if myThinkId == 230003 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
         end
         GetWellSpace_Odds = 0
      elseif myThinkId == 230003 then
         ai:SetEventMoveTarget(1012798)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_ENE_0, True, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_INITIAL, 1, TARGET_ENE_0, True, -1)
      end
      -- Tried to add an 'end' here but it's incorrect
      local fateGWS = ai:GetRandam_Int(1, 100)
      if fateGWS <= GetWellSpace_Odds and CanStep == 1 then
         local Odds_Guard = 0
         local Odds_NoAct = 70
         local Odds_BackAndSide = 0
         local Odds_Back = 0
         local Odds_BitWait = 0
         local Odds_Backstep = 30
         GetWellSpace_Act(ai, goal, Odds_Guard, Odds_NoAct, Odds_BackAndSide, Odds_Back, Odds_BitWait, Odds_Backstep)
      end
end

HaikaiDemon230000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HaikaiDemon230000Battle_Terminate = function(ai, goal)
end

HaikaiDemon230000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 6
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Attack = 4.3
   local oddsGuardBreak_Attack = 60
   local AttID = 3000
   if GuardBreak_Attack(ai, goal, distGuardBreak_Attack, oddsGuardBreak_Attack, AttID) then
      return true
   end
   local distUseItem_Act = 9.5
   local oddsUseItem_Act = 15
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 4.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local oddsResponse = 20
   local bkStepPer = 100
   local leftStepPer = 0
   local rightStepPer = 0
   local safetyDist = 6
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


