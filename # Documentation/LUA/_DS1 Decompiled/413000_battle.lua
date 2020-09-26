REGISTER_GOAL(GOAL_Kyu_Jujin413000_Battle, "Kyu_Jujin413000Battle")
local Att3000_Dist_min = 0
local Att3000_Dist_max = 2.5
local Att3001_Dist_min = 0
local Att3001_Dist_max = 2
local Att3002_Dist_min = 0
local Att3002_Dist_max = 2
local Att3003_Dist_min = 0
local Att3003_Dist_max = 2.5
local Att3004_Dist_min = 4
local Att3004_Dist_max = 9
local Att3005_Dist_min = 0
local Att3005_Dist_max = 3
local Att3006_Dist_min = 0
local Att3006_Dist_max = 100
local Att3007_Dist_min = 0
local Att3007_Dist_max = 2.5
local Att3010_Dist_min = 0
local Att3010_Dist_max = 2
local Att3011_Dist_min = 0
local Att3011_Dist_max = 2
local Att3012_Dist_min = 0
local Att3012_Dist_max = 1
local Att3013_Dist_min = 2
local Att3013_Dist_max = 4
local Att3014_Dist_min = 0
local Att3014_Dist_max = 2
local Att3015_Dist_min = 0
local Att3015_Dist_max = 2
local Att3016_Dist_min = 0
local Att3016_Dist_max = 100
REGISTER_GOAL_NO_UPDATE(GOAL_Kyu_Jujin413000_Battle, 1)
OnIf_413000 = function(ai, goal, codeNo)
   if codeNo == 0 then
      Kyu_Jujin413000_ActAfter_RealTime(ai, goal)
   end
end

