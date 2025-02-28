class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def time
        self.appointment_datetime.strftime("%B %d, %Y at %H:%M%p")
    end
end