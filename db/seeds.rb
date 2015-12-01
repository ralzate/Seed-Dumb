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
  { name: "Administrador", restricciones: "Acceso Total" },
  { name: "Medico", restricciones: "Acceso Parcial" },
  { name: "Enfermera", restricciones: "Acceso Limitado" }
])

City.create!([
  { name: "Aguachica", country_code: "CO" },
  { name: "Apartadó", country_code: "CO" },
  { name: "Arauca", country_code: "CO" },
  { name: "Armenia", country_code: "CO" },
  { name: "Barrancabermeja", country_code: "CO" },
  { name: "Barranquilla", country_code: "CO" },
  { name: "Bello", country_code: "CO" },
  { name: "Bogotá", country_code: "CO" },
  { name: "Bucaramanga", country_code: "CO" },
  { name: "Buenaventura", country_code: "CO" },
  { name: "Buga", country_code: "CO" },
  { name: "Cali", country_code: "CO" },
  { name: "Cartago", country_code: "CO" },
  { name: "Cartagena", country_code: "CO" },
  { name: "Caucasia", country_code: "CO" },
  { name: "Chia", country_code: "CO" },
  { name: "Ciénaga", country_code: "CO" },
  { name: "Cúcuta", country_code: "CO" },
  { name: "Dosquebradas", country_code: "CO" },
  { name: "Envigado", country_code: "CO" },
  { name: "Facatativá", country_code: "CO" },
  { name: "Florencia", country_code: "CO" },
  { name: "Floridablanca", country_code: "CO" },
  { name: "Fusagasugá", country_code: "CO" },
  { name: "Girardot", country_code: "CO" },
  { name: "Girón", country_code: "CO" },
  { name: "Ibagué", country_code: "CO" },
  { name: "Itagüí", country_code: "CO" },
  { name: "Jamundí", country_code: "CO" },
  { name: "Lorica", country_code: "CO" },
  { name: "Los Patios", country_code: "CO" },
  { name: "Magangué", country_code: "CO" },
  { name: "Maicao", country_code: "CO" },
  { name: "Malambo", country_code: "CO" },
  { name: "Manizales", country_code: "CO" },
  { name: "Medellín", country_code: "CO" },
  { name: "Melgar", country_code: "CO" },
  { name: "Montería", country_code: "CO" },
  { name: "Neiva", country_code: "CO" },
  { name: "Ocaña", country_code: "CO" },
  { name: "Paipa", country_code: "CO" },
  { name: "Palmira", country_code: "CO" },
  { name: "Pamplona", country_code: "CO" },
  { name: "Pereira", country_code: "CO" },
  { name: "Piedecuesta", country_code: "CO" },
  { name: "Pitalito", country_code: "CO" },
  { name: "Popayán", country_code: "CO" },
  { name: "Quibdó", country_code: "CO" },
  { name: "Riohacha", country_code: "CO" },
  { name: "Rionegro", country_code: "CO" },
  { name: "Sabanalarga", country_code: "CO" },
  { name: "Sahagún", country_code: "CO" },
  { name: "San Andrés", country_code: "CO" },
  { name: "Santa Marta", country_code: "CO" },
  { name: "Sincelejo", country_code: "CO" },
  { name: "Soacha", country_code: "CO" },
  { name: "Sogamoso", country_code: "CO" },
  { name: "Soledad", country_code: "CO" },
  { name: "Tibú", country_code: "CO" },
  { name: "Tuluá", country_code: "CO" },
  { name: "Tumaco", country_code: "CO" },
  { name: "Tunja", country_code: "CO" },
  { name: "Turbo", country_code: "CO" },
  { name: "Valledupar", country_code: "CO" },
  { name: "Villa de leyva", country_code: "CO" },
  { name: "Villa del Rosario", country_code: "CO" },
  { name: "Villavicencio", country_code: "CO" },
  { name: "Yopal", country_code: "CO" },
  { name: "Yumbo", country_code: "CO" },
  { name: "Zipaquirá", country_code: "CO" },
])




