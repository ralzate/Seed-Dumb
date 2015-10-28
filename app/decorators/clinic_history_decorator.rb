module ClinicHistoryDecorator

  	def select_relationship
    	[
	        ['Papa', 1],
	        ['Mama', 2],
	        ['Hermano', 3],
	        ['Hermana', 4],
	        ['Abuelo', 5],
	        ['Abuela', 6],
	        ['Tio', 7],
	        ['Tia', 8],
	        ['Primo', 9],
	        ['Prima', 10],
	        ['Esposa', 11],
	        ['Esposo', 12],
	        ['Hijo', 13],
	        ['Hija', 14],
    	]
  	end

	def label_relationship
	    if select_relationship.flatten.include?(relationship.to_i)
	      select_relationship.each { |first_name, id| return first_name if relationship.to_i == id }
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



  	def select_type_service
    	[
	        ['Atención prehospitalaria', 1],
	        ['Valoración aptitud de vuelo', 2],
	        ['Enfermedad general', 3],
	        ['Evento laboral', 4],
	        ['Accidente de transito', 5],
	        ['Traslado ', 6],
	        ['Otro tipo de accidente ', 7],
	        ['Remisión ', 8]

    	]
  	end

	def label_type_service
	    if select_type_service.flatten.include?(type_service.to_i)
	      select_type_service.each { |first_name, id| return first_name if type_service.to_i == id }
	    end
	end



end