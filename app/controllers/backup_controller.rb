class BackupController < ApplicationController
  skip_before_action :verify_authenticity_token  , :only => [:restore]
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

  def select_file

  end

  def restore
    uploaded_io = params[:archive]
    File.open(Rails.root.join('db', 'seeds.rb'), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    # file_s = Rails.root.join('db', 'seeds.rb')
    # file_names = [file_s.to_s]
    #
    # file_names.each do |file_name|
    #   text = File.read(file_name)
    #   new_contents = text.gsub("encrypted_password", "password")
    #
    #   # To merely print the contents of the file, use:
    #   puts new_contents
    #
    #   # To write changes to the file, use:
    #   File.open(file_name, "w") {|file| file.puts new_contents }
    # end
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke

    respond_to do |format|
      format.html { redirect_to backup_select_file_path, notice: 'La base de datos ha sido restaurada.' }
    end
  end
end
