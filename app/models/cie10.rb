class Cie10 < ActiveRecord::Base
  def self.search(search)
    where("codigo like ?", "%#{search}%")
  end
end
