require 'pry-remote'
class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.from_omniauth(env['omniauth.auth'], current_user)

    if params[:action] == "foursquare"
      Status.get_from_foursquare(user)
    end

    if user.persisted?
      sign_in user
      flash[:notice] = t('devise.omniauth_callbacks.success', :kind => User::SOCIALS[params[:action].to_sym])
      if user.sign_in_count == 1
        redirect_to map_path
      else
        redirect_to map_path
      end      
    else
      session['devise.user_attributes'] = user.attributes
      redirect_to new_user_registration_url
    end
  end

  User::SOCIALS.each do |k, _|
    alias_method k, :all
  end
  
end