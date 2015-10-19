module PatientDecorator

  	def select_genre
    	[
	        ['Masculino', 1],
	        ['Femenino', 2],
	        ['Transexual', 3]
    	]
  	end

	def label_genre
	    if select_genre.flatten.include?(genre.to_i)
	      select_genre.each { |first_name, id| return first_name if genre.to_i == id }
	    end
	end
  	
  	def select_document
    	[
	        ['Cedula de Ciudadania', 1],
	        ['Tarjeta de Identidad', 2],
	        ['Cedula de Extranjeria', 3],
	        ['Pasaporte', 4],
	        ['Documento nacional de identificación', 5],
	        ['Registro Civil', 6]
    	]
  	end

	def label_documento
	    if select_document.flatten.include?(type_document.to_i)
	      select_document.each { |first_name, id| return first_name if type_document.to_i == id }
	    end
	end
  	
  	def select_blood
    	[
	        ['O-', 1],
	        ['O+', 2],
	        ['A-', 3],
	        ['A+', 4],
	        ['B-', 5],
	        ['B+', 6],
	        ['AB-', 7],
	        ['AB+', 8]
    	]
  	end

	def label_blood
	    if select_blood.flatten.include?(blood_type.to_i)
	      select_blood.each { |first_name, id| return first_name if blood_type.to_i == id }
	    end
	end


  	def select_condition
    	[
	        ['Pasajero', 1],
	        ['Tripulante', 2],
	        ['Empleado', 3],
	        ['Visitante', 4],
	        ['Otro', 5]
    	]
  	end

	def label_condition
	    if select_condition.flatten.include?(condition.to_i)
	      select_condition.each { |first_name, id| return first_name if condition.to_i == id }
	    end
	end



end