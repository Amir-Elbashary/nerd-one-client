class HomeController < ApplicationController
  def index
    if session[:access_token]
      @owner = HTTParty.get "#{ENV['OAUTH_PROVIDER_URL']}/api/users/owner.json", { query: { access_token: session[:access_token]} }
    else
      redirect_to "#{ENV['OAUTH_PROVIDER_URL']}/oauth/authorize?client_id=#{ENV['CLIENT_ID']}&redirect_uri=#{ENV['OAUTH_REDIRECT_URI']}&response_type=code"
    end
  end

  def create_session
    response = HTTParty.post("#{ENV['OAUTH_PROVIDER_URL']}/oauth/token", body: "client_id=#{ENV['CLIENT_ID']}&client_secret=#{ENV['CLIENT_SECRET']}&code=#{params[:code]}&grant_type=authorization_code&redirect_uri=#{ENV['OAUTH_REDIRECT_URI']}")
    session[:access_token] = response['access_token']
    redirect_to root_path
  end
end
