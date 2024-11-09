var c;

c = 0;
while (c != vk_escape) {
  keyboard_wait();
  c = keyboard_lastkey;
}