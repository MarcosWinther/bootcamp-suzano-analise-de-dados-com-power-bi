# 💾 Modelo Relacional e Mapeamento Relacional com Banco de Dados

## 📁 Modelo Relacional
- O modelo relacional é um jeito de organizar dados em um banco de dados usando **tabelas** (ou relações). 
- Cada tabela é composta de linhas e colunas, onde cada linha representa um registro e cada coluna, uma característica.
- Exemplo: Imagine uma tabela chamada **"Clientes"**:

   | ID  | Nome  | Idade | Cidade         |
   |:---:|:-----:|:-----:|:--------------:|
   |  1  | Maria |   28  | São Paulo      |
   |  2  | João  |   35  | Rio de Janeiro |

- Aqui, o **modelo relacional** organiza os dados em linhas e colunas.

<br>


## 📁 Conceitos de Modelo Relacional

### 1. Tabelas X Arquivos

#### Tabelas

- Representam dados organizados dentro de um banco de dados.
- São estruturadas (linhas e colunas com significados específicos).
- Podem ser relacionadas a outras tabelas.

#### Arquivos
- São usados para guardar dados em sistemas de arquivos (como planilhas, TXT ou CSV).
- São menos estruturados e não possuem relações diretas.

#### Exemplo prático:

- **Tabela:** É como uma planilha do Excel, com regras claras sobre o que cada coluna deve guardar.
- **Arquivo:** É como um documento TXT, onde os dados podem estar sem organização.


### 2. Entidade

- Uma entidade é qualquer "coisa" do mundo real que queremos representar no banco de dados.
- Exemplo: Em uma loja, as **entidades** poderiam ser: **Clientes**, **Produtos**, **Vendas**.


### 3. Tupla

- Uma **tupla** é uma **linha** de uma tabela. 
- Ela representa um registro completo de uma entidade.
- Exemplo: Na tabela **"Clientes"**:

	| ID  | Nome  | Idade | Cidade         |
	|:---:|:-----:|:-----:|:--------------:|
	|  1  | Maria |   28  | São Paulo      |

- A linha com "Maria" é uma **tupla**.


### 3. Atributo

- Um **atributo** é uma **coluna** da tabela. 
- Ele descreve uma característica da entidade.
- Exemplo: Na tabela **"Clientes"**:
	- Atributos: **ID**, **Nome**, **Idade**, **Cidade**.
	

### 4. Relação

- Uma **relação** é o mesmo que uma **tabela** no modelo relacional. 
- Ela conecta dados que possuem algum vínculo.
- A relação também define como os dados se conectam em um modelo relacional.
- Exemplos: 
	- Exemplo 1: Na tabela **Clientes**, temos informações relacionadas a cada cliente.
	- Exemplo 2: Tabela **Clientes** e tabela **Pedidos** podem estar relacionadas pelo atributo **ID_Cliente**.


### 5. Valores Atômicos

- **Valores atômicos** são aqueles que **não podem ser divididos**. 
- Cada célula da tabela contém apenas um valor.
- Exemplo: Na tabela **Clientes**, a célula da coluna **Cidade** contém **"São Paulo"**, que é um valor atômico.

#### Grupos e Domínio

- O **domínio** é o conjunto de valores possíveis para um atributo.
- Ou seja, é basicamente o "tipo" ou o "limite" de valores que um atributo pode ter
- Exemplos: 
	- Exemplo 1: Para o atributo **Idade**, o domínio pode ser números inteiros de 0 a 120.
	- Exemplo 2: Para o atributo **Cidade**, o domínio pode ser todas as cidades do Brasil.


### 6. Cardinalidade

- A cardinalidade descreve a quantidade de elementos relacionados entre tabelas.
- Exemplo:
	- **1 para 1**: Um cliente tem um único endereço.
	- **1 para muitos:** Um cliente pode fazer várias compras.
	- **Muitos para muitos:** Vários produtos podem estar em vários pedidos.


### 7. Valores Nulos

- Um valor nulo em uma tabela indica ausência de valor. 
- Isso não significa zero, espaço em branco ou "não se sabe", mas sim que nenhum valor foi registrado para aquele atributo.

