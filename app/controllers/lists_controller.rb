class ListsController < ApplicationController
  def index
    @lists = []
    Dir["data/*.md"].each do |name|
      list = { }
      lines = File.read(name).split("\n")
      list[:name] = line.shift
      list[:item] = []
      lines.map do |line| 
        list[:item] << { name: line[6..-1], done: line[3] == "x" }
      end
      @lists << list
    end 
  end
end
