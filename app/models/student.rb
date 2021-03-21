class Student < ActiveRecord::Base
  attribute :active, :boolean, default: false
  # after_initialize :active

  # def active
  #   self.active = false if self.active.nil?
  # end

  def to_s
    self.first_name + " " + self.last_name
  end

  def toggle_active_status
    self.active = !self.active
    self.save
  end
end