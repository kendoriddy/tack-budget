class SplashScreensController < ApplicationController
    skip_before_action :authenticate_user!
    def index
    end

    private

  def authenticate!
    redirect_to categories_path if user_signed_in?
  end
end
