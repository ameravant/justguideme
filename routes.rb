resources :regions, :has_many => :properties
namespace :admin do |admin|
  admin.resources :regions, :has_many => { :features, :menus } do |region|
    region.resources :menus
    region.resources :images, :member => { :reorder => :put }, :collection => { :reorder => :put }
    region.resources :properties
  end
  admin.resources :properties
end
