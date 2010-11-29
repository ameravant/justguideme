class Property < ActiveRecord::Base
  belongs_to :region
  belongs_to :owner, :class_name => :person
  has_many :images, :as => :viewable, :dependent => :destroy
  has_many :features, :as => :featurable, :dependent => :destroy
end
