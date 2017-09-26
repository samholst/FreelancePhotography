class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save :set_complete_address
  validates_length_of :state, :maximum => 2
  validates_presence_of :first_name, :last_name, :address, :city, :state, :postal_code

  def set_complete_address
    self.city = self.city.strip
    self.state = self.state.strip
    self.complete_address = "#{self.address} #{self.city.capitalize}, #{self.state.upcase}, United States"
    location = Geocoder.coordinates(self.complete_address)
    self.lat_lang = "#{location[0]},#{location[1]}"
  end
end
