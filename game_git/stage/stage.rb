require_relative "load"
require_relative "maps"

module Stage
  class Object

    def initialize
      @img=Stage::Load.new
      @@max_num_x=2
      @@max_num_y=2
      @@max_num_z=2
      @layer=self.set_layer

      @stage_num_x=$stage_num_x
      @stage_num_y=$stage_num_y
      @stage_num_z=$stage_num_z


      @maps=Stage::Maps.new
      @map=@maps.maps[$stage_num_z][@stage_num_y][@stage_num_x]

    end

    def proccess
      @map.process_faster_player
      $player.move
      @map.process_later_player
      self.slide_map
      self.change_map
    end

    def draw
      self.spread_layer
      @map.draw_under_player
      $player.draw
      @map.draw_upper_player
    end

    def set_layer
      case $stage_num_z
      when 0 then
        return @img.layer[0]
      when 1 then
        return @img.layer[1]
      end
    end

    def spread_layer
      12.times do |i|
        16.times do |j|
          Window.draw(50*j,50*i,@layer)
        end
      end
    end

    def change_map
      bool_change=false
      if @stage_num_x!=$stage_num_x
        @stage_num_x=$stage_num_x
        bool_change=true
      end
      if @stage_num_y!=$stage_num_y
        @stage_num_y=$stage_num_y
        bool_change=true
      end
      if @stage_num_z!=$stage_num_z
        @stage_num_z=$stage_num_z
        bool_change=true
      end

      if bool_change==true
        @map=@maps.maps[@stage_num_z][@stage_num_y][@stage_num_x]
        @layer=self.set_layer
      end
    end

    def slide_map
      if $player.x>Window.width-$player.size
        $player.x=0
        $stage_num_x+=1
      elsif $player.x<0
        $player.x=Window.width-$player.size
        $stage_num_x-=1
      end
      if $player.y>Window.height-$player.size
        $player.y=0
        $stage_num_y+=1
      elsif $player.y<0
        $player.y=Window.height-$player.size
        $stage_num_y-=1
      end

    end

  end
end
