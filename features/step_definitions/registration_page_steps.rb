Given(/^I am on the account create page$/) do
    @pages.registration_page.visit
    expect(@pages.registration_page.contains_section?('CREATE ACCOUNT')).to eq(true)
  end

  When ('I fill the first name input field with {string}') do |first_name|
    @pages.registration_page.firstNameInput(first_name)
  end
  When ('I fill the last name input field with {string}') do |last_name|
    @pages.registration_page.lastNameInput(last_name)
  end
  When ('I fill the email input field with {string}') do |email|
    @pages.registration_page.emailInput(email)
  end
  When ('I fill the address input field with {string}') do |address1|
    @pages.registration_page.addressInput(address1)
  end
  When ('I fill the city input field with {string}') do |city|
    @pages.registration_page.cityInput(city)
  end
  When ('I fill the zipcode input field with {string}') do |zipcode|
    @pages.registration_page.zipcodeInput(zipcode)
  end
  When ('I fill the login input field with {string}') do |loginName|
    @pages.registration_page.loginNameInput(loginName)
  end
  When ('I fill the password input field with {string}') do |password|
    @pages.registration_page.passwordInput(password)
  end  
  When ('I fill the password confirm input field with {string}') do |passwordConfirm|
    @pages.registration_page.passwordConfirmInput(passwordConfirm)
  end
  When ('I select in country dropdown {string}') do |country|
    @pages.registration_page.countryInput(country)
  end
  When ('I select in region dropdown {string}') do |region|
    @pages.registration_page.regionInput(region)
  end
  When('I click on Privacy Policy agreement') do
    @pages.registration_page.privacyPolicyInput
  end 
  When('I click on Continue button') do
    @pages.registration_page.continueInput
  end 
  Then(/^I see Registered account page$/) do
    expect(@pages.registration_page.contains_section?('YOUR ACCOUNT HAS BEEN CREATED!')).to eq(true)
    sleep 7
  end

  