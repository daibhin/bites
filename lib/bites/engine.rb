require 'bites/bite_helper'

module Bites
  class Engine < Rails::Engine

    initializer 'bite.helper' do |app|
      ActionView::Base.send :include, BiteHelper
    end
  end
end
