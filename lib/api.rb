require 'pry'
class API

    def self.fetch_makeups
        url = "http://makeup-api.herokuapp.com/api/v1/products.json"
         uri = URI(url)
         response = Net::HTTP.get(uri)
         hash = JSON.parse(response)
        array_of_makeups = hash["makeups"]
    end  

end