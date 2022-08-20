Feature: Liking posts

    Scenario: I can like a post
        Given I've created a new post
        When I like the post
        Then The like icon should be enabled
        And The number of likes should change

    Scenario: I can see multiple likes
        Given I've liked my post
        When someone else likes my post
        Then I should see the number of likes increase without reloading the page