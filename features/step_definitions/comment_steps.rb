When('I add a comment to the post') do
    find(".delayedgramps-comment-form-input", match: :first).set("This is my comment")
    find(".delayedgramps-comment-form-submit", match: :first).click
end

# Then('I should see my own comment') do
#     expect(page).to have_css(".delayedgramps-comments", text: "caps Nice lion")
# end

# Then('the other person sees my comment without reloading the page') do
#   Capybara.using_session("browser2") do
#     expect(page).to have_css(".instacard-comments", text: "caps Nice lion")
#   end
# end