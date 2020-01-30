require_relative './doctor.rb'
require_relative './patient.rb'

class Appointment
    @@all = []

    attr_reader :doctor, :patient, :date

    def initialize(date_string, patient_instance, doctor_instance)
        @doctor = doctor_instance
        @patient = patient_instance
        @date = date_string
        @@all << self
    end

    def self.all
        @@all
    end

    #! Above is self methods
    #//                     
    #! Below is relationship methods
    #none

end