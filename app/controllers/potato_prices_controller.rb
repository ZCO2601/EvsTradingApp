class PotatoPricesController < ApplicationController
  def show_cours
    @cours = PotatoPrice.all.order(time: :desc).pluck(:time, :value)
    render json: @cours.map { |time, value| { time: time, value: value } }
  end

  def show_best_gain
    @best_gain = PotatoPrice.best_gain
    render json: {gain: "#{@best_gain.to_s}€"}
  end
end
