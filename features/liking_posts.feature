Feature: Liking posts

    Scenario: I can like a post
        Given I've created a new post
        When I like the post
        Then The like icon should be enabled
        And The number of likes should change
