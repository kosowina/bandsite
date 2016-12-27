class ReserveController < ApplicationController
  def new
    @reservations = Reservation.where('time >= ?', 
                    1.hour.ago).order(date: :asc)
    @tables = Table.all
  end
  
  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash.notice = "Dodano rezerwację na godzinę 
                     '#{@reservation.time_table.reservation_hour}' dla stolika nr 
                     '#{@reservation.tables.id}'"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  private

    def reservation_params
      params.require(:user).permit(:username, :email, :phone, :table_id,
                                   :time_table_id)
    end
end
