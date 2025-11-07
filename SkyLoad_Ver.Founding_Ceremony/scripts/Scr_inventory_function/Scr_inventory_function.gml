// スクリプトのアセットが v2.3.0 用に変更されました。 詳細については、
// https://help.yoyogames.com/hc/en-us/articles/360005277377 を参照してください
// 指定アイテムが inv 内にあるか検索
function m_inventorySearch(_inv, _itemStruct) {
    for (var i = 0; i < array_length(_inv); i++) {
        if (_inv[i] == _itemStruct) return i;
    }
    return -1;
}

// 削除
function m_inventoryRemove(_inv, _itemStruct) {
    var _slot = m_inventorySearch(_inv, _itemStruct);
    if (_slot != -1) {
        array_delete(_inv, _slot, 1);
        return true;
    }
    return false;
}

// 追加
function m_inventoryAdd(_inv, _itemStruct) {
    array_push(_inv, _itemStruct);
    return true;
}
