*** Settings ***

Library                 SeleniumLibrary
Resource                Variables.robot


*** Keywords ***

Abrir navegador
    Open Browser        ${url}              ${browser}

Fechar navegador
    Close Browser
    Sleep  5s

Search '${search input}'
    Input Text         ${input field}       ${search input}