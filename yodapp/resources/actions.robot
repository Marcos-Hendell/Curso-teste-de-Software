*Settings*
Documentation           Ações customizadas do Yodapp
# → Documentação geral do arquivo

*Keywords*
Go To User form 
# → Abre o formulário de cadastro

    Click       text=Novo
        # → Clica no botão "Novo"

    Wait For Elements State      css=.card-header-title >> text=Cadastrar novo usuário
    ...         visible     5
        # → Espera o título do formulário aparecer (5 segundos)

Fill User form
    [Arguments]         ${name}     ${email}        ${ordem}        ${bdate}    ${instagram}
    # → Recebe dados do usuário como parâmetros
    Fill text       css=input[name="nome"]      ${name}
     # → Preenche o campo Nome
    Fill text       css=input[name="email"]      ${email}
    # → Preenche o campo Email
    Select Options By       css=.ordem select           text       ${ordem}                  
    # → Seleciona nível Jedi (Padawan, Cavaleiro, etc)
    Select BIrth Date       ${bdate}
    # → Seleciona data de nascimento (usa keyword separada)
    Fill text       id=insta                            ${instagram}
    # → Preenche Instagram
Select Jedi   
        [Arguments]         ${tpjedi}
    # → Recebe tipo Jedi (Sim/Não)    
        Click               xpath=//input[@value="${tpjedi}"]/..//span[@class="check"]
    # → Marca o checkbox correspondente
Check Accept Comunications
        Click           xpath=//input[@name="comunications"]/..//span[@class="check"]
    # → Marca "Aceito receber comunicações"
Select Birth Date
    [Arguments]     ${text_date}
    # → Recebe data no formato "dd-mm-aaaa"  
    @{date}          Split String           ${text_date}           -
    # → Divide a data em partes [dia, mês, ano]
       Click    css=input[name="Data de nascimento"]
    # → Abre o calendário
    Select Options By    xpath=(//header[@class="datepicker-header"]//select)[1]
    ...                  text        ${date}[0]   
    # → Seleciona o MÊS
        Select Options By    xpath=(//header[@class="datepicker-header"]//select)[2]
    ...                  value          ${date}[1]
    # → Seleciona o ANO
    Click        xpath=//a[contains(@class,"datepicker-cell")]//span[text()="${date}[2]"]
    # → Clica no DIA
Submit User Form
        Click           css=button >> text=Cadastrar
    # → Submete o formulário        
Toster Massage Should Be 
    [Arguments]         ${expected_message}
    # → Recebe mensagem esperada
     Wait For Elements State         css=.toast div >> text=${expected_message}
    ...                             visible     5
    # → Verifica notificação (toast) aparece em 5 segundos