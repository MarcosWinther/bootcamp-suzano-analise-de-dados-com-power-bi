# 💾 Fundamentos de Modelagem e Projeto de Banco de Dados

## 📁 Características de um Banco de Dados

### Gerência de dados

- Gerenciar dados significa cuidar de onde e como as informações são armazenadas, recuperadas e modificadas. 
- Em um banco de dados, você tem uma estrutura organizada (como tabelas) onde pode armazenar grandes volumes de dados, e um SGBD (Sistema de Gerenciamento de Banco de Dados), como MySQL, que ajuda a controlar e organizar esses dados.
- Exemplo: 
	- Imagine um sistema que armazena dados de alunos e suas notas em disciplinas. 
	- O SGBD permite que esses dados sejam organizados em tabelas para consulta e edição rápida, evitando a necessidade de procurar manualmente por cada aluno em um documento.


### Isolamento data/program

- O isolamento entre dados e programas significa que a estrutura de dados é independente do código que os acessa. 
- Ou seja, se a estrutura dos dados mudar, não é necessário alterar o programa.
- Exemplo: 
	- Se você altera o nome de uma coluna de “nome_aluno” para “nome_completo” na tabela de alunos, a aplicação não precisa ser reescrita, desde que o nome atualizado esteja documentado e o programa saiba onde encontrar os dados.


### Integridade e Consistência

- Integridade e consistência garantem que os dados armazenados estejam corretos e que as regras do sistema sejam respeitadas.
- Exemplo: 
	- Em um banco de dados de funcionários, uma regra pode ser que cada funcionário tenha um código único. 
	- Se alguém tentar inserir um novo funcionário com o mesmo código, o banco de dados impede a operação para evitar duplicidade.


### Segurança

- A segurança no banco de dados permite controlar quem pode acessar e modificar os dados, garantindo a proteção contra acessos não autorizados.
- Exemplo: 
	- Em um sistema de banco, só os gerentes podem ver e alterar dados de contas de clientes. 
	- A segurança impede que outras pessoas tenham acesso a essas informações sensíveis.


### Views

- Views são “visões” específicas de dados que filtram ou organizam a forma como os dados são exibidos, sem alterar a tabela original.
- Exemplo: 
	- Uma view chamada “AlunosAprovados” pode mostrar apenas alunos que têm média acima de 7. 
	- Ela não cria uma nova tabela, mas exibe um conjunto filtrado dos dados.


### Recuperação

- A recuperação de dados permite restaurar informações em caso de perda ou erro, como em uma falha de energia.
- Exemplo: 
	- Se você está inserindo dados e o sistema cai, a recuperação permite que o banco de dados volte ao estado anterior à falha, garantindo que você não perca tudo que foi feito.


### Recovery

- O termo "recovery" é geralmente usado em inglês e é o mesmo conceito de recuperação de dados. 
- Ele garante que, se houver falhas, o banco de dados possa restaurar os dados até o último ponto de consistência.
- Exemplo: 
	- Se você tinha feito um backup dos dados antes de uma falha, a função de recovery consegue restaurar o banco a partir daquele backup.


### Concorrência

- Concorrência permite que múltiplos usuários acessem o banco de dados ao mesmo tempo, sem conflitos.
- Exemplo: 
	- Em uma loja online, vários usuários podem acessar o estoque simultaneamente para comprar um produto. 
	- A concorrência ajuda a evitar que duas pessoas comprem o mesmo item ao mesmo tempo se houver apenas um disponível.


## 📁 Mundo Fechado (Close World Assumption) vs Open World Assumption

### Close World Assumption (Mundo Fechado)

- A suposição de mundo fechado é a ideia de que tudo o que não está no banco de dados é considerado falso ou inexistente. 
- Ou seja, o banco “sabe tudo” sobre o domínio dos dados que gerencia.
- Exemplo: 
	- Se um banco de dados de uma biblioteca não possui o livro “Python Básico”, o sistema assume que a biblioteca não tem esse livro.


### Open World Assumption (Mundo Aberto)

- Na suposição de mundo aberto, o banco não assume que sabe tudo. 
- Se a informação não está no banco, isso não significa que ela é falsa, apenas que o banco não a conhece.
- Exemplo: 
	- No exemplo da biblioteca, se o livro “Python Básico” não está no banco de dados, isso não significa que ele não existe na biblioteca, mas sim que a informação não está registrada. 
	- O livro pode estar lá, mas fora do inventário.


## 📁 Mini-mundo

