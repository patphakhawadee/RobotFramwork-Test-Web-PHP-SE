*** Settings ***
Library    Selenium2Library

*** Variables ***
${BROWSER}    Chrome
${REG URL}    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/login.php
${DELAY}    0

*** Testcases ***
TC 22 taeditclass
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taeditclass.php?subjID=322371
	Input Text    subjDes    SoftEn
	Click Button    save
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	
	