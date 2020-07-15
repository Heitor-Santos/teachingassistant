As a aluno frequentando uma disciplina
I want to add my grades
So that I can calculate my course final grade

Cenário GUI 
Given que eu estou logado como aluno com login “heitor” e senha “gghgfft”
And estou na página que exibe as notas dadas pelo professor e por mim
And posso ver as metas “Roteiro”, “Gerência de configuração” e “Gerência de projetos” e “SaaS” com as respectivas notas dadas pelo professor: “MPA”, “MPA”, “MA”, “MA”
When eu preencho as metas “Roteiro”, “Gerência de configuração”,  “Gerência de projetos” e “SaaS” com as respectivas notas “MPA”, “MPA”, “MA” e “MPA” 
And cofirmo a operação
Then surge uma mensagem de confirmação
And estou na mesma  página

Cenário Serviço 
Given o aluno “heitor” está cadastrado no sistema da universidade
And as notas dadas pelo professor dele para “Roteiro”, “Gerência de configuração” e “Gerência de projetos” e “SaaS” são respectivamente: “MPA”, “MPA”, “MA”, “MA”
When o aluno faz a auto-avaliação das metas “Roteiro”, “Gerência de configuração” , “Gerência de projetos” e “SaaS”  com as respectivas notas “MPA”, “MPA”, “MA” e “MPA” 
And o aluno confirma a operação realizada
Then o sistema analisa se todas as metas foram preenchidas e confirma a operação
And salva os dados de “heitor” no sistema

Cenário GUI 
Given que eu estou logado como aluno com login “heitor” e senha “gghgfft”
And estou na página que exibe as notas dadas pelo professor e por mim
And posso ver as metas “Roteiro”, “Gerência de configuração” e “Gerência de projetos” e “SaaS” com as respectivas notas dadas pelo professor: “MPA”, “MPA”, “MA”, “MA”
When eu preencho as metas “Roteiro”, “Gerência de configuração” e “Gerência de projetos” com as respectivas notas “MPA”, “MA” e “MPA” 
And cofirmo a operação
Then surge uma mensagem de erro dizendo “Falta colocar o conceito para a meta SaaS”
And estou na mesma  página

Cenário Serviço 
Given o aluno “heitor” está cadastrado no sistema
And as notas dadas pelo professor dele para “Roteiro”, “Gerência de configuração” e “Gerência de projetos” e “SaaS” são respectivamente: “MPA”, “MPA”, “MA”, “MA”
When o aluno faz a auto-avaliação das metas “Roteiro”, “Gerência de configuração” e “Gerência de projetos”  com as respectivas notas “MPA”, “MA” e “MPA” 
And o aluno confirma a operação
Then o sistema analisa se todas as metas foram preenchidas
And o sistema percebe que falta o conceito de SaaS
And envia uma mensagem de erro para o usuário

