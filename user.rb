require 'colorize'

class Snapchat
  
  attr_accessor :user, :pass, :number, :message, :who, :birthday, :security, :friends 
  
  def initialize(user, pass, number, message, who, birthday, security, friends)
    @user = user
    @pass = pass
    @message = message
    @who = who
    @birthday = birthday
    @friends = friends
    @security = security
    @number = number
  end

  def create_user
    puts "Welcome to Snapchat! What is your username?".yellow 
      new_user = gets.strip
      @user = new_user
  end
  

     
  def create_password
    puts "What is your password?".light_blue
      new_password = gets.strip.gsub(/[abcdefghijklmonpqrstuvwxyz1234567890]/,'*')
      @pass = new_password.gsub(/[abcdefghijklmonpqrstuvwxyz1234567890]/,'*')
  end
  
   def create_birthday
    puts "What is your birthday?".yellow 
      new_birthday = gets.strip
      @birthday = new_birthday
  end
  
  def create_number
    puts "What is your number?".yellow 
      new_number = gets.strip
      @number = new_number
  end
  
   def create_security
    puts "Security Question: What is your best friend's name?".yellow 
      new_security = gets.strip
      @security = new_security
  end
  
  def create_friends
    puts "Name friends you would like to add".yellow 
      new_friends = gets.strip
      @friends = new_friends
  end
  
  def create_message
    puts "Would you like to send a message?".blue
    answer = gets.strip.downcase
      if answer == "yes"
        puts "What is your message?".magenta
        new_mess = gets.strip
        @message = new_mess
      else
        puts "That sucks! >:((((((".red 
      end 
  end

  def send_who
    puts "Who would you like to snap?".light_yellow
      new_person = gets.strip
      @who = new_person
  end 


  def display_info
    puts "Would you like to see all of your information and take a profile pic?".light_green
    reply = gets.strip.downcase
    if reply == "yes"
      puts "Hello #{user}!".cyan
      puts "Your password is #{pass}.".cyan
      puts "Your birthday is #{birthday}.".cyan
      puts "Your number is #{number}.".cyan
      puts "Your best friend is #{security}.".cyan
      puts "You added: #{friends}".cyan
      puts "Your message, '#{message}', is sent to #{who}.".cyan
      puts " SMILE 
                ___________
    |    |    /            \
   ---------                 ----------
 /               _________              \
|              /           \            |
|             |             |           |
|             |             |           |
|             |             |           |
|             |             |           |
|              \___________/            |
 \                                      /
  -----------------------------------------"
    else
      puts "Your loss :(".blue 
    end
  end
end

person=Snapchat.new( "gyug", "dhjs", "jks", "nothing", "dhj", "dhdk", "djke", "dhjsd")

person.create_user

person.create_password

person.create_number

person.create_birthday

person.create_security

person.create_friends

person.create_message

person.send_who

person.display_info

