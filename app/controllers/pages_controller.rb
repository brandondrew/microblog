class PagesController < ApplicationController
  def home
  end

  def contact
    @phone_number = "867-5309"
    @title = "Contact Us"
  end
  
  def about
    @title = "About"
  end
  
end
