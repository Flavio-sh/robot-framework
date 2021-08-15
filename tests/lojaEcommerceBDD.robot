*** Settings ***

Resource                  ../src/Resouces.robot

Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Variables ***
${url}      http://automationpractice.com/index.php
${browser}  chrome

*** Test Case ***

Cenário 01 - Pesquisar produto existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 02 - Pesquisar produto existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "itemNãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "itemNãoExistente""
