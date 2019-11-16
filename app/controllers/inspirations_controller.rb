class InspirationsController < ApplicationController
  def index
    @inspiration = Inspiration.order("RANDOM()").first
  end

  def new
    @inspiration = Inspiration.new
  end

  def create
    Inspiration.create(inspiration_params)
    redirect_to inspirations_path
  end

  private

  def inspiration_params
    params.require(:inspiration).permit(:saying, :author)
  end
end
