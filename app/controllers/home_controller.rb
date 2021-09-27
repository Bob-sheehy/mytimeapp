class HomeController < ApplicationController
  def index
    @meetings = Meeting.order(start_date: :asc)
   # @meetings = Meeting.all
    
  end

      def dashboard
        @meetings = Meeting.order(start_date: :asc)
      # @meetings = Meeting.all
        
      end
end