#### Situações para Valores Nulos

- Os valores nulos podem surgir em diferentes situações:
	1. **Valor Descpnhecido:**
		- O dado existe, mas não foi informado no momento do registro.
		- Exemplo: Em uma tabela funcionário:
		
			| ID  | Nome  | Telefone |
			|:---:|:-----:|:--------:|
			|  1  | João  |   Nulo   |
		
		- Aqui, o telefone de João existe, mas não foi informado.
		
	2. **Valor Existente mas Indisponível:**
		- O dado existe, mas não está disponível ou não pode ser acessado no momento.
		- Exemplo:
		
			| ID  | Nome  | CPF  |
			|:---:|:-----:|:----:|
			|  1  | João  | Nulo |
		
		- Maria tem CPF, mas ele não está disponível no sistema agora.
	
	3. **Atributo Não se Aplica:**
		- O dado não faz sentido para o contexto daquela entidade.
		- Exemplo: Em uma tabela de veículos
		
			| ID  | Tipo       | Placa        |
			|:---:|:----------:|:------------:|
			|  1  | Carro      |   ABC-1234   |
			|  2  | Bicicleta  |   Nulo       |
		
		- Aqui, bicicletas não têm placa, então o valor é nulo.
		
	4. **Valor Indefinido:**
		- O valor não está definido ou não foi atribuído porque não há informação sobre ele.
		- Exemplo:
		
			| ID  | Nome  | Data de Nascimento |
			|:---:|:-----:|:------------------:|
			|  3  | Pedro |        Nulo        |


#### Valores Nulos nas Tuplas

- Valores nulos podem aparecer em qualquer tupla (linha) de uma tabela, mas eles podem causar complicações em cálculos ou filtros. 
- É importante lidar com eles adequadamente em consultas SQL.
- Exemplo:

	|  ID  |	Nome	|  Idade	|  Telefone	 |  Endereço  |
	|:----:|:----------:|:---------:|:----------:|:----------:|
	|  1   |    Ana	    |    30	    |  555-1234	 |   Rua A    |
	|  2   |   Carlos	|   Nulo	|  Nulo	     |   Rua B    |
	|  3   |	Helena	|    25	    |  Nulo	     |   Nulo     |
	
	
- **Problemas Comuns com Valores Nulos:**
	1. **Cálculos Matemáticos:** Operações com valores nulos geralmente resultam em nulo.
		
		````sh
		SELECT AVG(Idade) FROM Clientes;
		````
		- Nesse caso, o cálculo só considera as idades não nulas.
		
	2. **Filtros em Consultas:** É preciso usar a condição ``IS NULL`` para buscar valores nulos.
		
		````sh
		SELECT * FROM Clientes WHERE Telefone IS NULL;
		````
		
#### Como Tratar Valores Nulos?

1. **Substituição por um Valor Padrão (DEFAULT):**
	- Substituir nulos por valores padrão em casos específicos.
	
	````sh
	UPDATE Clientes SET Telefone = 'Não informado' WHERE Telefone IS NULL;
	````
	
2. **Ignorar Valores Nulos em Cálculos:**
	- Bancos de dados já desconsideram valores nulos automaticamente em cálculos como ``SUM``, ``AVG``.
	
3. **Evitar Nulos Sempre que Possível:**
	- Definir colunas com a restrição ``NOT NULL`` para evitar nulos:
	
	````sh
	CREATE TABLE Clientes (
		ID INT PRIMARY KEY,
		Nome VARCHAR(100) NOT NULL,
		Telefone VARCHAR(15) NULL
	);
	````

<br>

## 📁 Lógica de Predicado no Mundo dos SGBDs

- A lógica de predicado é usada para expressar verdades sobre o mundo real por meio de proposições e relações. 
- No contexto de Sistemas de Gerenciamento de Bancos de Dados (SGBDs), ela é a base do modelo relacional, permitindo expressar consultas e manipulação de dados.
- **Sujeito:** a entidade ou elemento sobre o qual falamos.
- **Predicado:** o que declaramos sobre o sujeito, descrevendo propriedades ou relações.

