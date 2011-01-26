class RegionsController < ApplicationController
  unloadable
  def index
    add_breadcrumb "Home", "/"
    add_breadcrumb "Regions"
    @regions = Region.all
  end
  
  def show
    add_breadcrumb "Home", "/"
    add_breadcrumb "Regions", regions_path
    @region = Region.find(params[:id])
    add_breadcrumb @region.title
    @properties = Property.all(:joins => ['LEFT OUTER JOIN people ON people.id = properties.person_id'], :conditions =>[ "region_id = ? and confirmed = ? and sold = ?", @region.id, true, false])
  end
  
end
