if (ObjBattleManager.is_battle_started) 
{
    switch ObjBattleManager.current_state 
	{

        case 0:
            break;
        case 1:
            y += 1;
            break;
    }
    if(ObjBattleManager.current_state == 2){
        ObjBattleManager.is_battle_victory = true;
    }
}