=begin
À LIRE !!!
Pour faire fonctionner ce machin, 
1/ mets ton username et ton password en 12
2/ mets "require_relative 'credentials' en commentaire"
=end

require 'gmail'
require 'pry'
#require_relative 'credentials'
$gmail = Gmail.connect("legeayelodie@gmail.com", "tontouta")

#mettre ton username, ton mdp
#POUR UN MAIL EN TEXT
def send_email(destinataire)
	$gmail.deliver do
		#à qui tu l'envoies ?
  		to "#{destinataire}"
  		#objet du mail ?
  		subject "Ceci est l'objet du mail 11:58."
  		#corps du mail ?
  		text_part do
    	body "Ceci est le corps du mail."
  		end
	end	
#POUR UN MAIL EN HTML
  # html_part do
  #   content_type 'text/html; charset=UTF-8'
  #   body "<p>Text of <em>html</em> message.</p>"
  # end
  # add_file "/path/to/some_image.jpg"
end

send_email('elodie.legeay@edhec.com')

#gmail.logoutb