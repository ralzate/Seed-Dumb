
=begin
class HistoriasClinicasPdf < Prawn::Document
  def initialize(historias_clinicas)
    super()
    @historias_clinicas = historias_clinicas
    header
    table_content2
    table_content3
    table_content4
    table_content5
    table_content6
    table_content7
    pie_de_pagina
  end



  def areas_rows_header
    move_down 80
    [["Historia Clinica", ""]] +
    [["Fecha", "Hora Militar"]] +
      @historias_clinicas.map do |historias_clinica|
      [historias_clinica.created_at.to_date, 
        historias_clinica.created_at.strftime("%I:%M %P")]
    end


    

  end



  def fecha
          move_down 80
    [["Fecha"]] +
      @historias_clinicas.map do |historias_clinica|
      [historias_clinica.created_at.to_date] 
    end
  end

  def revision
          move_down 80
    [["Revisión"]] +
      @historias_clinicas.map do |historias_clinica|
      [historias_clinica.created_at.to_date] 
    end
  end


  def campof
      move_down 80
    [["F"]] +
      @historias_clinicas.map do |historias_clinica|
      [historias_clinica.created_at.to_date]
    end
  end

  def version
  move_down 80
    [["Versión"]] +
      @historias_clinicas.map do |historias_clinica|
      [historias_clinica.created_at.to_date] 
    end
  end


  def header

    y_position = cursor
    bounding_box([0, y_position], :width => 150, :height => 80) do
    image "#{Rails.root}/app/assets/images/Logo/logo.png", :width => 140, :height => 80
    transparent(0.5) { stroke_bounds }
    end
    bounding_box([150, y_position], :width => 370) do
      move_down -80
        table areas_rows_header do
          row(0).font_style = :bold
          self.header = true
          self.row_colors = ['FFFFFF', 'FFFFFF']
    transparent(0.5) { stroke_bounds }
    end

    bounding_box([440, y_position], :width => 80) do
      move_down -80
        table fecha do
          row(0).font_style = :bold
          self.header = true
          self.row_colors = ['FFFFFF', 'FFFFFF']
          self.column_widths = [80, 80]
        end
    transparent(0.5) { stroke_bounds }
    end
    
    bounding_box([440, y_position], :width => 80) do
      move_down -32
        table revision do
          row(0).font_style = :bold
          self.header = true
          self.row_colors = ['FFFFFF', 'FFFFFF']
          self.column_widths = [80, 80]
        end
    transparent(0.5) { stroke_bounds }
    end

    bounding_box([440, y_position], :width => 80) do
      move_down 16
        table campof do
          row(0).font_style = :bold
          self.header = true
          self.row_colors = ['FFFFFF', 'FFFFFF']
          self.column_widths = [80, 80]
        end
    transparent(0.5) { stroke_bounds }
    end

    bounding_box([440, y_position], :width => 80) do
      move_down 65
        table version do
          row(0).font_style = :bold
          self.header = true
          self.row_colors = ['FFFFFF', 'FFFFFF']
          self.column_widths = [80, 80]
        end
    transparent(0.5) { stroke_bounds }
    end

  end





   def areas_rows
          move_down 20
      text "Historia Clinica", size: 25

    [["movil/servicio", "conductor comandante"]] +
      @historias_clinicas.map do |historias_clinicas|
      [historias_clinicas.mobiel_service, historias_clinicas.cove]
    end
   end

  def table_content2    
    table areas_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['FFFFFF', 'FFFFFF']
      self.column_widths = [110, 150, 130,130]
    end
  end
 

   def areas_rows2

    [["medico de turno", "aeropuerto", 
      "empresa"]] +
      @historias_clinicas.map do |historias_clinicas|
      [historias_clinicas.aeropuerto.nombre,
       historias_clinicas.company]
    end
   end

  def table_content3    
    table areas_rows2 do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['FFFFFF', 'FFFFFF']
      self.column_widths = [173, 173, 173]
    end
  end


   def areas_rows4

    [["Auxiliar de enfermería", "Hora Contacto Paciente", 
      "Ubicacion"]] +
      @historias_clinicas.map do |historias_clinicas|
      [historias_clinicas.auxiliar, historias_clinicas.created_at.strftime("%I:%M %P"),
       historias_clinicas.ubicacion]
    end
   end

  def table_content4    
    table areas_rows4 do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['FFFFFF', 'FFFFFF']
      self.column_widths = [173, 173, 173]
    end
  end






   def areas_rows5

    [["Tipo de servicio Solicitado"]] +
      @historias_clinicas.map do |historias_clinicas|
      [historias_clinicas.type_service]
    end
   end

  def table_content5    
    table areas_rows5 do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['FFFFFF', 'FFFFFF']
      self.column_widths = [519]
    end
  end



   def areas_rows6
    [["Nombre Completo", "Edad", "Telefono"]] +
      @historias_clinicas.map do |historias_clinicas|
      [historias_clinicas.primer_nombre, historias_clinicas.segundo_nombre,
       historias_clinicas.phone]
    end
   end

  def table_content6    
    table areas_rows6 do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['FFFFFF', 'FFFFFF']
      self.column_widths = [173, 173, 173]
    end
  end




   def areas_rows7
    [["Origen", "Destino", "Tipo Documento"]] +
      @historias_clinicas.map do |historias_clinicas|
      [historias_clinicas.origin, historias_clinicas.destination,
       historias_clinicas.tipo_documento]
    end
   end

  def table_content7  
    table areas_rows7 do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['FFFFFF', 'FFFFFF']
      self.column_widths = [173, 173, 173]
    end
  end





   def areas_rows8
    [["Genero", "Lugar y Fecha de Nacimiento", "Tipo Documento"]] +
      @historias_clinicas.map do |historias_clinicas|
      [historias_clinicas.genero, historias_clinicas.pais_codigo,
       historias_clinicas.tipo_documento]
    end
   end

  def table_content8 
    table areas_rows8 do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['FFFFFF', 'FFFFFF']
      self.column_widths = [173, 173, 173]
    end
  end



  def pie_de_pagina 
    move_down 480
    text "www.servidual.com", size: 10, :align => :center, :style => :bold
    text "servidual@servidual.com", size: 11, :style => :bold, :align => :center
    text "(+574) 4440996", size: 11, :align => :center
    text "________________________________________________", size: 15, :align => :center
    text "Cra 80# 44B-149", size: 10, :align => :center
    text "La America-Medellin",  size: 10, :align => :center
  end

end 
=end