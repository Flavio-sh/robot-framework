*** Settings ***

Library                 SeleniumLibrary

Resource                Variables.robot

*** Keywords ***

Abrir navegador
    Open Browser        ${url}              ${browser}
    Title Should Be     My Store

Fechar navegador
    Close Browser

Digitar o nome do produto no campo de pesquisa
    [Arguments]         ${product}
    Input Text          ${search field bar}    ${product}

Clicar no botão pesquisar
    Click Button        ${search field btn}

Conferir se o produto foi listado no site
    [Arguments]                    ${expected message}
    Wait Until Element Is Visible  ${loading validation}
    Element Text Should Be         ${search validation}  ${expected message}

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias.
    Mouse Over                     class:sf-with-ul
    Element Should Be Visible      //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a

Clicar na sub categoria "Summer Dresses"
    Click Element                  //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a
    Title Should Be                Summer Dresses - My Store

Clicar no botão add to cart do produto
    Wait Until Element Is Visible  //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]
    Click Element                  //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1] 
    Element Should Be Visible      class:clearfix
    

Clicar no botão proceed to checkout
    Wait Until Element Is Visible  //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Click Element                  //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Title Should Be                Order - My Store
    Table Row Should Contain       //*[@id="product_2_7_0_0"]/td[2]/p/a  1  Blouse
    Table Row Should Contain       //*[@id="product_price_2_7_0"]/span  1  $27.00 

Clicar no ícone carrinho de compras no menu superior direito
    Wait Until Element Is Visible  //*[@id="header"]/div[3]/div/div/div[3]/div/a
    Click Element                  //*[@id="header"]/div[3]/div/div/div[3]/div/a  
    
Clicar no botão de remoção de produtos (delete) no produto do carrinho
    Wait Until Element Is Visible  //*[@id="2_7_0_0"]
    Click Element                  //*[@id="2_7_0_0"] 
    Wait Until Element Is Visible  //*[@id="center_column"]/p
    Page Should Contain Textfield  //*[@id="center_column"]/p  O sistema deve exibir a mensagem "Your shopping cart is empty."  
    