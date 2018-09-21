class TovarController < ApplicationController
  
  def index
    @tovars=Tovar.all
  end
  
  def show
    @tovar=Tovar.find(params[:id])
  end
  
end
