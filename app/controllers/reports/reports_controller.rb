# frozen_string_literal: true

class Reports::ReportsController < ApplicationController
  before_action :set_user, only: [:show, :build]

  # Build report
  def build
    @data = process_params
    @report = create_hobbie(@data)

    puts "hereee"
    puts @user.inspect

  end

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     render json: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  def create_hobbie report
    RestClient.post("#{Rails.application.config.x.report_host}/resources/files/report", report.to_json, content_type: :json, accept: :json) do |response, request, result|
          resp = JSON.parse(response.body, symbolize_names: true)
          puts resp
      end
    # current_url = "#{Rails.application.config.x.file_manager_host}/file/#{}"
    # puts current_url
  end

      def process_params
        report = {
            reports: [{
                    main: "AlexSuperReport"
                },
                {
                    ReportFilho: "ReportFilho"
                },
                {
                    Dados: "Dados"
                },
                {
                    Hobbies: "Hobbies"
                }
            ],
            output_file_name: "AlexSuperReport",
            parameters: {
              nome: params[:name],
              age: params[:age],
              cpf: params[:cpf],
              city: params[:city],
              state: params[:state],
              country: params[:country],
              img: params[:img],
              author: params[:author],
              address: params[:address],
              email: params[:email],
              linkedin: params[:linkedin]
            },
            data:[
            ]
        }   
    end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:id, :name, :age, :cpf, :city, :country, :state, :img, :author, :address, :email, :linkedin, :user_id)
  end
end
