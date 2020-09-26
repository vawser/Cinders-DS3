REGISTER_GOAL(GOAL_LightKnight_Bow256001_Battle, "LightKnight_Bow256001Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_LightKnight_Bow256001_Battle, 1)
OnIf_256001 = function(ai, goal, codeNo)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

LightKnight_Bow256001Battle_Activate = function(ai, goal)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local GetWellSpace_Odds = 0
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   if hprate <= 0.4 and ai:IsFinishTimer(0) == true then
      if targetDist >= 20 then
         Act01Per = 25
         Act02Per = 0
         Act03Per = 0
         Act04Per = 75
      elseif targetDist >= 10 then
         Act01Per = 20
         Act02Per = 5
         Act03Per = 0
         Act04Per = 75
      elseif targetDist >= 4.5 then
         Act01Per = 0
         Act02Per = 25
         Act03Per = 0
         Act04Per = 75
      elseif targetDist >= 3 then
         Act01Per = 0
         Act02Per = 40
         Act03Per = 10
         Act04Per = 50
      else
         Act01Per = 0
         Act02Per = 25
         Act03Per = 40
         Act04Per = 35
      end
   elseif targetDist >= 20 then
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
   else
      Act01Per = 0
      Act02Per = 0
      Act03Per = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   local doAdmirer = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local role = ai:GetTeamOrder(ORDER_TYPE_Role)
   local Odds_Guard = 0
   if doAdmirer == 1 and role == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif doAdmirer == 1 and role == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per)
      if fateAct <= Act01Per then
         if fate <= 50 then
            local FirstAttID = 3000
            local ComAttID = 3001
            local ShootNum = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         else
            local FirstAttID = 3002
            local ComAttID = 3003
            local ShootNum = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         end
      elseif fateAct <= Act01Per + Act02Per then
         if fate <= 50 then
            local FirstAttID = 3000
            local ComAttID = 3001
            local ShootNum = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         else
            local FirstAttID = 3002
            local ComAttID = 3003
            local ShootNum = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         end
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         if fate <= 50 then
            local FirstAttID = 3000
            local ComAttID = 3001
            local ShootNum = ai:GetRandam_Int(1, 3)
            Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         else
            local FirstAttID = 3002
            local ComAttID = 3003
            local ShootNum = ai:GetRandam_Int(1, 3)
            Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         end
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
   end
end

LightKnight_Bow256001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LightKnight_Bow256001Battle_Terminate = function(ai, goal)
end

LightKnight_Bow256001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local fate = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local superStepDist = 3
   local superStepPer = 15
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer) then
      return true
   end
   local distDamagedStep = 3
   local oddsDamagedStep = 25
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 4
   if Damaged_Step(ai, goal, distDamagedStep, oddsDamagedStep, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distUseItem_Act = 20
   local oddsUseItem_Act = 15
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 8 then
         if fate <= 50 then
            local FirstAttID = 3000
            local ComAttID = 3001
            local ShootNum = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         else
            local FirstAttID = 3002
            local ComAttID = 3003
            local ShootNum = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
         end
         return true
      elseif fate <= 50 then
         local FirstAttID = 3000
         local ComAttID = 3001
         local ShootNum = ai:GetRandam_Int(1, 3)
         Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
      else
         local FirstAttID = 3002
         local ComAttID = 3003
         local ShootNum = ai:GetRandam_Int(1, 3)
         Shoot_Act(ai, goal, FirstAttID, ComAttID, ShootNum)
      end
      return true
      return true
   end
   return false
end


