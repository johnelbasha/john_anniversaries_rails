module Api
  module V1
    class AnniversariesController < ActionController::Base #is this the correct class to inherit from?
      def index
        @anniversaries = Anniversary.all
        render json: @anniversaries
      end
    end
  end
end