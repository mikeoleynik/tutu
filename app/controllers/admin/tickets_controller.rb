class Admin::TicketsController < Admin::BaseController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new

  end

  def edit
  end

  def create
    @ticket = current_user.tickets.new(ticket_params)

    if @ticket.save
      redirect_to [:admin, @ticket], notice: "Билет #{@ticket.number} куплен"
    else
      render 'new'
    end
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to [:admin, @ticket]
    else
      render 'edit'
    end
  end

  def destroy
    @ticket.destroy
    redirect_to admin_tickets_path
  end

  private
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:number, :fio, :passport, :user_id, :train_id, :primary_station_id, :terminal_station_id)
    end
end