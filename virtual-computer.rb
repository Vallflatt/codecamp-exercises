class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now 
    @files[filename] = time
    puts "A new file was created: #{filename} by #{@username} at #{time}."
  end
  
  def Computer.get_users
    return @@users
  end
end

puts my_computer = Computer.new("Vivi","password01")


