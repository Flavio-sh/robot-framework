*** Settings ***

Resource                  ../src/Resouces.robot

Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***

TC 01.1 - Pesquisar Produto Existente
    Digitar o nome do produto no campo de pesquisa  ${valid product}
    Clicar no botão pesquisar
    Conferir se o produto foi listado no site  ${msg existing product}

TC 02.1 - Pesquisar Produtos Não Existentes
    Digitar o nome do produto no campo de pesquisa  ${invalid product}
    Clicar no botão pesquisar
    Conferir se o produto foi listado no site  ${msg not existing product}

TC 03.1 - Listar Produtos
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias.
    Clicar na sub categoria "Summer Dresses"

TC 04.1 - Adicionar Produtos no Carrinho
    Digitar o nome do produto no campo de pesquisa  ${valid product}
    Clicar no botão pesquisar
    Clicar no botão add to cart do produto  
    Clicar no botão proceed to checkout

TC 05.1 - Remover Produtos
    Clicar no ícone carrinho de compras no menu superior direito
    Clicar no botão de remoção de produtos (delete) no produto do carrinho

