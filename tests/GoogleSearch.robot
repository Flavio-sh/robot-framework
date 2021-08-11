*** Settings ***

Resource                  ../src/Resouces.robot

Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***

Search in google
    Search 'youtube.com'
