class Doctor 
  @@all=[]
  attr_accessor :name
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all 
    @@all 
  end

  def new_appointment(patient, date)
   appointment= Appointment.new(date, patient, self)
  end
  
  def appointments 
    Appointment.all.select {|a| a.doctor == self}
  end
 
  def patients 
      appointments.map {|a| a.patient}
  end
end