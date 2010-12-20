resources :properties
resources :property_searches
resources :regions, :has_many => :properties
namespace :admin do |admin|
  admin.resources :regions, :has_many => { :features, :menus } do |region|
    region.resources :menus
    region.resources :images, :member => { :reorder => :put }, :collection => { :reorder => :put }
    region.resources :properties
  end
  admin.resources :properties, :has_many => { :features, :images } do |property|
    property.resources :menus
    property.resources :images, :member => { :reorder => :put }, :collection => { :reorder => :put }
  end
end
