class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def self.provides_callback_for(provider)
    class_eval %Q{
      def #{provider}
        @baker = OAuthService.find_or_create_baker(env["omniauth.auth"], current_baker)

        if @baker.persisted?
          sign_in_and_redirect @baker, event: :authentication
          flash[:notice] = 'Logged in successfully.'
        else
          session["devise.#{provider}_data"] = env["omniauth.auth"]
          redirect_to new_baker_registration_url
        end
      end
      }
  end

  [:twitter, :facebook, :google_oauth2].each do |provider|
    provides_callback_for provider
  end

  def after_sign_in_path_for(resource)
    if resource.email_verified?
      super resource
    else
      finish_signup_path
    end
  end
end

