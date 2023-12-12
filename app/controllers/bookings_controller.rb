class BookingsController < ApplicationController
  before_action :authenticate_user!


  def index
    @bookings = policy_scope(Booking)

  end
  def new
    @booking = Booking.new
    @shop = Shop.find(params[:shop_id])
    @unit = Unit.find(params[:unit_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @shop = Shop.find(params[:shop_id])
    @unit = Unit.find(params[:unit_id])
    @booking.user = current_user
    # @booking.shop = @shop.id
    @booking.unit = @unit
    authorize @booking
    if @booking.save
      redirect_to "/dashboard", notice: "Booking was created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def pay
    @booking = Booking.find(params[:booking_id])
    @unit = Unit.find(params[:unit_id])

    if @booking.payment_intent_id
      payment_intent = get_payment_intent
    else
      payment_intent = create_payment_intent
      @booking.update!(payment_intent_id: payment_intent.id)
    end
    @payment_intent_client_secret = payment_intent.client_secret
    authorize @booking
  end

  private

  def create_payment_intent
    Stripe::PaymentIntent.create({
      amount: @unit.price,
      currency: 'eur',
      automatic_payment_methods: {enabled: true},
      description: "Booking #{@booking.id}"
    })
  end

  def get_payment_intent
    Stripe::PaymentIntent.retrieve(@booking.payment_intent_id)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
