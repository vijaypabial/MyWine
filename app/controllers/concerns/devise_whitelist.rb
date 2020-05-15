module DeviseWhitelist
    extend ActiveSupport::Concern

    included do
    before_action :devise_parameters, if: :devise_controller?
    end
    
    def devise_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:age])
        devise_parameter_sanitizer.permit(:account_update, keys: [:age])
    end
end