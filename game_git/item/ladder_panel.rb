require_relative "load.rb"

module Item
  class LadderPanel
    def initialize(x,y,num)
      @img=Item::Load.new
      @num=num
      @x=x
      @y=y
      @size=50
      @draw_panel=0
      @draw_count=0
    end

    def draw
      @draw_count+=1
      if @draw_count>=10
        @draw_panel+=1
        @draw_count=0
        @draw_panel=0 if @draw_panel>=@img.step[0].length
      end
      Window.draw(@x,@y,@img.warp_tile[@num])
      Window.draw(@x,@y,@img.step[@num][@draw_panel])
      Window.draw(@x,@y,@img.warp_edge)
    end

    def onto_player
      x=$player.x+$player.size/2
      y=$player.y+$player.size/2

      if @x<x && x<@x+@size && @y<y && y<@y+@size
        if @num==0
          if $stage_num_z<$STAGE_MAX_Z-1
            $stage_num_z+=1
          end
        elsif @num==1
          if $stage_num_z>0
            $stage_num_z-=1
          end
        end
      end

    end

  end
end
