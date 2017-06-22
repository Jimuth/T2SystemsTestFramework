"""
Create new class that inherits from Selenium2Library
"""
from Selenium2Library import Selenium2Library
from selenium import webdriver
from Flex_Login_Variables import Flex_Login_Variables
from Flex_Login_Variables2 import Flex_Login_Variables2
from robot.libraries.BuiltIn import BuiltIn
from datetime import datetime
from selenium.webdriver.common.keys import Keys
import os,time,re
from selenium.webdriver.common.keys import Keys


class CustomSelenium2Library(Selenium2Library):


    def validate_citation_SummaryPage(self):

        Citation_Number = self.get_text("//*[@id='MySettings_Contravention_TicketId_T2Label_Label']")
        Violation_Code = self.get_text("//*[@id='MySettings_Contravention_ViolationCode_T2Label_Label']")
        Location = self.get_text("//*[@id='MySettings_Contravention_Location_T2Label_Label']")
        State = self.get_text("//*[@id='MySettings_Contravention_SnapVehicleState_T2Label_Label']")
        License = self.get_text("//*[@id='MySettings_Contravention_SnapVehiclePlateLicense_T2Label_Label']")
        Type = self.get_text("//*[@id='MySettings_Contravention_SnapVehiclePlateType_T2Label_Label']")
        Make = self.get_text("//*[@id='MySettings_Contravention_SnapVehicleMake_T2Label_Label']")
        Amount_Due=self.get_text("//*[@id='MySettings_Contravention_BalanceDue_T2Label_Label']")



        Login_Obj = Flex_Login_Variables()
        exp_Citation_Number = Login_Obj.CitationCode
        exp_Violation_Code= Login_Obj.ViolationCode
        exp_Location= Login_Obj.Location
        exp_State= Login_Obj.State
        exp_License= Login_Obj.LicensePlate
        exp_Type= Login_Obj.PlateType
        exp_Make= Login_Obj.Make
        exp_Amount_Due="$"+Login_Obj.BaseAmount+".00"





        print ("Actual Citation Number is "+Citation_Number+ " And Expected Citation Number is "+ exp_Citation_Number)
        if(Citation_Number==exp_Citation_Number):
            print("Citation Number is matching")
        else:
            print("Citation Number is NOT matching")

        print (
        "Actual Violation Code is " + Violation_Code + " And Expected Violation Code is " + exp_Violation_Code)
        if (Violation_Code == exp_Violation_Code):
            print("Violation Code is matching")
        else:
            print("Violation Code is NOT matching")

        print (
        "Actual Location is " + Location + " And Expected Location is " + exp_Location)
        if (Location == exp_Location):
            print("Location is matching")
        else:
            print("Location is NOT matching")

        print (
        "Actual State is " + State + " And Expected State is " + exp_State)
        if (State == exp_State):
            print("State is matching")
        else:
            print("State is NOT matching")

        print ("Actual License is " + License + " And Expected License is " + exp_License)
        if (License == exp_License):
            print("License is matching")
        else:
            print("License is NOT matching")

        print (
        "Actual Type is " + Type + " And Expected Type is " + exp_Type)
        if (Type == exp_Type):
            print("Type is matching")
        else:
            print("Type is NOT matching")

        print (
        "Actual Make is " + Make + " And Expected Citation Number is " + exp_Make)
        if (Make == exp_Make):
            print("Make is matching")
        else:
            print("Make is NOT matching")

        print (
        "Actual Amount Due is "+ Amount_Due + " And Expected Citation Number is " + exp_Amount_Due)
        if (Amount_Due == exp_Amount_Due):
            print("Amount Due is matching")
        else:
            print("Amount Due is NOT matching")


    def refresh_test_data(self, OldValue, NewValue):
        f = open('C:\Users\E002716\PycharmProjects\T2SystemsTestFramework\Resources\Flex_Login_Variables.py', 'r')
        linelist = f.readlines()
        f.close

        # Re-open file here
        f2 = open('C:\Users\E002716\PycharmProjects\T2SystemsTestFramework\Resources\Flex_Login_Variables.py', 'w')
        for line in linelist:
            line = line.replace(OldValue, NewValue)
            f2.write(line)
        f2.close()



    def validate_feeAdjustment_prerequsit(self):

        self.wait_until_element_is_visible("//*[@id='ctl00_pageContent_MySettings_Entity_BalanceDue_T2Label_Label']",10)
        Balance_Due=self.get_text("//*[@id='ctl00_pageContent_MySettings_Entity_BalanceDue_T2Label_Label']")

        print (Balance_Due)

        Balance_Amount=Balance_Due.strip("$")
        Balance_Amount = int(float(Balance_Amount))

        print "Balance_Amount = ",Balance_Amount

        return Balance_Amount

    def validate_feeAdjustment_SummaryPage(self, BalanceDue):


        Obj = BuiltIn()
        self.wait_until_element_is_visible("//*[@id='ctl00_pageContent_MySettings_Entity_BalanceDue_T2Label_Label']",
                                           10)

        Final_fee = self.get_text("//*[@id='ctl00_pageContent_MySettings_Entity_BalanceDue_T2Label_Label']")
        Final_Amount=Final_fee.strip("$")

        Login_Obj = Flex_Login_Variables()
        fee_Adjustment = Login_Obj.AdjustmentAF

        print "New_Balance_Amount = ", BalanceDue

        Final_Amount = int(float(Final_Amount))
        print "FinalAmount = ",(Final_Amount)
        print "fee_Adjustment = ",(fee_Adjustment)



        if(Final_Amount == (BalanceDue+fee_Adjustment)):
            print("Fee Adjustment is working fine")
        else:
             Obj.fail("Fee Adjustment is NOT working fine")


    def control_group_click(self, Act_SP, Act_SS, Act_SE):
        Obj = BuiltIn()

        dropdownValue="Series Prefix"

        self.select_from_list_by_label("//*[@id='NumberRangeList_Filter_Columns_DropDownList']",dropdownValue)

        self.input_text("//*[@id='NumberRangeList_Filter_Value_TextBox']",Act_SP)
        self.click_element("//*[@id='NumberRangeList_StartFilter']")

        Obj.sleep(10)

        dr = self._current_browser()
        row_elements = dr.find_elements_by_xpath("//*[@id='NumberRangeList_UpdatePanel']/table/tbody/tr/td[1]")
        inrow = len(row_elements)

        for i in range(4, inrow):

            expSP = self.get_text("//*[@id='NumberRangeList_UpdatePanel']/table/tbody/tr[%s]/td[1]" % i)
            print "Expected Series Prefix = ", expSP

            expSS = self.get_text(
                "//*[@id='NumberRangeList_UpdatePanel']/table/tbody/tr[%s]/td[2]" % i)
            print "Expected Series Prefix = ", expSS

            expSE = self.get_text(
            "//*[@id='NumberRangeList_UpdatePanel']/table/tbody/tr[%s]/td[3]" % i)
            print "Expected Series Prefix = ", expSE



            if (Act_SP == expSP and Act_SS == expSS and Act_SE == expSE):
                self.click_element("//*[@id='NumberRangeList_UpdatePanel']/table/tbody/tr[%s]/td[7]" % i)
                break
            else:
                print "Control Group not clicked"


    def validate_permit_status(self, SeriesPrefix, SeriesStart):

        Obj = BuiltIn()
        Obj.sleep(5)

        Exp_Start_Permit = SeriesPrefix+SeriesStart

        dr = self._current_browser()

        Total_Prmits=dr.find_elements_by_xpath("//*[@id='PermissionSearchResults_UpdatePanel']/table/tbody/tr[*]/td[2]")
        inRow=len(Total_Prmits)


        for i in range(4,inRow):
            Permit_Number=self.get_text("//*[@id='PermissionSearchResults_UpdatePanel']/table/tbody/tr[%s]/td[2]"%i)


            if (Permit_Number == Exp_Start_Permit):
                Citation_Details = self.click_element("//*[@id='PermissionSearchResults_UpdatePanel']/table/tbody/tr[%s]/td[2]" % i)
                print Citation_Details
                break
            else:
                print "Citation is NOT Allocated"

        Obj.sleep(10)

        Citation_Status = self.get_text("//*[@id='MySettings_Permission_Status_T2Label_Label']")
        print Citation_Status

        if (Citation_Status == "Allocated"):
            print "Citation is Allocated"
        else:
            Obj.fail("Citation is NOT Allocated")



    def add_available_resource_event(self, expDescription):

        Obj=BuiltIn()
        Obj.sleep(5)

        print expDescription

        dr = self._current_browser()
        Total_Desc = dr.find_elements_by_xpath("//*[@id='AvailableEventResources_UpdatePanel']/table/tbody/tr[*]/td[2]")
        inRow = len(Total_Desc)

        for i in range(4,inRow):
            ActDescription = self.get_text("//*[@id='AvailableEventResources_UpdatePanel']/table/tbody/tr[%s]/td[2]"% i)
            print ActDescription
            if (ActDescription == expDescription):
                self.click_element("//*[@id='AvailableEventResources_UpdatePanel']/table/tbody/tr[%s]/td[6]" % i)
            else:
                return


    def Define_Task_Parameter_SaOField(self):
        Obj = BuiltIn()
        Obj.sleep(5)
        dr = self._current_browser()

        row_elements = dr.find_elements_by_xpath("//option[contains(text(),'_T2FIELD')]")
        inrow = len(row_elements)
        print row_elements
        print inrow

        for i in range(1, inrow):
            self.click_element("//option[contains(text(),'_T2FIELD')][%s]"%i)

        self.click_element("//*[@id='ctl00_pageContent_ScheduledTaskWizard_Step4CustomConfig_CC995_S3FieldSelectAndOrder_ctl01']/span")





    def verify_permits_allocated(self, SeriesStart, SeriesEnd ):

        Obj = BuiltIn()
        Obj.sleep(5)

        SeriesStartNum = int(float(SeriesStart))
        SeriesEndNum = int(float(SeriesEnd))

        ExpNumberOfPermits = (SeriesEndNum-SeriesStartNum)+1
        NumberOfPermits = self.get_text("//*[@id='PermissionAllocateWizard']/tbody/tr[3]/td/span[1]")

        ActNumberOfPermits= int(float(NumberOfPermits))
        if (ExpNumberOfPermits == ActNumberOfPermits):
            print "Number Of Permits is Matching"
        else:
            Obj.fail("Number Of Permits is NOT Matching")


