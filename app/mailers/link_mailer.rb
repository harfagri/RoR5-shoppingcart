class LinkMailer < ActionMailer::Base
	default from: "descargas@valknut.com"

	def download_link(link)
		@link = link
		mail(to: link.email,subject:"Lista la descarga del producto adquirido en VALkNUT")
	end
end
