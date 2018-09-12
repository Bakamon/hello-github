module Stage
  class Load
    attr_reader :player,:layer

    def initialize

      @layer=[
        Image.load("stage/load/image/layer_0.png"),
        Image.load("stage/load/image/layer_1.png")
      ]

    end
  end
end
