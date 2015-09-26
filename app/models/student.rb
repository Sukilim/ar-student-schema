require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
validation_email :email, uniqueness: true { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ }
validation_age :age, numericality: {:greater_than_or_equal_to => 5 }
validation_phone : phone_number?

def phone_number?
	if self.phone.scan(/\d/).count <10
		error.add(:phone, "Please insert phone number again")

	def name
	"#{first_name} #{last_name}"
	end

	def age
		now = Date.today
		age = now.year - @student.birthday.year - ((now.month > @student.birthday.month || (now.month == @student.birthday.month && now.day >= @student.birthday.day)) ? 0 : 1)
	end
end

# john = Student.new
# john.age
