class Patient
attr_accessor :name, :doctor

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
@@all
end

def new_appointment
  Appointment.new(date, patient, self )
end


def apointments
Apointment.all.select {|app| app.doctor == self}
end


def doctors
apointments.collect {|app| app.doctor}
end
end
