class Meeting < ApplicationRecord
           

  #need validation so i cant add overlapping meetings

    # save duration and overtime as an integer 
    before_save :set_duration
      before_save :daily_total_ot

     # calculate duration which is meeting end time minus meeting start time 
    def set_duration
        self.duration = (end_date - start_date).to_i
    end

    # method to add total duration for each day 
  def self.daily_total_duration(date)
    Meeting.where("start_date >= ? AND end_date < ?", date.beginning_of_day, date.end_of_day).sum(:duration)
  end

   #calculate total overtime for each day 
    def daily_total_ot
      self.overtime = Meeting.where("start_date >= ? AND end_date < ?", self.start_date.beginning_of_day, self.start_date.end_of_day).sum(:duration) - 26700.to_i
   
     end

   # method for total overtime altogether


   # method for total overtime between flexi period months 

   # bootstrap progress bar for a flexi day 
   #n ot finished yet
   def duration_percent
    duration / 24.hours.to_f * 100
  end
  

end
