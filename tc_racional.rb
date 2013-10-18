# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"


class Test_Fraccion < Test::Unit::TestCase
        
        def setup
			@num1 = Fraccion.new(2,3)
			@num2 = Fraccion.new(2,3)
		end
        
        def test_1
        
                assert_equal("4/3", @num1.suma(@num2).to_s) 
                assert_equal("0", @num1.resta(@num2).to_s) 
                assert_equal("4/9", @num1.multiplicacion(@num2).to_s) 
                assert_equal("1", @num1.division(@num2).to_s) 
                
        end

end
