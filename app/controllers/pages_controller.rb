class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:home, :contact, :help]

  





  def home
  	


if params[:search].present?
  	search1 = (params[:search])
  	search = search1.capitalize
  	@pacientes = Paciente.where("primer_nombre like '%#{search}%'  or segundo_nombre like '%#{search}%' 
    or primer_apellido like '%#{search}%'  or segundo_apellido like '%#{search}%' 
    or email like '%#{search}%' or documento like '%#{search}%' or nombre_completo like '%#{search}%' ").page(params[:page]).per_page(8)
end







if request.xhr?

render partial: 'personas', status: 200

end


  end

  def contact
  end

  def help
  end

  
end
