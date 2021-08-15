*** Settings ***

Documentation                   A test file for locators

*** Variables ***

${url}                          http://automationpractice.com/index.php
${browser}                      chrome

# Search Bar locator

${search field bar}             id:search_query_top

# Buttons

${search field btn}             name:submit_search
${women submenu}                class:sf-with-ul


# Validation

${loading validation}           //*[@id="best-sellers_block_right"]
${search validation}            class:heading-counter

${valid product}                blouse
${invalid product}              produtoNãoExistente

${msg existing product}         1 result has been found.
${msg not existing product}     0 results have been found.