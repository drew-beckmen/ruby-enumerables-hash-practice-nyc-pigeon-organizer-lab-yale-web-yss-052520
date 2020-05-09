require 'pry'

def nyc_pigeon_organizer(data)
  # The new hash we will begin building 
  reorganized_hash = {}
  
  #Outer iteration: key = color, gender, lives 
  # value are hashes associated with color, gender, lives 
  data.each do |key, value|
    
    # Inner iteration: attribute - purple, grey, white, brown 
    # male, female AND subway, central park, library, city hall 
    value.each do |attribute, array_names|
      
      #Going through each individual pigeon 
      array_names.each do |name|
        #If the pigeon has not been added to our new hash, make it a key and have its value be an empty hash. 
        if reorganized_hash[name] == nil 
          reorganized_hash[name] = {}
        end 
        
        #The keys of the parameter data are the keys of the nested hash associated with each name. Each key in the nested hash has an array as its associated value 
        if reorganized_hash[name][key] == nil 
          reorganized_hash[name][key] = []
        end 
        #each key of color, gender, and lives is associated with an attribute - a type of color/gender/lives that gets appended onto the array 
        # Because of the nested structure of the iteration, attribute is only applicable to name in the associated array. 
        reorganized_hash[name][key] << attribute.to_s 
      end 
      binding.pry
    end 
  end
  reorganized_hash
  binding.pry
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
puts nyc_pigeon_organizer(pigeon_data)