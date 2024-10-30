# 💾 Introdução a Banco de Dados

## 📁 O que são Banco de Dados

- Um banco de dados é uma coleção organizada de dados relacionados que representa informações do mundo real. 
- Pense nele como uma "biblioteca" de dados onde cada "livro" (ou conjunto de dados) está relacionado a outros livros. 
- Por exemplo, em uma empresa, você pode ter um banco de dados que armazena informações de clientes, produtos, pedidos e funcionários. 
	- Esses dados não estão isolados, mas se relacionam entre si: um cliente pode fazer pedidos de vários produtos, e esses pedidos estão ligados a dados do cliente e dos produtos.


### Estrutura do Banco de Dados:

- **Dados Relacionados:** Dentro de um banco de dados, os dados não estão apenas armazenados, mas estão conectados de alguma forma.
	- Exemplo: um sistema de pedidos relaciona dados de clientes com dados de produtos.
- **Conjunto de Dados:** Um banco de dados armazena um conjunto de dados com um propósito claro, como registrar transações financeiras, armazenar informações de um site, entre outros.


### No Contexto de um SGBD:
- O Sistema de Gerenciamento de Banco de Dados (DBMS - Database Management System) é uma ferramenta de software usada para criar, gerenciar e acessar esses bancos de dados. 
- Ele fornece funcionalidades como:
	- Armazenamento de dados de forma organizada e segura;
	Controle de acesso e segurança, permitindo que só usuários autorizados façam alterações;
	- Controle de integridade dos dados, ou seja, garante que os dados são coerentes (não é possível cadastrar um pedido sem cliente, por exemplo);
	- Recuperação e Consulta de Dados para permitir pesquisas rápidas e eficientes.
- Exemplo de DBMS:
	- MySQL, PostgreSQL e Microsoft SQL Server são exemplos populares de DBMS. 
- Imagine que o DBMS é como um bibliotecário que organiza, arquiva e encontra informações rapidamente para você.


### A Importância da Confiabilidade e Precisão:

- Para ser útil, um banco de dados precisa ser confiável e preciso.
- Toda vez que ocorre uma atualização no sistema (como o cadastro de um novo cliente), o DBMS reflete essas mudanças imediatamente, garantindo que a informação sempre esteja atualizada.

<br>


## 📁 O que é Big Data?

- Big Data se refere a grandes volumes de dados que são difíceis de processar e analisar com métodos tradicionais devido à sua variedade, volume e velocidade. 
- Esses dados são coletados de diversas fontes (como redes sociais, sensores, logs de internet) e contêm informações úteis que podem ser analisadas para gerar insights.


### Diferenças do Big Data:

- **Volume:** a quantidade de dados é muito grande.
- **Velocidade:** os dados são gerados rapidamente.
- **Variedade:** os dados são muito variados (texto, imagem, vídeo, entre outros).
- Exemplo de Big Data:
	- Pense em uma rede social que gera milhões de interações todos os dias. 
	- Esse grande volume de dados precisa ser processado rapidamente para entender, por exemplo, o comportamento dos usuários e oferecer conteúdo personalizado.

<br>


## 📁 SGBD

- Imagine um sistema que organiza seus dados de forma eficiente, permitindo que você os manipule com facilidade. 
- Essa é a função básica de um SGBD. 
- Ele define a estrutura dos seus dados (tabelas, colunas, tipos de dados), garante a integridade (regras, restrições) e controla o acesso de diferentes usuários.


### Como os SGBDs funcionam?

- **Definição:** Você define como seus dados serão estruturados (tipo, tamanho, relações entre eles).
- **Construção:** Insere os dados na estrutura definida, como um "cadastramento".
- **Manipulação:** Você extrai dados (query) e gera relatórios, como se estivesse buscando informações.
- **Compartilhamento:** Diversos usuários podem acessar os dados simultaneamente de forma segura e organizada.

- Um exemplo:

	- Imagine um banco de dados de uma loja online.
	- **Definição:** Definir tabelas para produtos, clientes, pedidos, etc.
	- **Construção:** Cadastrar os produtos, clientes e realizar pedidos.
	- **Manipulação:** Buscar pedidos de um cliente específico, gerar um relatório de vendas.
	- **Compartilhamento:** Vendedores, estoque e financeiro acessam o banco de dados para suas tarefas.


### Características Essenciais de um SGBD:

- **Robustez:** Um SGBD robusto é capaz de lidar com grandes volumes de dados, transações complexas e falhas de hardware sem comprometer a integridade dos dados. Ele possui mecanismos de recuperação para garantir a consistência do banco de dados em caso de problemas.
- **Confiabilidade:** A confiabilidade se refere à capacidade do SGBD de funcionar de forma consistente e previsível, sem erros e com tempos de resposta aceitáveis. Isso inclui a garantia de que as operações de leitura e escrita de dados sejam realizadas com precisão e integridade.
- **Segurança:** Um SGBD seguro protege os dados contra acesso não autorizado, manipulação e perda. Ele implementa mecanismos de autenticação, autorização, criptografia e controle de acesso para garantir a confidencialidade, integridade e disponibilidade das informações.
- **Multiplataforma:** Um SGBD multiplataforma funciona em diferentes sistemas operacionais e arquiteturas de hardware. Isso facilita a implantação em diferentes ambientes e garante compatibilidade com diferentes tecnologias.


