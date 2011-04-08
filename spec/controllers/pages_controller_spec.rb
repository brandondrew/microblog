require 'spec_helper'

describe PagesController do
  
  
  describe "GET 'home'" do
    render_views
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content=>"Microblog")
    end
    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
    
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

end
