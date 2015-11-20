# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Eps.create!([
  { name: "Cafesalud" },
  { name: "Calisalud" },
  { name: "Caprecom" },
  { name: "Capresoca" },
  { name: "Colmédica" },
  { name: "Compensar" },
  { name: "Comfenalco Antioquia" },
  { name: "Comfenalco Valle" },
  { name: "Convida ARS" },
  { name: "Coomeva EPS" },
  { name: "Cruz Blanca" },
  { name: "Famisanar" },
  { name: "Humana Vivir" },
  { name: "Instituto de los Seguros Sociales" },
  { name: "Salud Colmena" },
  { name: "Salud Colpatria" },
  { name: "Salud Total" },
  { name: "Saludcolombia EPS S.A." },
  { name: "SaludCoop" },
  { name: "Saludvida" },
  { name: "Sanitas" },
  { name: "Selvasalud" },
  { name: "Solsalud" },
  { name: "S.O.S EPS" },
  { name: "Susalud" }

])

Arl.create!([
  { name: "Seguros De Vida Colpatria S.A." },
  { name: "Cia. De Seguros Bolivar S.A." },
  { name: "Compañia De Seguros De Vida Aurora" },
  { name: "Seguros De Vida Alfa S.A." },
  { name: "Liberty Seguros De Vida" },
  { name: "Arp - Positiva Compañia De Seguros" },
  { name: "Riesgos Profesionales Colmena S.A Compañia De Seguros De Vida Arl- Sura" },
  { name: "La Equidad Seguros De Vida Organismo Cooperativo - La Equidad Vida" },
  { name: "Mapfre Colombia Vida Seguros S.A. " },
  { name: "La Previsora Vida S.A. Compañia De Seguros (Iss)" }
])

Rol.create!([
  { name: "Administrador", restrictions: "Acceso Total" },
  { name: "Medico", restrictions: "Acceso Parcial" },
  { name: "Enfermera", restrictions: "Acceso Limitado" }
])

City.create!([
  { name: "Aguachica", country_code: "CO" },
  { name: "Apartadó", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Armenia", country_code: "CO" },
  { name: "Barrancabermeja", country_code: "CO" },
  { name: "Barranquilla", country_code: "CO" },
  { name: "Bello", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
])













Airport.create!([
  { name: "Aeropuerto Internacional El Edén", city_id: "Acceso Total" },
  { name: "Aeropuerto Internacional Ernesto Cortissoz", restrictions: "Acceso Parcial" },
  { name: "Aeropuerto Internacional El Dorado", restrictions: "Acceso Limitado" }
])