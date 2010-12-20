class PropertiesController < ApplicationController
  unloadable
  def index
    @region = Region.find(params[:region_id])
    @properties = @region.properties
  end
  
  def show
    @region = Region.find(params[:region_id])
    @property = Property.find(params[:id])
    add_breadcrumb "Home", "/"
    add_breadcrumb "Regions", regions_path
    add_breadcrumb @region.title, region_path(@region)
    add_breadcrumb @property.formatted_address
  end
end
