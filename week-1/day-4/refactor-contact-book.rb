class ContactBook
  def initialize
    @contacts = [
      Contact.new("Albert", 1234),
      Contact.new("Asd", 4),
      Contact.new("Kori", 2312)
    ]
  end

  def add
    print "What contact do you want to add? "
    contact_name = gets.chomp.capitalize
    contact = @contacts.find {|contact| contact.name == contact_name}
    if contact.nil?
      print "What's the phone number? "
      phone_number = Integer(gets.chomp)
      @contacts << Contact.new(contact_name, phone_number)
      puts "#{contact_name} has been added with the phone_number #{phone_number}."
    else
      puts "That contact '#{contact.name}' already exists! Its phone number is #{contact.phone_number}."
    end
  end

  def update
    print "What contact do you want to update? "
    contact_name = gets.chomp.capitalize
    contact = @contacts.find {|contact| contact.name == contact_name}
    if contact.nil?
      puts "Contact not found!"
    else
      print "What's the new phone? "
      phone_number = Integer(gets.chomp)
      contact.phone_number = phone_number
      puts "#{contact.name} has been updated with the new phone number of #{contact.phone_number}."
    end
  end

  def display
    puts "Contact List:"
    @contacts.each do |contact|
      puts contact
    end
  end

  def delete
    print "What contact do you want to delete? "
    contact_name = gets.chomp.capitalize
    contact = @contacts.find {|contact| contact.name == contact_name}
    if contact.nil?
      puts "Contact not found!"
    else
      @contacts.delete(contact)
      puts "#{contact} has been removed."
    end
  end

  def to_s
    @contacts.join("\n")
  end

end

class Contact
  attr_reader :name
  attr_accessor :phone_number

  def initialize(name, phone_number)
    @name = name
    @phone_number = phone_number
  end
  
  def to_s
    "#{@name}: #{phone_number}"
  end
end

def method_name
  
  contact_book = ContactBook.new()

  puts "What would you like to do?
  -- Type 'add' to add a contact.
  -- Type 'update' to update a contact.
  -- Type 'display' to display all contacts.
  -- Type 'delete' to delete a contact."

  case gets.chomp
  when "add"
    contact_book.add
  when "update"
    contact_book.update
  when "display"
    contact_book.display
  when "delete"
    contact_book.delete
  else
    puts "Wrong command"
    exit!
  end
  puts "\nDebug Text. Contacts after operation:"
  puts contact_book
end

method_name()
