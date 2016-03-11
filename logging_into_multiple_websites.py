from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

browser = webdriver.Firefox()  #Chrome('C:\\data\\books oae\\apex library\\chromedriver') #Firefox() 

browser.get('https://trello.com/login')
time.sleep(10)
emailElem = browser.find_element_by_id('user')
emailElem.send_keys('test123@gmail.com')
passwordElem = browser.find_element_by_id('password')
passwordElem.send_keys('test12345')
passwordElem.submit()

body = browser.find_element_by_tag_name("body")
body.send_keys(Keys.CONTROL + 't')

browser.get('https://todoist.com/Users/showLogin')
time.sleep(10)
emailElem = browser.find_element_by_id('email')
emailElem.send_keys('test123@gmail.com')
passwordElem = browser.find_element_by_id('password')
passwordElem.send_keys('test12345')
passwordElem.submit()

body = browser.find_element_by_tag_name("body")
body.send_keys(Keys.CONTROL + 't')

browser.get('https://asana.com/#login')
time.sleep(10)
emailElem = browser.find_element_by_id('login-email-login-modal')
emailElem.send_keys('test123@gmail.com')
passwordElem = browser.find_element_by_id('login-password-login-modal')
passwordElem.send_keys('test12345')
passwordElem.submit()
