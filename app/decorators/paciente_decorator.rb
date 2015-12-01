module PacienteDecorator

  	def select_genero
    	[
	        ['Masculino', 'Masculino'],
	        ['Femenino', 'Femenino'],
	        ['Transexual', 'Transexual']
    	]
  	end

  	
  	def select_documento
    	[
	        ['Cedula de Ciudadania', 'Cedula de Ciudadania'],
	        ['Tarjeta de Identidad', 'Tarjeta de Identidad'],
	        ['Cedula de Extranjeria', 'Cedula de Extranjeria'],
	        ['Pasaporte', 'Pasaporte'],
	        ['Documento nacional de identificación', 'Documento nacional de identificación'],
	        ['Registro Civil', 'Registro Civil']
    	]
  	end


  	def select_sangre
    	[
	        ['O-', 'O-'],
	        ['O+', 'O+'],
	        ['A-', 'A-'],
	        ['A+', 'A+'],
	        ['B-', 'B-'],
	        ['B+', 'B+'],
	        ['AB-', 'AB-'],
	        ['AB+', 'AB+']
    	]
  	end


  	def select_condicion
    	[
	        ['Pasajero', 'Pasajero'],
	        ['Tripulante', 'Tripulante'],
	        ['Empleado', 'Empleado'],
	        ['Visitante', 'Visitante'],
	        ['Otro', 'Otro']
    	]
  	end


end