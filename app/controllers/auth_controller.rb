class AuthController < ApplicationController

  def index
    Rails.logger.info("****")
    Rails.logger.info(params)
    Rails.logger.info("****")
    render :none
  end
end
