require 'pry'
require 'time'

=begin
Créer un évènement avec date (start_date), début, durée (duration), titre (title) et plusieurs utilisateurs (attendees)
Décaler un event au lendemain, même heure
Récupérer infos : date de fin, event passé ou event dans 30 min
Afficher l'event
=end

class Event
	attr_accessor :start_date, :duration, :title, :attendees #accès aux variables d'instance pour modification

	def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
		@start_date = Time.parse(start_date_to_save) #debut
		@duration = duration_to_save.to_i #durée
		@title = title_to_save.to_s #titre de l'évènement
		@attendees = attendees_to_save << Array.new #création d'un tableau pour mettre les utilisateurs

		def self.postpone_24h #Décale l'évènement au lendemain
			return @start_date = @start_date + 24*60*60
		end
	end
end

binding.pry
puts "end of file"