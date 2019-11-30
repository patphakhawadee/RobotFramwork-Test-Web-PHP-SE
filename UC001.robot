*** Settings ***
Library    Selenium2Library

*** Variables ***

${BROWSER}    Chrome
${REG URL}    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/
${DELAY}    0
${BLANK}    
*** Testcases ***
TC 1 แก้ไขรายละเอียดวิชาสำเร็จ
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	Click Button    editDescription
	Location Should Contain   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taeditclass.php?
	Input Text    subjNameEN    EDITSUBJNAMETEST
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	
	[Teardown]    Close Browser
	
TC 2 แก้ไขรายละเอียดวิชาไม่สำเร็จ
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	Click Button    editDescription
	Location Should Contain    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taeditclass.php?
	Input Text    subjNameEN    ${BLANK}     
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Contain    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taeditclass.php?
	
	[Teardown]    Close Browser
	
TC 3 ยกเลิกการแก้ไขรายวิชาสำเร็จ
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	Click Button    editDescription
	Location Should Contain   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taeditclass.php?
	Input Text    subjNameEN    Software Engineering
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    cancle
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	
	[Teardown]    Close Browser

