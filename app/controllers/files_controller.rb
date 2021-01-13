class FilesController < ApplicationController
  def index 
    if params[:next].present?
      @files = Dir[File.join(params[:next], "*")]
      @current = params[:next].split("/")[0..-2].join("/")
    else
      @files = Dir['*']
    end
  end
end
