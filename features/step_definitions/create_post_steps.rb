Given("I'm logged in") do
    visit "/"
    sign_up
    sign_out
    sign_in
    expect(page).to have_content("Welcome Justin")
end

When('I create a new post') do
    # create_post
end

When('I create a post') do
    click_on "post-new"
    fill_in "post-body", with: "My post body"
    attach_file "post-file", "#{Rails.root}/features/support/fixtures/image.jpg"
    click_on "post-new-submit"
end

Then('I should see the post on the timeline') do
    expect(page).to have_content("My post body")
    expect(page).to have_css("img[src*='image.jpg']")
end

Given('I open a second browser window') do
    Capybara.using_session("browser2") do
        visit "/"
    end
end

Then('I can see the post in the second window without reload') do
    Capybara.using_session("browser2") do
        expect(page).to have_content("My post body")
    end
end
