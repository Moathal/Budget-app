class SplashScreenController < ApplicationController
  def index
    return unless current_user.present?

    redirect_to categories_path
  end
end
