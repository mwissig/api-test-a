class Api::V1::FactsController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]
  # GET /users
  def index
    @facts = Fact.all
    render json: @facts
  end

  # GET /user/:id
  def show
    render json: @fact
  end

  #POST /users
  def create
    @fact = Fact.new(user_params)
    if @fact.save
      render json: @fact
    else
      render json: { error: 'Unable to create Fact.' }, status: 400
    end
  end

  # PUT /users/:id
  def update
    if @fact
      @fact.update(user_params)
      render json: {message: 'Fact successfully updated'}, status: 200
    else
      render json: { error: 'Unable to update Fact'}, status: 400
    end
  end

    # DELETE
    def destroy
      if @fact
        @fact.destroy
        render json: {message: 'Fact successfully deleted'}, status: 200
      else
        render json: { error: 'Unable to delete Fact'}, status: 400
      end
    end

    private

    def user_params
      params.require(:user).permit(:fact, :likes, :user_id)
    end

    def find_user
      @fact = Fact.find(params[:id])
    end
end
