REGISTER_GOAL(GOAL_Gargoyle535000_Battle, "Gargoyle535000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 7
local Att3003_Dist_min = 0
local Att3003_Dist_max = 10.3
local Att3004_Dist_min = 0
local Att3004_Dist_max = 4.1
local Att3006_Dist_min = 0
local Att3006_Dist_max = 8
local Att3009_Dist_min = 6.5
local Att3009_Dist_max = 11
local Att3010_Dist_min = 3
local Att3010_Dist_max = 6
local Att3011_Dist_min = 2.5
local Att3011_Dist_max = 9
local Att3012_Dist_min = 0
local Att3012_Dist_max = 6
local Att3014_Dist_min = 0
local Att3014_Dist_max = 1.6
local Att3016_Dist_min = 0
local Att3016_Dist_max = 3.5
local Att3017_Dist_min = 0
local Att3017_Dist_max = 2.5
local Att3018_Dist_min = 12
local Att3018_Dist_max = 15
local Att3020_Dist_min = 17
local Att3020_Dist_max = 20
local Att3022_Dist_min = 0
local Att3022_Dist_max = 4.5
local Att3026_Dist_min = 2.5
local Att3026_Dist_max = 9
local Att3027_Dist_min = 0
local Att3027_Dist_max = 4
REGISTER_GOAL_NO_UPDATE(GOAL_Gargoyle535000_Battle, 1)
Gargoyle535000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local hprate = ai:GetHpRate(TARGET_SELF)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   local myThinkId = ai:GetNpcThinkParamID()
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act07Per = 0
   local Act08Per = 0
   local Act09Per = 0
   local Act10Per = 0
   local Act11Per = 0
   local Act12Per = 0
   local Act13Per = 0
   local Act14Per = 0
   local Act15Per = 0
   local Act16Per = 0
   local Act17Per = 0
   local Act18Per = 0
   local Act19Per = 0
   local GetWellSpace_Odds = 100
   if myThinkId == 535000 then
      if tailDmgLv == PARTS_DMG_FINAL then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1012793) then
            if targetDist >= 5 then
               Act13Per = 100
            else
               Act02Per = 30
               Act04Per = 30
               Act06Per = 30
               Act13Per = 10
            end
         elseif targetDist <= 4.1 and fate <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            Act03Per = 100
         elseif targetDist <= 1.5 and fate <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 170) then
            Act07Per = 100
         else
            local Flag_Firebreath = 0
            if hprate <= 0.5 then
               Flag_Firebreath = 1
            end
            if targetDist >= 18 then
               Act01Per = 0
               Act02Per = 0
               Act04Per = 0
               Act06Per = 0
               Act10Per = 15
               Act11Per = 45
               Act12Per = 0
               Act13Per = 0
               Act15Per = 15
               Act16Per = 25 * Flag_Firebreath
            elseif targetDist >= 13 then
               Act01Per = 10
               Act02Per = 10
               Act04Per = 10
               Act06Per = 10
               Act10Per = 25
               Act11Per = 0
               Act12Per = 0
               Act13Per = 10 * Flag_Firebreath
               Act15Per = 15
               Act16Per = 10 * Flag_Firebreath
            elseif targetDist >= 9 then
               Act01Per = 10
               Act02Per = 10
               Act04Per = 10
               Act06Per = 10
               Act10Per = 0
               Act11Per = 0
               Act12Per = 0
               Act13Per = 25 * Flag_Firebreath
               Act15Per = 15
               Act16Per = 20 * Flag_Firebreath
            elseif targetDist >= 6.8 then
               Act01Per = 15
               Act02Per = 15
               Act04Per = 10
               Act06Per = 10
               Act10Per = 0
               Act11Per = 0
               Act12Per = 0
               Act13Per = 35 * Flag_Firebreath
               Act15Per = 5
               Act16Per = 10 * Flag_Firebreath
            elseif targetDist >= 3 then
               Act01Per = 20
               Act02Per = 15
               Act04Per = 20
               Act06Per = 15
               Act10Per = 0
               Act11Per = 0
               Act12Per = 10
               Act13Per = 15 * Flag_Firebreath
               Act15Per = 0
               Act16Per = 5 * Flag_Firebreath
            else
               Act01Per = 15
               Act02Per = 10
               Act04Per = 10
               Act06Per = 10
               Act09Per = 0
               Act10Per = 0
               Act11Per = 0
               Act12Per = 5
               Act13Per = 0
               Act15Per = 0
               Act16Per = 0
               Act19Per = 50
            end
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012793) then
            if targetDist >= 5 then
               Act13Per = 100
            else
               Act02Per = 30
               Act04Per = 30
               Act06Per = 30
               Act13Per = 10
            end
         elseif targetDist <= 4 and fate <= 95 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) then
            Act14Per = 100
         elseif targetDist <= 3.5 and fate <= 60 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 130) then
            Act08Per = 100
         elseif targetDist <= 4.1 and fate <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            Act03Per = 100
         elseif targetDist <= 1.5 and fate <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 170) then
            Act07Per = 100
         else
            local Flag_Firebreath = 0
            if hprate <= 0.5 then
               Flag_Firebreath = 1
            end
            if targetDist >= 18 then
               Act01Per = 0
               Act02Per = 0
               Act04Per = 0
               Act06Per = 0
               Act10Per = 15
               Act11Per = 45
               Act12Per = 0
               Act13Per = 0
               Act15Per = 15
               Act16Per = 25 * Flag_Firebreath
               Act17Per = 0
            elseif targetDist >= 13 then
               Act01Per = 10
               Act02Per = 10
               Act04Per = 10
               Act06Per = 10
               Act10Per = 25
               Act11Per = 0
               Act12Per = 0
               Act13Per = 10 * Flag_Firebreath
               Act15Per = 15
               Act16Per = 10 * Flag_Firebreath
               Act17Per = 0
            elseif targetDist >= 9 then
               Act01Per = 10
               Act02Per = 10
               Act04Per = 10
               Act06Per = 10
               Act10Per = 0
               Act11Per = 0
               Act12Per = 0
               Act13Per = 25 * Flag_Firebreath
               Act15Per = 15
               Act16Per = 20 * Flag_Firebreath
               Act17Per = 0
            elseif targetDist >= 6.8 then
               Act01Per = 10
               Act02Per = 10
               Act04Per = 10
               Act06Per = 10
               Act10Per = 0
               Act11Per = 0
               Act12Per = 0
               Act13Per = 35 * Flag_Firebreath
               Act15Per = 5
               Act16Per = 15 * Flag_Firebreath
               Act17Per = 10
            elseif targetDist >= 3 then
               Act01Per = 20
               Act02Per = 15
               Act04Per = 15
               Act06Per = 20
               Act10Per = 0
               Act11Per = 0
               Act12Per = 10
               Act13Per = 15 * Flag_Firebreath
               Act15Per = 0
               Act16Per = 5 * Flag_Firebreath
               Act17Per = 5
            else
               Act01Per = 15
               Act02Per = 10
               Act04Per = 10
               Act06Per = 10
               Act09Per = 0
               Act10Per = 0
               Act11Per = 0
               Act12Per = 5
               Act13Per = 0
               Act15Per = 0
               Act16Per = 0
               Act17Per = 0
               Act19Per = 50
            end
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012793) then
            if targetDist >= 5 then
               Act13Per = 100
            else
               Act02Per = 30
               Act04Per = 30
               Act06Per = 30
               Act13Per = 10
            end
         elseif targetDist <= 4.1 and fate <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            Act03Per = 100
         elseif targetDist <= 1.5 and fate <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 170) then
            Act07Per = 100
         elseif targetDist >= 18 then
            Act01Per = 5
            Act02Per = 5
            Act04Per = 5
            Act06Per = 5
            Act13Per = 80
         elseif targetDist >= 13 then
            Act01Per = 7
            Act02Per = 8
            Act04Per = 7
            Act06Per = 8
            Act13Per = 70
         elseif targetDist >= 9 then
            Act01Per = 7
            Act02Per = 8
            Act04Per = 7
            Act06Per = 8
            Act13Per = 70
         elseif targetDist >= 6.8 then
            Act01Per = 7
            Act02Per = 8
            Act04Per = 7
            Act06Per = 8
            Act13Per = 70
         elseif targetDist >= 3 then
            Act01Per = 10
            Act02Per = 10
            Act04Per = 10
            Act06Per = 10
            Act13Per = 60
         else
            Act01Per = 10
            Act02Per = 10
            Act04Per = 10
            Act06Per = 10
            Act18Per = 60
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per + Act18Per + Act19Per)
         if fateAct <= Act01Per then
            Gargoyle535000_Act01(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per then
            Gargoyle535000_Act02(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per then
            Gargoyle535000_Act03(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
            Gargoyle535000_Act04(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
            Gargoyle535000_Act05(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
            Gargoyle535000_Act06(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
            Gargoyle535000_Act07(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
            Gargoyle535000_Act08(ai, goal)
            GetWellSpace_Odds = 0
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
            Gargoyle535000_Act09(ai, goal)
            GetWellSpace_Odds = 0
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
            Gargoyle535000_Act10(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per then
            Gargoyle535000_Act11(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per then
            Gargoyle535000_Act12(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per then
            Gargoyle535000_Act13(ai, goal)
            GetWellSpace_Odds = 100
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per then
            Gargoyle535000_Act14(ai, goal)
            GetWellSpace_Odds = 0
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per then
            Gargoyle535000_Act15(ai, goal)
            GetWellSpace_Odds = 0
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per then
            Gargoyle535000_Act16(ai, goal)
            GetWellSpace_Odds = 0
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per then
            Gargoyle535000_Act17(ai, goal)
            GetWellSpace_Odds = 0
         elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per + Act18Per then
            Gargoyle535000_Act18(ai, goal)
            GetWellSpace_Odds = 100
         else
            Gargoyle535000_Act19(ai, goal)
            GetWellSpace_Odds = 0
         end
         local fateGWS = ai:GetRandam_Int(1, 100)
         if fateGWS <= GetWellSpace_Odds then
            Gargoyle535000_GetWellSpace_Act(ai, goal)
         end
end

Gargoyle535000_Act01 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   if fate <= 10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 35, 9, 8)
   elseif fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 35, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 9, 8)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 35, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, DIST_Middle, 9, 8)
   end
end

Gargoyle535000_Act02 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 15, 8, 7)
end

Gargoyle535000_Act03 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 9, 8)
   else
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 9, 8)
   end
end

Gargoyle535000_Act04 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3006_Dist_max
   local DashDist = Att3006_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 15, 8, 0)
end

Gargoyle535000_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, 0)
end

Gargoyle535000_Act06 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3012_Dist_max
   local DashDist = Att3012_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Middle, -1, 15, 8, 0)
end

Gargoyle535000_Act07 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3014, TARGET_ENE_0, DIST_Middle, 9, 8)
end

