*Settings*      
Documentation       Suite de testes para verificar se o app está online
#Documentation: Descreve que esta suíte testa se o aplicativo está online.


Resource            ${EXECDIR}/resources/base.robot
#Resource base.robot: Importa o arquivo com palavras-chave reutilizáveis (Start Session e End Session).

Test Setup      Start Session
#Test Setup Start Session: Antes de cada teste, o navegador será aberto e a página carregada.

Test Teardown   End Session
#Test Teardown End Session: Após cada teste, o navegador será encerrado e um print será tirado.

*Test Cases*
Yodapp deve estar online
    Get Title       equal       Yodapp | QAninja
    #Get Title equal Yodapp | QAninja
    #Verifica se o título da aba do navegador (o texto que aparece na guia) é exatamente "Yodapp | QAninja".
    #Se o site estiver fora do ar, redirecionado ou incorreto, o título não será esse, e o teste falhará.
Deve exibir mensagem de boas vindas
#Esse teste está checando se uma mensagem aparece na tela.
#A mensagem que ele procura é:"Que a Força (qualidade) esteja com você!"
#Essa frase deve aparecer no menu superior do site (na parte chamada .navbar-item).

    Wait For Elements State
    #Esse comando quer dizer:Espere até que esse texto apareça na tela, mas no máximo por 5 segundos
    #Se o texto aparecer dentro desses 5 segundos, o teste passa.
    #Se o texto não aparecer, o teste falha.   
    ...     css=.navbar-item >> text=Que a Força (qualidade) esteja com você!    
            #Está procurando um elemento da página que tenha a classe navbar-item.
            #Isso geralmente é um item do menu de navegação, no topo do site.   
    ...     visible     5
            #Ele espera até 5 segundos para que esse texto apareça na tela.


