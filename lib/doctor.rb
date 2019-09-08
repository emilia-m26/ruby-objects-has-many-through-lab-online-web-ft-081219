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

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments 
    Appointment.all.select {|a| a.doctor == self}
  end
 
  def patients 
      # Appointment.all.map {|a| a.patient}
      appointments.map do |appointment|
      appointment.patients
  end
end