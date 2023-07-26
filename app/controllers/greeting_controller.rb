class GreetingController < ApplicationController
    def sayhello
      render html:"hello!"
    end
   
    def saygoodmoring
      render html:"goodmorning!"
    end
  end