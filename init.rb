require 'image'
require 'person_ext'
require 'events_ext'
require "12_hour_time"
config.to_prepare do
  ApplicationController.helper(PropertiesHelper)
end