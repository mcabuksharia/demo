class Employee < ActiveRecord::Base
require 'carrierwave/orm/activerecord'

mount_uploader :avatar, AvatarUploader

	paginates_per 10
	before_validation :check
	before_create :verify_name
	#attr_accessor :emp_name, :emp_des
	validates_presence_of :emp_name,:emp_des, :message =>"can't be empty"
	has_one :Profile
	has_many :Article
private
	def ring
		puts"hello before save method called "
	end

	private
def check
# Strip everything in the number except digits

Date.today
end
private
def verify_name
	#debugger
	@employee = Employee.exists?(emp_name: "#{emp_name}")
	if(@employee)
		
			puts 'root' 
	end	
	#@employee =Employee.all
	#return @employee
end


end

