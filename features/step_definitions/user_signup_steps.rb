When('I sign up for a new account') do
    click_on "user-signup"
    fill_in "user-email", with: "jdoe@example.come"
    fill_in "user-username", with: "jdoe"
    fill_in "user-password", with: "secret123"
    fill_in "user-password-confirmation", with: "secret123"
    click_on "user-signup=submit"
end