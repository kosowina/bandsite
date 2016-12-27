class ReservationsController < ApplicationController
  def new
    @reservations = Reservation.where('hour >= ?', 1.hour.ago).
                                where("DATE(created_at) = ?", Date.today)
    @reservation = Reservation.new
  end
  
  def create
    @reservations = Reservation.where('hour >= ?', 1.hour.ago).
                                where("DATE(created_at) = ?", Date.today)
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash.notice = "Dodano rezerwację na godzinę 
                     #{@reservation.hour} dla stolika nr 
                     #{@reservation.table.id}"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  private

    def reservation_params
      params.require(:reservation).permit(:username, :email, :phone, :table_id,
                                   :hour)
    end
end
