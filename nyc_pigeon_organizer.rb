require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |qualities, details|
    details.each do |detail, names|
      names.each do |name|
        if new_hash.include?(name) == false
          new_hash[name] = {}
        end
        if new_hash[name].include?(qualities) == false
          new_hash[name][qualities] = []
        end
        if new_hash[name][qualities].include?(detail) == false
          new_hash[name][qualities] << detail.to_s
        end
      end
    end
  end
  new_hash
end