### Fatores de Decisão na Escolha de um SGBD:

- **Popularidade:** Um SGBD popular geralmente possui uma comunidade de usuários ampla, o que significa maior suporte, recursos online, tutoriais e soluções de problemas.
- **Tempo de Mercado:** Um SGBD com um histórico de sucesso e tempo de mercado extenso geralmente significa que ele é maduro, estável e confiável, com uma base sólida de código e experiência.
- **Documentação:** Um SGBD com documentação completa e bem organizada facilita o aprendizado, a implementação e a resolução de problemas. Documentação clara e detalhada é essencial para desenvolvedores, administradores e usuários.

#### Exemplos:

- **MySQL:** Popular, robusto, confiável e multiplataforma, amplamente utilizado em aplicações web.
- **PostgreSQL:** Robusto, confiável, multiplataforma, conhecido por sua conformidade com SQL e suporte a transações ACID.
- **MongoDB:** Um banco de dados NoSQL popular, escalável, flexível e de alto desempenho, ideal para grandes conjuntos de dados não estruturados.


### Transações e Metadados:

- **Transação:** Um conjunto de ações que são executadas como uma unidade (tudo ou nada). Ex: realizar uma compra online.
- **Metadados:** Informação sobre os dados, como nomes das tabelas, tipos de dados, restrições. Como um "guia" do banco de dados.

<br>


## 📜 SGBD: Um pouco de história - momentos importantes:

- 1960: A ideia de SGBDs surge para otimizar o uso de recursos humanos e de computação.
- 1970: O modelo relacional, criado por Ted Codd, revoluciona o gerenciamento de dados.
- 1980 - 2000: Surgem diversos SGBDs baseados no modelo relacional e tecnologias de objeto.
- 2000: O NoSQL surge com novas abordagens para lidar com grandes volumes de dados.

<br>


## 📁 Evolução do Modelo Relacional:

- **1. Uso dos PCs:**
	- A década de 1980 foi marcada pela ascensão dos computadores pessoais (PCs). 
	- A crescente popularidade dos PCs permitiu que os SGBDs relacionais se tornassem mais acessíveis e populares, expandindo seu uso para além de grandes empresas e instituições.
	- Essa democratização da tecnologia facilitou o desenvolvimento e a utilização de aplicações que se conectavam a bancos de dados, impulsionando a adoção do modelo relacional.

- **2. Feedback Bom:**
	- O feedback positivo da indústria e dos usuários sobre o modelo relacional impulsionou sua evolução.
	- A capacidade de organizar dados de forma estruturada, realizar consultas complexas e garantir a integridade das informações através do SQL (linguagem de consulta estruturada) era extremamente valiosa para diversas aplicações.
	- A experiência positiva com o modelo relacional reforçou sua posição como padrão na indústria.

- **3. Sistemas Distribuídos:**
	- O crescimento das redes de computadores e a necessidade de compartilhamento de dados em diferentes locais físicos impulsionaram o desenvolvimento de sistemas distribuídos.
	- Os SGBDs relacionais começaram a se adaptar a esse novo cenário, permitindo a replicação de dados, a distribuição de carga entre servidores e a comunicação entre diferentes instâncias do banco de dados.

- **4. Desenvolvimento de Sistemas:**
	- A evolução do modelo relacional foi fundamental para o desenvolvimento de sistemas de informação robustos e complexos.
	- As ferramentas e linguagens de programação para interagir com bancos de dados relacionais se tornaram mais sofisticadas, permitindo o desenvolvimento de aplicações mais complexas e interativas.
	- O modelo relacional se tornou a base para diversas áreas, como gerenciamento de dados de empresas, aplicações web, sistemas de automação e análise de dados.


### Outros Modelos:

- **Modelo Hierárquico:** Organizado como uma árvore, com registros conectados por links.
- **Modelo em Rede:** Mais complexo, com links entre nós, permitindo relações mais complexas.

<br>


## 📁 Usuários e Linguagens:

- **Administrador do Banco de Dados:** Define a estrutura do banco de dados, controla o acesso e garante a segurança.
- **Usuário Convencional: **Acessa e manipula os dados para realizar suas tarefas.

``Linguagens: DDL (linguagem de definição de dados) e DML (linguagem de manipulação de dados) são usadas para interagir com o banco de dados.``

<br>


## 📁 SGBD - Armazenamento e Buffer:

- **Gerenciador de armazenamento:** Controla o armazenamento físico dos dados.
- **Gerenciador de buffer:** Gerencia a troca de dados entre a memória e o armazenamento.

<br>


## 📁 Cenários:

- **Data warehouses:** Repositórios centralizados para análise de grandes volumes de dados.
- **Middleware:** Sistemas que intermedeiam a comunicação entre diferentes aplicações e bancos de dados.