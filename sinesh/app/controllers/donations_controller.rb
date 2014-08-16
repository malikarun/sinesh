class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]
  before_action :check_admin, except: :index
  def index
    @donations = Donation.all
  end

  def show

  end

  def new
    @donation = Donation.new
  end

  def create
    donation = Donation.new donation_params
    if donation.save!
      redirect_to donations_path
    else
      render action: :new, notice: 'An error Occured'
    end
  end

  def edit
  end

  def update
    if @donation.update! donation_params
      redirect_to donations_path
    else
      render action: :edit, notice: 'An error Occured'
    end
  end

  def destroy

  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_donation
    @donation = Donation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def donation_params
     params.require(:donation).permit!
  end

  def check_admin
    ['akmalik@ymail.com', 'sinesh143@gmail.com'].include? current_user.email
  end
end