*** Settings ***
Library    Browser    

*** Variables ***
${URL}    https://www.mercadolivre.com.br
*** Test Cases ***
Visita a página inicial
  New Browser    browser=chromium    headless=False
  New Page    ${URL}
  Take Screenshot    fullPage=True
  Fill Text    css=input[placeholder="Buscar produtos, marcas e muito mais…"]    Mouse gamer
  Click    css=button.nav-search-btn[type=submit]
  Click    css=.ui-search-layout__item >> nth=0
  Sleep    1
  Click    css=.ui-pdp-gallery__figure >> nth=0
  Click    css=button[title="Next (arrow right)"]
  Click    css=button[title="Next (arrow right)"]
  Click    css=button[title="Next (arrow right)"]



  Sleep    5
