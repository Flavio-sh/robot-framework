# robot-framework
Space to save my individual works aiming pratice using robot framework for web tests using SeleniumLibrary.

Robot website: https://robotframework.org/ <br/>
Selenium: https://robotframework.org/SeleniumLibrary/

To install Robot Framework and Libraries needed for web test:

When using in linux use to access root:
>  sudo su 

after put password, will be as root.

Normally linux come with Python installed, if not use:

> sudo apt-get install python3 <br/>
> sudo apt-get install python3-pip

After Python installed use these commands:

> pip3 install robotframework <br/>
> pip3 install --upgrade robotframework-selenium2library <br/>
> pip3 install --upgrade --pre robotframework-selenium2library <br/>
> pip3 install webdrivermanager <br/>
> pip3 install -U robotframework-JSONLibrary <br/>
> webdrivermanager firefox chrome --linkpath /usr/local/bin <br/>

In windows the difference is remember to mark the option "Add Python to environment variables/PATH" in installation 

Now we need download the webdriver with same version of our chrome in https://chromedriver.chromium.org/downloads

1. After download, create a new folder somewhere in your computer, where you will place your web drivers. I created a folder named webdrivers in C:\Program Files
2. Copy the folder path. In my case it was C:\Program Files\webdrivers
3. Right click on this PC -> properties:
4. On the right click Advanced System settings
5. Click Environment Variables
6. In System variables, click on path and click edit
7. Click new
8. Paste the path you copied before
9. Click OK on all the windows

All good, now go do your tests!
