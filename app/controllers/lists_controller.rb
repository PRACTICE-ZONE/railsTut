class ListsController < ApplicationController
  def index
    @lists = []
    Dir["data/*.md"].each do |name|
      list = { }
      lines = File.read(name).split("\n")
      list[:name] = lines.shift
      list[:items] = []
      lines.each do |line| 
        list[:items] << { name: line[6..-1], done: line[3] == "x" }
      end
      @lists << list
    end 
  end
end
