*** Settings ***
Documentation        Testes de Login

Resource        ../resources/base.resource


*** Test Cases ***
Deve logar com sucesso
    Open Application   http://localhost:4723
    ...    	           platformName=Android
    ...	               deviceName=Android Emulator
    ...	               automationName=UIAutomator2
    ...	               app=${EXECDIR}/apps/markx.apk
    # Emulador
    ...                udid=emulator-5554
    # Moto G8 Play
    #...                 udid=ZF5232Z4XW
    ...                autoGrantPermissions=true

    Input Text         xpath=//*[@resource-id="apiIp"]    192.168.15.82
    Click Element      xpath=//*[@resource-id="signInButton"]

    Wait Until Page Contains    Minhas tarefas    5

    Sleep    10

    Close Application
