class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:show, :update, :destroy]

  # GET /hobbies
  def index
    @hobbies = Hobbie.all

    render json: @hobbies
  end

  # GET /hobbies/1
  def show
    render json: @hobby
  end

  # POST /hobbies
  def create
    @hobby = Hobbie.new(hobby_params)

    if @hobby.save
      render json: @hobby, status: :created, location: @hobby
    else
      render json: @hobby.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hobbies/1
  def update
    if @hobby.update(hobby_params)
      render json: @hobby
    else
      render json: @hobby.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hobbies/1
  def destroy
    @hobby.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobby
      @hobby = Hobbie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hobby_params
      params.require(:hobby).permit(:text, :img, :user)
    end
end
