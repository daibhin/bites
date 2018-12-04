class BitesController < ::ApplicationController

  def update
    bite = Bite.find(params[:id])
    bite.update!(text: params[:bite][:text])
    redirect_to :back
  end

end
