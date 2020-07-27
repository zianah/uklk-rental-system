class RentalsController < ApplicationController

  load_and_authorize_resource
  before_action :set_rental, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @rentals = Rental.all.order('created_at DESC').where(["location like ?", "%#{params[:search]}%"]).paginate(page: params[:page], per_page: 8)
  end

  def show
    @review = Review.new
    @reviews = @rental.reviews.order('created_at DESC')
  end

  def new
    @rental = current_user.rentals.build
  end

  def edit
  end

  def create
    @rental = current_user.rentals.build(rental_params)

    respond_to do |format|
      if @rental.save
        format.html { redirect_to @rental, notice: 'Rental was successfully created.' }
        format.json { render :show, status: :created, location: @rental }
      else
        format.html { render :new }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @rental.update(rental_params)
        format.html { redirect_to @rental, notice: 'Rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental }
      else
        format.html { render :edit }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rental.destroy
    respond_to do |format|
      format.html { redirect_to rentals_url, notice: 'Rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_rental
      @rental = Rental.find(params[:id])
    end

    def rental_params
      params.require(:rental).permit(:location, :apartment_name, :block, :level, :house_number, :aircon, :room_number, :kitchen, :toilet, :balcony, :image_url, :washing_machine, :refrigerator, :oven, :electric_shower, :furniture_condition, :other_facilities, :lift_facility, :payment, :available_seats, :user_id)
    end
end
