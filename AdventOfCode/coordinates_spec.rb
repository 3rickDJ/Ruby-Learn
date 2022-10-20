require_relative 'coordinates'
describe Coordinates do
    context "Dada una secuencia de movimientos se espera obtener numero de casas visitadas" do
        it "Se espera la visita a 2 casas con la cadena >" do
            test_first_example = Coordinates.new(">", [[0,0]])
            expect(test_first_example.recorridoSanta).to eq (2)
        end
        it "Se espera la visita a 4 regalos con la cadena ^>v<" do
            test_second_example = Coordinates.new("^>v<", [[0,0]])
            expect(test_second_example.recorridoSanta).to eq (4)
        end
        it "Se espera la visita a 2 casas con la cadena ^v^v^v^v^v" do
            test_third_example = Coordinates.new("^v^v^v^v^v", [[0,0]])
            expect(test_third_example.recorridoSanta).to eq (2)
        end
    end
    context "Dada una secuencia de movimientos para 2 Santas, se obtiene un numero de casas visitados por los dos" do
        it "Se espera la visita de 3 casas con la cadena ^v" do
            test_first_example = Coordinates.new("^v", [[0,0]])
            expect(test_first_example.recorridoSanta_Robot).to eq (3)
        end
        it "Se espera la visita de 3 casas con la cadena ^>v<" do
            test_second_example = Coordinates.new("^>v<", [[0,0]])
            expect(test_second_example.recorridoSanta_Robot).to eq (3)
        end
        it "Se espera la visita de 11 casas con la cadena ^v^v^v^v^v" do
            test_third_example = Coordinates.new("^v^v^v^v^v", [[0,0]])
            expect(test_third_example.recorridoSanta_Robot).to eq (11)
        end
    end
end
