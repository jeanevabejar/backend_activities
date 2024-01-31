# Create your own object with attributes and methods.
class Dog
    attr_accessor :name, :breed
  
    def initialize(name, breed)
      @name = name
      @breed = breed
    end
  
    def bark
      puts "Woof! Woof! I'm #{@name}, the #{@breed} dog."
    end
  end
  
  
  panda = Dog.new("Panda", "Border collie")
  toffee = Dog.new("Toffee", "Shih Tzu")
  panda.bark
  toffee.bark
  
  
  
  # num 1
  class Profile
   attr_accessor :full_name, :age, :address, :work
  
      def initialize(full_name, age, address, work)
          @full_name = full_name
          @age = age
          @address = address
          @work = work
      end
    end
    
    my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')
    
    puts my_profile.full_name
    my_profile.full_name = 'Juan Cruz'
    
    my_profile.age = 25
    my_profile.work = 'Software Engineer'
    
    puts my_profile.full_name
    puts my_profile.age
    puts my_profile.work
    puts my_profile.address
  
  #   num 2
  
  # We have a Confection class representing baked desserts. Your job is to create a new subclass of Confection, named Cupcake and Banana Cake. Cupcakes and Banana Cakes need to be baked just like other confections, but cupcakes also need to be frosted afterward. Write a prepare method for your Cupcake and Banana Cake class that prints "Baking at 350 degrees for 25 minutes.", and then prints "Applying frosting" for Cupcake only.
  
  class Confection
     def baking
      print "Baking at 350 degrees for 25 minutes"
     end
  end
  
  class Cupcakes < Confection
  def frosting
      print "Applying Frosting"
  end
  end
  
  class Banana_cake < Confection
  end
  
  cupcake = Cupcakes.new
  banana_cake = Banana_cake.new
  puts cupcake.baking
  puts banana_cake.baking
  puts cupcake.frosting
  
  # num 3
  
  module AdminPermisson
    def edit_users_profile
      puts "Admin updated all users profile"
    end
  end
  
  module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end
  end
  
  class User
    attr_accessor :username, :ip_address
  
    def initialize(username, password, ip_address)
      @username = username
      @password = password
      @ip_address = ip_address
    end
  
    def change_password=(new_password)
      @password = new_password
    end
  
    protected
  
    def login
      puts "User logged in. IP address: #{@ip_address}"
    end
  end
  
  class Admin < User
    include AdminPermisson
  
    def admin_login
      login
    end
  end
  
  class Buyer < User
    include BuyerPermission
  
    def buyer_login
      login
    end
  end
  
    
    ## execute
    
    my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
    my_admin.admin_login
    my_admin.edit_users_profile
    
    my_admin.change_password = 'new_password'
    
    buyer = Buyer.new('juan', 'password', '127.0.0.1')
    buyer.buyer_login
    buyer.buy
    
    buyer.change_password = 'new_password'
  
  
    # num 4 Encapsulation
    class Library
      def initialize(title, author, status)
        @title = title
        @author = author
        @status = status
      end
    
      def status=(new_status)
        @status = new_status
      end
    
      def checkout_book
        validate_book
        if @status == "available"
          puts "#{@title} is available. Successfully added to cart"
        else
          puts "Sorry, #{@title} is currently unavailable to be purchase."
        end
        
      end
    
      private
    
      def validate_book
        puts "#{@title} by #{@author} is #{@status}."
      end
    end
    
  
    little_prince = Library.new('The Little Prince', 'Antoine de Saint-Exupéry', 'available')
    harry_potter = Library.new('Harry Potter', 'J. K. Rowling', 'unavailable')
  
    harry_potter.status = 'available'
    harry_potter.checkout_book
    little_prince.checkout_book
  
  # num 5 Abstraction
  
  class Savings
    def initialize(initial_saving, deposit, expenses, month)
      @initial_saving = initial_saving
      @deposit = deposit
      @expenses = expenses
      @month = month 
    end
  
    def total_savings
      puts "Total savings for #{@month}: #{calculate_savings}"
    end
  
    private 
  
    def calculate_savings
      @initial_saving + @deposit - @expenses
    end
  end
  
  fund = Savings.new(5000, 1000, 2000, 'January')
  fund.total_savings
  
  
  # num 6 Polymorphism
  
  # Inheritance
  
  class Delivery
  def initialize(food, drinks, quantity)
  @food = food
  @drinks = drinks
  @quantity = quantity 
  end
  
  def order
    puts "Customer order #{@quantity} of #{@food} and #{@drinks}"
  end
  
  end
  
  class Domino < Delivery
    def order
      puts "Domino's! kindly confirm your order: #{@quantity} of #{@food} and #{@drinks}"
    end
  end
  
  class Mcdonalds < Delivery
    def order
      puts "Mcdonald's kindly confirm your order: #{@quantity} of #{@food} and #{@drinks}"
    end
  end
  
  chicken = Mcdonalds.new('chicken', 'coke', '1 bucket')
  chicken.order
  pizza = Domino.new('pepperoni', 'coke', '1 box')
  pizza.order
  
  #Duck-typing 
  
  class Restaurant 
    def slogan(name)
     name.slogan
    end
  end
  
  class Jollibee
    def slogan
      puts "Langhap-Sarap Bida ang sarap"
    end
  end
  
  class Inasal
    def slogan 
      puts "Tagos ang Ihaw-Sarap" 
    end
  end
  
  restaurant = Restaurant.new
  jollibee = Jollibee.new
  mang_inasal = Inasal.new
  restaurant.slogan(jollibee)
  restaurant.slogan(mang_inasal) 

  