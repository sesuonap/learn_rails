class Api::PagesController < ApplicationController
  def hello_action
    @message = "Hello"
    @message2 = "Yo, whats up?"
    render 'hello_view.json.jbuilder'
  end 

  def about
    @title = "This is an about me page"
    render 'about.json.jbuilder'
  end 

  def portfolio 
    @portfolio_page = "Welcome to my portfolio page"
    render 'portfolio.json.jbuilder'
  end 

  def contact
    @contact_page = "Email me at: tpanouses@gmail.com"
    render 'contact.json.jbuilder'
  end 

  def time_action
    @current_time = Time.now.strftime("%I:%M:%p")
    render 'time_view.json.jbuilder' 
  end 
end
