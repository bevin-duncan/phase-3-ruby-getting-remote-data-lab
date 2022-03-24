# Write your code here


require 'net/http'
require 'open-uri'
require 'json'

class GetRequester 
 URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
      
        def get_response_body
          uri = URI.parse(URL)
          response = Net::HTTP.get_response_body(uri)
          response.body
        end
      
        def response_list
          # we use the JSON library to parse the API response into nicely formatted JSON
            responses = JSON.parse(self.get_request_body)
            responses.collect do |response|
              response["list"]
            end
          end
      end
      
      # programs = GetPrograms.new.get_programs
      # puts programs
      responses = GetRequestor.new
      puts responses.response_list.uniq  


end