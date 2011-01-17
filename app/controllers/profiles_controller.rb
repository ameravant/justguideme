class ProfilesController < ApplicationController
  unloadable
  def create
    @person = Person.new(params[:person])
    @person.confirmed = false
    params[:person][:user_attributes].merge!({ :name => params[:person][:name], :email => params[:person][:email] })
    params[:person][:person_group_ids] ||= []
    @person.confirmed = !@cms_config['site_settings']['member_confirmation']
    @person.person_group_ids = @person.person_group_ids << PersonGroup.find_by_title("Property Owner").id
    if @person.save
      profile = Profile.new(params[:profile])
      profile.person_id = @person.id
      profile.save
      if Page.find_by_permalink("profile-checkout")
        redirect_to "/profile-checkout"
        flash[:notice] = "Thanks for signing up, please complete the checkout process to confirm your registration."
      else
        redirect_to new_session_path
        flash[:notice] = "Thanks for joining! Please sign-in"
      end
    else
      render :action => "new"
    end
  end
end