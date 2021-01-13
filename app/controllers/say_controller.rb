class SayController < ApplicationController
  def hello
    @time = Time.now
    @name = params[:name]
  end
  def goodby
  end
end
