class Doctor
attr_accessor :name

@@all = []

def initialize(name)
  @name =  name
  @@all << self
end

  def apointments
    Appointment.all.select {|app| app.doctor == self}
  end

  def new_appointment
    Appointment.new(date, patient, self )
  end

  def patients
    apointments.map {|app| app.patient}
  end
end
