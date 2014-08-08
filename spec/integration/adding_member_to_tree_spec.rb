RSpec.describe "Adding member to family tree", :integration do
  context "valid input" do
    let!(:output){ run_ft_with_input("a")}
    let!(:tree_member){ Member.create(name: "Adam Keesecker")}
    it "should prompt for family member details" do
      expect(output).to include("First [Last], DOB")
    end

    it "should print a confirmation message of addition" do
      expect(output).to include("Family member added")
    end

    it "should save user correctly to database" do
      expect(Member.last.name).to eq "Adam Keesecker"
      expect(Member.last.member_id).to eq :tree_member.id
    end
  end
end

# add
# view
