require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #  *PERSON* "Jon Snow" => {
  #    * DETAILS *name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #    ATTRIBUTE*  name: "Freddy",
  #     email: DATA**** "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # } FIRST ITERATE OVER THE CONTACTS HASH AND FIND THE NAME AND DETAIL HEADING-RETURNING HASH INFO. NEXT ITERATE OVER THE DETAILS HEADING AND SCAN FOR THE :ATTRIBUTE WITH LINKED DATA. THEN SCAN THE DATA AND APPLY A CONDITIONAL IF IT FINDS A == ATTRIBUTE: of ice cream THEN DELETE THAT DATA |ATTRIBUTE, DATA|. |ice_cream| placeholder variable for value retrieved from :favorite ice cream flavors key. 
  
def remove_strawberry(contacts)
  contacts.each do |person, details|
    details.each do |attribute, data|
      if attribute == :favorite_ice_cream_flavors
       data.delete_if {|ice_cream| ice_cream == "strawberry"}
        end 
      end
    end
  end
  
  #running ruby bin/contacts in terminal runs the test with this method. make sure that strawberry has been ommitted.