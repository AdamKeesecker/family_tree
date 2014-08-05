# :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader: :shipit: :space_invader:
# User Types
    * Curious Users: Someone who wants to find their family history
# Stories
    Curious User adds members to family tree
    - As a curious user
    - In order to add my family tree
    - I want to add members and to the tree

        Usage:
        - Curious user navigates menu to add member option
        - User is prompted "Who would you like to add?"
        - New user is saved w/o relationship status ("Floating")

            Acceptance Criteria:
            - First name is required
            - Last name optional
            - Lifetime optional


    Curious User removes mistakenly added family member
    - As a curious user
    - In order to remove a family member
    - I want to remove a member i accidentally misspelled or flat-out incorrectly added

        Usage:
        - Curious user navigates to remove member option
        - User prompted with "Who are you removing?"
        - Member is removed from family tree FOR EVER

            Acceptance Criteria:
            - Name exists in table
            - If multiple first names exist, last name required
            - If multiple name matches, data is revealed, user input required


    Curious User adds relationship to other member
    - As a curious user
    - In order to add relationship
    - I want to add a relationship between family members

        Usage:
        - Curious user navigates to add relationship option
        - User is prompted "Who is base target of relationship?"
        - User answers
        - Prompt "Who is secondary target of relationship?"
        - User answers
        - Prompt "What is the relationship of secondary to base?"
        - Relationship data is saved, creating structured tree

            Acceptance Criteria:
            - Both targets exists in database
            - Relationship cannot exceed two generations
            - First names required, last names only required if duplicates are returned
              --- Prompt for clarity


    Curious User removes relationship from all members
    - As a Curious User
    - In order to remove relationships
    - I want to remove all relationship data between this member and all other members

        Usage:
        - Curious User navigates to Remove relationship option
        - User is prompted with "Who would you like to separate from tree?"
        - Member mentioned becomes "floating", meaning no relationship data provided

            Acceptance Criteria:
            - Both targets exists in database
            - First names required, last names only required if duplicates are returned
              --- Prompt for clarity


    Curious User views full tree
    - As a curious user
    - In order to view full tree
    - I want to see all members in my tree that I have added

        Usage:
        - Curious User navigates to View tree option
        - Curious User now sees all data related to family tree

            Acceptance Criteria:
            - Data exists between members (!floating >= 2)
