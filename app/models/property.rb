class Property < ActiveRecord::Base
  belongs_to :region
  belongs_to :person
  belongs_to :property_type
  has_many :images, :as => :viewable, :dependent => :destroy
  has_many :features, :as => :featurable, :dependent => :destroy
  before_create :set_reduced_price
  before_update :set_reduced_price
  
  def formatted_address
    "#{self.address}, #{self.city}, #{self.state} #{self.zip}"
  end
  
  def set_reduced_price
    self.reduced_price = self.asking_price if self.reduced_price.blank?
  end
end
