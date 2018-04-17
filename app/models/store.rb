class Store < ApplicationRecord
  def full_address
    "#{address}, #{city}, #{state}, #{postcode}, #{country}"
  end
end
