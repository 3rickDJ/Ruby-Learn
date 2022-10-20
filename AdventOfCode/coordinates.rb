class Coordinates

    def initialize(param, casas)
        @param = param.split("")
        @x = 0
        @y = 0
        @casas = casas
        @santa = []
        @robot = []

    end

    #< x.(-1)
    #> x.(+1)
    #v  y.(-1)
    #^ y.(+1)
    def step(p)
        if p == '>'
            @x+=1
        elsif p== '<'
            @x-=1
        elsif p =='^'
            @y+=1
        elsif p =='v'
            @y-=1
        end
        return [@x,@y]
    end

    def recorridoSanta
        @param.each do |p|
            @casas << step(p)
        end
        return @casas.uniq.size()
    end
    def recorridoSanta_Robot
        @param.each_with_index do |p,idx|
            if idx % 2 == 0
                @santa << p
            else
                @robot << p
            end
        end
        @santa.each do |p|
            @casas << step(p)
        end
        @x = 0
        @y = 0
        @robot.each do |p|
            @casas << step(p)
        end
        return @casas.uniq.size()

    end
end


if __FILE__ == $0

    # input = File.read("input.txt")
    # puts input.split("")
    test1 = Coordinates.new("^v", [[0,0]])
    p test1.recorridoSanta_Robot
end
