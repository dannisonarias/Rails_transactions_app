@g = Group.create(:id => 1, :name => "none")
# @g = Group.new(:id => 2, :user_id => 1, :name => "vehicles")
# @g = Group.new(:id => 3, :user_id => 1, :name => "sports")
# @g = Group.new(:id => 4, :user_id => 1, :name => "clothing")
# @g = Group.new(:id => 5, :user_id => 1, :name => "business")
# @g = Group.new(:id => 6, :user_id => 1, :name => "tools")
@g = Group.new(:id => 7, :user_id => 1, :name => "school")
@g.image.attach(io: File.open(image_url("school.png"))
@g.save