- O conceito de mini-mundo representa uma parte específica do mundo real que o banco de dados modela. 
- É o escopo dos dados do sistema.
- Exemplo: 
	- Um sistema de gerenciamento hospitalar é um mini-mundo que representa apenas informações de pacientes, médicos, tratamentos, etc., dentro de um hospital. 
	- Ele não abrange outras áreas da saúde fora do hospital.
	
	
## 📁 Álgebra Relacional

- A álgebra relacional é uma linguagem formal usada para realizar operações e consultas em bancos de dados relacionais. 
- Ela serve como base matemática para manipular dados organizados em tabelas, ou relações, e permite extrair, combinar, ou transformar essas informações de forma estruturada.


### Lógica de predicados

- Na lógica de predicados, um predicado é uma expressão que descreve uma propriedade ou relação entre elementos de um conjunto, e em uma oração, é a parte que contém o verbo.
- Em banco de dados, o conceito de predicado é importante para definir condições ou filtros. 
- Quando fazemos consultas, usamos predicados para especificar quais registros queremos recuperar, baseando-nos nas características dos dados.
- Exemplo: 
	- Em uma tabela de alunos, um predicado pode ser "idade > 18". 
	- Esse predicado será verdadeiro para todos os registros que atendem à condição e falso para os que não atendem, ajudando a extrair só os alunos maiores de idade.


### Álgebra Relacional

- A álgebra relacional é uma linguagem formal de consulta que se baseia na teoria dos conjuntos. 
- É um conjunto de operações matemáticas que ajudam a manipular dados em tabelas, aplicando conceitos de união, interseção, seleção, projeção e junção de conjuntos.


#### Principais Operações de Álgebra Relacional

- **Seleção (σ):** Filtra registros de uma tabela com base em uma condição.
	- Exemplo: 
		- σ_idade>18 (Alunos) seleciona todos os alunos maiores de 18 anos.
		
- **Projeção (π):** Extrai apenas certas colunas de uma tabela.
	- Exemplo: 
		- π_nome,idade (Alunos) mostra apenas os nomes e idades dos alunos, sem outras colunas.
		
- **União (⋃):** Combina os registros de duas tabelas, removendo duplicatas.
	- Exemplo: 
		- Alunos ⋃ Professores retorna todos os registros de ambas as tabelas (supondo que tenham as mesmas colunas).
		
- **Interseção (∩):** Retorna apenas os registros que estão presentes em ambas as tabelas.
	- Exemplo: 
		- Alunos ∩ Professores mostra apenas os registros que existem tanto em Alunos quanto em Professores.
		
- **Diferença (-):** Mostra registros que estão em uma tabela, mas não na outra.
	- Exemplo: 
		- Alunos - Professores retorna registros que estão em Alunos, mas não em Professores.
		
- **Junção (⨝):** Combina registros de duas tabelas baseando-se em uma condição.
- Exemplo: 
	- Alunos ⨝ Professores combina registros de Alunos e Professores onde as colunas especificadas (como “Departamento”) correspondem.
	
``Essas operações são utilizadas internamente pelos SGBDs para implementar consultas de SQL e são uma ferramenta essencial para projetar e entender consultas complexas.``


### Utilização de Álgebra Relacional em Banco de Dados

- A álgebra relacional é a base teórica das linguagens de consulta em bancos de dados, como SQL. 
- Embora os usuários geralmente escrevam consultas em SQL, que é uma linguagem mais próxima da linguagem natural, o SGBD transforma essas consultas em operações de álgebra relacional para processar e retornar os dados.
- Exemplo: 
	- Suponha uma consulta SQL como: ``SELECT nome, idade FROM Alunos WHERE idade > 18``;
	- Internamente, o SGBD transforma essa consulta em operações de álgebra relacional:
		- **Seleção:** σ_idade>18 (Alunos) – Filtra os alunos com idade maior que 18.
		- **Projeção:** π_nome,idade – Retorna apenas as colunas de nome e idade para os registros selecionados.
		
- Portanto, a álgebra relacional oferece uma base matemática sólida e uma linguagem formal para manipular e extrair dados, essencial para o funcionamento dos bancos de dados relacionais.


## 📁 Como "nasce" um banco de dados?

- Um banco de dados nasce quando surge uma necessidade de organizar e armazenar dados de forma estruturada para uma aplicação ou sistema.
- Exemplo: 
	- Imagine que uma escola quer registrar informações sobre alunos, professores e disciplinas. 
	- Em vez de manter essas informações em documentos separados, a escola decide criar um banco de dados que centralize tudo. 
	
- Esse é o ponto de partida: identificar a necessidade de um sistema que organize e guarde os dados.


## 📁 Design de Bancos de Dados – Projeto Conceitual

