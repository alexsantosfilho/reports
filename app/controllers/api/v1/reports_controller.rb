module Api
	module V1
    class ReportsController < ApplicationController   
			def index
				reports = User.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'reports carregados', data:reports},status: :ok
      end

			def create
				user = User.new(user_params)
				if user.save
					render json: {status: 'SUCCESS', message:'Saved', data:user}, status: :ok
				else
					render json: {status: 'ERROR', message:'not saved', data:user.erros}, status: :unprocessable_entity
				end
			end

      private
			def user_params
				params.permit(:name, :img, :author, :address, :email, :linkedin)
			end
		end
	end
end