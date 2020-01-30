require_relative './patient.rb'
require_relative './appointment.rb'
require 'pry'
class Doctor
    @@all = []

    attr_reader :name

    def initialize(name_string)
        @name = name_string
        @@all << self
    end

    def self.all
        @@all
    end



    #! Above is self methods
    #//                     
    #! Below is relationship methods

    def new_appointment(patient_instance, date_string)
        Appointment.new(date_string, patient_instance, self)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def patients
        self.appointments.map{|myappointment| myappointment.patient}
    end

end
