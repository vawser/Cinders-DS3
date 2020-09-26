REGISTER_GOAL(GOAL_HusiCrystal_Bow280001_Battle, "HusiCrystal_Bow280001Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_HusiCrystal_Bow280001_Battle, 1)
HusiCrystal_Bow280001Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   if targetDist >= 20 then
      Act01Per = 100
      Act02Per = 0
      Act03Per = 0
   elseif targetDist >= 10 then
      Act01Per = 70
      Act02Per = 30
      Act03Per = 0
   elseif targetDist >= 5 then
      Act01Per = 0
      Act02Per = 60
      Act03Per = 40
   elseif targetDist >= 1 then
      Act01Per = 0
      Act02Per = 20
      Act03Per = 80
   else
      Act01Per = 0
      Act02Per = 0
      Act03Per = 100
   end
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per)
      if fateAct <= Act01Per then
         local FirstAttID = 3000
         local ComAttID = 3001
         local ShootNum = ai:GetRandam_Int(2, 5)
         Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
      elseif fateAct <= Act01Per + Act02Per then
         local FirstAttID = 3000
         local ComAttID = 3001
         local ShootNum = ai:GetRandam_Int(2, 4)
         Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      else
         local FirstAttID = 3000
         local ComAttID = 3001
         local ShootNum = ai:GetRandam_Int(1, 3)
         Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
      end
   end
end

HusiCrystal_Bow280001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiCrystal_Bow280001Battle_Terminate = function(ai, goal)
end

HusiCrystal_Bow280001Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distDamagedStep = 3
   local oddsDamagedStep = 15
   local bkStepPer = 20
   local leftStepPer = 40
   local rightStepPer = 40
   local safetyDist = 3.5
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distUseItem_Act = 15
   local oddsUseItem_Act = 10
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local distResNear = 8.5
   local distResFar = 18
   local oddsResNear = 0
   local oddsResFar = 15
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      goal:AddSubGoal(GOAL_COMMON_Guard, 2, 9910, TARGET_ENE_0, false, 0)
      return true
   elseif ResBehavID == 2 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   return false
end


