module UserDecorator
  	
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
  	

end