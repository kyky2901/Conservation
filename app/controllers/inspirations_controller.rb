class InspirationsController < ApplicationController
  def index
    @inspiration = Inspiration.order("RANDOM()").first
  end

  def new
    @inspiration = Inspiration.new
  end

  def create
    @inspiration = Inspiration.create(inspiration_params)
    if @inspiration.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to inspirations_path
  end

  private

  def inspiration_params
    params.require(:inspiration).permit(:saying, :author)
  end
end
