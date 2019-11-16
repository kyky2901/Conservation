class InspirationsController < ApplicationController
  def index
    @inspiration = Inspiration.order("RANDOM()").first
  end

  def new
    @inspiration = Inspiration.new
  end
end
