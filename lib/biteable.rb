module Biteable
  extend ActiveSupport::Concern

  included do
    before_action :authenticate
  end

  def authenticate
    if request.params[:edit_page]
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        @bite_authentication = username == ENV['BITES_USERNAME'] && password == ENV['BITES_PASSWORD']
      end
    else
      @bite_authentication = false
    end
  end
end
