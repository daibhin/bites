module Bites
  class BiteController < ::ApplicationController
    def update
      bite = Bite.find_by(identifier: params[:identifier])
      bite.update_attributes!(text: params[:text])
    end
  end
end