````sh
SELECT Nome FROM Clientes WHERE Cidade = 'São Paulo';
````

- **Sujeito:** Clientes.
- **Predicado:** "Cidade = 'São Paulo'" (declara algo sobre a cidade dos clientes).

<br>


## 📁 Características da Relação

- No modelo relacional, uma relação é como uma tabela e tem características específicas. 
- Vamos explorar essas características:

### Uppercase: Relações

- As relações são representadas por letras maiúsculas como ``Q``, ``R``, ``S`` e correspondem às tabelas no banco de dados.
- Exemplo:
	- R = Tabela de Clientes.


### Lowercase: Estado de Relação/Instância

- Um estado de relação (ou instância) é o conjunto de dados que uma relação tem em um momento específico. 
- Representamos com letras minúsculas, como ``q``, ``r``, ``s``.
- Exemplo:
	- Se R é a relação "Clientes", um estado da relação r poderia ser:

		|  ID  |  Nome	|    Cidade      |
		|:----:|:------:|:--------------:|
		|  1   |  Maria	| São Paulo      |
        |  2   |  João	| Rio de Janeiro |
		
		
### Letras: Tuplas

- As tuplas representam as linhas de uma relação e são indicadas por letras como ``t``, ``u``, ``v``.
- Exemplo:
	- Na tabela de Clientes, a tupla t poderia ser: t = (1, Maria, São Paulo).


### Nome do Atributo = Papel (Role)

- Cada atributo de uma relação tem um nome e desempenha um papel (role), descrevendo uma característica da entidade.
- Exemplo:
	- Na relação "Clientes":
		- O atributo ID tem o papel de identificar unicamente um cliente.
		- O atributo Cidade tem o papel de informar a localização do cliente.


### Resumindo com um Exemplo Prático:

- **Relação (R):**
	- Clientes

		|  ID  |  Nome	   |    Cidade        |
		|:----:|:---------:|:----------------:|
		|  1   |  Maria	   |    São Paulo     |
		|  2   |  João	   |  Rio de Janeiro  
		
		
- **Estado de Relação (r):**
	- Conjunto de todas as tuplas no momento atual: ``r = { (1, Maria, São Paulo), (2, João, Rio de Janeiro) }``

- **Tupla (t):**
	- Uma única linha da tabela: ``t = (1, Maria, São Paulo)``.

- **Nome Atributo = Papel:**
	- Atributo **ID** → Papel: Identificador.
	- Atributo **Nome** → Papel: Nome do cliente.
	- Atributo **Cidade** → Papel: Localização do cliente.

<br>


## 📁 Mapeamento de Relacionamentos

### Relacionamento Binário 1:1

- Um relacionamento 1:1 ocorre quando uma entidade A se relaciona com, no máximo, uma entidade B, e vice-versa.
- Exemplo: 
	- Considere uma empresa onde cada funcionário possui um único crachá, e cada crachá está associado a um único funcionário.
	- Foreign Key (Chave Estrangeira): Para representar esse relacionamento no banco de dados, podemos adicionar a chave primária da entidade "Funcionário" como chave estrangeira na entidade "Crachá" ou vice-versa.
	
	- **Tabela Funcionário:**

		|  ID_Funcionário  |     Nome       |
		|:----------------:|:--------------:|
		|        1	       |   João Silva   |
		|        2	       |   Maria Souza  |
	
	- **Tabela Crachá:**

		|  ID_Crachá  |   Número_Série	|   ID_Funcionário  |
		|:-----------:|:---------------:|:-----------------:|
		|     101	  |       ABC123	|         1         |
		|     102	  |       XYZ789	|         2         |
	
	
- **Merge dos Relacionamentos (Fusão):**
	- Se ambas as entidades participam totalmente do relacionamento (ou seja, cada funcionário tem um crachá e cada crachá pertence a um funcionário), podemos combinar as duas tabelas em uma única.
	- Exemplo:
	
		| ID_Funcionário	|       Nome	    | Número_Série |
		|:-----------------:|:-----------------:|:------------:|
		|        1      	|     João Silva	|    ABC123    |
		|        2	        |    Maria Souza	|    XYZ789    |
		
		
