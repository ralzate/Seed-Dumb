=begin
  
NO usar (draw text)!! este metodo no se acomoda a los otros
(Text) siiiii :)
  
=end

class HistoriasClinicasPdf < Prawn::Document
  def initialize(historias_clinicas)
    super()
    @historias_clinicas = historias_clinicas
    header
    logo_1
    titulo_2
    historias_clinicas_header_1
    historias_clinicas_header_2
    pie_de_pagina
  end

  def logo_1
    image "#{Rails.root}/app/assets/images/Logo/logo.png", :at => [10, 720], :width => 140, :height => 80
    t = Time.now
    draw_text  formatted = "#{t.strftime("%d-%m-%Y")}", :at => [450, 616], size: 10, style: :bold 
  end


  def titulo_2
    move_down 20
      text "Mi Curriculum", size: 28, style: :bold_italic
  end


  def historias_clinicas_header_1
    move_down 80
    [["      Historia Clinica    ", "Fecha"]] +
      @historias_clinicas.map do |historias_clinica|
      [historias_clinica.created_at.to_date, 
        historias_clinica.created_at.strftime("%d-%m-%Y")]
    end
  end

  def historias_clinicas_header_2
    move_down 10
    [["      asdasdas Clinica    ", "asdasdas"]] +
      @historias_clinicas.map do |historias_clinica|
      [historias_clinica.created_at.to_date, 
        historias_clinica.created_at.strftime("%d-%m-%Y")]
    end
  end






  def header

    y_position = cursor
    bounding_box([0, y_position], :width => 150, :height => 80) do
    end
    bounding_box([150, y_position], :width => 370) do
      move_down -80
        table historias_clinicas_header_1 do
          row(0).font_style = :bold
          self.header = true
          self.row_colors = ['FFFFFF', 'FFFFFF']
    end

    bounding_box([440, y_position], :width => 80) do
      move_down -80
        table historias_clinicas_header_2 do
          row(0).font_style = :bold
          self.header = true
          self.row_colors = ['FFFFFF', 'FFFFFF']
          self.column_widths = [40, 40]
        end
    end
    

  end
  end


 


  def pie_de_pagina 
    move_down 1120
    text "www.servidual.com", size: 10, :align => :center, :style => :bold
    text "servidual@servidual.com", size: 11, :style => :bold, :align => :center
    text "(+574) 4440996", size: 11, :align => :center
    text "________________________________________________", size: 15, :align => :center
    text "Cra 80# 44B-149", size: 10, :align => :center
    text "La America-Medellin",  size: 10, :align => :center
  end

end 
