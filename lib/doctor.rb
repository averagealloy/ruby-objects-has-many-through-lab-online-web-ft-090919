class Doctor
attr_accessor :name

@@all = []

def initialize(name)
  @name =  name
  @@all << self
end
def apointments
Apointment.all.select {|app| app.doctor == self}
end

def new_appointment
  Apointment.new(date, patient, self )
end


end