Gargoyle535000_Act08 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   if targetDist <= 1.5 then
      goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, DIST_Middle, 0, -1, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboFinal, 10, 3029, TARGET_ENE_0, DIST_Middle, 9, 8)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_Middle, 0, -1, 9, 8)
   end
end

Gargoyle535000_Act09 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_Middle, -1, 60, 9, 8)
end

Gargoyle535000_Act10 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3018_Dist_max
   local DashDist = Att3018_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act11 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3020_Dist_max
   local DashDist = Att3020_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_Middle, -1, 45)
end

Gargoyle535000_Act12 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3022_Dist_max
   local DashDist = Att3022_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act13 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3026_Dist_max
   local DashDist = Att3026_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_Middle, -1, 25, 0, 8)
end

Gargoyle535000_Act14 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, DIST_Middle, 0, -1, 9, 0)
end

Gargoyle535000_Act15 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3009_Dist_max
   local DashDist = Att3009_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act16 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3011_Dist_max
   local DashDist = Att3011_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act17 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max + 2
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act18 = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3026_Dist_max
   local DashDist = Att3026_Dist_max + 2
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3.5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_Middle, -1, 25, 0, 8)
end

Gargoyle535000_Act19 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3.5)
end

Gargoyle535000_GetWellSpace_Act = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local waittime = ai:GetRandam_Int(1, 3)
   if fate <= 45 then
   elseif fate <= 95 then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   elseif fate <= 95 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
   end
