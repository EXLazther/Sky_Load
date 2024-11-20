function m_remove_item(index) {
    if (index >= 0 && index < array_length(inv)) {
        array_splice(inv, index, 1);
        if (selected_item == index) {
            selected_item--;
            if (selected_item < 0) selected_item = 0;
        }
    }
}
