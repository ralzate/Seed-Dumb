module HistoriasClinicasHelper

	def checked(area)
		@historia_clinica.d_alteracion.nil? ? false : @historia_clinica.d_alteracion.match(area)
	end

	def checked(area)
		@historia_clinica.d_otros_signos.nil? ? false : @historia_clinica.d_otros_signos.match(area)
	end
	

end
