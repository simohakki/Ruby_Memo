# ===========================================      RubyMine       ==============================================
#Comment or uncomment  Ctrl+Slash -- Ctrl+Shift+Slash

# ===========================================      Rspec          ==============================================

## describe 
#   permet de decrire une methode ou une classe:
les classes -> par convention préfixé par un point .add
les instances -> par convention préfixé par un dash #add
describe ".add" do
 # code
end

# context
#   sont utilisé pour decrire le context du test, c'est la meme chose que describe mais utilisé sous celle ci 
#   pour plus de lisibilité

describe ".add" do
  context "given an empty string" do
     # code
  end
end

## it
#   Permet de decrire un contexte de test concret 
describe ".add" do
  context "given an empty string" do
    it "returns zero" do
      # code
    end
  end
end

## expect(...).to  && expect(...).not_to 
#   définir des attentes positives et négatives sur un objet
describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end
  end
end


## «let» et «let!»
#   Permet de decrire un contexte de test concret 

## subject
#   permet d éviter la duplication de code.



# ============================================    RUBY            ===================================================

# Ceci est un commentaire

=begin
Ceci est un commentaire multiligne
Personne ne les utilise
Vous devriez en faire de même
=end

# Tout d'abord : tout est un objet.

# Les nombres sont des objets

3.class #=> Fixnum # on voit que c'est une classe Ruby et non un "type spécial"

3.to_s #=> "3" # on peut appeler des méthodes sur ces objets, comme `to_s` (transforme en texte)

# Les opérateurs de base
1 + 1 #=> 2
8 - 1 #=> 7
10 * 2 #=> 20
22 / 7 #=> 3 # si les deux éléments sont entiers, c'est une division entière
22.0 / 7 #=> 3.142857142857143
22 / 7.0 #=> 3.142857142857143
2**10 #=> 1024 # exposant
1024 % 10 #=> 4 # modulo (reste de la division euclidienne)

# Les opérateurs sont juste des raccourcis
# pour appeler une méthode sur un objet
1.+(3) #=> 4
10.* 5 #=> 50

# Les valeurs spéciales sont des objets
nil # nul, vide ou indéfini
true # vrai
false # faux

nil.class #=> NilClass
true.class #=> TrueClass
false.class #=> FalseClass

# Égalité
1 == 1 #=> true
2 == 1 #=> false

# Inégalité
1 != 1 #=> false
2 != 1 #=> true
!true  #=> false
!false #=> true

# à part false lui-même, nil est la seule autre valeur "considérée comme fausse"
!nil   #=> true
!false #=> true
!0     #=> false

# Plus de comparaisons
1 < 10 #=> true
1 > 10 #=> false
2 <= 2 #=> true
2 >= 2 #=> true

# Les chaînes de caractères sont des objets
'Je suis une chaîne de caractères'.class #=> String
"Je suis également une chaîne de caractères".class #=> String

placeholder = "utiliser l'interpolation de chaîne de caractères"
"Je peux #{placeholder} quand j'utilise les guillemets"
#=> "Je peux utiliser l'interpolation de chaîne de caractères quand j'utilise les guillemets"

# Affichez un message
puts "J'affiche à l'écran!"

