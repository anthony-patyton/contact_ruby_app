require 'pry'

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

def check_fav

end

def create_contact
  puts "Creating Contact:"
  puts "Enter Name"
  name = gets.strip
  puts "Enter Phone phone_number:"
  new_phone_number = gets.strip
  puts "Enter email:"
  email = nil #email_account #check if user left empty

  fav_contact = check_fav

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

  puts "Are you sure you want to delete? y/n"
  confirmation = gets.strip.downcase
  
  if confirmation == 'y'
    @contacts.delete_if { |contact| contact[:first_name] == delete_contact_name}
    puts "Deleting contact #{delete_contact_name}"
  else confirmation == 'n'
    puts "please type Y or N"
  end
  
  main_menu
end

def edit_contact
  puts "Contact you want to edit"
  contact_index = gets.strip.to_i 
  puts "Enter contact you'd like to edit"
  edit_contact_name = gets.strip

  if (@contacts.find { |contact| contact[:first_name] == edit_contact_name})
    puts "Edit Contact #{edit_contact_name.upcase}"
    puts "Enter New Name:"
    new_first_name = gets.strip
    puts "Enter New Last name:"
    new_last_name = gets.strip
    puts "Enter New phone number:"
    new_phone_number = gets.strip
    puts "Enter email"
    new_email = gets.strip
    puts "Part of favorites y/n"
    favorite = check_fav
    edited_contact = {
      first_name: new_first_name,
      last_name: new_last_name,
      phone_number: new_phone_number,
      email: new_email,
      favorite: nil
    }
    
    #contact[:key] = edited_contact
    @contacts[contact_index] = edited_contact
  else
    puts "Couldn't find contact: #"
  end
  main_menu
end


main_menu

#while true
#main_menu
#end