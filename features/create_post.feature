Feature: Create post

    Scenario: I can create a post
        Given I'm logged in
        When I create a post
        Then I should see the post on the timeline