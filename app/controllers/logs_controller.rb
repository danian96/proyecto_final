class LogsController < ApplicationController
  def index
    log = File.join(Rails.root, "log", "#{ Rails.env }.log")
    @lines = `tail -2048 #{ log }`.split(/\n/).reverse
    respond_to do |wants|
      wants.html{ render }
      wants.json{ render(:json => @lines) }
    end
  end
end
