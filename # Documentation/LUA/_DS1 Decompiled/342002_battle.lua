REGISTER_GOAL(GOAL_DragonZombi_m16_342002_Battle, "DragonZombi_m16_342002Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_DragonZombi_m16_342002_Battle, 1)
DragonZombi_m16_342002Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDistY = ai:GetDistY(TARGET_ENE_0)
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
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1602761) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1602764) then
      Act01Per = 80
      Act02Per = 0
      Act03Per = 0
      Act04Per = 20
      Act05Per = 0
      Act06Per = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602762) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1602765) then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 80
      Act04Per = 0
      Act05Per = 0
      Act06Per = 20
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602760) then
      Act01Per = 0
      Act02Per = 100
      Act03Per = 0
      Act04Per = 0
      Act05Per = 0
      Act06Per = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602761) then
      Act01Per = 100
      Act02Per = 0
      Act03Per = 0
      Act04Per = 0
      Act05Per = 0
      Act06Per = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602762) then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 100
      Act04Per = 0
      Act05Per = 0
      Act06Per = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602763) then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 0
      Act04Per = 0
      Act05Per = 100
      Act06Per = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602764) then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 0
      Act04Per = 100
      Act05Per = 0
      Act06Per = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602765) then
      Act01Per = 0
      Act02Per = 0
      Act03Per = 0
      Act04Per = 0
      Act05Per = 0
      Act06Per = 100
   else
      Act01Per = 0
      Act02Per = 0
      Act03Per = 0
      Act04Per = 0
      Act05Per = 0
      Act06Per = 0
   end
   if fate2 <= Act01Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3000, TARGET_ENE_0, DIST_None, 0)
   elseif fate2 <= Act01Per + Act02Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3001, TARGET_ENE_0, DIST_None, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3002, TARGET_ENE_0, DIST_None, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3003, TARGET_ENE_0, DIST_None, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3004, TARGET_ENE_0, DIST_None, 0)
   elseif fate2 <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3005, TARGET_ENE_0, DIST_None, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), TARGET_NONE, 0, 0, 0)
   end
end

DragonZombi_m16_342002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DragonZombi_m16_342002Battle_Terminate = function(ai, goal)
end

DragonZombi_m16_342002Battle_Interupt = function(ai, goal)
   return false
end


