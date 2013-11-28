require 'sinatra'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'digest/md5'
require 'mail'

get '/' do
  sleeper
end

get '/mail' do
	options = { :address              => "smtp.gmail.com",
			:port                 => 587,
			:user_name            => 'stuffstosells@gmail.com',
			:password             => 'azsxdcfv',
			:authentication       => 'plain',
			:enable_starttls_auto => true  }
		
		Mail.defaults do
			delivery_method :smtp, options
		end
		
		Mail.new(
			to: 'dwahiche@infusion.com',
			from: 'stuffstosells@gmail.com',
			subject: 'BUY NOW!',
			body: 'HURRY UP BIIIITTTTCCCHHH!'
			).deliver!
end
def sleeper
	while true
	'Still Disabled'
	sleep 3
end

