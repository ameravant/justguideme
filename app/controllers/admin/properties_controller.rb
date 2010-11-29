class Admin::PropertiesController < AdminController
  unloadable # http://dev.rubyonrails.org/ticket/6001
  before_filter :authorization
  before_filter :find_property, :only => {:edit, :update}
  
  def index
    add_breadcrumb "Properties"
    @properties = Property.all
  end
  
  def update
    if Property.update_attributes(params[:property])
      flash[:message] = "Property updated successfully"
      redirect_to admin_properties_path
    else
      render :action => "edit"
    end
  end
  
  def create
    @property = Property.new(params[:property])
    if @property.save
      flash[:message] = "Property saved successfully"
      redirect_to admin_properties_path
    else
      render :action => "new"
    end
  end
  
  def new
    @property = Property.new
  end
  
  private
  
  def authorization
    authorize(@permissions['admin'], "Admin")
  end
  
  def find_property
    Property.find(params[:id])
  end
end