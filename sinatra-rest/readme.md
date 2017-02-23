REST
  Representational State Transfer

  Protocol that sets a structure, for the routes

  routes
  Action   What we want                | url         REquest    | AR           Sql          ruby              Ruby                
  index |  All items in the resource     /players      Get      Player.all    select * from players;    self.all

  Show      See a specific player        /players/:id    Get   Player.find(id)  select * from players where id = ?,


  Player.all.find do |player|
    player.name == name
  end

  New       See the form to create     /players/new        Get   Player.new                      Player.new

  Create     Create a player           /players           



  Edit     See the form to edit      /players/:id/edit     GET     Player.find(id)   select * from players where id = ?   Player.all.find do |player|   
  player.name == name
end               

  Update   Update the player        /players/:id          PATCH      @player = Player.find(id)
                                                                     @player.update(params)
   Update Players Set name = 'bob' where id = ?

   player = Player.find.with_index do |player|
     player.name == name
   end

   player

  Delete    Remove the player     /players/:id        DELETE        







get('/players') do
  @players = Player.all
  erb :index
end


class Player
  @@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end




Master
- - 1 2, 3, 4
    |
    1, 2,  3 4

    git pull origin master
    git checkout my_branch
      git rebase master
    git checkout master
    git merge my_branch
    git push origin master
