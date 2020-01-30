require_relative './doctor.rb'
require_relative './appointment.rb'

class Patient
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

    def new_appointment(doctor_instance, date_string)
        Appointment.new(date_string, self, doctor_instance)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.patient == self}
    end

    def doctors
        self.appointments.map{|myappointment| myappointment.doctor}
    end



end