# Activates the Cas Drawer Log in button if that is disabled.
    def activate_cash_drawer_Loginbutton(self):

        Obj = BuiltIn()
        Obj.sleep(5)
        dr = self._current_browser()

        self.click_element("//*[@class='PageSideBarItemClosed']//td[contains(text(),'Cash Drawer')]")

        Link = "//a[contains(text(),'Logout of Cash Drawer')]"

        Obj.sleep(5)

        try:
            self.click_element(Link)
            print "Clicked on LogOut "
        except:
            self.click_element("//td[contains(text(),'Cash Drawer')]")
            print "DID NOT Click on LogOut "

# Does the Activate sell permit flow
    def activate_sell_permit_wizard(self,CD):

        Obj = BuiltIn()
        Obj.sleep(5)
        dr = self._current_browser()

        self.click_element("//*[@class='PageSideBarItemClosed']//td[contains(text(),'Cash Drawer')]")

        OpenCD = "//a[contains(text(),'Open/Login Cash Drawer')]"
        CDSelect="//label[contains(text(),'%s')]/.."%CD

        try:
            self.click_element(OpenCD)
            self.wait_until_element_is_visible(CDSelect,5)
            self.click_element(CDSelect)
            self.wait_until_element_is_visible("//*[@id='OpenButton']", 20)
            self.click_element("//*[@id='OpenButton']")

        except:
            self.click_element("//tr[@onclick='T2ClickSideBar(this)']//td[contains(.,'Cash Drawer')]")

        self.reload_page()

    def Citation_Manager_Validation(self):

        Obj = BuiltIn()
        Obj.sleep(5)

        Citation_Number = self.get_text("//*[@id='MySettings_Contravention_TicketId_FormFieldLabel_Label']")
        Violation_Code = self.get_text("//*[@id='MySettings_Contravention_ViolationCode_FormFieldLabel_Label']")
        Violation_Base_Amount = self.get_text(
            "//*[@id='MySettings_Contravention_ViolationCodeBaseAmount_FormFieldLabel_Label']")
        Responsible_Customer = self.get_text("//*[@id='MySettings_Contravention_ResponsibleEntity_T2Label_Label']")
        State = self.get_text("//*[@id='MySettings_Contravention_SnapVehicleState_FormFieldLabel_Label']")
        License = self.get_text("//*[@id='MySettings_Contravention_SnapVehiclePlateLicense_FormFieldLabel_Label']")
        Make = self.get_text("//*[@id='MySettings_Contravention_SnapVehicleMake_FormFieldLabel_Label']")
        Model = self.get_text("//*[@id='MySettings_Contravention_SnapVehicleModel_FormFieldLabel_Label']")

        Login_Obj = Flex_Login_Variables()
        exp_Citation_Number = Login_Obj.CitationNumber
        exp_Violation_Code = Login_Obj.ViolationCode
        exp_Violation_Base_Amount = Login_Obj.ViolationBaseAmount
        exp_Responsible_Customer = Login_Obj.ResponsibleCustomer
        exp_State = Login_Obj.State
        exp_License = Login_Obj.License
        exp_Make = Login_Obj.Make
        exp_Model = Login_Obj.Model

        print (
        "Actual Citation Number is " + Citation_Number + " And Expected Citation Number is " + exp_Citation_Number)
        if (Citation_Number == exp_Citation_Number):
            print("Citation Number is matching")
        else:
            print("Citation Number is NOT matching")
        print ("Actual ViolationCode is " + Violation_Code + "And Expected Violation Code is " + exp_Violation_Code)
        if (Violation_Code == exp_Violation_Code):
            print ("Violation Code is Matching ")
        else:
            print ("Violation Code is NOT Maching")
        print (
        "Actual Violation Base Amount is " + Violation_Base_Amount + "And Expected Violation Base Amount is " + exp_Violation_Base_Amount)
        if (Violation_Base_Amount == exp_Violation_Base_Amount):
            print ("Violation Base Amount is Matching")
        else:
            print ("Violation Base Amount is NOT Matching")
        print (
        "Actual Responsible Customer is " + Responsible_Customer + "And Expected Responsible Customer is " + exp_Responsible_Customer)
        if (Responsible_Customer == exp_Responsible_Customer):
            print ("Responsible Customer is Matching")
        else:
            print ("Responsible Customer is NOT Matching")
        print ("Actual state is " + State + "And Expected State is " + exp_State)
        if (State == exp_State):
            print ("State is Matching")
        else:
            print ("State is NOT Matching")
        print ("Actual License is " + License + "And Expected State is " + exp_License)
        if (License == exp_License):
            print ("License is Matching")
        else:
            print ("License is NOT Matching")
        print ("Actual state is " + Make + "And Expected State is " + exp_Make)
        if (Make == exp_Make):
            print ("Make is Matching")
        else:
            print ("Make is NOT Matching")
        print ("Actual state is " + Model + "And Expected State is " + exp_Model)
        if (Model == exp_Model):
            print ("Model is Matching")
        else:
            print ("Model is NOT Matching")

            pass
        pass
    def refresh(self, Value):
        f = open('C:\Users\E002716\PycharmProjects\T2SystemsTestFramework\Resources\Flex_Login_Variables.py', 'r')
        linelist = f.readlines()
        f.close

        TestData = Flex_Login_Variables()
        Data = TestData.Value

        Data1,Data2=Data.split("_")
        Num=Data2.strip("_")
        Num=int(float(Num))
        newNum=Num+1

        newValue=Data1+"_"+str(newNum)

        # Re-open file here
        f2 = open('C:\Users\E002716\PycharmProjects\T2SystemsTestFramework\Resources\Flex_Login_Variables.py', 'w')

        for line in linelist:
            line = line.replace(Value,newValue)
            f2.write(line)
        f2.close()
        pass
    def validate_Selection_Basket(self):
        Obj = BuiltIn()
        Obj.sleep(5)

        transactionStatus=self.get_text("//*[@id='CheckOutWizard_WizardStepPaymentChange_SPCDTransactionComplete_Label']")
        selectionBasketStatus=self.get_text("//*[@id='CheckOutWizard_WizardStepPaymentChange_SPCDNoItemsLeftLabel_Label']")

        if (transactionStatus == "The transaction is complete."):
            print("The transaction is completed")
        else:
            Obj.fail("Permit NumberThe transaction is NOT complete.")


        if (selectionBasketStatus == "There are no items in the selection basket."):
            print("selection Basket is Empty")
        else:
            Obj.fail("selection Basket is NOT Empty")
            pass
        pass


    def deduction_schedule_manager(self,FirstName,LastName,TransferAgency,TermType,Rate):
        Obj = BuiltIn()
        Obj.sleep(5)

        expCustomer=self.get_text("//span[contains(text(),'Customer')]/../following-sibling::td[1]/a")
        expEffectiveDate=self.get_text("//span[contains(text(),'Effective Date')]/../following-sibling::td[1]/span")
        expTransferAgency=self.get_text("//span[contains(text(),'Transfer Agency')]/../following-sibling::td[1]/span")
        expTermType=self.get_text("//span[contains(text(),'Term Type')]/../following-sibling::td[1]/span")
        expDiscrepancy=self.get_text("//span[contains(text(),'Discrepancy')]/../following-sibling::td[1]/span")
        expReinstatedAmount=self.get_text("//span[contains(text(),'Reinstated Amount')]/../following-sibling::td[1]/span")


        actCustomer= LastName+", "+FirstName
        actEffectiveDay1= time.strftime("%#m")
        actEffectiveMonth1 = time.strftime("%#d")
        actEffectiveYear = time.strftime("%Y")
        actEffectiveDay =int(actEffectiveDay1)
        actEffectiveMonth=int(actEffectiveMonth1)
        actEffectiveDate = float(int(actEffectiveMonth))+"/"+float(int(actEffectiveDay))+"/"+float(int(actEffectiveYear))
        actTransferAgency= TransferAgency
        actTermType=TermType
        actDiscrepancy="$"+Rate+".00"
        actReinstatedAmount="$0.00"


        print expCustomer
        print actCustomer
        print expEffectiveDate
        print actEffectiveDate
        print expTransferAgency
        print actTransferAgency
        print expTermType
        print actTermType
        print expDiscrepancy
        print actDiscrepancy
        print expReinstatedAmount
        print actReinstatedAmount
        pass


    def validate_permit_summary(self,SeriesPrefix,SeriesStart,FirstName,LastName):
        Obj =BuiltIn()
        Obj.sleep(5)

        expPermitNumber = self.get_text("//span[contains(text(),'Permit Number')]/../following-sibling::td[1]/span")
        expStatus = self.get_text("//span[text()='Status']/../following-sibling::td[1]/span")
        expPermitAmountDue = self.get_text("//span[contains(text(),'Permit Amount Due')]/../following-sibling::td[1]/span")
        expCustomer=self.get_text("//*[@id='PermissionEntities_UpdatePanel']/table/tbody/tr[3]/td[2]")

        actPermitNumber = SeriesPrefix + SeriesStart
        actCustomer = LastName+", "+FirstName

        if (expPermitNumber == actPermitNumber):
            print("The PermitNumber is Validated")
        else:
            Obj.fail("The PermitNumber is NOT Validated")

        if (expStatus == "Active"):
            print("Status is as expected")
        else:
            Obj.fail("Status is NOT as expected")

        if (expPermitAmountDue == "$0.00"):
            print("PermitAmountDue is as expected")
        else:
            Obj.fail("PermitAmountDue is NOT as expected")

        if (expCustomer == actCustomer):
            print("Customer Name is as expected")
        else:
            Obj.fail("Customer Name is NOT as expected")


    def validate_Issued_permit_summary(self,SeriesPrefix,SeriesStart,FirstName,LastName):
        Obj =BuiltIn()
        Obj.sleep(5)

        expPermitNumber = self.get_text("//span[contains(text(),'Permit Number')]/../following-sibling::td[1]/span")
        expStatus = self.get_text("//span[text()='Status']/../following-sibling::td[1]/span")
        expPermitAmountDue = self.get_text("//span[contains(text(),'Permit Amount Due')]/../following-sibling::td[1]/span")
        expCustomer=self.get_text("//*[@id='PermissionEntities_UpdatePanel']/table/tbody/tr[3]/td[2]")

        actPermitNumber = SeriesPrefix + SeriesStart
        actCustomer = LastName+", "+FirstName

        if (expPermitNumber == actPermitNumber):
            print("The PermitNumber is Validated")
        else:
            Obj.fail("The PermitNumber is NOT Validated")

        if (expStatus == "Issued"):
            print("Status is as expected")
        else:
            Obj.fail("Status is NOT as expected")

        if (expPermitAmountDue == "$0.00"):
            print("PermitAmountDue is as expected")
        else:
            Obj.fail("PermitAmountDue is NOT as expected")

        if (expCustomer == actCustomer):
            print("Customer Name is as expected")
        else:
            Obj.fail("Customer Name is NOT as expected")



    def validate_vechile_Summary(self,SeriesPrefix,SeriesStart,FirstName,LastName,LicensePlate,PlateType,VehicleMake,VehicleModel):
        Obj = BuiltIn()
        Obj.sleep(5)

        expPermitNumber = self.get_text("//*[@id='VehiclePermissions_UpdatePanel']/table/tbody/tr[3]/td[2]")
        expLicensePlate = self.get_text("//span[text()='License Plate']/../following-sibling::td[1]/span")
        expPlateType = self.get_text("//span[text()='Plate Type']/../following-sibling::td[1]/span")
        expVehicleMake = self.get_text("//span[text()='Vehicle Make']/../following-sibling::td[1]/span")
        expVehicleModel = self.get_text("//span[text()='Vehicle Model']/../following-sibling::td[1]/span")
        expAmountDue = self.get_text("//span[text()='Amount Due']/../following-sibling::td[1]/span")
        expCustomer = self.get_text("//*[@id='VehicleEntities_UpdatePanel']/table/tbody/tr[3]/td[2]")

        actPermitNumber = SeriesPrefix+SeriesStart
        actLicensePlate =LicensePlate
        actPlateType = PlateType
        actVehicleMake =VehicleMake
        actVehicleModel =VehicleModel
        actCustomer = LastName+", "+FirstName

        if (expPermitNumber == actPermitNumber):
            print("The PermitNumber is Validated")
        else:
            Obj.fail("The PermitNumber is NOT as Expected")

        if (expLicensePlate == actLicensePlate):
            print("The LicensePlate is Validated")
        else:
            Obj.fail("The LicensePlate is NOT as Expected")

        if (expPlateType == actPlateType):
            print("The PlateType is Validated")
        else:
            Obj.fail("The PlateType is NOT as Expected")

        if (expVehicleMake == actVehicleMake):
            print("The VehicleMake is Validated")
        else:
            Obj.fail("The VehicleMake is NOT as Expected")

        if (expVehicleModel == actVehicleModel):
            print("The VehicleModel is Validated")
        else:
            Obj.fail("The VehicleModel is NOT as Expected")

        if (expAmountDue == "$0.00"):
            print("PermitAmountDue is as expected")
        else:
            Obj.fail("PermitAmountDue is NOT as expected")

        if (expCustomer == actCustomer):
            print("Customer Name is as expected")
        else:
            Obj.fail("Customer Name is NOT as expected")
        pass

    def validate_BulkUpload_summary(self):
        Obj= BuiltIn()
        Obj.sleep(5)

        expEffectiveDate= self.get_text("//span[text()='Effective Date']/../following-sibling::td[1]/span")
        expExpirationDate=self.get_text("//span[text()='Expiration Date']/../following-sibling::td[1]/span")
        expValidLocation=self.get_text("//*[@id='PermissionLocations_UpdatePanel']/table/tbody/tr[3]/td[1]")



    def Select_Misc_sale(self,SaleItemDescription):

        Obj = BuiltIn()
        Obj.sleep(5)


        Link="//td[text()='%s']/.."% SaleItemDescription

        try:
            self.click_element(Link)
            print "Clicked on Misc sale item on Page 1"

        except:
            print "DID NOT find the Misc sale Item"
            self.click_element("//a[text()='>']")
            Obj.sleep(5)

            try:
                self.click_element(Link)
                print "Clicked on Misc sale item on Page 2"

            except:
                print "DID NOT find the Misc sale Item"
                self.click_element("//a[text()='>']")
                Obj.sleep(5)

                try:
                    self.click_element(Link)
                    print "Clicked on Misc sale item on Page 2"

                except:
                    print "DID NOT find the Misc sale Item"



    def validate_email_page(self,User):
        Obj=BuiltIn()
        Obj.sleep(5)

        expCreateDate=self.get_text("//*[@id='LetterHistoryResults_UpdatePanel']/table/tbody/tr[4]/td[1]")
        expPrintDate = self.get_text("//*[@id='LetterHistoryResults_UpdatePanel']/table/tbody/tr[4]/td[2]")
        expLetterCategory = self.get_text("//*[@id='LetterHistoryResults_UpdatePanel']/table/tbody/tr[4]/td[3]")
        expName = self.get_text("//*[@id='LetterHistoryResults_UpdatePanel']/table/tbody/tr[4]/td[5]")

        actCreateDate = time.strftime("%#m/%d/%Y")
        actPrintDate = time.strftime("%#m/%d/%Y")
        actLetterCategory = "Email"
        actName = User

        if (expCreateDate == actCreateDate):
            print("The Created date is matching ")
        else:
            Obj.fail("The Created date is NOT matching ")

        if (expPrintDate == actPrintDate):
            print("The Print date is matching ")
        else:
            Obj.fail("The Print date is NOT matching ")

        if (expLetterCategory == actLetterCategory):
            print("The Letter Category is Validated")
        else:
            Obj.fail("The Letter Category is NOT as Expected")

        if (expName == actName):
            print("The User name is Validated")
        else:
            Obj.fail("The User name is NOT as Expected")


    def Validate_task_schedule(self, TaskName):
        Obj = BuiltIn()
        Obj.sleep(5)

        dr = self._current_browser()
        row_elements = dr.find_elements_by_xpath("//*[@id='ctl00_pageContent_TasksList_UpdatePanel']/table/tbody//td[3]")
        inrow = len(row_elements)
        actName= TaskName

        for i in range(3, inrow):

            expName = self.get_text("//*[@id='ctl00_pageContent_TasksList_UpdatePanel']/table/tbody/tr[%s]/td[4]" % i)

            if (expName == actName):
                TimePeriod = self.get_text("//*[@id='ctl00_pageContent_TasksList_UpdatePanel']/table/tbody/tr[%s]/td[4]/../following-sibling::tr[2]/td[7]" % i)

                self._


















                break
            else:
                print "Task has been NOT been created"


    def Select_Sale(self,SaleItemDescription):

        Obj = BuiltIn()
        Obj.sleep(5)

        Count = 0
        print 1
        Link="//td[text()='%s']/.."% SaleItemDescription
        while (Count < 1):
            try:
                print 2
                self.click_element(Link)
                Count=Count+1
                print "Clicked on Misc sale item on Page 1"
            except:
                print "DID NOT find the Misc sale Item"
                self.click_element("//a[text()='>']")
                Obj.sleep(5)

