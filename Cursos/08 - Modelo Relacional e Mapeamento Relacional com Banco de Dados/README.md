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
