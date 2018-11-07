require 'bites/bite_helper'

module Bites
  class Railtie < Rails::Railtie

    initializer 'bite.helper' do |_app|
      ActionView::Base.send :include, BiteHelper
    end

  end
end
