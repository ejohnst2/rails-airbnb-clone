class Location < ApplicationRecord
  attr_accessor :address
  after_validation :set_address
  geocoded_by :address
  after_validation :geocode

  has_one :bunker, dependent: :destroy
  validates :country, :number, :street_name, :city, :country, presence: true, allow_blank: false

  def set_address
    self.address = "#{self.number}, #{self.street_name}, #{self.city}, #{self.country}"
  end
end


# migração para adicionar coluna endereço em Location
# endereço = Location.numero + Location.rua + cidade + pais
# usar coluna endereço para geocode
