class HomeController < ApplicationController
  def index
  
  end

  def profile
    @user = User.find_by_tokenurl(params[:tokenurl])
    
  end
  def edit
@user = current_user
  end


end
