# Be sure to run 'gem install selenium-webdriver' and 'gem install chromedriver-helper'

# This should open a web browser, navigate to the page, input some data and select from the dropdown, and submit the form.
# You should see the next form before the browser closes and the script stops.

require "selenium-webdriver"
require 'chromedriver-helper'

print "driver starting..."
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.conservation.org/carbon-footprint-calculator#/"

p "Navigated to 1"

options = driver.find_element(class: 'drop').find_elements(tag_name: 'option')
options.each { |option| option.click if option.text == 'Myself' }

p "Selected, set"

zip = driver.find_elements(class: "ng-valid-pattern")[1]
zip.click
zip.send_keys("80303")

p "Sent keys"

submit_button = driver.find_elements(tag_name: "button")[2]
submit_button.click

p "clicked the button"
p "done!"

sleep 5
driver.quit