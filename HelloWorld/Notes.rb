

# VARIABLES ---------------------------------------

thisIsAVariable = 5;        #               var
ThisIsAConstant = 10;       #               ConstantVar
symbolVar = :ThisIsASymbol; #               :symbol


# global variables                        $globalVar
$x = 1;
$chunky_bacon = "Bacon!;"

# instance variables                      @var
  # front_door has:
  # @width

# Class variables                         @@var
  # Door has:
  # @@default_width



# METHODS ---------------------------- -------------

# kernel methods get no dot
print "See, no dot.";

# instance methods                        inst.method()
# door.close    or    door.close()

# class methods                           Class::method()
# (basically static methods???)
# Door::new( :oak )



# BLOCKS -------------------------------------------

# anything inside:
#                         { }
#                 or      do   end

2.times { print "Hi" }

loop do
  print "Stuff"
end

# BLOCK ARGUMENTS
# (arguments for the block)
# between   | |

loop { |x,y|  x + y };


# RANGES ---------------------------------------------

oneToFour = (1..4);
aToZ = ('a'..'z');

zeroToFour = (0...5);       # three ... excludes last item


# ARRAYS ----------------------------------------------

array = [1,2,3];

# HASHES ----------------------------------------------

{'a' => 'aardvark', 'b' => 'badger'};

# REGEX -----------------------------------------------

#   characters surrounded by slashes

#   ex:     /[0-9]+/


# KEYWORDS ---------------------------------------------

#   alias   and     BEGIN   begin   break   case    class   def     defined
#   do      else    elsif   END     end     ensure  false   for     if
#   in      module  next    nil     not     or      redo    rescue  retry
#   return  self    super   then    true    undef   unless  until   when
#   while   yield



  












