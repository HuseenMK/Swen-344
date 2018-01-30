class WelcomeController < ApplicationController
  def index
      @title = "Hello! This is Huseen"
      @me = "I love Frontend development and I hate backend"
      @img = "me.jpg"
  end
end
