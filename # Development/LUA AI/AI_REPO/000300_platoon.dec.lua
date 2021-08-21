function Platoon000300_Activate(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, 0)
    arg0:SetFormationParam(2, 1, -3.5)
    arg0:SetFormationParam(3, -1, -6)
    arg0:SetFormationParam(4, 0.5, -9)
    arg0:SetFormationParam(5, -0.5, -11.5)
    arg0:SetFormationParam(6, 0.5, -14)
    arg0:SetFormationParam(7, -0.5, -16.1)
    arg0:SetFormationParam(8, 0.5, -19.2)
    arg0:SetFormationParam(9, -0.5, -21.4)
    arg0:SetFormationParam(10, 0.5, -23.4)
    arg0:SetFormationParam(11, -0.5, -25.7)
    arg0:SetBaseMoveRate(0, 1.5)
    return 
end

function Platoon000300_Deactivate(arg0)
    return 
end

function Platoon000300_Update(arg0)
    Platoon_Common_Act(arg0)
    return 
end

return 
