class ApplicationController < ActionController::Base
    def current_user
        # || = or equals => tworzy zmienna chybaze istniej to, nie robi zapytania do bazy danych 
        @current_user ||= User.find(session[:user_id]) if user_sign_in?
    end 
    #udostępnie metody w widoku
    helper_method :current_user

    def user_sign_in?
        session[:user_id].present?
    end   

    helper_method :user_sign_in?
end
