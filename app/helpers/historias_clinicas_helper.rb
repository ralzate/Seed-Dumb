module HistoriasClinicasHelper

	def checked(area)
		@historia_clinica.alteration.nil? ? false : @historia_clinica.alteration.match(area)
	end

	def checked(area)
		@historia_clinica.other_signs.nil? ? false : @historia_clinica.other_signs.match(area)
	end
	

end
