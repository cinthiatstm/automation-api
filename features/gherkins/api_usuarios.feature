#language: pt
@user
Funcionalidade: Fluxo de criação, mudança e deleção de usuário
Como um usuário do sistema
Eu quero realizar requisições na API
A fim de criar, mudar e deletar o usuário gerado

@automatizada
Cenário: Criar um novo usuários
  Dado o endereço da API
  Quando realizar a requisição POST
  Então a API deverá retornar a messagem de sucesso e code

@automatizada
Cenário: Buscar usuários
  Dado o endereço da API
  Quando realizar a requisição GET
  Então a API deverá retornar status e code

Cenário: Buscar usuários por id
  Dado o endereço da API com id
  Quando realizar a requisição GET
  Então a API deverá retornar o status, id e code

Cenário: Atualizar usuário
  Dado o endereço da API com id
  Quando realizar a requisição PUT
  Então a API deverá retornar a messagem de sucesso e code     

Cenário: Deletar usuário
  Dado o endereço da API com id
  Quando realizar a requisição DELETE
  Então a API deverá retornar o status, id e code
