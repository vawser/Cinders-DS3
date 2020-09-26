REGISTER_GOAL(GOAL_COMMON_CommonAttack, "CommonAttack")
CommonAttack_Activate = function(ai, goal)
end

CommonAttack_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

CommonAttack_Terminate = function(ai, goal)
end

CommonAttack_Interupt = function(ai, goal)
   return false
end


