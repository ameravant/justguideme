class Property < ActiveRecord::Base
  belongs_to :region
  belongs_to :person
  has_many :events, :dependent => :destroy
  belongs_to :property_type
  has_many :images, :as => :viewable, :dependent => :destroy
  has_many :features, :as => :featurable, :dependent => :destroy
  before_create :set_reduced_price
  before_update :set_reduced_price
  validates_associated :events
  after_update :save_events

  def formatted_address
    "#{self.address}, #{self.city}, #{self.state} #{self.zip}"
  end
  
  def set_reduced_price
    self.reduced_price = self.asking_price if self.reduced_price.blank?
  end
  
  
  def existing_events=(events)     
    events.each do |key, event|
      if option[:delete] == "true"
        self.events.find(key).destroy
      else
        self.events.find(key).update_attributes(event)
      end
    end
  end
  
  def new_events=(events)
   events.each do |event|
     if event[:delete] == "false"
       self.events.build(event)
     end
   end
  end

  def save_events
   events.each do |event|
     event.save(false)
   end
  end
end
