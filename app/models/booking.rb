class Booking < ActiveRecord::Base
has_one :user
has_one :status

  validates :room_number, presence: true
  validates :user_id, presence: true
  validates_datetime :session_start, :after => :now, uniqueness: true
  validates_datetime :session_end, :on_or_before => :_later, uniqueness: true
  validate :end_time_is_after_start_time
  validates_time :session_start , :between => ['9:00am', '21:00pm']
  validates_time :session_end , :between => ['9:00am', '21:00pm']
  validate :week_end
# before_save :booked_session
#
# def booked_session
#   @book = Booking.where(:session_start => self.session_start.to_date)
#   if @book[:session_start] > self.session_start  && self.session_start < @book[:session_end]
#     errors.add(:session_start,"This Session is already booked")
#   end
# end

  def _later
    self.session_start + 2.hour + 45.minute
  end
  def end_time_is_after_start_time
    return if session_end.blank? || session_start.blank?

    if session_end < session_start
      errors.add(:session_end, "cannot be before the start time")
    end

  end
  def week_end
    if session_start.saturday? || session_start.sunday?
      errors.add(:session_start,"We are close on week ends")
    end
  end

end