# Il y a quelques autres raccourcis pour les chaînes de caractères
rb = "Ruby"
interpolation = "Bonjour Ruby" # s'écrit aussi %Q[Bonjour #{rb}] %Q{Bonjour #{rb}} avec l'interpolation
literal = "Bonjour \#{rb}" # avec le backslash, le dièse est un "vrai dièse" (le slash ne s'affiche que pour le debug)
literal == %q[Bonjour #{rb}] # le Q majuscule fait l'interpolation, le q minuscule ne la fait pas
multi = %Q[Cette chaîne
est sur plusieurs
lignes] # => "Cette chaîne\nest sur plusieurs\nlignes" # le caractère \n signifie retour à la ligne

# Variables
x = 25 #=> 25
x #=> 25

# Notez que l'affectation retourne la valeur affectée.
# Cela signifie que vous pouvez affecter plusieurs fois de suite :

x = y = 10 #=> 10
x #=> 10
y #=> 10

# Par convention, utilisez la notation underscore
# pour nommer les variables
snake_case = true

# Utilisez des noms de variable explicites
path_to_project_root = '/nom/correct/'
path = '/mauvais/nom/'

# Symboles (aussi des objets)
# Les symboles sont immuables, constants,
# réutilisables et représentés en interne
# par une valeur entière. Ils sont souvent
# utilisés à la place des chaînes de caractères
# pour transmettre efficacement des valeurs
# spécifiques ou significatives

:pending.class #=> Symbol

status = :pending
status == :pending #=> true
status == 'pending' #=> false
status == :approved #=> false

# Tableaux
# Ceci est un tableau
array = [1, 2, 3, 4, 5] #=> [1, 2, 3, 4, 5]

# Les tableaux contiennent différents types d'élément.
[1, "hello", false] #=> [1, "hello", false]

# Les tableaux peuvent être indexés
# Trouver la valeur en donnant la position en partant du début (le premier élément est à l'index 0)
array[0] #=> 1
array[12] #=> nil

# Comme les opérateurs, la syntaxe [var] est juste un raccourci
# pour appeler la méthode [] d'un objet
array.[] 0 #=> 1
array.[] 12 #=> nil

# On peut compter en partant de la fin avec un index négatif (le dernier élément est à l'index -1)
array[-1] #=> 5

# Avec un index de début et un nombre d'éléments [position, nombre]
array[1, 3] #=> [2, 3, 4]

# Ou avec un intervalle [index de début .. index de fin]
array[1..3] #=> [2, 3, 4]
  
# Ajoutez un élément au tableau comme ceci
array << 6 #=> [1, 2, 3, 4, 5, 6]

# Les Hash sont des dictionnaires Ruby contenant des paires de clé/valeur.
# Les Hash sont délimitées par des accolades :
hash = {'color' => 'green', 'number' => 5}

# Depuis Ruby 1.9, en utilisant les symboles comme clés :
new_hash = { defcon: 3, action: true}

hash.keys #=> ['color', 'number']

# Les Hash retournent la valeur
# en utilisant la clé associée à la valeur :
hash['color'] #=> 'green'
hash['number'] #=> 5

# Recherchez une clé inexistante dans une Hash retourne nil :
hash['nothing here'] #=> nil

# Depuis Ruby 1.9, Une syntaxe spécifique est apparue
# en utilisant les symboles comme clés :


new_hash.keys #=> [:defcon, :action]

# Astuce : Les tableaux et les Hash sont dénombrables
# Ils partagent un certain nombre de méthodes pratiques
# telle que each, map, count, etc...

# Structures de contrôle
if today == ChristmasEve
  puts "Santa's On His Way!"
else
  puts "Snow"
end
# equivalent à 
today == ChristmasEve ? (puts "Santa's On His Way!") : (puts "Snow")


for compteur in 1..5
  puts "itération #{compteur}"
end

#=> itération 1
#=> itération 2
#=> itération 3
#=> itération 4
#=> itération 5

# CEPENDANT, l'usage de la boucle for est très rare.
# À la place, utilisez la méthode "each"
# et passez lui un bloc de code.
# Un bloc de code est un ensemble d'instructions
# que vous pouvez passer à une methode comme "each".
# Les blocs sont similaires aux lambdas, aux fonctions anonymes
# ou encore aux closures dans d'autres langages.
#
# La méthode "each" exécute le bloc de code
# pour chaque élément de l'intervalle d'éléments.
# Le bloc de code passe un paramètre compteur.
# Appelez la méthode "each" avec un bloc de code comme ceci :

(1..5).each do |compteur|
  puts "itération #{compteur}"
end
#=> itération 1
#=> itération 2
#=> itération 3
#=> itération 4
#=> itération 5

# Vous pouvez également mettre un bloc de code entre accolades :
(1..5).each {|compteur| puts "itération #{compteur}"}

# Le contenu des structures de données peut être parcouru
# en utilisant la méthode each.
array.each do |element|
  puts "#{element} est une partie du tableau"
end
hash.each do |cle, valeur|
  puts "#{cle} est #{valeur}"
end

compteur = 1
while compteur <= 5 do
  puts "itération #{compteur}"
  compteur += 1
end
#=> itération 1
#=> itération 2
#=> itération 3
#=> itération 4
#=> itération 5

grade = 'B'

case grade
when 'A'
  puts "Excellent"
when 'B'
  puts "Plus de chance la prochaine fois"
when 'C'
  puts "Vous pouvez faire mieux"
when 'D'
  puts "C'est pas terrible"
when 'F'
  puts "Vous avez échoué!"
else
  puts "Sytème de notation alternatif"
end

# Fonctions

def double(x)
  x * 2
end

# Les fonctions (et tous les blocs de code) retournent
# implicitement la valeur de la dernière instruction évaluée
double(2) #=> 4

# Les parenthèses sont facultatives
# lorsqu'il n'y a pas d'ambiguïté sur le résultat
double 3 #=> 6

double double 3 #=> 12

def sum(x,y)
  x + y
end

# Les paramètres de méthode sont séparés par des virgules
sum 3, 4 #=> 7

sum sum(3,4), 5 #=> 12

# yield
# Toutes les méthodes ont un argument facultatif et implicite
# de type bloc de code
# il peut être appelé avec le mot clé 'yield'

def surround
  puts "{"
  yield
  puts "}"
end

surround { puts 'Bonjour tout le monde' }

# {
# Bonjour tout le monde
# }


# Définissez une classe avec le mot clé 'class'
class Humain

  # Une variable de classe
  # est partagée par toutes les instances de cette classe.
  @@espece = "H. sapiens"

  # Constructeur de classe
  def initialize(nom, age = 0)
    # Affectez l'argument à la variable d'instance 'nom'
    # pour la durée de vie de l'instance de cette classe
    @nom = nom
    # Si le paramètre 'age' est absent,
    # la valeur par défaut définie dans la liste des arguments sera utilisée.
    @age = age
  end

  # Une simple méthode setter
  def nom=(nom)
    @nom = nom
  end

  # Une simple méthode getter
  def nom
    @nom
  end

  # Une méthode de classe utilise le mot clé 'self'
  # pour se distinguer de la méthode d'instance.
  # La méthode sera alors accessible à partir de la classe
  # et non pas de l'instance.
  def self.say(msg)
    puts "#{msg}"
  end

  def espece
    @@espece
  end

end


# Instanciez une classe
jim = Humain.new("Jim Halpert")

dwight = Humain.new("Dwight K. Schrute")

# Appelez quelques méthodes
jim.espece #=> "H. sapiens"
jim.nom #=> "Jim Halpert"
jim.nom = "Jim Halpert II" #=> "Jim Halpert II"
jim.nom #=> "Jim Halpert II"
dwight.espece #=> "H. sapiens"
dwight.nom #=> "Dwight K. Schrute"

# Appelez la méthode de classe
Humain.say("Hi") #=> "Hi"

# Les classes sont également des objets en Ruby.
# Par conséquent, les classes peuvent avoir des variables d'instance.
# Les variables de classe sont partagées parmi
# la classe et ses descendants.

# Classe parente
class Humain
  @@foo = 0

  def self.foo
    @@foo
  end

  def self.foo=(valeur)
    @@foo = valeur
  end
end

# Classe fille
class Travailleur < Humain
end

Humain.foo # 0
Travailleur.foo # 0

Humain.foo = 2 # 2
Travailleur.foo # 2

# Les variables d'instance de classe ne sont pas partagées
# avec les classes héritées.

class Humain
  @bar = 0

  def self.bar
    @bar
  end

  def self.bar=(valeur)
    @bar = valeur
  end
end

class Docteur < Humain
end

Humain.bar # 0
Docteur.bar # nil

# ==================================================================================================
# ========================================  Les classes   ==========================================
# ==================================================================================================

class NomClasse
   def initialize(nom)  # le constructeur; c'est une methode qui prend les meme arguments que ceux
                           # que je veux passer en argument ds une instance

      @nom = nom        # variable d'instance, c'est propriété de l'objet ( nom color ..) qu'on pt
                           # utliser dans les methodes de la classe
   end

   def methode1         # une classe peut contenir plein de methode
      
   end
   
   def taille=(valeur)
      @taille = valeur
   end
   
  def direNom
      puts "Je suis #{@nom}"
  end

end

#  declarer une instante de la classe NomClasse
jean = NomClasse.new("Jean")

# On peut maintenant modifier / récupérer taille facilement de l'instance
jean.taille = 150
puts jean.taille           #=> 150

NomClasse.new("Jean").direNom  #=> Je suis Jean



# Define a class with the class keyword
class Human

  # A class variable. It is shared by all instances of this class.
  @@species = 'H. sapiens'

  # Basic initializer
  def initialize(name, age = 0)
    # Assign the argument to the "name" instance variable for the instance
    @name = name
    # If no age given, we will fall back to the default in the arguments list.
    @age = age
  end

  # Basic setter method
  def name=(name)
    @name = name
  end

  # Basic getter method
  def name
    @name
  end

  # The above functionality can be encapsulated using the attr_accessor method as follows
  attr_accessor :name

  # Getter/setter methods can also be created individually like this
  attr_reader :name
  attr_writer :name

  # A class method uses self to distinguish from instance methods.
  # It can only be called on the class, not an instance.
  def self.say(msg)
    puts msg
  end

  def species
    @@species
  end
end


# Instantiate a class
jim = Human.new('Jim Halpert')

dwight = Human.new('Dwight K. Schrute')

# Let's call a couple of methods
jim.species #=> "H. sapiens"
jim.name #=> "Jim Halpert"
jim.name = "Jim Halpert II" #=> "Jim Halpert II"
jim.name #=> "Jim Halpert II"
dwight.species #=> "H. sapiens"
dwight.name #=> "Dwight K. Schrute"

# Call the class method
Human.say('Hi') #=> "Hi"

# Variable's scopes are defined by the way we name them.
# Variables that start with $ have global scope
$var = "I'm a global var"
defined? $var #=> "global-variable"

# Variables that start with @ have instance scope
@var = "I'm an instance var"
defined? @var #=> "instance-variable"

# Variables that start with @@ have class scope
@@var = "I'm a class var"
defined? @@var #=> "class variable"

# Variables that start with a capital letter are constants
Var = "I'm a constant"
defined? Var #=> "constant"

# Class is also an object in ruby. So class can have instance variables.
# Class variable is shared among the class and all of its descendants.

# base class
class Human
  @@foo = 0

  def self.foo
    @@foo
  end

  def self.foo=(value)
    @@foo = value
  end
end

# derived class ( herige)
class Worker < Human
end

Human.foo # 0
Worker.foo # 0

Human.foo = 2 # 2
Worker.foo # 2

# Class instance variable is not shared by the class's descendants.

class Human
  @bar = 0

  def self.bar
    @bar
  end

  def self.bar=(value)
    @bar = value
  end
end

class Doctor < Human
end

Human.bar # 0
Doctor.bar # nil

module ModuleExample
  def foo
    'foo'
  end
end

# Including modules binds their methods to the class instances
# Extending modules binds their methods to the class itself

class Person
  include ModuleExample
end

class Book
  extend ModuleExample
end

Person.foo     # => NoMethodError: undefined method `foo' for Person:Class
Person.new.foo # => 'foo'
Book.foo       # => 'foo'
Book.new.foo   # => NoMethodError: undefined method `foo'

# Callbacks are executed when including and extending a module

module ConcernExample
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
  end

  module ClassMethods
    def bar
      'bar'
    end
  end

  module InstanceMethods
    def qux
      'qux'
    end
  end
end

class Something
  include ConcernExample
end

Something.bar     # => 'bar'
Something.qux     # => NoMethodError: undefined method `qux'
Something.new.bar # => NoMethodError: undefined method `bar'
Something.new.qux # => 'qux'


## proc ============================================================================================
# permet de reutiliser un morceau de code (bloc) qui sera répétetif, c'est une fonction anonyme 
# la difference avec les blocs:
      # -> une methode peut prendre en parametre qu'un seul bloc 
      # -> un proc c'est une variable qui permet de stocker ce bloc et de le passer n fois à une methode
les procs tu peux en passer plusieurs comme parametres à une methode 
                  Variable_qui_contiendra_proc = Proc.new { mon code }
# exemple 1 => utilisation de proc 
def ma_methode(nombre, proc_1, proc_2)
    if nombre.even?
        proc_1.call        #=> Appel de proc 
    else
        proc_2.call        #=> Appel de proc 
end

proca = { puts "Salut" }
procb = { puts "Aurevoir" }
ma_methode(2, proca, procb)


## difference entre PROC et lambda:

# exemple:

def ma_method_avec_lambda
 lambda { return "a" }.call
 return "b"
end

def ma_method_avec_proc
 Proc.new { return "a" }.call
 return "b"
end

puts ma_method_avec_lambda # b
puts ma_method_avec_lambda # a
lambda = # -> Verifie le nombre de parametre passé à une fontion
           # -> Le return ne dépasse pas le bloc { return "a" } c'est pr cela que la 1er fct retourne un 'b' 
           
# proc   = # -> La fonction peut en prendre plusieurs proc sans se soucier du nbr de param. que peut prendre cette methode
           # -> Retourn la valeur


# ==================================================================================================

# respond_to permet de savoir si on a bien passer un paramettre du type attendu 
def convert_to_min(seconds)
 return 0 if !seconds.respond_to? :to_i
    seconds.to_i / 60
end

# include
  "makes the method in the included module available to instances of your class"
# extend
  'makes the methods in the included module available in the class'

  
# ==================================== on line statements ========================================

a =|| b # a = b if a is null  
condition ? if_true : if_false 












