require 'generator_spec'
# require 'generators/bites/install/install_generator'

module Bites
  module Generators
    describe InstallGenerator, :type => :generator do

      root_dir = File.expand_path("../../../../../../tmp", __FILE__)
      destination root_dir

      before :all do
        prepare_destination
        run_generator
      end

      it "creates the installation db migration" do
        migration_file = Dir.glob("#{root_dir}/db/migrate/*create_bites.rb")

        assert_file migration_file[0], /class CreateBites < ActiveRecord::Migration/
      end
    end
  end
end
