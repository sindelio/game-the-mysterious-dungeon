text_font = undefined

function load_custom_font(){
  // Load custom font at runtime, because the editor is buggy
  text_font = font_add("PixelifySans-VariableFont_wght.ttf", 22, false, false, 32, 128)
  
  // Set text font once, for all text. Mainly used in Draw GUI events
  draw_set_font(text_font)
}