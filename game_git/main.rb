require "dxruby"
require_relative "player/player.rb"
require_relative "stage/stage.rb"
require_relative "item/ladder_panel.rb"

Window.width=800
Window.height=600

$player=Player::Object.new

$ladder_panel_class=Item::LadderPanel


$stage_num_x=0
$stage_num_y=0
$stage_num_z=0

$STAGE_MAX_X=5
$STAGE_MAX_Y=5
$STAGE_MAX_Z=2

stage=Stage::Object.new
str_back=Image.new(125,50,[220,220,220])
font_place=Font.new(32)

Window.loop do

  stage.proccess
  stage.draw

  Window.draw(0,0,str_back)
  str_place=($stage_num_z).to_s+"F ("+($stage_num_x).to_s+","+($stage_num_y).to_s+")"
  Window.draw_font(10,10,str_place,font_place,color:[0,0,0])

end
