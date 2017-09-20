class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save :set_complete_address

  def set_complete_address
    self.complete_address = "#{self.address} #{self.city.capitalize}, #{self.state.upcase} #{self.postal_code}"
    location = Geocoder.coordinates(self.complete_address)
    self.lat_lang = "#{location[0]},#{location[1]}"
  end
end
