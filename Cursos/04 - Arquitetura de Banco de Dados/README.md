# 💾 Arquitetura de Banco de Dados

## 📁 Arquitetura de BD: Modelos

- Os modelos de banco de dados são métodos de organizar os dados, estabelecendo regras sobre como eles serão armazenados e relacionados no sistema de banco de dados. 
- Aqui estão os principais tipos de modelos:
	- **Modelo Relacional:** Organiza os dados em tabelas com linhas e colunas. Exemplo: um banco de dados de vendas com tabelas para "Clientes", "Pedidos" e "Produtos".
	- **Modelo Hierárquico:** Estrutura os dados como uma árvore, onde cada "pai" pode ter vários "filhos", mas cada "filho" só possui um "pai". Exemplo: estrutura organizacional de uma empresa, onde o "departamento" é o pai e os "funcionários" são os filhos.
	- **Modelo em Rede:** Semelhante ao hierárquico, mas permite que cada “filho” tenha múltiplos “pais”. Exemplo: um banco de dados de projetos em uma empresa onde um funcionário pode trabalhar em vários projetos, e cada projeto pode ter vários funcionários.
	- **Modelo Orientado a Objetos:** Integra conceitos de objetos da programação, útil para representar dados complexos. Exemplo: um banco de dados de uma aplicação de design gráfico, onde cada “objeto gráfico” pode ter suas próprias propriedades.


## 📁 Arquitetura de BD: Esquema, Instâncias e Estados de um BD

- **Esquema:** É a "estrutura fixa" do banco de dados, como um mapa que define as tabelas, colunas e relações. Exemplo: um banco de dados para uma escola pode ter tabelas para "Alunos", "Professores" e "Disciplinas".
- **Instância:** Representa os dados reais no banco em um momento específico. Exemplo: se o esquema tem a tabela "Alunos", a instância seria a lista atual de alunos matriculados.
- **Estado do Banco de Dados:** Refere-se ao conjunto de dados no banco em um instante. Cada operação (inserção, atualização, exclusão) altera o estado do banco.


## 📁 Three-Schema Architecture (Arquitetura de Três Esquemas)

- Essa arquitetura organiza o banco em três camadas, ajudando a proteger dados e a gerenciar o sistema de forma flexível:
	- **Esquema Externo:** Define a visão dos dados para cada usuário. Exemplo: um gerente pode ver apenas "Relatórios de Vendas", enquanto um funcionário vê apenas a "Lista de Produtos".
	- **Esquema Conceitual:** É uma visão lógica do banco de dados, definindo as tabelas e relacionamentos sem envolver os detalhes físicos.
	- **Esquema Interno:** Mostra como os dados estão organizados no nível físico de armazenamento.


## 📁 Linguagens para SGBD

- As linguagens de banco de dados servem para criar e manipular a estrutura e os dados armazenados. 
- As principais linguagens são:

- **DDL (Data Definition Language):** Linguagem para definir a estrutura do banco de dados. É como o "carpinteiro" que constrói as "gavetas".
	- Comandos SQL: ``CREATE TABLE, ALTER TABLE, DROP TABLE, CREATE INDEX, etc``.

- **DML (Data Manipulation Language):** Linguagem para inserir, atualizar, deletar e consultar dados. É como o "estoquista" que organiza e busca itens no depósito.
	- Comandos SQL: ``INSERT INTO, UPDATE, DELETE, SELECT``.

- **DQL (Data Query Language):** Linguagem especializada em consultar dados. É como o "bibliotecário" que busca informações específicas no depósito.
	- Comandos SQL: ``SELECT, WHERE, JOIN, ORDER BY, GROUP BY``.

- **DCL (Data Control Language):** Linguagem para controlar o acesso e permissões ao banco de dados. É como o "segurança" que controla quem pode entrar no depósito e o que cada um pode fazer.
	- Comandos SQL: ``GRANT, REVOKE``.


## 📁 Interfaces de SGBDs

- SGBDs (Sistemas de Gerenciamento de Banco de Dados) possuem interfaces que facilitam o uso:
	- **Interfaces Gráficas (GUI):** Permitem administrar o banco visualmente com janelas e botões. Exemplo: pgAdmin para PostgreSQL.
	- **Interfaces de Linha de Comando (CLI):** Interação direta com comandos textuais. Exemplo: MySQL CLI, onde comandos SQL podem ser digitados diretamente.
	- **APIs de Programação (API):** Permitem que outros programas se conectem ao banco de dados. Exemplo: JDBC (Java Database Connectivity) para Java.


## 📁 Ambientes e Utilitários de SGBDs

- Os SGBDs geralmente vêm com ferramentas e utilitários que ajudam na administração e otimização:
	- **Backup e Recuperação:** Para criar cópias de segurança dos dados e restaurá-los em caso de falha. Exemplo: pg_dump no PostgreSQL.
	- **Monitoramento de Desempenho:** Monitora o uso de recursos e o desempenho do banco, como o Oracle Enterprise Manager.
	- **Tuning (Ajustes):** Ferramentas que ajudam a otimizar consultas SQL e ajustar a configuração do banco de dados.


## 📁 Arquitetura Modo Cliente-Servidor

- Nesse modelo, o banco é dividido entre "cliente" e "servidor":
	- **Cliente:** É onde o usuário faz solicitações ao banco de dados. Exemplo: uma aplicação web que pede dados ao servidor.
	- **Servidor:** Local onde o banco de dados e o SGBD estão instalados. O servidor processa as requisições do cliente e retorna os dados.

- Essa arquitetura permite que vários clientes se conectem ao mesmo servidor, garantindo acesso compartilhado aos dados.


## 📁 Classificação de SGBDs

- Os SGBDs podem ser classificados com base em:

	- **Estrutura de Dados:**
		- **SGBDs Relacionais:** Organizam dados em tabelas e usam SQL. Exemplo: MySQL e PostgreSQL.
		- **SGBDs NoSQL:** Não utilizam tabelas, sendo mais flexíveis, como MongoDB e Cassandra.

	- **Distribuição de Dados:**
		- **SGBDs Centralizados:** Armazenam dados em um único servidor.
		- **SGBDs Distribuídos:** Distribuem dados em múltiplos locais. Exemplo: o banco de dados Cassandra.

	- **Escalabilidade:**
		- **Escala Vertical:** Melhora a capacidade aumentando o hardware do servidor.
		- **Escala Horizontal:** Aumenta a capacidade ao adicionar mais servidores à rede.
