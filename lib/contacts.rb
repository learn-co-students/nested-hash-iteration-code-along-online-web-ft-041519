require 'pry'

contact_list = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}

def remove_strawberry(contacts)
  contacts.each {|name, stat|
  # name = "Jon Snow", "Freddy Mercury"
    stat.each {|key, value|
      if key == :favorite_ice_cream_flavors
        value.delete_if {|element| element.downcase == "strawberry"}
      end
    }
  }
end
