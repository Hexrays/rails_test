RailsTest::Application.routes.draw do
  root :to => 'static_pages#welcome'
  post "create" => "static_pages#create"
end
