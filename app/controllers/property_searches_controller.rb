class PropertySearchesController < ApplicationController
  unloadable
  def index
    if params[:search][:region_id].blank? and params[:search][:property_type_id].blank?
      @properties = Property.all(:conditions => ["reduced_price >= ? and reduced_price <= ?", params[:min_price], params[:max_price]])
    elsif params[:search][:region_id].blank?
      @properties = Property.all(:conditions => ["property_type_id = ? and reduced_price >= ? and reduced_price <= ?", params[:search][:property_type_id], params[:min_price], params[:max_price]])
    elsif params[:search][:property_type_id].blank?
      @properties = Property.all(:conditions => ["region_id = ? and reduced_price >= ? and reduced_price <= ?", params[:search][:region_id], params[:min_price], params[:max_price]])
    else
      @properties = Property.all(:conditions => ["property_type_id = ? and region_id = ? and reduced_price >= ? and reduced_price <= ?", params[:search][:property_type_id], params[:search][:region_id], params[:min_price], params[:max_price]])
    end
  end
  
  def create
    @search = PropertySearch.new(params[:property_search])
    if @search.save
      redirect_to :action => 'show', :id => @search.id
    else
      render :new
    end
  end
end
