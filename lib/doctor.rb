require 'pry'
class Doctor 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end 
  
  def new_appointment(date, patient)
    # Appointment.new(patient, date, self)
    Appointment.new(date, patient, self)
  end 
  
  def patients
    appointments.map do |appointment|
      appointment.patient
    binding.pry
  end 
  end 
  
end 