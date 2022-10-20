class Coordinates
    
    def initialize(param, casas)
        @param = param.split("")
        @x = 0
        @y = 0
        @casas = casas
    
    end

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

    def recorrido
        @param.each do |p|
            @casas << step(p)
        end
        p @casas.uniq.size
    end
    
    
end
#< x.(-1) 
#> x.(+1)
#v  y.(-1)
#^ y.(+1)

if __FILE__ == $0
    test1 = Coordinates.new("^v^v^v^v^v", [[0,0]])
    test1.recorrido
end