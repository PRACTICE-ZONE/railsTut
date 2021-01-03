class SayController < ApplicationController
  def hello
    @time = Time.now
    @name = param[:name]
  end
  def goodby
  end
end
