class Router
  def self.main_menu
    puts <<EOS
[A]dd family member
[R]emove family member
[C]onnect member relationship
[D]elete member relationship
[V]iew tree
EOS
    command = clean_gets.upcase
    case command
    when "A"
      tree_controller = TreeController.new()
      tree_controller.add_member
    when "R"
      tree_controller.remove_member
    when "C"
      tree_controller.add_member_relationship
    when "D"
      tree_controller.remove_member_relationship
    when "V"
      tree_controller.view_tree
    else
      puts ""
      puts "#{command[0]}: Invalid Command"
      puts ""
      Router.main_menu
    end
  end
  # def self.navigate_skills_menu(skills_controller)
  #   command = clean_gets
  #   case command
  #   when "add"
  #     skills_controller.add
  #   when /\d+/
  #     skills_controller.view(command.to_i)
  #   else
  #     puts "I don't know the '#{command}' command."
  #   end
  # end
end
