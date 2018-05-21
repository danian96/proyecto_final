class BackupController < ApplicationController
  require 'rake'
  Rails.application.load_tasks

  def index
    Rake::Task["db:seed:dump"].invoke

    send_file(
      "#{Rails.root}/db/seeds.rb",
      filename: "backup",
      type: "file/text"
    )
  end
end
