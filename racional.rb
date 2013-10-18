# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_reader :numerador, :denominador #Numerador y denominador
	
	def initialize(num,den)
		mcd = gcd(num,den)
		@numerador = num / mcd
		@denominador = den / mcd
	end
	
	
	def to_s
		if @numerador == 0 
			"0"
		elsif @denominador == 1 
			"#{@numerador}"	
		elsif @numerador == @denominador 
			"1"
		else
			"#{@numerador}/#{@denominador}"
		end
	end
	
	
	def suma(other)
		Fraccion.new(@numerador * other.denominador + other.numerador * @denominador, @denominador * other.denominador)
	end
	
	
	def resta(other)
		Fraccion.new(@numerador * other.denominador - other.numerador * @denominador, @denominador * other.denominador)
	end
	
	
	def multiplicacion(other)
		Fraccion.new(@numerador * other.numerador, @denominador *other.denominador)
	end
		
       
	def division(other)
		Fraccion.new(@numerador * other.denominador, @denominador * other.numerador)
	end
end




a = Fraccion.new(2, 3)
b = Fraccion.new(2, 3)

print "a = "
puts a
print "b = "
puts b

print "suma = "
puts a.suma(b)
print "resta = "
puts a.resta(b)
print "multiplicacion = "
puts a.multiplicacion(b)
print "division = "
puts a.division(b)
