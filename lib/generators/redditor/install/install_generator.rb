require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/generated_attribute'

module Redditor
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      def copy_models
        directory "models/redditor", "app/models/redditor"
        # не забыть добавить картинки
      end

      def copy_controllers
        directory "controllers/admin/redditor", "app/controllers/admin/redditor"
        # не забыть добавить картинки
      end

      def copy_locale
        template "locales/redditor.yml", "config/locales/redditor.yml"
      end

      def generate_migration
        migration_template "migrations/page.rb", "db/migrate/redditor_create_pages.rb"
        migration_template "migrations/video_block.rb", "db/migrate/redditor_create_video_blocks.rb"
        migration_template "migrations/text_block.rb", "db/migrate/redditor_create_text_blocks.rb"
        migration_template "migrations/slider_block.rb", "db/migrate/redditor_create_slider_blocks.rb"
        # migration_template "migrations/image.rb", "db/migrate/redditor_create_images.rb"
      end

    end
  end
end
