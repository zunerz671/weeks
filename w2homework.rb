# Homework:
# Task:
# Create a simple command-line address book application.
# Instructions:
# Program Requirements:
# The program should display a menu with options:
# Add a contact
# View all contacts
# Search for a contact
# Exit
# Add a Contact:
# Prompt the user for the contact's name, phone number, and email.
# Store each contact as a hash within an array.
# View All Contacts:
# Display all contacts with their details.
# Search for a Contact:
# Prompt for the name to search.
# Display the contact's information if found.
# Sample Code Structure:

# 1) Create an array to hold all contacts
contacts = []

# 2) Method to display the menu
def display_menu
  puts "\nAddress Book Menu:"
  puts "1. Add a contact"
  puts "2. View all contacts"
  puts "3. Search for a contact"
  puts "4. Delete Contact"
  puts "5. Exit"
  print "Enter your choice: "
end

loop do
  # 3) Show the menu and get the user's choice
  display_menu
  choice = gets.chomp.to_i

  if choice == 1
    # ---- ADD A CONTACT ----
    # TODO: Prompt for name (string)
    puts "Enter name:"
    name = gets.chomp.downcase.capitalize

    # TODO: Prompt for phone (string)
    puts "Enter phone number:"
    number = gets.chomp

    # TODO: Prompt for email (string)
    puts "Enter email:"
    email = gets.chomp

    # TODO: Create a contact hash with keys :name, :phone, :email
    contact = {
      name: name,
      phone: number,
      email: email
    }

    # TODO: Push the new contact hash into the 'contacts' array
    contacts << contact

    # TODO: Print "Contact added."
    puts "Contact added:"
    puts "Name: #{name}"
    puts "Phone number: #{number}"
    puts "Email: #{email}"

  elsif choice == 2
    # ---- VIEW ALL CONTACTS ----
    # TODO: If 'contacts' is empty, print "No contacts found."
    # TODO: Otherwise, loop through 'contacts' and print each contact:
    #       Name: ...
    #       Phone: ...
    #       Email: ...
    if contacts.empty?
      puts "No contacts found."
    else
      puts "Contacts found:"
      contacts.each do |contact|
        puts "----"
        puts "Name:#{contact[:name]}"
        puts "Phone:#{contact[:phone]}"
        puts "Email:#{contact[:email]}"
      end
    end

  elsif choice == 3
    # ---- SEARCH FOR A CONTACT ----
    # TODO: Ask the user for a name to search
    # TODO: Find a contact in 'contacts' where contact[:name].downcase == search_name.downcase
    # TODO: If found, print the contact's details
    # TODO: Otherwise, print "Contact not found."
    if contacts.empty?
      puts "There are no contacts."
    else
      puts "What is the name you are seaching for:"

      search_name = gets.chomp.downcase

      contacts.each do |contact|
        contact.each do |key, value|
          
          if contact[:name].downcase == search_name
            
            puts  "#{:name}: #{value}"
            # puts  "Phone: contact[:phone]"
            # puts  "Email: contact[:email]"         
            
          else
            puts "Contact #{search_name} not found."
          end
        end
      end
      
      puts found
    end

  elsif choice == 5
    # ---- EXIT ----
    puts "Goodbye!"
    break

  elsif choice == 4
    # ---- DELETE CONTACT ----
    if contacts.empty?
      puts "There are no contacts."
    else
      puts "What is the contact would you like to delete:"
      delete_name = gets.chomp.downcase

      contacts.each do |contact|
      # p item[:name]
      # p selected_item == item[:name]

        if delete_name == contact[:name]
          contact.delete_if { |h| h[:name] == delete_name }

          puts "#{delete_name} removed from contacts."
          
        else
          puts "#{delete_name} is not in contacts."
        end
      end
    end
    # else
    #   puts "What is the contact would you like to delete:"
    
    #   contacts.each_with_index do |item, index|
    #     puts "#{index + 1}. #{item[:name]}"
    #   end

    #   delete_name = gets.chomp.downcase
    #   delete_index = contacts.find_index { |contact| contact[:name] == delete_name }.to_i

    #   contacts.each do |contact|
    #     if contact[:name].downcase == delete_name
    #       deleted_contact = contacts[delete_index]
    #       contacts.delete_at(delete_index)
    #       puts "Deleted contact #{deleted_contact[:name]}"
    #     else
    #       puts "No contact named #{delete_name} found"
    #     end
    #   end

  else
    # ---- INVALID CHOICE ----
    puts "Invalid choice. Please try again."
  end
end

# Reference for what your data should look like:
# contacts = [
#   { name: "Alice Chen", phone: "555-1234", email: "alice@example.com" },
#   { name: "Bob Cruz",   phone: "555-9876", email: "bob@example.com" }
# ]