class LogsController < ApplicationController
  def index
    log = File.join(Rails.root, "log", "#{ Rails.env }.log")
    @lines = `tail -512 #{ log }`.split(/\n/).reverse
    respond_to do |wants|
      wants.html{ render }
      wants.json{ render(:json => @lines) }
    end
  end


  def download
    log = File.join(Rails.root, "log", "#{ Rails.env }.log")
    send_file(
      "#{Rails.root}/log/#{ Rails.env }.log",
      filename: "Bitacora.txt",
      type: "file/text"
    )
  end

end
