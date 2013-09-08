class VisitorsController < ApplicationController

  def new
    @owner = Owner.new
  end

# render 'visitors/new'
# render can override the assumptions made from the routes file

end