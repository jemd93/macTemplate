class Servicio < ActiveRecord::Base
	validates :name, presence: true, length: {maximum: 50}
	validates :info, presence: true
end
