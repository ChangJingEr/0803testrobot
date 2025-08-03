*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}        http://localhost:4723/wd/hub
${PLATFORM_NAME}     Android
${PLATFORM_VERSION}  9
${DEVICE_NAME}       127.0.0.1:62001
${AUTOMATION_NAME}   UiAutomator2
${APP_PACKAGE}       com.facebook.katana
${APP_ACTIVITY}      com.facebook.katana.LoginActivity
${NO_RESET}          True

${USERNAME}          12345678
${PASSWORD}          87654321

*** Test Cases ***
Login To Facebook App
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}
...    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}
...    automationName=${AUTOMATION_NAME}    appPackage=${APP_PACKAGE}
...    appActivity=${APP_ACTIVITY}    noReset=${True}


    Sleep    5s

    Input Text    accessibility_id=用戶名稱    ${USERNAME}
    Input Text    accessibility_id=密碼        ${PASSWORD}
    Sleep    2s
    Click Element    accessibility_id=登入

    Sleep    5s
    Close Application