Kyu_Jujin413000Battle_Activate = function(ai, goal)
   local actPerArr = {}
   local actFuncArr = {}
   local defFuncParamTbl = {}
   Common_Clear_Param(actPerArr, actFuncArr, defFuncParamTbl)
   local Act01Per = 0
   local Act02Per = 0
   local Act03Per = 0
   local Act04Per = 0
   local Act05Per = 0
   local Act06Per = 0
   local Act09Per = 0
   local Act07Per = 0
   local Act08Per = 0
   local Act10Per = 0
   local Act11Per = 0
   local Act13Per = 0
   local Act14Per = 0
   local Act15Per = 0
   local Act16Per = 0
   local Act20Per = 0
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local distY = ai:GetDistY(TARGET_ENE_0)
   local eventNo = ai:GetEventRequest()
   if eventNo == 10 then
      Act10Per = 100
   elseif distY >= 20 then
      Act20Per = 100
   elseif ai:GetNpcThinkParamID() <= 413009 then
      if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
         if ai:GetNumber(0) == 0 then
            ai:SetTimer(0, ai:GetRandam_Int(8, 12))
            ai:SetNumber(0, 1)
            if targetDist >= 4 then
               Act01Per = 20
               Act02Per = 0
               Act03Per = 0
               Act04Per = 10
               Act05Per = 40
               Act06Per = 10
               Act09Per = 20
               if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
                  Act05Per = 0
               elseif targetDist >= 2 then
                  Act01Per = 25
                  Act02Per = 0
                  Act03Per = 0
                  Act04Per = 25
                  Act05Per = 0
                  Act06Per = 25
                  Act09Per = 25
               elseif targetDist >= 1 then
                  Act01Per = 20
                  Act02Per = 30
                  Act03Per = 30
                  Act04Per = 0
                  Act05Per = 0
                  Act06Per = 0
                  Act09Per = 20
               else
                  Act01Per = 20
                  Act02Per = 30
                  Act03Per = 50
                  Act04Per = 0
                  Act05Per = 0
                  Act06Per = 0
                  Act09Per = 0
               end
            elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
               if ai:GetNumber(0) == 0 then
                  ai:SetTimer(0, ai:GetRandam_Int(18, 22))
                  ai:SetNumber(0, 1)
                  Act01Per = 3
                  Act04Per = 2
                  Act05Per = 3
                  Act06Per = 2
                  Act07Per = 45
                  Act08Per = 45
                  Act09Per = 0
               elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                  if ai:GetNumber(0) == 0 then
                     ai:SetTimer(0, ai:GetRandam_Int(38, 42))
                     ai:SetNumber(0, 1)
                     Act07Per = 50
                     Act08Per = 50
                  elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
                     if ai:GetNumber(0) == 0 then
                        ai:SetTimer(0, ai:GetRandam_Int(8, 12))
                        ai:SetNumber(0, 1)
                        if targetDist >= 6 then
                           Act11Per = 25
                           Act13Per = 25
                           Act14Per = 50
                           Act15Per = 0
                           Act16Per = 0
                           if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
                              Act14Per = 0
                           elseif targetDist >= 4 then
                              Act11Per = 33
                              Act13Per = 33
                              Act14Per = 34
                              Act15Per = 0
                              Act16Per = 0
                              if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
                                 Act14Per = 0
                              elseif targetDist >= 2 then
                                 Act11Per = 50
                                 Act13Per = 50
                                 Act14Per = 0
                                 Act15Per = 0
                                 Act16Per = 0
                              elseif targetDist >= 1 then
                                 Act11Per = 50
                                 Act13Per = 50
                                 Act14Per = 0
                                 Act15Per = 0
                                 Act16Per = 0
                                 if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 150) then
                                    Act15Per = 50
                                 elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 150) then
                                    Act16Per = 50
                                 else
                                    Act11Per = 50
                                    Act13Per = 50
                                    Act14Per = 0
                                    Act15Per = 0
                                    Act16Per = 0
                                 end
                              elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                                 if ai:GetNumber(0) == 0 then
                                    ai:SetTimer(0, ai:GetRandam_Int(18, 22))
                                    ai:SetNumber(0, 1)
                                    Act11Per = 20
                                    Act07Per = 40
                                    Act08Per = 40
                                 elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                                    if ai:GetNumber(0) == 0 then
                                       ai:SetTimer(0, ai:GetRandam_Int(38, 42))
                                       ai:SetNumber(0, 1)
                                       Act07Per = 50
                                       Act08Per = 50
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       if ai:GetNpcThinkParamID() <= 413009 then
                                          local fateAct = ai:GetRandam_Int(1, Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per)
                                          if fateAct <= Act01Per then
                                             Kyu_Jujin413000_Act01(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per then
                                             Kyu_Jujin413000_Act02(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per + Act03Per then
                                             Kyu_Jujin413000_Act03(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per then
                                             Kyu_Jujin413000_Act04(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per then
                                             Kyu_Jujin413000_Act05(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per then
                                             Kyu_Jujin413000_Act06(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per then
                                             Kyu_Jujin413000_Act07(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per then
                                             Kyu_Jujin413000_Act08(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per then
                                             Kyu_Jujin413000_Act09(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act01Per + Act02Per + Act03Per + Act04Per + Act05Per + Act06Per + Act07Per + Act08Per + Act09Per + Act10Per then
                                             Kyu_Jujin413000_Act10(ai, goal)
                                             GetWellSpace_Odds = 0
                                          else
                                             Kyu_Jujin413000_Act20(ai, goal)
                                             GetWellSpace_Odds = 0
                                          end
                                       else
                                          local fateAct = ai:GetRandam_Int(1, Act11Per + Act13Per + Act14Per + Act15Per + Act16Per + Act07Per + Act08Per)
                                          if fateAct <= Act11Per then
                                             Kyu_Jujin413000_Act11(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act11Per + Act13Per then
                                             Kyu_Jujin413000_Act13(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act11Per + Act13Per + Act14Per then
                                             Kyu_Jujin413000_Act14(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act11Per + Act13Per + Act14Per + Act15Per then
                                             Kyu_Jujin413000_Act15(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act11Per + Act13Per + Act14Per + Act15Per + Act16Per then
                                             Kyu_Jujin413000_Act16(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act11Per + Act13Per + Act14Per + Act15Per + Act16Per + Act07Per then
                                             Kyu_Jujin413000_Act07(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act11Per + Act13Per + Act14Per + Act15Per + Act16Per + Act07Per + Act08Per then
                                             Kyu_Jujin413000_Act08(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif fateAct <= Act11Per + Act13Per + Act14Per + Act15Per + Act16Per + Act07Per + Act08Per + Act10Per then
                                             Kyu_Jujin413000_Act10(ai, goal)
                                             GetWellSpace_Odds = 0
                                          else
                                             Kyu_Jujin413000_Act20(ai, goal)
                                             GetWellSpace_Odds = 0
                                          end
                                          -- Tried to add an 'end' here but it's incorrect
                                          -- Tried to add an 'end' here but it's incorrect
                                          local fateGWS = ai:GetRandam_Int(1, 100)
                                          if fateGWS <= GetWellSpace_Odds then
                                             Kyu_Jujin413000_ActAfter_AdjustSpace(ai, goal)
                                          end
end

Kyu_Jujin413000_Act01 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3000_Dist_max
   local DashDist = Att3000_Dist_max + 4
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AppDist, 1, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AppDist, 1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, AppDist, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act02 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3001_Dist_max
   local DashDist = Att3001_Dist_max + 4
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act03 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3002_Dist_max
   local DashDist = Att3002_Dist_max + 4
   local Odds_Guard = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act04 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3003_Dist_max
   local DashDist = Att3003_Dist_max + 2
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act05 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3004_Dist_max
   local DashDist = Att3004_Dist_max
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3004, TARGET_ENE_0, 0, AI_DIR_TYPE_F, Att3004_Dist_min)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_F, Att3004_Dist_min)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act06 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3005_Dist_max
   local DashDist = Att3005_Dist_max + 2
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act07 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = 10
   local DashDist = 12
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 8, 12, TARGET_ENE_0, true, -1)
end

Kyu_Jujin413000_Act08 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
end

Kyu_Jujin413000_Act09 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3007_Dist_max
   local DashDist = Att3007_Dist_max + 4
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act10 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 2, TARGET_SELF, false, -1)
end

Kyu_Jujin413000_Act11 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local AppDist = Att3010_Dist_max
   local DashDist = Att3010_Dist_max + 0
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   if fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, AppDist, 1, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, AppDist, 1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, AppDist, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act13 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3012_Dist_max
   local DashDist = Att3012_Dist_max + 0
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act14 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3013_Dist_max
   local DashDist = Att3013_Dist_max + 0
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act15 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3014_Dist_max
   local DashDist = Att3014_Dist_max + 0
   local Odds_Guard = 0
   if AppDist <= targetDist then
      Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act16 = function(ai, goal, paramTbl)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local AppDist = Att3015_Dist_max
   local DashDist = Att3015_Dist_max + 0
   local Odds_Guard = 0
   Approach_Act(ai, goal, AppDist, DashDist, Odds_Guard, 3)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, AppDist, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act20 = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, false, -1)
end

Kyu_Jujin413000_ActAfter_AdjustSpace = function(ai, goal, paramTbl)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

Kyu_Jujin413000_ActAfter_RealTime = function(ai, goal)
   local fate = ai:GetRandam_Int(1, 100)
   local fate2 = ai:GetRandam_Int(1, 100)
   local bRight = ai:GetRandam_Int(0, 1)
   local targetDist = ai:GetDist(TARGET_ENE_0)
   local targetDist_F = ai:GetDist(TARGET_FRI_0)
   local GW_time = ai:GetRandam_Int(3, 5)
   local GW_angle = ai:GetRandam_Int(45, 60)
   if ai:GetNpcThinkParamID() <= 413009 then
      if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
         if ai:IsFinishTimer(0) == true then
            if fate <= 33 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_None)
            elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
               if fate2 <= 20 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
            elseif fate2 <= 80 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
            -- Tried to add an 'end' here but it's incorrect
            ai:SetNumber(0, 0)
         else
            if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
               if fate <= 15 then
               elseif fate <= 30 then
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, GW_time, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
               elseif fate <= 90 then
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 1, GW_angle, true, true, -1)
               else
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 0, GW_angle, true, true, -1)
               end
            else
               if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 90) then
                  if fate <= 15 then
                  elseif fate <= 30 then
                     goal:AddSubGoal(GOAL_COMMON_LeaveTarget, GW_time, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
                  elseif fate <= 40 then
                     goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 1, GW_angle, true, true, -1)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SidewayMove, GW_time, TARGET_ENE_0, 0, GW_angle, true, true, -1)
                  end
               else
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, GW_time, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
               end
            else
               --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

Kyu_Jujin413000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kyu_Jujin413000Battle_Terminate = function(ai, goal)
end

Kyu_Jujin413000Battle_Interupt = function(ai, goal)
   return false
end


