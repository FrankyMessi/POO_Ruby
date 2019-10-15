class Player
  attr_accessor :name, :health

  def initialize(name)
    @name = name
    @health = 10
  end 
  
  def show_name
    puts "This player is called #{@name}."    
  end 
  
  def show_state
    puts "#{@name} has #{@health} HP."
  end 

  def gets_damage(hp_lost)
    @health -= hp_lost
    if @health <= 0
      puts "#{@name} got killed!"
    else
      puts "#{@name} has #{@health} HP left."  
    end  
  end 

  def attacks(player)
    hp_lost = compute_damage
    puts "#{@name} attacks #{player.name}"
    puts "He inflicts #{hp_lost} DP on him."
    player.gets_damage(hp_lost)
  end 
  
  def compute_damage
    return rand(1..6) 
  end 

end  

class HumanPlayer < Player
  attr_accessor :name, :health, :weapon_level

  def initialize(name)
    @name = name
    @health = 100
    @weapon_level = 1 
  end 
  
  def show_state
    puts "#{@name} has #{@health} HP and a level #{@weapon_level} weapon."
  end 
  
  def compute_damage
    return rand(1..6) * @weapon_level
  end 

  def search_weapon
    new_weapon = rand(1..6) 
    puts "You found a level #{new_weapon} weapon."
    if new_weapon > @weapon_level
      @weapon_level, new_weapon = new_weapon, @weapon_level  
      puts "Well done! This weapon is more powerful than your current one: you take it."
      return @weapon_level
    elsif new_weapon <= @weapon_level
      puts "It doesn't worth it... you should keep your current weapon..."
    end
  end 

  def search_health_pack
    health_pack = rand(1..6)
    if health_pack == 6
      @health += 80
      if @health > 100
         @health = 100
      end
      puts "Wow! You just found a [+80 HP] pack!"
      puts " "
    elsif health_pack >= 2 && health_pack <= 5
      @health += 50
      if @health > 100
         @health = 100
      end
      puts "Well done! You just found a [+50 HP] pack!"
      puts " "
    else  
      puts "Too bad... the pack you found was empty..."
      puts " " 
    end          
  end  

end  

  


