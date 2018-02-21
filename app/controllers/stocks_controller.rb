class StocksController < ApplicationController

  def search
    if params[:stock].present?
      @stock = Stock.new_from_lookup(params[:stock])
      render 'users/my_portfolio'
    else
      flash[:danger] = "You haven't entered a stock to search!"
      redirect_to my_portfolio_path
    end
  end

end
