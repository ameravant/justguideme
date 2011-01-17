require 'image'
require 'person_ext'
require 'events_ext'
config.to_prepare do
  ApplicationController.helper(PropertiesHelper)
end