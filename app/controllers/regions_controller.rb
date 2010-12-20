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
    @properties = @region.properties
  end
  
end
