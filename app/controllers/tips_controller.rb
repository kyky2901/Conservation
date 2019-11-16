class TipsController < ApplicationController
  def index
    @tip = Tip.order("RANDOM()").first
  end

  def create 
    @tip = Tip.create(tip_params)
    if @tip.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to tips_path
  end

  private

  def tip_params
    params.require(:tip).permit(:text, :source)
  end
end
