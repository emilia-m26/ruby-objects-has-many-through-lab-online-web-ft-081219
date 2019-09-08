class Doctor 
  @@all=[]
  attr_accessor :name, :patients, :appointments
  
  def initialize(name)
    @name=name
    @@all << self
    # @appointments=[]
  end
  
  def self.all 
    @@all 
  end

  def new_appointment(date, patient)
   appointment= Appointment.new(date, patient, self)
  # @appointments << appointment
  end
  
  def appointments 
    Appointment.all.select {|a| a.doctor == self}
  end
 
  def patients 
      Appointment.all.map {|a| a.patient}
      # appointments.map do |appointment|
      # appointment.patients
    #end
  end
end