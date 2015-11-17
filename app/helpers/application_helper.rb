module ApplicationHelper
	 def logged_in?
       current_user != nil
     end
      def logged_in?
       current_user != nil
     end

  def correct_user
  end

  def current_user?
      current_user
  end


   def self.search(search)
    where("first_name like '%#{search}%'  ")
   end

end