end

OnIf_535000 = function(ai, goal, codeNo)
   local canStep713 = 0
   local canStep712 = 0
   local canStep711 = 0
   local canStep701 = 0
   local canStep702 = 0
   local canStep703 = 0
   local myThinkId = ai:GetNpcThinkParamID()
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 7, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 7, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 7, 1012792) then
      canStep711 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 7, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 7, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 7, 1012792) then
      canStep713 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 7, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 7, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 7, 1012792) then
      canStep712 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 5, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 5, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 5, 1012792) then
      canStep701 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 5, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 5, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 5, 1012792) then
      canStep703 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 5, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 5, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 5, 1012792) then
      canStep702 = 1
   end
   local oddsBigJump = 40
   local oddsBackJump = 60
   if myThinkId == 535001 then
      oddsBigJump = 0
      oddsBackJump = 100
   end
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   if fate <= oddsBigJump and (canStep713 == 1 or canStep712 == 1 or canStep711 == 1) and myThinkId == 535000 then
      if (fate2 <= oddsBackJump and canStep711 == 1) or canStep713 == 0 and canStep712 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
      elseif fate3 <= 50 or canStep712 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 7)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 7)
      end
   elseif (fate2 <= oddsBackJump and canStep701 == 1) or canStep702 == 0 and canStep703 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
   elseif fate3 <= 50 or canStep702 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
   end
   -- Tried to add an 'end' here but it's incorrect
