# Contains all landing page elements
class RegistrationPage

    include Capybara::DSL
  
    def initialize
      @last_name = Element.new(:xpath, '//*[@id="AccountFrm_lastname"]')
      @first_name = Element.new(:xpath, '//*[@id="AccountFrm_firstname"]')
      @email = Element.new(:xpath, '//*[@id="AccountFrm_email"]')
      @address1 = Element.new(:xpath, '//*[@id="AccountFrm_address_1"]')
      @city = Element.new(:xpath, '//*[@id="AccountFrm_city"]')
      @zipcode = Element.new(:xpath, '//*[@id="AccountFrm_postcode"]')
      @loginName = Element.new(:xpath, '//*[@id="AccountFrm_loginname"]')
      @password = Element.new(:xpath, '//*[@id="AccountFrm_password"]')
      @passwordConfirm = Element.new(:xpath, '//*[@id="AccountFrm_confirm"]')
      @country = Element.new(:xpath, '//*[@id="AccountFrm_country_id"]')
      @country_options = Element.new(:xpath, '//*[@id="AccountFrm_country_id"]/option')
      @region = Element.new(:xpath, '//*[@id="AccountFrm_zone_id"]')
      @region_options = Element.new(:xpath, '//*[@id="AccountFrm_zone_id"]/option')
      @privacyPolicy = Element.new(:xpath, '//*[@id="AccountFrm_agree"]')
      @continue = Element.new(:xpath, '//*[@id="AccountFrm"]/div[5]/div/div/button')
      @section_titles = Element.new(:css, 'h1.heading1')
    end
  
    def contains_section?(text)
      @section_titles.element_on_page? text: text, visible: true
    end
  
    def visit
      Capybara.visit('/index.php?rt=account/create')
    end
    def firstNameInput(text)
      @first_name.set(text)
    end
    def lastNameInput(text)  
      @last_name.set(text)
    end 
    def emailInput(text)
      @email.set(text)
    end
    def addressInput(text)
      @address1.set(text)
    end
    def cityInput(text)
        @city.set(text)
    end
    def zipcodeInput(text)
        @zipcode.set(text)
    end           
    def loginNameInput(text)
        @loginName.set(text)
    end
    def passwordInput(text)
        @password.set(text)
    end
    def passwordConfirmInput(text)
        @passwordConfirm.set(text)
    end
    def countryInput(text)
        @country.click
        Capybara.find(:xpath, @country_options.path, text: /#{text}/i, match: :first).click
    end
    def regionInput(text)
        @region.click
        Capybara.find(:xpath, @region_options.path, text: /#{text}/i).click
    end
    def privacyPolicyInput
        @privacyPolicy.click    
    end    
    def continueInput
        @continue.click
    end    

  end