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
    historias_clinicas_header_1
    pie_de_pagina
  end

  def logo_1
    image "#{Rails.root}/app/assets/images/Logo/logo.png", :at => [10, 720], :width => 140, :height => 80
    t = Time.now
    draw_text  formatted = "#{t.strftime("%d-%m-%Y")}", :at => [450, 616], size: 10, style: :bold 
  end



  def line_items
    move_down 20
    table historias_clinicas_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def historias_clinicas_rows
    [["Product", "Qty", "Unit Price", "Full Price"]] +
    @historias_clinicas.line_items.map do |historias_clinica|
      [historias_clinica.created_at.to_date]
    end
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
    move_down 80
    [["      asdasdas Clinica    ", "asdasdas"]] +
      @historias_clinicas.map do |historias_clinica|
      [historias_clinica.created_at.to_date, 
        historias_clinica.created_at.strftime("%d-%m-%Y")]
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
