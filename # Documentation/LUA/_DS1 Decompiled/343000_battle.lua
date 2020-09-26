REGISTER_GOAL(GOAL_Hellkite343000_Battle, "Hellkite343000Battle")
local Att3000_Dist_min = 18
local Att3000_Dist_max = 34
local Att3001_Dist_min = 18
local Att3001_Dist_max = 38
local Att3002_Dist_min = 20
local Att3002_Dist_max = 40
local Att3003_Dist_min = 0
local Att3003_Dist_max = 5
local Att3004_Dist_min = 0
local Att3004_Dist_max = 5
local Att3005_Dist_min = 5.5
local Att3005_Dist_max = 13
local Att3006_Dist_min = 8
local Att3006_Dist_max = 13
local Att3007_Dist_min = 3
local Att3007_Dist_max = 16
local Att3008_Dist_min = 0
local Att3008_Dist_max = 0
local Att3009_Dist_min = 5
local Att3009_Dist_max = 25
local Att3010_Dist_min = 0
local Att3010_Dist_max = 5.5
REGISTER_GOAL_NO_UPDATE(GOAL_Hellkite343000_Battle, 1)
OnIf_343000 = function(ai, goal, codeNo)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   ai:SetNumber(0, 0)
end

Hellkite343000Battle_Activate = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest(1)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local fate3 = ai:GetRandam_Int(1, 100)
   local fate4 = ai:GetRandam_Int(1, 100)
   local fate5 = ai:GetRandam_Int(1, 100)
   local fate6 = ai:GetRandam_Int(1, 100)
   local fate7 = ai:GetRandam_Int(1, 100)
   local fate8 = ai:GetRandam_Int(1, 100)
   local fate9 = ai:GetRandam_Int(1, 100)
   local fate_Safety = ai:GetRandam_Int(1, 100)
   local PARTS_IDX_TAIL = 0
   local tailDmgLv = ai:GetPartsDmg(PARTS_IDX_TAIL)
   local Approach30Timer = ai:GetTimer(0)
   local Approach12Timer = ai:GetTimer(1)
   local ApproachNearestTimer = ai:GetTimer(2)
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
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 100, 2.3)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 101, 2.5)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 102, 2.3)
   ai:SetEventMoveTarget(1012710)
   local Dist_Self_1012710 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   local Dist_ENE_1012710 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012711)
   local Dist_Self_1012711 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   local Dist_ENE_1012711 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   local TailAttack = 1
   if tailDmgLv == PARTS_DMG_FINAL then
      TailAttack = 0
   end
   if Approach30Timer > 0 then
      if targetDist <= 30 then
         Act12Per = 100
      else
         Act09Per = 100
      end
   elseif Approach12Timer > 0 then
      if targetDist <= 12 then
         Act12Per = 100
      else
         Act09Per = 100
      end
   elseif ApproachNearestTimer > 0 then
      local NearestPoint = Find_Nearest_Point(ai, goal)
      ai:SetEventMoveTarget(NearestPoint)
      local Dist_NearestPoint = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
      if Dist_NearestPoint <= 1 or not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012760) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012761) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012762) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012763) then
         Act12Per = 100
      else
         Act09Per = 100
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and targetDist >= 3 and targetDist <= 16 and fate <= 50 then
      Act08Per = 100 * TailAttack
   elseif (ai:IsInsideTargetRegion(TARGET_ENE_0, 1012760) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1012761) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1012762) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1012763)) and fate_Safety <= 60 then
      local NearestPoint = Find_Nearest_Point(ai, goal)
      ai:SetEventMoveTarget(NearestPoint)
      local Dist_NearestPoint = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
      if Dist_NearestPoint >= 3 then
         Act16Per = 100
      else
         Act15Per = 100
      end
   elseif ai:IsInsideObserve(0) and fate2 <= 40 then
      Act04Per = 100
   elseif ai:IsInsideObserve(1) and fate3 <= 40 then
      Act05Per = 100
   elseif ai:IsInsideObserve(2) and fate4 <= 40 then
      Act06Per = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and targetDist >= 6 and targetDist <= 13 and fate5 <= 40 then
      Act07Per = 100
   elseif targetDist >= 40 then
      Act10Per = 100
   elseif targetDist >= 34 then
      if (ai:IsInsideTargetRegion(TARGET_SELF, 1012716) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012717) and Dist_ENE_1012711 < Dist_Self_1012711 then
         Act03Per = 75
         -- Tried to add an 'end' here but it's incorrect
         Act10Per = 25
      elseif targetDist >= 25 then
         if (ai:IsInsideTargetRegion(TARGET_SELF, 1012716) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012717) and Dist_ENE_1012711 < Dist_Self_1012711 then
            Act03Per = 60
            -- Tried to add an 'end' here but it's incorrect
            Act01Per = 15
            Act02Per = 15
            Act10Per = 10
         elseif targetDist >= 20 then
            if (ai:IsInsideTargetRegion(TARGET_SELF, 1012716) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012717) and Dist_ENE_1012711 < Dist_Self_1012711 then
               Act03Per = 30
               -- Tried to add an 'end' here but it's incorrect
               if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and Dist_ENE_1012711 < Dist_Self_1012711 then
                  Act14Per = 40
               end
               Act01Per = 14
               Act02Per = 14
               Act11Per = 2
            elseif targetDist >= 18 then
               if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and Dist_ENE_1012711 < Dist_Self_1012711 then
                  Act14Per = 60
                  -- Tried to add an 'end' here but it's incorrect
                  Act01Per = 19
                  Act02Per = 19
                  Act11Per = 2
               elseif targetDist >= 13 then
                  if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and Dist_ENE_1012711 < Dist_Self_1012711 then
                     Act14Per = 90
                     -- Tried to add an 'end' here but it's incorrect
                     Act01Per = 2
                     Act02Per = 2
                     Act11Per = 6
                  elseif targetDist >= 8 then
                     if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and Dist_ENE_1012711 < Dist_Self_1012711 then
                        Act14Per = 60
                        -- Tried to add an 'end' here but it's incorrect
                        if (ai:IsInsideTargetRegion(TARGET_SELF, 1012751) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012750) and Dist_ENE_1012711 < Dist_Self_1012711 then
                           Act13Per = 60
                        end
                        Act06Per = 20
                        Act07Per = 20
                     elseif targetDist >= 5.5 then
                        if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and Dist_ENE_1012711 < Dist_Self_1012711 then
                           Act14Per = 70
                           -- Tried to add an 'end' here but it's incorrect
                           if (ai:IsInsideTargetRegion(TARGET_SELF, 1012751) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012750) and Dist_ENE_1012711 < Dist_Self_1012711 then
                              Act13Per = 70
                           end
                           Act06Per = 30
                        elseif (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and Dist_ENE_1012710 < Dist_Self_1012710) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and Dist_ENE_1012711 < Dist_Self_1012711 then
                           Act14Per = 5
                           Act15Per = 55
                           Act17Per = 40
                        end
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per + Act17Per)
                        if eventNo >= 1 then
                           goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.1, POINT_INITIAL, true, -1)
                           ai:SetEventMoveTarget(1012711)
                           goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
                           goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3011, TARGET_ENE_0, DIST_None, 0)
                        elseif fateAct <= Act01Per then
                           Hellkite343000_Act1(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per then
                           Hellkite343000_Act2(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per then
                           Hellkite343000_Act3(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
                           Hellkite343000_Act4(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
                           Hellkite343000_Act5(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
                           Hellkite343000_Act6(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
                           Hellkite343000_Act7(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
                           Hellkite343000_Act8(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
                           Hellkite343000_Act9(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
                           ai:SetTimer(0, 10)
                           Hellkite343000_Turn(ai, goal)
                           Hellkite343000_Act9(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per then
                           ai:SetTimer(1, 10)
                           Hellkite343000_Turn(ai, goal)
                           Hellkite343000_Act9(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per then
                           ai:SetTimer(0, 0)
                           ai:SetTimer(1, 0)
                           ai:SetTimer(2, 0)
                           goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per then
                           Hellkite343000_Act13(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per then
                           Hellkite343000_Act14(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per then
                           Hellkite343000_Act15(ai, goal)
                        elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per + Act11Per + Act12Per + Act13Per + Act14Per + Act15Per + Act16Per then
                           ai:SetTimer(2, 10)
                           Hellkite343000_Turn(ai, goal)
                           Hellkite343000_Act9(ai, goal)
                        else
                           Hellkite343000_Act17(ai, goal)
                        end
end

Hellkite343000_Turn = function(ai, goal)
   ai:SetEventMoveTarget(1012710)
   local Dist_Self_1012710 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   local Dist_ENE_1012710 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   if Dist_ENE_1012710 <= Dist_Self_1012710 then
      ai:SetEventMoveTarget(1012710)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
   else
      ai:SetEventMoveTarget(1012711)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
   end
end

Hellkite343000_Act1 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3000, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act2 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3001, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act3 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3002, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act4 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3003, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act5 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3004, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act6 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3005, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act7 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3006, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act8 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3007, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act9 = function(ai, goal)
   local NearestPoint = Find_Nearest_Point(ai, goal)
   ai:SetEventMoveTarget(NearestPoint)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, 1, POINT_EVENT, true, -1)
end

Find_Nearest_Point = function(ai, goal)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   ai:SetEventMoveTarget(1012721)
   local B = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012722)
   local C = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012723)
   local D = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012724)
   local E = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012725)
   local F = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012726)
   local G = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012727)
   local H = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012728)
   local I = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012729)
   local J = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012730)
   local K = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012731)
   local L = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012732)
   local M = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012733)
   local N = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012734)
   local O = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012735)
   local P = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   local minDist = math.min(B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)
   if minDist == B then
      NearPoint = 1012721
   elseif minDist == C then
      NearPoint = 1012722
   elseif minDist == D then
      NearPoint = 1012723
   elseif minDist == E then
      NearPoint = 1012724
   elseif minDist == F then
      NearPoint = 1012725
   elseif minDist == G then
      NearPoint = 1012726
   elseif minDist == H then
      NearPoint = 1012727
   elseif minDist == I then
      NearPoint = 1012728
   elseif minDist == J then
      NearPoint = 1012729
   elseif minDist == K then
      NearPoint = 1012730
   elseif minDist == L then
      NearPoint = 1012731
   elseif minDist == M then
      NearPoint = 1012732
   elseif minDist == N then
      NearPoint = 1012733
   elseif minDist == O then
      NearPoint = 1012734
   elseif minDist == P then
      NearPoint = 1012735
   end
   return NearPoint
end

Hellkite343000_Act13 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3008, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act14 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3009, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act15 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3010, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act17 = function(ai, goal)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1012751) and ai:IsInsideTargetRegion(TARGET_SELF, 1012750) then
      ai:SetEventMoveTarget(1012711)
      if ai:IsInsideTarget(POINT_EVENT, AI_DIR_TYPE_F, 180) then
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
      else
         ai:SetEventMoveTarget(1012710)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1012750) then
      ai:SetEventMoveTarget(1012711)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
   else
      ai:SetEventMoveTarget(1012710)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3008, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hellkite343000Battle_Terminate = function(ai, goal)
end

Hellkite343000Battle_Interupt = function(ai, goal)
   return false
end


