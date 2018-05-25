class Api::V1::BranchOfficesController < Api::V1::BaseController
  skip_before_filter :verify_authenticity_token
  include Authenticable
  def index
    if current_user
      branch_offices = BranchOffice.all
      render json: branch_offices.as_json(only: [:id, :name, :code]), status: :ok
    else
      output = {'Error' => 'Invalid credentials!'}.to_json
      render :json => output ,status: :unauthorized
    end
  end

  def show
    if current_user
      branch_office = BranchOffice.find_by(id: params[:id])
      if branch_office.nil? ==false
        render json: branch_office.as_json(only: [:id, :name, :code]), status: :ok
      else
        output = {'Error' => 'Invalid params!'}.to_json
        render :json => output ,status: :bad_request
      end
    else
      output = {'Error' => 'Invalid credentials!'}.to_json
      render :json => output ,status: :unauthorized
    end
  end

  def branch_offices_areas
    if current_user
      branch_office = BranchOffice.find_by(id: params[:id])
      if branch_office.nil? ==false
        areas = Area.joins(:branch_offices).where("branch_offices.id=?",branch_office)
        render json: areas.as_json(only: [:id, :name, :code]), status: :ok
      else
        output = {'Error' => 'Invalid params!'}.to_json
        render :json => output ,status: :bad_request
      end

    else
      output = {'Error' => 'Invalid credentials!'}.to_json
      render :json => output ,status: :unauthorized
    end
  end

  def place_ticket
    if current_user
      user = User.find_by_email('admin@seruqueue.com')
      ticket_queue= TicketQueue.find_by(branch_office_id: params[:branch_office_id])
      if ticket_queue.present?
        @branch_office = BranchOffice.find_by(id: params[:branch_office_id])
        if @branch_office.present?
          @area = @branch_office.areas.find_by(id: params[:area_id])
          if @area.present?
            ticket = @area.tickets.build
            # @ticket.reserve_name!
            ticket.prefix = @area.abbreviation
            ticket.ticket_state_id = 4
            ticket.ticket_queue = @branch_office.get_current_active_queue(@area.id)
            ticket.area_id = @area.id
            current_ticket_state = ticket.current_ticket_states.build
            current_ticket_state.ticket_state_id = 4
            current_ticket_state.user_id = user.id
            current_ticket_state.description = "Ticket creado desde Dispensador de Tickets"
            area_ticket = @area.area_tickets.build
            area_ticket.ticket = ticket
            area_ticket.user_id = user.id
            area_ticket.end_area_id=@area.id
            area_ticket.description = "Ticket Inicialmente solicitado para el area: #{@area.name} de la Sucursal: #{@branch_office.name}"
            if ticket.save! && area_ticket.save!
              render json: ticket.as_json(only: [:id, :name, :prefix]), status: :ok
            else
              output = {'Error' => 'Ticket dont save!'}.to_json
              render :json => output ,status: :bad_request
            end
          else
            output = {'Error' => 'Can not find Area with area_id!'}.to_json
            render :json => output ,status: :bad_request
          end
        else
          output = {'Error' => 'Can not find BranchOffice with branch_office_id!'}.to_json
          render :json => output ,status: :bad_request
        end
      else
        output = {'Error' => 'Can not find TicketQueue with branch_office_id!'}.to_json
        render :json => output ,status: :bad_request
      end
    else
      output = {'Error' => 'Invalid credentials!'}.to_json
      render :json => output ,status: :unauthorized
    end
  end
end
