class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :product]

  def home
  end
end
