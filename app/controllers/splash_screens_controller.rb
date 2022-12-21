class SplashScreensController < ApplicationController
    before_action :authenticate!
    def index
    end

    private

  def authenticate!
    redirect_to categories_path if user_signed_in?
  end
end
