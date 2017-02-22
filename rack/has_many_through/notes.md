has_many through lecture
  Model out the domain
  Why do we need a change, and how do we implement it

Implement the domain change
  Build out the tables
  Build out the models
Interact with the data
  Insert data 
  Test our activerecord methods

Set up the has many association
  Build the rest
Now have activerecord build the rest


author 
id | name       | age 
1    mark twain    120
2    jd salinger   100


posts
id | title            | author_id | 
1    im indifferent      2
2    my friend jim    | 1

tags
id | name
1    funny 
2     serious

post_tags
id | post_id  | tag_id
1     1          1
2     1          2
3     2          2

My 3 rules
belongs_to
  If my model has a belongs to relationship, it has the foreign key on the table
  eg. post belongs_to an author 

has_many 
   If my model has a has_many relationship it cannot reference that model's foreign key

many to many relationship
  I need a join table

