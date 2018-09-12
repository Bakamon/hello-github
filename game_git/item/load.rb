module Item
  class Load
    attr_reader :warp_edge,:warp_tile,:step

    def initialize
      @warp_edge=Image.load("item/load/image/warp_edge.png")
      @warp_edge.set_color_key(C_BLACK)

      @warp_tile=[
        Image.load("item/load/image/aqua_tile.png"),
        Image.load("item/load/image/pink_tile.png")
      ]

      @step=Array.new(2).map{Array.new(2)}
      @step[0][0]=Image.load("item/load/image/up_step_0.png")
      @step[0][1]=Image.load("item/load/image/up_step_1.png")
      @step[0][2]=Image.load("item/load/image/up_step_2.png")
      @step[0][3]=Image.load("item/load/image/up_step_3.png")
      @step[0][4]=Image.load("item/load/image/up_step_4.png")
      @step[1][0]=Image.load("item/load/image/down_step_4.png")
      @step[1][1]=Image.load("item/load/image/down_step_3.png")
      @step[1][2]=Image.load("item/load/image/down_step_2.png")
      @step[1][3]=Image.load("item/load/image/down_step_1.png")
      @step[1][4]=Image.load("item/load/image/down_step_0.png")

      @step.each do |ary|
        ary.each do |ary2|
          ary2.set_color_key(C_BLACK)
        end
      end

    end

  end
end
