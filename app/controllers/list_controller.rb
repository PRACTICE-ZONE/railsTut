class ListController < ApplicationController
  def index
    @lists = []
    Dir["data/*.md"].each do |name|
      
    end 
  end
end
