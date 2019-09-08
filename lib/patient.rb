class Patient 
  @@all=[]
  
  attr_accessor :name, :appointment
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def new_appointment(doctor, date)
     Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.select {|a| a.patient == self}
  end
  
  def doctors 
    Appointment.all.collect {|a| a.doctor}
  end
  
  def self.all
    @@all
  end
  
end