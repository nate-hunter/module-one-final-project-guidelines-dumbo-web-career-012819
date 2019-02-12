def banner
  system "clear"
  puts " (  (             (
 )\\))(   '   (    )\\                  )       (
((_)()\\ )   ))\\  ((_)   (     (      (       ))\\
_(())\\_)() /((_)  _     )\\    )\\     )\\  '  /((_)
\\ \\((_)/ /(_))   | |   ((_)  ((_)  _((_))  (_))
 \\ \\/\\/ / / -_)  | |  / _|  / _ \\ | '  \\() / -_)
  \\_/\\_/  \\___|  |_|  \\__|  \\___/ |_|_|_|  \\___|  "
end

def space
  puts " "
end

def greeting
  puts "Hello there"
end

def enter_name
  puts "Enter your name"
end

def find_or_add_user(name)
  new_user = User.find_or_create_by(name: name)
  new_user
end

def choose_element
  puts "What elemental nation are you?"
end
