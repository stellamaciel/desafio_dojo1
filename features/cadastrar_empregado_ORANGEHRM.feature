#language: pt
#utf-8


@cadastro
Funcionalidade: Cadastrar Empregado
 Eu como usuario do site Oragehrm
 Quero realizar o login
 Para cadastrar um novo empregado

 Cenario: Cadastrar um novo empregado
   Dado que esteja na home do site
   E realizar o login
   Quando cadastrar um novo empregado
   Entao o empregado sera cadastrado com sucesso 

 