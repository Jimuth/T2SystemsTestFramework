"""
Create new class that inherits from Selenium2Library
"""
from Selenium2Library import Selenium2Library
from selenium import webdriver
from Signup_Login_Resources import Signup_Login_Resources
from Arrange_Resources import Arrange_Resources
from Account_Setting_Resources import Account_Setting_Resources
from File_Management_Resources import File_Management_Resources
from BrowserStack_Desire_Capabilities import BrowserStack_Desire_Capabilities
import os,time
from selenium.webdriver.common.keys import Keys
from robot.libraries.BuiltIn import BuiltIn
from itertools import izip
from PIL import Image
import cv2
import numpy as np
from guppy import hpy

class CustomSeleniumLibrary(Selenium2Library):
    "Created a custom library"
    def get_webdriver_instance(self,os='Windows7',
                               browser='Firefox',
                               url="https://tst-app.conduce.com",
                               run_sauce_lab='No',
                               build = '',
                               test_name=None):
        "Overriding the get webdriver instance"
        try:
            if run_sauce_lab == 'Yes':
                print 1
                browser_obj = self.get_page_object('browserstack')
                print 2
                desc_cap = browser_obj.select_browser(os, browser, build, test_name)
                print 3
                self.open_browser(url=url,
                              remote_url="http://rupeshmishra2:GK7YPjzt1HMtedifZays@hub.browserstack.com:80/wd/hub",
                              desired_capabilities=desc_cap)
                print 4
            else:
                self.open_browser(url=url,browser=browser)
        except Exception,e:
            print 'Exception in get webdriver instance', e

    def get_page_object(self, page_name):
        "Return the appropriate page object based on page_name"
        test_obj = None
        page_name = page_name.lower()
        if page_name == "signup_login":
            test_obj = Signup_Login_Resources()
        elif page_name == "account_settings":
            test_obj = Account_Setting_Resources()
        elif page_name == "arrange":
            test_obj = Arrange_Resources()
        elif page_name == "file_management":
            test_obj = File_Management_Resources()
        elif page_name == "browserstack":
            test_obj = BrowserStack_Desire_Capabilities()
        elif page_name == "builtin":
            test_obj = BuiltIn()
    
        return test_obj

    def open_new_tab(self, url):
        "Opening the new tab with Banksy URL"
        dr = self.get_webdriver()
        dr.find_element_by_tag_name("body").send_keys(Keys.CONTROL + 't')
        self.go_to(url)

    def click_last(self,xpath):
        "Clicking the last element"
        size = self.get_matching_xpath_count(xpath)
        xpath = "(" +xpath+")["+size+"]"
        self.wait_until_element_is_visible(xpath,10)
        self.click_element(xpath)

    def open_mtm_file(self, mtmid, filename):
        "Opening Manage team memeber file name"
        vMtm_File_Name = 'From %s - %s'%(mtmid, filename)
        self.click_element(vMtm_File_Name)

    def get_webdriver(self):
        "Getting the webdriver"
        return self._current_browser()

    def click_hyper_link(self):
        dr = self.get_webdriver()
        dr.find_element_by_css_selector("a[rel='noreferrer']")

    def clear_text(self, xpath):
        self.get_webdriver().find_element_by_xpath(xpath).clear()

    def implicit_wait(self):
        self.get_webdriver().implicitly_wait(10)

    def take_heap_snapshot(self):
        "Taking heap-snapshot using guppy package"
        obj = self.get_page_object('builtin')
        hp = hpy()
        heap_snapshot = hp.heap()
        print "heap_snapshot=", heap_snapshot
        heap_snapshot = str(heap_snapshot)
        total_size = self.get_total_size(heap_snapshot)
        print "Total Size = ",total_size
        return total_size

    def get_total_size(self, heap_snapshot):
        "Getting ony size value from total heap snapshot values."
        value_1 = heap_snapshot.split('Total size = ')[1]
        value_2 = value_1.split(' bytes')[0]
        value = value_2
        return value

    def heap_snapshot_difference(self, heap_snapshot_after, heap_snapshot_before):
        "Get the difference betwwen before and after snapshot size value"
        leftover = int(heap_snapshot_after) - int(heap_snapshot_before)
        total_difference = str(leftover) + ' bytes'
        print "Total Difference Value =",leftover 
        

    def click_signin_link(self, xpath):
        "Clicking sign in link from gmail home page"
        try:
            self.click_element(xpath)
        except Exception as e:
            pass
            
    def click_verification_link(self, xpath):
        "Verify page details"
        try:
            self.click_element(xpath)
        except Exception as WebDriverException:
            print "exception:-",WebDriverException
            pass
        except Exception as e:
            print e

    def verify_page_details(self, xpath, value):
        "Verify page details"
        try:
            self.element_text_should_be(xpath, value)
        except Exception as StaleElementReferenceException:
            print "exception:-",StaleElementReferenceException
            pass
        except Exception as e:
            print e

    def get_gmail_text(self, xpath):
        "Getting the password and saving in global variable"
        vGtext = self.get_text(xpath)
        vGpass = vGtext.split("password:")
        vGpass= (vGpass[1])[1:9]
        return vGpass

    def set_gmail_verification(self):
        "Setting the city and saving at the time of verification."
        xAnswer = "//input[@name='email']"
        xDone = "//input[@type='submit']"
        xDiv_xpath = "//div[@class='VnJmLc' and contains(.,'Confirm the recovery email')]"
        
        try:
            self.input_text(xAnswer,"qaconduce@gmail.com")
            self.click_element(xDiv_xpath)
            self.click_element(xDone)
            self.click_element(xDone)
        except Exception:
            pass

    def insert_value(self, xpath, vValue):
        dr = self.get_webdriver()
        el = self.get_webelement(xpath)
        obj = self.get_page_object('builtin')
        for v in vValue:
            obj.sleep(1)
            el.send_keys(v)

    def recurring_click(self, xpath):
        "Recurring click"
        index = 1
        while(index <=10):
            try:
                self.click_element(xpath)
                print "Attemp to click", index
            except Exception,e:
                break
            index = index + 1

    def recurring_click_sub_menu(self, xpath1, xpath2, xpath3):
        "Recurring click"
        index = 1
        while(index <=10):
            try:
                self.click_element(xpath1)
                self.click_element(xpath2)
                self.click_element(xpath3)
                print "Attemp to click", index
            except Exception,e:
                break
            index = index + 1

    def insert_key(self,ele_xpath, last_value):
        dr = self.get_webdriver()
        tab_element = dr.find_element_by_xpath(ele_xpath)
        tab_element.send_keys(Keys.END + last_value)
        tab_element.send_keys(Keys.END + "abc")
        tab_element.send_keys(Keys.END + Keys.BACKSPACE)
        tab_element.send_keys(Keys.END + Keys.BACKSPACE)
        tab_element.send_keys(Keys.END + Keys.BACKSPACE)

    def verify_value(self, xpath, expected):
        actual_value = self.get_value(xpath)
        obj = self.get_page_object('builtin')
        if actual_value == expected:
            print "pass"
        else:
            obj.fail("text is not mathcing")

    def rename_lens(self, lens_name, new_name):
        "Renameing lens that is passed"
        xLens_sub_menu = "//div[contains(.,'%s')]/preceding::div[@class='arrangeDropdownToggle']"%lens_name
        xLens_rename_menu = "//div[contains(.,'%s')]/descendant::div[@class='dropdownItem' and contains(.,'Rename')]"%lens_name
        self.click_element(xLens_sub_menu)
        obj = self.get_page_object('builtin')
        obj.sleep(2)
        self.click_element(xLens_rename_menu)
        obj.sleep(2)
        arange_obj = self.get_page_object('arrange')
        self.input_text(arange_obj.xLens_rename_textbox, new_name)
        self.click_element(arange_obj.xRename_button)

    def lens_exist(self, lens_name, protool=None):
        "Verify lens exist in the canvas"
        lens_xpath = "//div[contains(@class,'lensLabel') and contains(.,'%s')]"%lens_name
        self.wait_until_element_is_visible(lens_xpath, 60)
        #xpath = "//div[contains(@class,'arrangeThumbnail thumb_bkg')]/following::span[contains(.,'%s')]"%(lens_name)
        first_char = lens_name[0:1]
        if protool == 'ProTools':
            first_char = ''
            xpath = "//div[contains(@class,'arrangeThumbnail') and contains(.,'%s')]/following::div[contains(.,'%s')]"%(first_char,lens_name)
        else:
            xpath = "//div[contains(@class,'arrangeThumbnail') and contains(.,'%s')]/following::div[contains(.,'%s')]"%(first_char,lens_name)
        self.wait_until_page_contains_element(xpath, 30)

    def verify_lens_visible_toggle_off(self, lens_name, toggle=True):
        "Verify lens visible toggle"
        xLens_visible_toggle = "//div[contains(.,'%s')]/preceding-sibling::div[@class='lensVisibleToggle']"%lens_name
        xUS_weather_lens_hidden = "//div[contains(@style,'visibility: hidden;')]/preceding::div[contains(.,'%s')]"%lens_name
        if toggle == True:
            self.click_element(xLens_visible_toggle)
        obj = self.get_page_object('builtin')
        obj.sleep(2)
        self.wait_until_page_contains_element(xUS_weather_lens_hidden, 30)        

    def verify_lens_visible_toggle_on(self, lens_name, toggle=True):
        "Verify lens visible toggle"
        xLens_visible_toggle = "//div[contains(.,'%s')]/preceding-sibling::div[@class='lensVisibleToggle off']"%lens_name
        xUS_weather_lens_visible = "//div[contains(@style,'position: absolute; z-index')]/preceding::div[contains(.,'%s')]"%lens_name
        if toggle == True:
            self.click_element(xLens_visible_toggle)
        obj = self.get_page_object('builtin')
        obj.sleep(2)
        self.wait_until_page_contains_element(xUS_weather_lens_visible, 30)

    def select_lens_div(self, lens_name):
        "Selecting the lens div by name"
        xLens_name = "//div[@class='lens selected']//div[contains(.,'%s')]"%lens_name
        self.click_element(xLens_name)

    def select_lens(self, lens_name):
        "Selecting the lens name"
        xLens_name = "//span[contains(.,'%s')]"%lens_name
        self.click_element(xLens_name)

    def menu_action_on_lens(self, lens_name, action):
        "Action lens that is passed"
        xLens_sub_menu = "//div[contains(.,'%s')]/preceding-sibling::div[@class='arrangeDropdownToggle']"%lens_name
        xLens_action_menu = "//div[contains(.,'%s')]/descendant::div[@class='arrangeDropdown']/div[contains(.,'%s')]"%(lens_name, action)
        self.click_element(xLens_sub_menu)
        obj = self.get_page_object('builtin')
        obj.sleep(2)
        self.click_element(xLens_action_menu)

    def go_to_protools(self, banksy_url):
        "Go to protools url for Test and Dev enviorment"
        vProtools_url = banksy_url + 'protools/'
        self.go_to(vProtools_url)

    def multiple_xpath_exist(self, lens_name, no_of_times=2):
        "Number of times xpath exist in the page"
        xLens_xpath = "//div[@class='arrangeName' and contains(.,'%s')]"%lens_name
        dr = self.get_webdriver()
        no_of_obj = dr.find_elements_by_xpath(xLens_xpath)
        obj = self.get_page_object('builtin')
        print "no_of_obj:-",len(no_of_obj)
        if len(no_of_obj) == no_of_times:
            pass
        else:
            obj.fail("Fail: Duplicate Lens not created")

    def generate_customized_report(self, folder, report_file):
        "Inserting Conduce and Gallop Image in Report"
        report_file = os.path.dirname(os.path.realpath(__file__)) + os.sep + 'results' + os.sep + report_file
        linenumber = None
        f = open(report_file,"r")
        r=f.readlines()
        f.close()
        if r !=[]:
            f = open(report_file,"r")
            for num,line in enumerate(f,0):
                if '<head>\n' == line:
                    linenumber = num
            f.close()

            f = open(report_file,"w+")
            r[linenumber]="""<head> <table id="Logos" style="margin-bottom: 20px; width:830px;">
                                <colgroup>
                                <col style="width: 50%"></col>
                                <col style="width: 50%"></col>
                                </colgroup>
                                <thead>
                                <tr class="content">
                                <th class="Logos" style="width:830px;" colspan="7"><img align="left" src="image//conduce_logo.png"/></th>
                                <th class="Logos" colspan="1"> <img align="right" src="image//gallop_logo.png"/></th>
                                </tr>
                                </thead>
                                </table>"""
            f.writelines(r)
            f.close()

    def capture_lens(self, file_name):
        "Resize lens from each sides"
        lens_div = "//div[@class='lens selected']"
        dr = self.get_webdriver()
        lens_div_ele = dr.find_element_by_xpath(lens_div)
        x_size=lens_div_ele.size.get('width')
        print "x size",x_size
        y_size=lens_div_ele.size.get('height')
        x_location = lens_div_ele.location['x']
        y_location = lens_div_ele.location['y']
        print "x location",x_location
        

        "Get entire page screenshot"
        self.capture_page_screenshot(file_name)

        # uses PIL library to open image in memory
        im = Image.open(file_name) 

        left = x_location
        top = y_location
        right = x_location + x_size
        bottom = y_location + y_size


        im = im.crop((left, top, right, bottom)) # defines crop points
        im.save(file_name) # saves new cropped image

    def image_compare(self, expected_file, actual_file):
        #expected = os.path.dirname(os.path.realpath(__file__)) + os.sep + 'results' + os.sep + 'Expected_Protools' + os.sep + expected_file
        #actual = os.path.dirname(os.path.realpath(__file__)) + os.sep + 'results' + os.sep + 'Actual_Protools' + os.sep + actual_file
        i1 = Image.open(expected_file)
        i2 = Image.open(actual_file)

        sizea, sizeb = i1.size, i2.size
        maxsize=64

        newx = min(sizea[0], sizeb[0], maxsize)
        newy = min(sizea[1], sizeb[1], maxsize)

        # Rescale to a common size:
        i1 = i1.resize((newx, newy), Image.BICUBIC)
        i2 = i2.resize((newx, newy), Image.BICUBIC)
        # Converting images in same mode:
        

        if i1.mode != i2.mode:
            i1 = i1.convert('RGBA')
            i2 = i2.convert('RGBA')
            print "Converted image modes in same format"
        assert i1.mode == i2.mode, "Different modes for images"
        assert i1.size == i2.size, "Different sizes."
             
        pairs = izip(i1.getdata(), i2.getdata())
        if len(i1.getbands()) == 1:
            # for gray-scale jpegs
            dif = sum(abs(p1-p2) for p1,p2 in pairs)
        else:
            dif = sum(abs(c1-c2) for p1,p2 in pairs for c1,c2 in zip(p1,p2))
             
        ncomponents = i1.size[0] * i1.size[1] * 3
        percentage = (dif / 255.0 * 100) / ncomponents
        obj = self.get_page_object('builtin')
        if percentage <= 2.0:
            print "Difference (percentage):", percentage
            pass
        else:
            print "Difference (percentage):", percentage
            obj.log("Actual images and Expected images are not same")

    def image_difference(self, expected_img, actual_img, run_sauce_lab='No'):
        img1 = cv2.imread(expected_img)
        #gray1 = cv2.cvtColor(img1, cv2.COLOR_BGR2GRAY)
        img2 = cv2.imread(actual_img)
        #gray2 = cv2.cvtColor(img2, cv2.COLOR_BGR2GRAY)
        resized_image1 = cv2.resize(img1, (800, 800))
        resized_image2 = cv2.resize(img2, (800, 800))
        diff_image = cv2.subtract(resized_image1,resized_image2)
        resized_diffimg = cv2.resize(diff_image, (800, 800))
        difference = os.path.dirname(os.path.realpath(__file__)) + os.sep + 'results' + os.sep + 'Difference' + os.sep + "Difference_" + os.path.basename(actual_img).split("_")[1] + ".jpg"
        if diff_image is True:
            print "The image is same"
        else:
            cv2.imwrite(difference,diff_image)
            print "The images are different"
        resize_diff = os.path.dirname(os.path.realpath(__file__)) + os.sep + 'results' + os.sep + 'Difference' + os.sep + "Difference_" + os.path.basename(actual_img).split("_")[1] + "_resize_diff.jpg"
        cv2.imwrite(resize_diff,resized_diffimg)

        expected = os.path.dirname(os.path.realpath(__file__)) + os.sep + 'results' + os.sep + 'Expected_Protools' + os.sep + "Expected_"  + os.path.basename(expected_img).split("_")[1] + "_resize_img.jpg"
        cv2.imwrite(expected, resized_image1)
        diff_resize_image = cv2.imread(resize_diff)
        exp_resize_image = cv2.imread(expected)
        imgray = cv2.cvtColor(diff_resize_image,cv2.COLOR_BGR2GRAY)
        ret,thresh = cv2.threshold(imgray,127,255,0)
        try:
            if run_sauce_lab == 'Yes':
                contours, hierarchy = cv2.findContours(thresh,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
            else:
                img3, contours, hierarchy = cv2.findContours(thresh,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
        except Exception:
            print 'Exception in getting difference in images'
        cv2.drawContours(exp_resize_image, contours, -1, (0,255,0), 8)
        contours_img = os.path.dirname(os.path.realpath(__file__)) + os.sep + 'results' + os.sep + 'Difference' + os.sep + "Difference_" + os.path.basename(actual_img).split("_")[1] + "_contours_img.jpg"
        cv2.imwrite(contours_img, exp_resize_image)
        cv2.destroyAllWindows()

if __name__ == "__main__":
    test_obj = CustomSeleniumLibrary()
    test_obj.get_webdriver_instance(browser='chrome')
    test_obj.generate_customized_report('Firefox','firefox_report.html')
    test_obj.generate_customized_report('Chrome','chrome_report.html')
    test_obj.generate_customized_report('IE','ie_report.html')
