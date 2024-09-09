=begin
Basic Objectives

Build a contact list
Create a menu that allows a user to select 1) Create a contact 2) View All Contacts 3) Exit
The menu should loop until the user exits
Bonus Objectives

Delete a contact
Edit a contact   
=end

while true
  
  puts "-" * 50
  puts "Contact Menu list \n 1.Create a contact \n 2. View all Contacts \n 3. Delete contact \n 4. Edit Contact \n 5.Exit"
  
  #contact has :name[key] = phone_number[string]
  
  @contact = {name: 'anthony', phone_number: '123-123-1234'}

  @contact_list = Array.new
  
  user_choice = gets.strip.to_i
  
  #method to dispay a contact
  def display_contacts()
    #puts @contact_list
    puts @contact
  end 

  if user_choice == 1
    #creating a contact
    puts "enter Contact Name:"
    @contact_name = gets.strip.to_s
    puts "enter #{@contact_name} phone number"
    contact_num = gets.strip.to_s
    puts "Created Contact #{@contact}"
    @contact[@contact_name] = contact_num
  elsif user_choice == 2
    puts "View all contacts"
    display_contacts
  elsif user_choice == 3
    puts "Delete contact"
  elsif user_choice == 4
    puts "Delete contact"
  elsif user_choice == 5
    puts "exiting" + '-' * 50
    exit
  else
    puts "Please type 1, 2, 3, 4, or 5"
  end
end