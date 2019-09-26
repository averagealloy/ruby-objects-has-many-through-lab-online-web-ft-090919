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

def new_appointment(doct)
  Appointment.new(date, patient, self )
end


def apointments
Appointment.all.select {|app| app.doctor == self}
end


def doctors
appointments.collect {|app| app.doctor}
end
end
