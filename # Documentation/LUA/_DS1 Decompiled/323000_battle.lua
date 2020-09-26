REGISTER_GOAL(GOAL_Kagerou323000_Battle, "Kagerou323000Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Kagerou323000_Battle, 1)
OnIf_323000 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   if codeNo == 0 then
      ai:SetTimer(0, 60)
      ai:SetTimer(1, 30)
      local stdHPrate = ai:GetHpRate(TARGET_SELF)
      ai:SetNumber(1, stdHPrate)
      ai:SetNumber(0, 1)
   end
end

Kagerou323000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Shoot01Per = 0
   local Shoot02Per = 0
   local Shoot03Per = 0
   local Shoot04Per = 0
   local FirstImpression = ai:GetNumber(0)
   local Timer0 = ai:GetTimer(0)
   local Timer1 = ai:GetTimer(1)
   local Number0 = ai:GetNumber(0)
   local Number1 = ai:GetNumber(1)
   local Damaged = ai:GetNumber(1) - hprate
   if FirstImpression == 0 then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
   end
   if ai:IsInsideTargetRegion(TARGET_SELF, 1202210) then
      Act04Per = 100
   elseif (ai:IsFinishTimer(0) and FirstImpression == 1 and not ai:IsInsideTargetRegion(TARGET_SELF, 1202226)) or hprate <= ai:GetNumber(1) - 0.2 and ai:IsFinishTimer(1) and FirstImpression == 1 and not ai:IsInsideTargetRegion(TARGET_SELF, 1202226) then
      Act03Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202245) and (ai:IsInsideTargetRegion(TARGET_SELF, 1202225) or ai:IsInsideTargetRegion(TARGET_SELF, 1202226)) then
      Act05Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202245) and (ai:IsInsideTargetRegion(TARGET_SELF, 1202227) or ai:IsInsideTargetRegion(TARGET_SELF, 1202228) or ai:IsInsideTargetRegion(TARGET_SELF, 1202228)) then
      Act06Per = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202220) then
      if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
         Act02Per = 5
         Act06Per = 35
         Act07Per = 60
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
         Act02Per = 60
         Act06Per = 35
         Act07Per = 5
      else
         Act02Per = 95
         Act06Per = 5
      end
   else
      if ai:IsInsideTargetRegion(TARGET_SELF, 1202221) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            Act01Per = 60
            Act05Per = 15
            Act07Per = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            Act01Per = 20
            Act02Per = 20
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            Act02Per = 60
            Act06Per = 15
            Act07Per = 25
         else
            Act02Per = 95
            Act06Per = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202222) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            Act01Per = 85
            Act05Per = 15
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            Act01Per = 60
            Act05Per = 15
            Act07Per = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            Act01Per = 20
            Act02Per = 20
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            Act02Per = 60
            Act06Per = 15
            Act07Per = 25
         else
            Act02Per = 85
            Act06Per = 15
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202223) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202244) then
            Act02Per = 60
            Act06Per = 15
            Act07Per = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            Act01Per = 20
            Act02Per = 20
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            Act01Per = 60
            Act05Per = 15
            Act07Per = 25
         else
            Act01Per = 95
            Act05Per = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202224) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202244) then
            Act01Per = 5
            Act05Per = 35
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            Act01Per = 60
            Act05Per = 35
            Act07Per = 5
         else
            Act01Per = 95
            Act05Per = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202225) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            Act01Per = 5
            Act05Per = 35
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            Act01Per = 60
            Act05Per = 35
            Act07Per = 5
         else
            Act01Per = 95
            Act05Per = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202226) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            Act02Per = 60
            Act06Per = 15
            Act07Per = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            Act01Per = 20
            Act02Per = 20
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            Act01Per = 60
            Act05Per = 15
            Act07Per = 25
         else
            Act01Per = 95
            Act05Per = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202227) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            Act02Per = 85
            Act06Per = 15
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            Act02Per = 60
            Act06Per = 15
            Act07Per = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            Act01Per = 20
            Act02Per = 20
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            Act01Per = 60
            Act05Per = 15
            Act07Per = 25
         else
            Act01Per = 85
            Act05Per = 15
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202228) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202244) then
            Act01Per = 60
            Act05Per = 15
            Act07Per = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            Act01Per = 20
            Act02Per = 20
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            Act02Per = 60
            Act06Per = 15
            Act07Per = 25
         else
            Act02Per = 95
            Act06Per = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202229) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202244) then
            Act02Per = 5
            Act06Per = 35
            Act07Per = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            Act02Per = 60
            Act06Per = 35
            Act07Per = 5
         else
            Act02Per = 95
            Act06Per = 5
         end
      else
         ai:PrintText("ERROR Area Over")
         Act07Per = 100
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per)
      local fateShoot = ai:GetRandam_Int(1, Shoot01Per + Shoot02Per + Shoot03Per + Shoot04Per)
      if fateAct <= Act01Per then
         local RightMove = 3010
         if fate <= 50 then
            RightMove = 3010
         elseif fate <= 80 then
            RightMove = 3001
         else
            RightMove = 3002
         end
         ai:PrintText("Do RightMove")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, RightMove, TARGET_ENE_0, DIST_None, 0)
      elseif fateAct <= Act01Per + Act02Per then
         local LeftMove = 3011
         if fate <= 50 then
            LeftMove = 3011
         elseif fate <= 80 then
            LeftMove = 3004
         else
            LeftMove = 3005
         end
         ai:PrintText("Do LeftMove")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, LeftMove, TARGET_ENE_0, DIST_None, 0)
      elseif fateAct <= Act01Per + Act02Per + Act03Per then
         ai:PrintText("Do Landing")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3020, TARGET_ENE_0, DIST_None, 0)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
         ai:PrintText("Do TakeOff")
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(4, 8), TARGET_NONE, 0, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3001, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3000, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
         local RightTurn = 3013
         if fate <= 80 and hprate <= 0.5 then
            RightTurn = 3013
         else
            RightTurn = 3024
         end
         ai:PrintText("Do Turnaround Right")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, RightTurn, TARGET_ENE_0, DIST_None, 0)
      elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
         local LeftTurn = 3012
         if fate <= 80 and hprate <= 0.5 then
            LeftTurn = 3012
         else
            LeftTurn = 3022
         end
         ai:PrintText("Do Turnaround Left")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, LeftTurn, TARGET_ENE_0, DIST_None, 0)
      else
         local Hover = 3014
         if hprate <= 0.5 then
            if fate <= 15 then
               Hover = 3014
            elseif fate <= 30 then
               Hover = 3007
            elseif fate <= 100 then
               Hover = 3015
            else
               Hover = 3008
            end
         elseif fate <= 35 then
            Hover = 3014
         elseif fate <= 75 then
            Hover = 3007
         elseif fate <= 90 then
            Hover = 3015
         else
            Hover = 3008
         end
         -- Tried to add an 'end' here but it's incorrect
         ai:PrintText("Do Hover")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, Hover, TARGET_ENE_0, DIST_None, 0)
      end
end

Kagerou323000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kagerou323000Battle_Terminate = function(ai, goal)
end

Kagerou323000Battle_Interupt = function(ai, goal)
   return false
end


