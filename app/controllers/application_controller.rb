class ApplicationController < ActionController::Base
    # 
    before_action :configure_permitted_parameters, if: :devise_controller? 

    # 他のメソッドに呼び出されないようにPrivateを設定
    private
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end
