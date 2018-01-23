require 'gmail'
require 'pry'
#require_relative 'credentials'
$gmail = Gmail.connect("legeayelodie@gmail.com", "tontouta")

def send_email(destinataire)
	$gmail.deliver do
		to "#{destinataire}"
		subject "TEST MAIL AUTO"
		text_part do
		body "body du mail auto"
		end		
	end
end

def send_emails(destinataires)
	destinataires.each do |destinataire|
		send_email(destinataire)
	end
end

destinataires = ["elodie.legeay@edhec.com","benoit.legeay@wanadoo.fr"]

send_emails(destinataires)
binding.pry