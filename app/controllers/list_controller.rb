class ListController < ApplicationController
  def index
    @lists = []
    Dir["data/*.md"].each do |name|
      list = { }
      lines = File.read(name).split("\n")
      list[:name] = line.shift
    end 
  end
end
