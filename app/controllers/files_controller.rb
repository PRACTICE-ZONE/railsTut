class FilesController < ApplicationController
  def index 
    if params[:next].present?
      path = params[:next] + "/*"
      # @files = Dir[File.join(params[:next], "*")]
      @files = Dir[path]
      # @current = params[:next].split("/")[0..-2].join("/")
      @parent = path.split("/")[0..-3].join("/")
       if File.file?(params[:next])
         @content = File.read(params[:next])
       end
    else
      @files = Dir['*']
    end
   
  end
end