- O design ou projeto conceitual é a primeira etapa da criação de um banco de dados. 
- Nessa fase, identificamos e definimos as principais entidades e seus relacionamentos, ou seja, os elementos e como eles se conectam no "mundo real" que queremos modelar.
- Exemplo: 
	- No caso da escola, as entidades podem ser "Alunos", "Professores", "Disciplinas", "Turmas", etc. 
	- Vamos pensar sobre como essas entidades se relacionam. 
	- Um aluno, por exemplo, está matriculado em uma turma, que, por sua vez, tem um professor responsável. 
	- Esse relacionamento entre aluno, turma e professor é essencial para o projeto do banco.


## 📁 Projeto Conceitual: Entendendo Passo a Passo

- Para construir um projeto conceitual, o primeiro passo é entender quais são as informações importantes para o sistema. 
- Em seguida, representamos essas informações com um modelo visual, geralmente usando diagramas ER (Entidade-Relacionamento).

### Passo a Passo:

- **Identifique as entidades:** Quais são os elementos principais? Exemplo: Alunos, Professores, Disciplinas.
- **Defina os atributos de cada entidade:** Quais informações queremos armazenar sobre cada uma? Exemplo: para "Alunos", armazenamos nome, idade, endereço, etc.
- **Estabeleça os relacionamentos entre entidades:** Como esses elementos interagem? Exemplo: Alunos se matriculam em Disciplinas.


###  Exemplificando o Projeto Conceitual e Processo

- O projeto conceitual é normalmente representado por um diagrama ER, que ajuda a visualizar os dados e seus relacionamentos.
- Exemplo:
	- Entidade “Aluno” com atributos: "ID_Aluno", "Nome", "Idade".
	- Entidade “Disciplina” com atributos: "ID_Disciplina", "Nome_Disciplina".
	- Relacionamento "Matricula" entre "Aluno" e "Disciplina", indicando que um aluno se inscreve em uma disciplina.
	- Esse diagrama conceitual mostra quais dados precisam ser armazenados e como eles se conectam, ajudando a construir um banco de dados que realmente representa o cenário da escola.


## 📁 Implementação: Projeto Lógico e Físico

- Depois do projeto conceitual, passamos para as fases de projeto lógico e físico, que são mais técnicas.

### Projeto Lógico
-  É a tradução do modelo conceitual para um modelo que o SGBD pode entender, geralmente usando tabelas. 
- Cada entidade vira uma tabela, cada atributo vira uma coluna, e os relacionamentos são representados por chaves estrangeiras.
- Exemplo: 
	- No banco de dados da escola, a entidade “Aluno” vira uma tabela com colunas para ID, Nome, e Idade.
	
	
### Projeto Físico

- É a implementação real do banco de dados no SGBD, onde criamos as tabelas e as relações conforme planejado.
- Exemplo: 
	- Em um SGBD como MySQL, usamos comandos SQL para criar as tabelas e definir as chaves primárias e estrangeiras, garantindo que os relacionamentos do projeto conceitual sejam respeitados.


## 📁 Fases de Desenvolvimento de Bancos de Dados e Aplicações

- O desenvolvimento de um banco de dados envolve várias fases, geralmente seguidas em sequência:
	- **Análise de requisitos:** Levantamento das necessidades e objetivos do banco de dados.
	- **Projeto conceitual:** Definição das entidades e relacionamentos, com diagramas ER.
	- **Projeto lógico:** Conversão do projeto conceitual em um modelo mais técnico, de tabelas e colunas.
	- **Projeto físico:** Implementação do banco de dados no sistema de gerenciamento.
	- **Teste e ajustes:** Verificação de que o banco atende às necessidades, com correções se necessário.
	- **Manutenção:** Atualizações e otimizações ao longo do tempo, conforme novas necessidades surgem.
- Exemplo: 
	- No banco de dados escolar, ao final do desenvolvimento, realizamos testes inserindo registros de alunos e professores e verificando se os dados estão armazenados e relacionados conforme o esperado.


## 📁 Aplicação: Modelagem de Dados

- A modelagem de dados é a prática de organizar e estruturar os dados de forma lógica, o que facilita o armazenamento, acesso e manipulação. 
- Ela permite que o banco de dados seja compreensível e eficiente, ajudando a responder perguntas sobre os dados.
- Exemplo: 
	- Em uma escola, perguntas como “Quais disciplinas um aluno específico está cursando?” ou “Quantos alunos estão matriculados em uma turma?” podem ser facilmente respondidas se o banco de dados foi bem modelado, com entidades e relacionamentos que refletem a realidade do ambiente escolar.