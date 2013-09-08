class VisitorsController < ApplicationController

  def new
    @owner = Owner.new
#    flash[:notice] = 'Welcome!'
#    flash[:alert] = 'My birthday is soon.'
  end

#flash.now renders immediately when the page is rendered (ex. error message on the same page where the error was committed)
#flash renders on a redirect - after a form submission (ex. thanks for your order)

# render 'visitors/new'
#render 'visitors/new', :layout => false
# Removes forwarding address to a layout file

# render 'visitors/new', :layout => 'special'
# Re-routes layout page to somewhere else.  In this case, it'd map to special.html.erb

# render can override the assumptions made from the routes file

end