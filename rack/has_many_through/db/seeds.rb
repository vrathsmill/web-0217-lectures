# Table name: posts
#
#  id        :integer          not null, primary key
#  title     :string
#  content   :string
#  author_id :integer

# Table name: authors
#
#  id   :integer          not null, primary key
#  name :string
#  age  :integer

Post.destroy_all
Author.destroy_all
Tag.destroy_all
PostTag.destroy_all

a1 = Author.create(name: 'mark twain', age: 100)
a2 = Author.create(name: 'salinger', age: 85)
a3 = Author.create(name: 'jonathan franzen', age: 45)
a4 = Author.create(name: 'jsf', age: 35)


p1 = Post.create(title: 'cool post', author: a1)
p2 = Post.create(title: 'coolneess post', author: a2)
p3 = Post.create(title: 'coolneess man post', author: a3)
p4 = Post.create(title: 'ok cool man post', author: a4)

t1 = Tag.create(name: 'fun')
t2 = Tag.create(name: 'not fun')
t3 = Tag.create(name: 'ok amount of fun')
t4 = Tag.create(name: 'relaxidaisical')

pt = PostTag.new({post: p1, tag: t1})
pt.save

p1.post_tags.create(tag: t1)
t2.post_tags.create(post: p2)
p3.post_tags.create(tag: t3)
p4.post_tags.create(tag: t4)





#

# 
# post_tags
# id | post_id | tag_id
 # 1    1          1




