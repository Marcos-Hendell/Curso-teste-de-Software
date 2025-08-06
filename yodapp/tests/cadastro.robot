*Settings* 
#A palavra "Settings" e uma palavra especial do Robot Framework que inicia a seção de configurações#
#Aqui você pode colocar informações como bibliotecas, variáveis, e descrição # 

Documentation       Suite de teste do cadastro de personagens 
#"Documentation" e uma palavra reservada  ela serve para escrever uma explicação sobre o teste 
#neste caso, está dizendo que essa suíte de testes é para testar o cadastro de personagens

Resource            ${EXECDIR}/resources/base.robot
#Resource base.robot: Importa o arquivo base.robot
#Pensa assim: o base.robot é como uma caixinha com comandos prontos.
#Quando você usa Resource base.robot, está pegando esses comandos prontos para poder usá-los aqui no cadastro.robot.
#Por exemplo: os comandos Start Session e End Session foram criados no base.robot, e agora você pode usá-los normalmente aqui.

Test Setup      Start Session
#Test Setup Start Session:
#Antes de cada teste, a palavra-chave Start Session será executada (abre o navegador e vai para o site).
#Antes de começar o teste, o Robot Framework vai rodar o comando Start Session automaticamente.
#Ou seja, vai abrir o navegador e acessar o site que está no base.robot

Test Teardown   End Session
#Test Teardown End Session: Depois de cada teste, a palavra-chave End Session será executada (tira um print da tela e encerra o navegador).
#Depois que o teste terminar, o Robot Framework vai rodar o comando End Session automaticamente.
#Isso quer dizer que ele vai tirar um print da tela e fechar o navegador.

#1----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
*Test Cases* 
# "Test Cases": Palavra especial que inicia a seção onde os casos de teste serão escritos
# essa próxima parte vai conter testes reais (o que o robô vai fazer)#
# Aqui você escreve cada situação que o robô deve testar.

Deve cadastrar um novo personagem 
        
    [tags]          happ
    #[Tags] classifica testes para filtrar, executar e reportar grupos específicos.Serve para rodar apenas esse cenario
   
    Go To User form 
    Fill User form      Mestre Yodapp       yoda@jedi.com       Jedi        fevereiro-1970-20       @yoda
    Select Jedi         Cavaleiro Jedi
    Check Accept Comunications
    Submit User Form
    Toster Massage Should Be        Usuário cadastrado com sucesso!

#2----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

Email incorreto 
#Email incorreto , verifica se com o email errado ele não cadastra e aparece mensagem de erro .
    [Tags]      inv_email  
    
    Go To User form     
    Fill User form          Mestre Yodapp       yoda$jedi.com       Sith        fevereiro-1970-20       @yoda
    Check Accept Comunications
    Submit User Form
    Toster Massage Should Be        Oops! O email é incorreto.







