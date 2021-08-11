*** Settings ***

Resource                  ../src/Resouces.robot

Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***

Search video
    Search 'youtube.com'