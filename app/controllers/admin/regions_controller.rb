class Admin::RegionsController < AdminController
  before_filter :find_region, :only => {:edit, :update}
  
  
end