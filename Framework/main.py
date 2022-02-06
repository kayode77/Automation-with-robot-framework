from selenium import webdriver
from selenium.webdriver.common.keys import Keys
driver=webdriver.Chrome(executable_path="C:\\browserdrivers\\chromedriver.exe")
driver.get('https://www.jumia.com.ng')
print(driver.title)
driver.close()
