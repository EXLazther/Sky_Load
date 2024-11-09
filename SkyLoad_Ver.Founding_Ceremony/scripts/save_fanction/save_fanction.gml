//Room saving
function save_room()
{
    //Get the individual count of each savable object
    //var _obj_item_overworld=instance_number(obj_item_overworld);
    var _itemNum=instance_number(obj_item_manager);
    var _roomStruct={

        /*obj_item_overworldNum : _obj_item_overworld,
        obj_item_overworldData : array_create(_obj_item_overworld),*/
        itemNum : _itemNum,
        itemData: array_create(_itemNum),

    }
    //Get the date from the different saveble objects

    //_obj_item_overworld
    /*for(var i =0;i< _obj_item_overworld ;i++){
        var _inst=instance_find(obj_item_overworld,i);

        _roomStruct.obj_item_overworldData[i]={
            x: _inst.x,
            y: _inst.y,
        }
    }*/
    
    //Items
    for(var i =0;i< _itemNum;i++){
        var _inst=instance_find(obj_item_manager,i);

        _roomStruct.itemData[i]={
            x: _inst.x,
            y: _inst.y,
            image : _inst.image_index,

        }
    }


    //Store the room specific struct in global.levelData's variable meant for that level
    //プリセット（＃＃は入力欄）「if room == ＃ルーム名＃ {global.levelData.level＃N＃= _roomStruct;};で入力して
    if room == start {global.levelData.level_1= _roomStruct;};
    if room == test_rm {global.levelData.level_2= _roomStruct;};
    if room == castle1 {global.levelData.level_3= _roomStruct;};
    /* ＃obj_saveload＃に部屋番号の追加をする
    同ステージの遷移なら2-1、2-2みたいにする？*/
}

function load_room(){
    var _roomStruct=0;
    //get the correct struct for the room you're in
    if room == start {global.levelData.level_1= _roomStruct;};
    if room == test_rm {global.levelData.level_2= _roomStruct;};
    if room == castle1 {global.levelData.level_3=_roomStruct;};

    //EXIT if _roomStruct isn't a struct
    if !is_struct(_roomStruct){exit;};

    //COINS-get rid of the default room editor coins
    //then create new coins with all of the data we've previously saved
    if instance_exists(obj_item_overworld){instance_destroy(obj_item_overworld);};
    for (var i=0;i< _roomStruct.obj_item_overworldNum;i++){

        instance_create_layer(_roomStruct.obj_item_overworldData[i].x, _roomStruct.obj_item_overworldData[i].y,layer,obj_item_overworld);

    }
    
    //ITEM
    if instance_exists(obj_item){instance_destroy(obj_item);};
    for (var i=0;i< _roomStruct.obj_itemNum;i++){

        with(instance_create_layer(_roomStruct.obj_itemData[i].x, _roomStruct.obj_itemData[i].y,layer,obj_item))
        {
        image_index=_roomStruct.itemData[i].image;

        }

    }
    
}