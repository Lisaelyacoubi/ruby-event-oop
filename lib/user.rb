require 'pry'

class User #création de la classe User
	attr_accessor :email, :age #accès aux variables d'instance
	@@user_all = 0

	def initialize(email_to_save, age_to_update)
		@email = email_to_save
		@age = age_to_update.to_i #integer
		@@user_all = 1 + @@user_all

	end

	def self.all
		return [@@user_all]
	end
end


binding.pry
puts "end of file"