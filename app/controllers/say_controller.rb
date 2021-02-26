class SayController < ApplicationController
  def hello
    @time = Time.now
    @name = params[:name]
  end
  def goodby
    @name = params[:name]
  end
end
