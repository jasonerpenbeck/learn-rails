LearnRails::Application.routes.draw do
  root to: 'visitors#new'

end


#  get "/pages/*id", to: 'pages#show'
#pages controller is replaced by High Voltage gem that routes things to app/views/pages.  See line above for what it would look like if defined in routes.rb