class TreeController
  def add_member
    puts "Who are you adding? (First name, Last name)"
    full_name = clean_gets
    puts "What is their DOB? (dd/mm/yy - dd/mm/yy)"
    range_DOB = clean_gets
    tree = Tree.create()
    if tree.new_record?
      puts tree.errors.full_messages
    else
      puts "#{full_name} has been added to the tree! (No relationships)"
    end
  end
  # def remove_member
  #
  # end
  # def add_member_relationship
  #
  # end
  # def remove_member_relationship
  #
  # end
  # def view_tree
  #
  # end
end
