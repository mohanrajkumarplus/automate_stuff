import time
from selenium import webdriver

driver = webdriver.Chrome('C:\\data\\books oae\\apex library\\chromedriver')  # download chrome driver from
#link - https://sites.google.com/a/chromium.org/chromedriver/getting-started
#instructions - http://www.seleniumeasy.com/selenium-tutorials/how-to-run-webdriver-in-chrome-browser

driver.get('http://www.google.com/xhtml');
time.sleep(5) # Let the user actually see something!
search_box = driver.find_element_by_name('q')
search_box.send_keys('ChromeDriver')
search_box.submit()
time.sleep(5) # Let the user actually see something!
driver.quit()
