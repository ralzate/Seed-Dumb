class Sheet < ActiveRecord::Base
	has_many :diagnosticos

	accepts_nested_attributes_for :diagnosticos, reject_if: :all_blank, allow_destroy: true
end