- **Cross-reference (Tabela de Referência Cruzada):** 
	- Outra abordagem é criar uma tabela separada que armazene as chaves primárias de ambas as entidades, estabelecendo a relação entre elas.
	- Exemplo:

		- **Tabela Funcionário_Crachá:**

			|   ID_Funcionário	|   ID_Crachá  |
			|:-----------------:|:------------:|
			|          1	    |     101      |
			|          2	    |     102      |
			
			
- **Abordagem FK (Chave Estrangeira):** 
	- Consiste em adicionar a chave primária de uma entidade como chave estrangeira na outra entidade para estabelecer o relacionamento.

- **Participação Total:** 
	- Ocorre quando todas as instâncias de uma entidade participam do relacionamento. 
	- No exemplo, se todo funcionário deve ter um crachá, dizemos que a participação é total.


### Relacionamento Binário 1:N

- Nesse tipo de relacionamento, uma entidade A pode se relacionar com várias entidades B, mas uma entidade B está associada a, no máximo, uma entidade A.
- Exemplo: 
	- Um departamento possui vários funcionários, mas cada funcionário pertence a um único departamento.

- **Foreign Key (Chave Estrangeira):** 
	- Adicionamos a chave primária da entidade "Departamento" como chave estrangeira na entidade "Funcionário".
	- Exemplo:

		- **Tabela Departamento:**

			|    ID_Departamento    |	Nome_Departamento   |
			|:---------------------:|:---------------------:|
			|          10	        |    Recursos Humanos   |
			|          20           |       	TI          |


		- **Tabela Funcionário:**

			|   ID_Funcionário   |	      Nome	      |   ID_Departamento   |
			|:------------------:|:------------------:|:-------------------:|
			|         1	         |      João Silva	  |         10          |
			|         2	         |      Maria Souza	  |         20          |
			
			
- **Relationship Relation (Relação de Relacionamento):**
	- Nesse caso, não é necessário criar uma tabela adicional para o relacionamento, pois a chave estrangeira na tabela "Funcionário" já estabelece a relação.


### Relacionamento Binário N:M

- Aqui, uma entidade A pode se relacionar com várias entidades B, e uma entidade B pode se relacionar com várias entidades A.
- Exemplo: 
	- Estudantes podem se inscrever em vários cursos, e cada curso pode ter vários estudantes.

- **Relationship Relation (Relação de Relacionamento):** 
	- Criamos uma tabela intermediária para representar o relacionamento, contendo as chaves primárias de ambas as entidades.
	- Exemplo:

		- **Tabela Estudante:**

			|    ID_Estudante	    |            Nome        |
			|:---------------------:|:----------------------:|
			|          1	        |       Ana Oliveira     |
			|          2	        |       Pedro Santos     |
			
			
		- **Tabela Curso:**

			|   ID_Curso	   |       Nome_Curso      |
			|:-----------------:|:--------------------:|
			|      101	       |     Matemática        |
			|      102	       |      História         |


		- **Tabela Estudante_Curso:**

			|     ID_Estudante	     |   ID_Curso     |
			|:----------------------:|:--------------:|
			|           1	         |      101       |
			|           1	         |      102       |
			|           2	         |      101       |


### Atributos Compostos

- Atributos compostos são aqueles que podem ser divididos em subcomponentes menores, que possuem significados independentes.
- Exemplo: 
	- O atributo "Endereço" pode ser composto por "Rua", "Número", "Cidade" e "CEP".

- **Componentes Simples:** 
	- São os subcomponentes de um atributo composto. No exemplo, "Rua", "Número", "Cidade" e "CEP" são componentes simples do atributo "Endereço".
	- Exemplo:

		|   ID_Funcionário   |      	Nome	    |          Rua	      |      Número	   |     Cidade	    |        CEP     |
		|:------------------:|:--------------------:|:-------------------:|:--------------:|:--------------:|:--------------:|
		|          1	     |       João Silva	    |      Av. Central	  |        123	   |     São Paulo	|     01000-000  |
		|          2	     |       Maria Souza	|     Rua das Flores  |                |                |                |		