class Region < ActiveRecord::Base
  has_many :properties
  has_many :features, :as => :featurable, :dependent => :destroy
  has_many :images, :as => :viewable, :dependent => :destroy
end
