module AirportDecorator

  	def select_department
    	[
	        ['Amazonas', 1],
	        ['Antioquia', 2],
	        ['Arauca', 3],
	        ['Atlantico', 4],
	        ['Bolivar', 5],
	        ['Boyacá', 6 ],
	        ['Caldas', 7],
	        ['Caquetá', 8],
	        ['Casanare', 9],
	        ['Cauca', 10],
	        ['Cesar', 11],
	        ['Chocó', 12],
	        ['Córdoba', 13],
	        ['Córdoba', 14],
	        ['Guainía', 15],
	        ['Guaviare', 16],
	        ['Huila', 17],
	        ['La Guajira', 18],
	        ['Magdalena', 19],
	        ['Meta', 20],
	        ['Nariño', 21],
	        ['Norte de Santander', 22],
	        ['Putumayo', 23],
	        ['Quindio', 24],
	        ['Risaralda', 25],
	        ['San Andres y Providencia', 26],
	        ['Sucre', 28],
	        ['Tolima', 29],
	        ['Valle del Cauca', 30],
	        ['Vaupés', 31],
	        ['Vichada', 32]
    	]
  	end

	def label_department
	    if select_department.flatten.include?(department.to_i)
	      select_department.each { |first_name, id| return first_name if department.to_i == id }
	    end
	end
end