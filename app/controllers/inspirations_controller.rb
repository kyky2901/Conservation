class InspirationsController < ApplicationController
  def index
    @inspiration = Inspiration.order("RANDOM()").first
  end
end
