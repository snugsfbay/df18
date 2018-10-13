# df18
## Testing Lightning Flow Automations
Code from our Dreamforce Session: [Testing Lightning Flow Automations](https://success.salesforce.com/sessions?eventId=a1Q3A00001XoCSUUA3#/session/a2q3A000001WXVIQA4)

* Package.xml: Zip file containing all of the directories and files needed to deploy via SFDX or Developer Workbench.
* Classes
  * TestAddressUpdates: Test class sets up Account and Contact data for testing Process Builder Automation that fills missing Contact addresses from the Account address data.
  * TestFlow: Test class sets up input variable for autolaunch Flow and tests the the Flow works as expected to double a number.
  * TestSetUpData: Reuseable methods to create specific combinations of test data for two different business processes, all contained in a single test class.
  * TestUpdates: Test class sets up basic test data from a Salesforce Developer Edition org and tests that the Contact data all has related Account data as expected.
* Flows
  * Contact Address Update: Simply copies Account address data into Contact records that are missing addresses.
  * Doubler: Simply doubles any number it is given and returns the doubled number. If you divide by 10, you have calculated a decent tip.
* Static Resources: 
  * Account: Numbered 88-99 just to demonstrate that indexes must be sequential, but can start with any number; Account data from Developer Edition org.
  * Contact: Numbered beginning with 1, related to parent Account via the Account indexes described above; Contact data from Developer Edition org.
  * Case: Just another example of how data is set up for the Test.loadData method of test data creation; Case data from Developer Edition org.
  * Contact Address Process: Replaces the previous Contact data file to demonstrate data input with missing addresses and the related business process, which inserts Account address data into Contact address fields automatically.
* Docs: Reserved for future uses such as slide and video links.

### Other resources: 
Useful SOQL: 
SELECT Id, ApexTestClass.Name, TestMethodName, FlowVersion.MasterLabel, NumElementsCovered, NumElementsNotCovered 
  FROM FlowTestCoverage

[Essential Testing Techniques](https://www.pluralsight.com/courses/salesforce-admin-essential-testing-techniques)

[Dreamforce Slides](https://success.salesforce.com/0693A000006jVIT)

[![Dreamforce Video](https://img.youtube.com/vi/HjD1BElxh3A/0.jpg)](https://www.youtube.com/watch?v=HjD1BElxh3A)
