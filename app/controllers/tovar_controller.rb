class TovarController < ApplicationController
  
  def index
    @tovars=Tovar.all
  end
  
end
