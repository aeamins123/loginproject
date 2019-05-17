from webdriver_manager.chrome import ChromeDriverManager
from selenium import webdriver
import unittest


class LoginPageTest(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.driver = webdriver.Chrome(executable_path=ChromeDriverManager().install())
        cls.driver.implicitly_wait(10)
        cls.driver.maximize_window()

    def test_login_page_is_up(self):
        self.driver.get("localhost:5000/login")
        self.assertFalse(self.assertEqual(self.driver.title, "My Login Page"))

    def test_login_successful(self):
        self.driver.get("localhost:5000/login")
        self.driver.find_element_by_name("username").send_keys("admin")
        self.driver.find_element_by_name("password").send_keys("admin123")
        self.driver.find_element_by_id("btn-login").click()
        self.assertFalse(self.assertEqual(self.driver.find_element_by_class_name("error").text, "Login Successful!"))

    def test_login_unsuccessful(self):
        self.driver.get("localhost:5000/login")
        self.driver.find_element_by_name("username").send_keys("admin123")
        self.driver.find_element_by_name("password").send_keys("1234")
        self.driver.find_element_by_id("btn-login").click()
        self.assertFalse(self.assertEqual(self.driver.find_element_by_class_name("error").text, "Invalid Username/Password."))

    @classmethod
    def tearDownClass(cls):
        cls.driver.close()
        cls.driver.quit()


if __name__ == '__main__':
    unittest.main()
