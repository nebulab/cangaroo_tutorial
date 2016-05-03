Rails.application.routes.draw do
  mount Spree::Core::Engine, :at => '/'
  mount Cangaroo::Engine => '/cangaroo'
end
