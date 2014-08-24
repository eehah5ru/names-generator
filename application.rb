require 'sinatra'
require 'slim'
require 'yaml'
require 'securerandom'
require "ostruct"

require_relative "lib/utils.rb"
require_relative "lib/words.rb"


class Name < OpenStruct
	def to_s
		return [self.first, self.second].join(" ")
	end
end


class NamesGenerator
	def self.generate count = 10
		raise RuntimeError, "count should be a number" if count.nil? or count.to_i == 0
		
		count = count.to_i
		
		
		result = []
		
		count.times do 
			result << Name.new(:first => Words.data.get.first, :second => Words.data.get.first, :third => Words.data.get.first)
		end
		
		return result
	end
end
#
#
# Генератор героев
#
get '/:count' do
	Words.data_file = "data/words-1.txt"
	
	@names = NamesGenerator.generate(params[:count])
	
  slim :names
end


post '/' do
	# Options.create_from_params! params
	
	# @characters = generate_characters params
  
  # slim :characters
end



