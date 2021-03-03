class ListController < ApplicationController
  def index
    @lists = []
    Dir["data/*.md"].each do |name|
      list = { }
      lines = File.read(name).split("\n")
      list[:name] = line.shift
      list[:item] = []
      lines.map do |line| 
        
      end
    end 
  end
end
