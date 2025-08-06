#----------------------------------------------------------------------------------------------------------------------#
*Settings*
#*** Settings ***: Esta seção é usada para configurações gerais do arquivo. 
#Pode incluir documentação, bibliotecas, recursos e variáveis que o arquivo irá usar.

Documentation       Aqui não é suite, mas o arquivo principal do projeto 
#Documentation: Um campo opcional onde você pode adicionar uma descrição sobre o que o arquivo faz. 
#Aqui está explicado que este arquivo é o principal do projeto, mas não é uma suíte de testes.


Library         Browser
#Library Browser: Importa a biblioteca Browser, que permite interagir com navegadores via Playwright.
#Essa biblioteca é usada para automação de testes com browsers modernos como Chromium, Firefox, etc.

Library         String
#Library    String   Keywords para manipular/validar textos (ex: maiúsculas, extrair partes)

Resource        actions.robot
#----------------------------------------------------------------------------------------------------------------------#
*Keywords*
#*** Keywords ***: Define palavras-chave personalizadas, que funcionam como funções ou comandos reutilizáveis.


Start Session
#Start Session: Nome da palavra-chave (como se fosse uma função)
#New Browser chromium headless=False slowMo=00:00:01: Abre um novo navegador Chromium.
#headless=False: O navegador será visível (útil para desenvolvimento e depuração).
#slowMo=00:00:01: Adiciona um atraso de 1 segundo entre cada ação, útil para observar o comportamento passo a passo.
#New Page https://yodapp.vercel.app/: Abre uma nova aba e carrega o site indicado.

    New Browser     chromium       headless=False       slowMo=00:00:00
    New Page        https://yodapp-testing.vercel.app

End Session    
    Take Screenshot
#End Session: Outra palavra-chave personalizada.  
#Take Screenshot: Tira um print da tela atual do navegador. Por padrão, o arquivo é salvo no diretório de saída (output). 







