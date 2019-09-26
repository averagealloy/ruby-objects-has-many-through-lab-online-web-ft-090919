class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select { |app| app.doctor == self }
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    appointments.map { |app| app.patient }
  end

def doctors
  appointments.collect { |app| app.doctor }
end

def self.all
  @@all
end

def self.patients(name)
  patient.all

end

end
