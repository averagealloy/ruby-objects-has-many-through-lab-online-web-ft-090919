class Doctor
attr_accessor :name

@@all = []

def initialize(name)
  @name =  name
  @@all << self
end
def apointment
Apointment.all.select {|app| app.d}
end

end
