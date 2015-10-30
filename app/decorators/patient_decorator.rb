module PatientDecorator

  	def select_genre
    	[
	        ['Masculino', 1],
	        ['Femenino', 2],
	        ['Transexual', 3]
    	]
  	end

	def label_genre
	    if select_genre.flatten.include?(gender.to_i)
	      select_genre.each { |first_name, id| return first_name if gender.to_i == id }
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




  	def select_profession
    	[

['Abogado', 1],
['Académico', 2],
['Adjunto', 3],
['Administrador', 4],
['Administrativo', 5],
['Agrónomo', 6],
['Alergólogo', 7],
['Alergista', 8],
['Almacenero', 9],
['Almacenista', 10],
['Anatomista', 11],
['Anestesiólogo', 12],
['Anestesista', 13],
['Antologista', 14],
['Antropólogo', 15],
['Arabista', 16],
['Archivero', 17],
['Arqueólogo', 18],
['Arquitecto', 19],
['Asesor', 20],
['Asistente', 21],
['Astrofísico', 22],
['Astrólogo', 23],
['Astrónomo', 24],
['Atleta', 25],
['Ats', 26],
['Autor', 27],
['Auxiliar', 28],
['Avicultor', 29],
['Bacteriólogo', 30],
['Bedel', 31],
['Bibliógrafo', 32],
['Bibliotecario', 33],
['Biofísico', 34],
['Biógrafo', 35],
['Biólogo', 36],
['Bioquímico', 37],
['Botánico', 38],
['Cancerólogo', 39],
['Cartógrafo', 40],
['Castrador', 41],
['Catedrático', 42],
['Chef', 42],
['Cirujano', 43],
['Citólogo', 44],
['Climatólogo', 45],
['Cocinero', 42],
['Codirector', 46],
['Comadrón', 47],
['Consejero', 48],
['Conserje', 49],
['Conservador', 50],
['Coordinador', 51],
['Cosmógrafo', 52],
['Cosmólogo', 53],
['Criminalista', 54],
['Cronólogo', 55],
['Decano', 56],
['Decorador', 57],
['Defensor', 58],
['Delegado', 59],
['Delineante', 60],
['Demógrafo', 61],
['Dentista', 62],
['Dermatólogo', 63],
['Dibujante', 64],
['Directivo', 65],
['Director', 66],
['Dirigente', 67],
['Doctor', 68],
['Documentalista', 69],
['Ecólogo', 70],
['Economista', 71],
['Educador', 72],
['Egiptólogo', 73],
['Endocrinólogo', 74],
['Enfermero', 75],
['Enólogo', 76],
['Entomólogo', 77],
['Epidemiólogo', 78],
['Especialista', 79],
['Espeleólogo', 80],
['Estadista', 81],
['Estadístico', 82],
['Etimólogo', 83],
['Etimologista', 84],
['Etnógrafo', 85],
['Etnólogo', 86],
['Etólogo', 87],
['Examinador', 88],
['Facultativo', 89],
['Farmacéutico', 90],
['Farmacólogo', 91],
['Filólogo', 92],
['Filósofo', 93],
['Fiscal', 94],
['Físico', 95],
['Fisiólogo', 96],
['Fisioterapeuta', 97],
['Fonetista', 98],
['Foníatra', 99],
['Fonólogo', 100],
['Forense', 101],
['Fotógrafo', 102],
['Funcionario', 103],
['Gemólogo', 104],
['Genetista', 105],
['Geobotánica', 106],
['Geodesta', 107],
['Geofísico', 108],
['Geógrafo', 109],
['Geólogo', 110],
['Geomántico', 111],
['Geómetra', 112],
['Geoquímica', 113],
['Gerente', 114],
['Geriatra', 115],
['Gerontólogo', 116],
['Grabador ', 117],
['Graduado social ', 118],
['Grafólogo', 119],
['Gramático', 120],
['Hematólogo', 121],
['Hepatólogo', 122],
['Hidrogeólogo', 123],
['Hidrógrafo', 124],
['Hidrólogo', 125],
['Higienista', 126],
['Hispanista', 127],
['Historiador', 128],
['Homeópata', 129],
['Informático', 130],
['Ingeniero', 131],
['Ingeniero técnico', 132],
['Inmunólogo', 133],
['Inspector', 134],
['Interino', 135],
['Interventor', 136],
['Investigador', 137],
['Jardinero', 138],
['Jefe', 139],
['Juez', 140],
['Latinista', 141],
['Lector', 142],
['Letrado (abogado)', 143],
['Lexicógrafo', 144],
['Lexicólogo', 145],
['Licenciado', 146],
['Lingüista', 147],
['Logopeda', 148],
['Maestro', 149],
['Matemático', 150],
['Matrón', 151],
['Medico', 152],
['Meteorólogo', 153],
['Micólogo', 154],
['Microbiológico', 155],
['Microcirujano', 156],
['Mimógrafo', 157],
['Mineralogista', 158],
['Monitor', 159],
['Musicólogo', 160],
['Naturópata', 161],
['Nefrólogo', 162],
['Neumólogo', 163],
['Neuroanatomista', 164],
['Neurobiólogo', 165],
['Neurocirujano', 166],
['Neuroembriólogo', 167],
['Neurofisiólogo', 168],
['Neurólogo', 169],
['Nutrólogo', 170],
['Oceanógrafo', 171],
['Odontólogo', 172],
['Oficial', 173],
['Oficinista', 174],
['Oftalmólogo', 175],
['Oncólogo', 176],
['Óptico', 177],
['Optometrista', 178],
['Ordenanza', 179],
['Orientador', 180],
['Ornitólogo', 181],
['Ortopédico', 182],
['Ortopedista', 183],
['Osteólogo', 184],
['Osteópata', 185],
['Otorrinolaringólogo', 186],
['Paleobiólogo', 187],
['Paleobotánico', 188],
['Paleógrafo', 189],
['Paleólogo', 190],
['Paleontólogo', 191],
['Patólogo', 192],
['Pedagogo', 193],
['Pediatra', 193],
['Pedicuro', 194],
['Periodista', 195],
['Perito', 196],
['Ingeniero técnico', 197],
['Piscicultor', 198],
['Podólogo', 199],
['Portero', 200],
['Prehistoriador', 201]

=begin


Pendientes
,
['Presidente', 201],
['Proctólogo', 201],
['Profesor', 201],
['Programador', 201],
['Protésico', 201],
['Proveedor', 201],
['Psicoanalista', 201],
['Psicólogo', 201],
['Psicofísico', 137],
['Psicopedagogo', 137],
['Psicoterapeuta', 137],
['Psiquiatra', 137],
['Publicista', 137],
['Publicitario', 137],
['Puericultor', 137],
['Químico', 137],
['Quiropráctico', 137],
['Radioastrónomo', 137],
['Radiofonista', 137],
['Radiólogo', 137],
['Radiotécnico', 137],
['Radiotelefonista', 137],
['Radiotelegrafista', 137],
['Radioterapeuta', 137],
['Rector', 137],
['Sanitario', 137],
['Secretario', 137],
['Sexólogo', 137],
['Sismólogo', 137],
['Sociólogo', 137],
['Subdelegado', 137],
['Subdirector', 137],
['Subsecretario', 137],
['Técnico', 137],
['Telefonista', 137],
['Teólogo', 137],
['Terapeuta', 137],
['Tocoginecólogo', 137],
['Tocólogo', 137],
['Toxicólogo', 137],
['Traductor', 137],
['Transcriptor', 137],
['Traumatólogo', 137],
['Tutor', 137],
['Urólogo', 137],
['Veterinario', 137],
['Vicedecano', 137],
['Vicedirector', 137],
['Vicegerente', 137],
['Vicepresidente', 137],
['Vicerrector', 137],
['Vicesecretario', 137],
['Virólogo', 137],
['Viticultor', 137],
['Vulcanólogo', 137],
['Xilógrafo', 137],
['Zoólogo', 137],
['Zootécnico', 137],



=end


  
  
 
 
 
 
 
 
 
 
 
  
  
 
  
  
 
 
 
 
 
 
 
 
  
 
 
 
 
 
  
 
 
 
  
 
 
 
 
 
 
  
 
 
 
 
 



    	]
  	end

	def label_profession
	    if select_profession.flatten.include?(profession.to_i)
	      select_profession.each { |first_name, id| return first_name if profession.to_i == id }
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