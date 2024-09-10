require 'pry'
# Build a contact list
  # menu 
  #  store all contact 
    # array, hash, variable, scope file wide
    # contact has first name, string
    # contact has last name, string
    # contact has phone, string
    # contact has favorite, boolean
# Create a menu that allows a user to select 1) Create a contact 2) View All Contacts 3) Exit
  #  method to display menu 
  #  grab the user input to see what they select, store in var
  #  logic to see if the choose 1, 2, 3 
    # 1 create a contact 
      #  grab the user input for first name, last name, phone, favorite 
      #  throw the values in a hash 
      #  add the hash to the contacts array
    # 2 view all contact 
      # iterate through the array of hashes and display them in a 
      # nice string
      # might use index 
    #  3 exit
      # say goodbye 
      # exit
# The menu should loop until the user exits
  #  recursion to loop until user exits
  # or we can through menu in a while loop until the user exits

@contacts = [
  { first_name: 'bob', last_name: 'smith', phone_number: '123-123-1233', email: nil, favorite: false },
  { first_name: 'lucy', last_name: 'jones', phone_number: '123-321-1233', email: nil, favorite: true },
  { first_name: 'jack', last_name: 'mac', phone_number: '333-123-1233', email: nil, favorite: true },
]


def main_menu
  puts "-" * 50
  puts "Contact Menu list  
  1. Create a contact  
  2. View all Contacts  
  3. Delete contact  
  4. Edit Contact  
  5. View favorite contacts
  6. Exit"
  user_input = gets.strip.to_i
  if user_input == 1
    create_contact
  elsif user_input == 2
    view_contacts
  elsif user_input == 3
    delete_contact
  elsif user_input == 4
    edit_contact
  elsif user_input == 5
    fav_contacts
  elsif user_input == 6
    puts "Goodbye"
    exit
  else
    puts "Please type 1, 2, 3, 4, 5, or 6"
    main_menu
  end
end

def create_contact
  puts "Creating Contact:"
  puts "Enter Name"
  name = gets.strip
  puts "Enter Phone phone_number:"
  new_phone_number = gets.strip
  puts "Enter email:"
  email = nil #email_account #check if user left empty

  fav_contact = nil #check_fav

  new_contact = {
    first_name: name,
    phone_number: new_phone_number,
    email: nil,
    fav_contact: nil
  }

  #adding the new_contact to @contacts <<
  @contacts << new_contact
  main_menu
end

def view_contacts
  @contacts.each do |contact|
    puts '-' * 50
    contact.each do |key, value|
      puts "#{key}: #{value}"
    end
  end
  main_menu
end

def delete_contact
  puts "Enter Contact name:"
  delete_contact_name = gets.strip.to_s

  puts "Are you sure you want to delete? #{delete_contact_name} y/n"
  confirmation = gets.strip.downcase
  
  if confirmation == 'y'
    @contacts.delete_if { |contact| contact[:first_name] == delete_contact_name}
    puts "Deleting contact #{delete_contact_name}"
  elsif confirmation == 'n'
    puts "Counldn't find contact"
    main_menu
  else
    puts "please type Y or N"
  end
  
  main_menu
end

main_menu

#while true
#main_menu
#end