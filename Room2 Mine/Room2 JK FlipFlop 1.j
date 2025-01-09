function Trig_Room2_JK_FlipFlop_1_Func001Func003C takes nothing returns boolean
    if ( not ( udg_FlipFlop_J == true ) ) then
        return false
    endif
    if ( not ( udg_Room2_FlipFlop_Q[0] == false ) ) then
        return false
    endif
    if ( not ( udg_Room2_FlipFlop_Q_Not[1] == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func001C takes nothing returns boolean
    if ( not Trig_Room2_JK_FlipFlop_1_Func001Func003C() ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func002Func003C takes nothing returns boolean
    if ( not ( udg_FlipFlop_K == true ) ) then
        return false
    endif
    if ( not ( udg_Room2_FlipFlop_Q[0] == false ) ) then
        return false
    endif
    if ( not ( udg_Room2_FlipFlop_Q[1] == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func002C takes nothing returns boolean
    if ( not Trig_Room2_JK_FlipFlop_1_Func002Func003C() ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func003Func003C takes nothing returns boolean
    if ( not ( udg_Room2_FlipFlop_R[1] == false ) ) then
        return false
    endif
    if ( not ( udg_Room2_FlipFlop_S_Output[1] == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func003C takes nothing returns boolean
    if ( not Trig_Room2_JK_FlipFlop_1_Func003Func003C() ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func004Func003C takes nothing returns boolean
    if ( not ( udg_Room2_FlipFlop_S[1] == false ) ) then
        return false
    endif
    if ( not ( udg_Room2_FlipFlop_R_Output[1] == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func004C takes nothing returns boolean
    if ( not Trig_Room2_JK_FlipFlop_1_Func004Func003C() ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func005Func003C takes nothing returns boolean
    if ( not ( udg_Room2_FlipFlop_R[1] == false ) ) then
        return false
    endif
    if ( not ( udg_Room2_FlipFlop_S_Output[1] == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func005C takes nothing returns boolean
    if ( not Trig_Room2_JK_FlipFlop_1_Func005Func003C() ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func007Func003C takes nothing returns boolean
    if ( not ( udg_Room2_FlipFlop_S[1] == false ) ) then
        return false
    endif
    if ( not ( udg_Room2_FlipFlop_R_Output[1] == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Func007C takes nothing returns boolean
    if ( not Trig_Room2_JK_FlipFlop_1_Func007Func003C() ) then
        return false
    endif
    return true
endfunction

function Trig_Room2_JK_FlipFlop_1_Actions takes nothing returns nothing
    if ( Trig_Room2_JK_FlipFlop_1_Func001C() ) then
        set udg_Room2_FlipFlop_S[1] = true
    else
        set udg_Room2_FlipFlop_S[1] = false
    endif
    if ( Trig_Room2_JK_FlipFlop_1_Func002C() ) then
        set udg_Room2_FlipFlop_R[1] = true
    else
        set udg_Room2_FlipFlop_R[1] = false
    endif
    if ( Trig_Room2_JK_FlipFlop_1_Func003C() ) then
        set udg_Room2_FlipFlop_R_Output[1] = true
    else
        set udg_Room2_FlipFlop_R_Output[1] = false
    endif
    if ( Trig_Room2_JK_FlipFlop_1_Func004C() ) then
        set udg_Room2_FlipFlop_S_Output[1] = true
    else
        set udg_Room2_FlipFlop_S_Output[1] = false
    endif
    if ( Trig_Room2_JK_FlipFlop_1_Func005C() ) then
        set udg_Room2_FlipFlop_R_Output[1] = true
    else
        set udg_Room2_FlipFlop_R_Output[1] = false
    endif
    set udg_Room2_FlipFlop_Q[1] = udg_Room2_FlipFlop_R_Output[1]
    if ( Trig_Room2_JK_FlipFlop_1_Func007C() ) then
        set udg_Room2_FlipFlop_S_Output[1] = true
    else
        set udg_Room2_FlipFlop_S_Output[1] = false
    endif
    set udg_Room2_FlipFlop_Q_Not[1] = udg_Room2_FlipFlop_S_Output[1]
endfunction

//===========================================================================
function InitTrig_Room2_JK_FlipFlop_1 takes nothing returns nothing
    set gg_trg_Room2_JK_FlipFlop_1 = CreateTrigger(  )
    call DisableTrigger( gg_trg_Room2_JK_FlipFlop_1 )
    call TriggerAddAction( gg_trg_Room2_JK_FlipFlop_1, function Trig_Room2_JK_FlipFlop_1_Actions )
endfunction