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

end