end

Gargoyle535000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Gargoyle535000Battle_Terminate = function(ai, goal)
end

Gargoyle535000Battle_Interupt = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local superStepDist = 3
   local superStepPer = 15
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 5
   if FindAttack_Step(ai, goal, superStepDist, superStepPer, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   local distGuardBreak_Act = 10.3
   local oddsGuardBreak_Act = 30
   if GuardBreak_Act(ai, goal, distGuardBreak_Act, oddsGuardBreak_Act) then
      if fate >= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distMissSwing_Int = 10.3
   local oddsMissSwing_Int = 30
   if MissSwing_Int(ai, goal, distMissSwing_Int, oddsMissSwing_Int) then
      if fate >= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local distUseItem_Act = 10.3
   local oddsUseItem_Act = 5
   if UseItem_Act(ai, goal, distUseItem_Act, oddsUseItem_Act) then
      if targetDist >= 6 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   local distResNear = 13.5
   local distResFar = 25
   local oddsResNear = 0
   local oddsResFar = 20
   local ResBehavID = Shoot_2dist(ai, goal, distResNear, distResFar, oddsResNear, oddsResFar)
   if ResBehavID == 1 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
      return true
   elseif ResBehavID == 2 then
      if fate <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
   end
   local oddsResponse = 30
   local bkStepPer = 50
   local leftStepPer = 25
   local rightStepPer = 25
   local safetyDist = 5
   if RebByOpGuard_Step(ai, goal, oddsResponse, bkStepPer, leftStepPer, rightStepPer, safetyDist) then
      return true
   end
   return false
end


