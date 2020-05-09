def nyc_pigeon_organizer(data)
  reorganized_hash = {}
  data.each do |key, value|
    value.each do |attribute, array_names|
      array_names.each do |name|
        if reorganized_hash[name] == nil 
          reorganized_hash[name] = {}
        end 
        if reorganized_hash[name][key] == nil 
          reorganized_hash[name][key] = []
        end 
        reorganized_hash[name][key] << attribute.to_s 
      end 
    end 
  end
  reorganized_hash
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