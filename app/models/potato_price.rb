class PotatoPrice < ApplicationRecord
  validates :time, presence: true
  validates :value, presence: true

  def self.best_gain
    buy_price = minimum(:value)
    sell_price = maximum(:value)

    return nil if buy_price.nil? || sell_price.nil?
    
    quantity = 100
    gain = quantity * (sell_price - buy_price)
    formatted_gain = ActionController::Base.helpers.number_to_currency(gain, unit: '€', format: '%n')
    formatted_gain
  end
end
