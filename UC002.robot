*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    http://10.199.66.227/
${BROWSER}    Chrome
${REG URL}     http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/
${DELAY}    1
${BLANK}    
*** Testcases ***
TC 1 createClass
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Input Text    subjID    322391
	Input Text    subjNameTH    ระเบียบวิธีวิจัย
	Input Text    subjNameEN    RESEARCH METHODOLOGY
	Input Text    subjDes    คำอธิบายรายวิชา
	Input Text    secAmount    1
	Input Text    subjCredit    1
	Select From List By Index    id=term    1
	Select From List By Index    id=year    2
	Select From List By Index    id=userID    1
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Contain   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass_save.php	
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/rollback.php 	
	
	[Teardown]    Close Browser
	
TC 2 noSubjid
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Input Text    subjID    ${BLANK} 
	Input Text    subjNameTH    ระเบียบวิธีวิจัย
	Input Text    subjNameEN    RESEARCH METHODOLOGY
	Input Text    subjDes    คำอธิบายรายวิชา
	Input Text    secAmount    1
	Input Text    subjCredit    1
	Select From List By Index    id=term    1
	Select From List By Index    id=year    2
	Select From List By Index    id=userID    1
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Contain   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/rollback.php 
	
	[Teardown]    Close Browser
	
TC 3 noSubjTH
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Input Text    subjID    322391
	Input Text    subjNameTH    ${BLANK}
	Input Text    subjNameEN    RESEARCH METHODOLOGY
	Input Text    subjDes    คำอธิบายรายวิชา
	Input Text    secAmount    1
	Input Text    subjCredit    1
	Select From List By Index    id=term    1
	Select From List By Index    id=year    2
	Select From List By Index    id=userID    1
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Contain   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/rollback.php 
	
	[Teardown]    Close Browser
	
TC 4 noSubjEN
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Input Text    subjID    322391
	Input Text    subjNameTH    ระเบียบวิธีวิจัย
	Input Text    subjNameEN    ${BLANK}
	Input Text    subjDes    คำอธิบายรายวิชา
	Input Text    secAmount    1
	Input Text    subjCredit    1
	Select From List By Index    id=term    1
	Select From List By Index    id=year    2
	Select From List By Index    id=userID    1
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Contain   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/rollback.php 
	
	[Teardown]    Close Browser
	
TC 5 noDescription
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Input Text    subjID    322391
	Input Text    subjNameTH    ระเบียบวิธีวิจัย
	Input Text    subjNameEN    RESEARCH METHODOLOGY
	Input Text    subjDes    ${BLANK}
	Input Text    secAmount    1
	Input Text    subjCredit    1
	Select From List By Index    id=term    1
	Select From List By Index    id=year    2
	Select From List By Index    id=userID    1
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Contain   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass_save.php
	
	[Teardown]    Close Browser
	
TC 6 noAmountsec
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Input Text    subjID    322391
	Input Text    subjNameTH    ระเบียบวิธีวิจัย
	Input Text    subjNameEN    RESEARCH METHODOLOGY
	Input Text    subjDes    คำอธิบายรายวิชา
	Input Text    secAmount    ${BLANK}
	Input Text    subjCredit    1
	Select From List By Index    id=term    1
	Select From List By Index    id=year    2
	Select From List By Index    id=userID    1
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Contain    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/rollback.php 
	
	[Teardown]    Close Browser
	
TC 7 noAmountcredit
    Open Browser    ${REG URL}    ${BROWSER}
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    id    pongsakorn_p
	Set Selenium Implicit Wait    ${DELAY}
    Input Text    password    5930204405
    Click Button    submit1
	Location Should Be   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/index.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/taindex.php
	go to    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Input Text    subjID    322391
	Input Text    subjNameTH    ระเบียบวิธีวิจัย
	Input Text    subjNameEN    RESEARCH METHODOLOGY
	Input Text    subjDes    คำอธิบายรายวิชา
	Input Text    secAmount    1
	Input Text    subjCredit    ${BLANK}
	Select From List By Index    id=term    1
	Select From List By Index    id=year    2
	Select From List By Index    id=userID    1
	Set Selenium Implicit Wait    ${DELAY}
    Click Button    save
	Location Should Contain   http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/tacreateclass.php
	Go To    http://10.199.66.227/SoftEn2019/Sec1/RoomScrum/SE2/rollback.php 
	
	[Teardown]    Close Browser