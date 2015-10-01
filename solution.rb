#Solution File
class Nodo
	attr_accessor :nodo, :lista
	
	def initialize nodo,lista
		@nodo=nodo
		@lista=lista
	end
end

class Lista
	def initialize nodo
		@header=Nodo.new(nodo,nil)
	end
		def agregar(nodo)
			direccion=@header
			while direccion.lista !=nil
				direccion=direccion.lista
			end
				direccion.lista=Nodo.new(nodo,nil)
				self
		end

	#Imprimir valores
	def imprimir
		direccion=@header
		lista = []
		while direccion.lista !=nil
			lista = lista + [direccion.nodo.to_s]
			direccion = direccion.lista
		end
			lista += [direccion.nodo.to_s]
			puts lista.join(",")
		end
	end
		nodo = gets.chomp
		lista = Lista.new(nodo)
		while nodo != "-1"
			nodo = gets.chomp
			if nodo != "-1"
				lista.agregar(nodo)
			end
	end
	puts lista.imprimir	
