*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${REG URL}    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/
${DELAY}    1

*** Testcases ***
TS 018 addstdss
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tamanagStdlist.php?secid=322371001
	Click Button    addbtn
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taaddstd.php?secid=322371001
	Input Text    userID    593020440-5
	Click Button    ค้นหา
	Click Button    บันทึก
		
	[Teardown]    Close Browser
	
TS 019 addstdss
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tamanagStdlist.php?secid=322371001
	Click Button    addbtn
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taaddstd.php?secid=322371001
	Input Text    userID    593021273-3
	Click Button    ค้นหา
	Click Button    บันทึก
	
	[Teardown]    Close Browser