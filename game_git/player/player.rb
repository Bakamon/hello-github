require_relative "load.rb"

module Player
  class Object
    attr_accessor :x,:y
    attr_reader :size

    def initialize
      @img=Player::Load.new
      @size=50
      @x=200
      @y=200
      @img_num=0
      @speed=2
      @walk_image_count=0
    end

    def draw
      Window.draw(@x,@y,@img.player[@img_num])
    end

    def walk_image
      @walk_image_count+=1
      if @walk_image_count>=15
        @img_num+=1
        @walk_image_count=0
      end
      if @img_num>1
        @img_num=0
      end
    end

    def move
      if Input.keyDown?(K_LEFT)
        @x-=@speed
        self.walk_image
      end
      if Input.keyDown?(K_RIGHT)
        @x+=@speed
        self.walk_image
      end
      if Input.keyDown?(K_UP)
        @y-=@speed
        self.walk_image
      end
      if Input.keyDown?(K_DOWN)
        @y+=@speed
        self.walk_image
      end

      if $stage_num_x==0
        if @x<0
          @x=0
        end
      elsif $stage_num_x==$STAGE_MAX_X-1
        if @x>Window.width-@size
          @x=Window.width-@size
        end
      end
      if $stage_num_y==0
        if @y<0
          @y=0
        end
      elsif $stage_num_y==$STAGE_MAX_Y-1
        if @y>Window.height-@size
          @y=Window.height-@size
        end
      end

    end

  end
end
