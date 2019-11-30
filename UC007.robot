*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    10.199.66.227/
${BROWSER}    Chrome
${REG URL}    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/
${DELAY}    01

*** Testcases ***
TC 1 Login Valid Teacher
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    chitsutha
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    0000000010
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tcindex.php
		
	[Teardown]    Close Browser

TC 2 Login Valid TA
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
		
	[Teardown]    Close Browser

TC 3 Login Valid Student
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be  http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
		
	[Teardown]    Close Browser

TC 4 Login InValid user
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/login.php?check=false
		
	[Teardown]    Close Browser
	
TC 5 Login InValid password
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204401
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/login.php?check=false
		
	[Teardown]    Close Browser

TC 6 Login InValid userAndpassword
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204401
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/login.php?check=false
		
	[Teardown]    Close Browser

TC 7 Login InValid userAndpassword
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/login.php
		
	[Teardown]    Close Browser

TC 8 Login InValid userAndpassword
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    593
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/login.php
		
	[Teardown]    Close Browser