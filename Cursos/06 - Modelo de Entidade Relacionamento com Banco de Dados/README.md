# 💾 Modelo de Entidade Relacionamento com Banco de Dados

## 📁 Modelo ER (Modelo de Entidade-Relacionamento)

- O Modelo de Entidade-Relacionamento (ER) é uma maneira de representar como os dados de um sistema se relacionam. 
- Ele ajuda a estruturar as informações do banco de dados antes de criá-lo, organizando-as em entidades e relacionamentos.
	- **Modelo Conceitual:** 
		- É a etapa onde se define o que vai compor o banco de dados, com base nas necessidades do negócio. 
		- Por exemplo, se o sistema é para uma biblioteca, o modelo conceitual pode definir que precisamos de informações sobre livros, autores e clientes.

	- **Domínio do Negócio:** 
		- Refere-se ao "mundo" do sistema, que inclui tudo o que precisa ser considerado no modelo. 
		- No caso de uma biblioteca, o domínio do negócio inclui tudo o que envolve livros, clientes, empréstimos, devoluções etc.

	- **Elementos principais:**
		- **Entidades:** Representam objetos principais do sistema, como Cliente, Livro e Empréstimo.
		- **Relacionamentos:** Mostram como as entidades estão ligadas. Por exemplo, Cliente realiza Empréstimo de um Livro.
		- **Atributos:** Características de cada entidade. Por exemplo, Cliente pode ter atributos como nome, idade, e endereço.
		
		
## 📁 Diagrama ER (Diagrama de Entidade-Relacionamento)

- O Diagrama ER é uma representação visual do modelo ER. 
- Ele ajuda a visualizar como as entidades e os relacionamentos se organizam e é essencial para projetar o banco de dados.
	- **Foco no Esquema:** O diagrama foca no esquema (estrutura) do banco de dados, mostrando como as entidades estão conectadas.
	- **Raras modificações:** Geralmente, depois de criado, o diagrama ER não precisa de muitas alterações, a menos que haja uma grande mudança no sistema.
	- **Facilidade de Manipular:** Com o diagrama ER, é fácil entender e ajustar o modelo de dados.
	- **Esquema ER do Banco de Dados:** Uma versão do diagrama ER é usada como base para criar o banco de dados.
	
	
## 📁 Entidades

- As entidades são os elementos principais de um banco de dados. 
- Elas representam objetos ou coisas do sistema que têm existência independente.
	- **Componente básico:** As entidades são o componente principal do modelo ER, pois representam objetos importantes do sistema.
	- **Existência independente:** Cada entidade pode existir por si só. Por exemplo, um Cliente pode existir independentemente de empréstimos de livros.
	- **Atributos:** São características das entidades. Por exemplo, um Cliente pode ter atributos como nome, data de nascimento e CPF.
	
	
## 📁 Atributos

- Os atributos descrevem as entidades, dando mais detalhes sobre cada uma.
- **Características/Descrição das entidades:** Atributos são como descrições que tornam a entidade única. No caso de um Livro, os atributos podem ser título, autor e ano de publicação.
- **Atributos relacionados às instâncias:** Cada entidade pode ter várias instâncias. Por exemplo, uma entidade Livro pode ter várias instâncias com títulos diferentes (cada livro é uma instância).


### Tipos de Atributos

1. **Atributos Simples:** 
	- São atributos que possuem um único valor e não podem ser divididos em partes menores. 
	- Eles são diretos e não possuem subcomponentes. 
	- Exemplo: o CPF de uma pessoa é um atributo simples porque ele é único e não precisa ser dividido em partes para fazer sentido no contexto do banco de dados.

2. **Atômicos x Compostos:**
	- **Atômicos**: Atributos que não podem ser divididos. Exemplo: idade de uma pessoa.
	- **Compostos:** Atributos que podem ser divididos. Exemplo: endereço, que pode ser separado em rua, cidade e estado.

3. **Atributos Multivalorados:** 
	- São atributos que podem ter vários valores. Exemplo: um cliente pode ter múltiplos telefones.

4. **Armazenados e Derivados:**
	- **Armazenados:** São os valores que realmente guardamos no banco. Exemplo: data de nascimento de um cliente.
	- **Derivados:** São valores calculados a partir de outros atributos. Exemplo: idade, que pode ser calculada com base na data de nascimento.

5. **Atributos Nulos:** 
	- São atributos que podem não ter valor. 
	- Por exemplo, o campo segundo nome de um cliente pode ser nulo se ele não tiver um segundo nome.

6. **Atributos Complexos:** 
	- São combinações de atributos compostos e multivalorados. 
	- Por exemplo, o histórico escolar de um aluno, que pode incluir várias disciplinas com notas e informações sobre cada uma.


#### Chaves

- As chaves são atributos ou conjunto de atributos que identificam uma instância específica dentro de uma entidade. 
- Elas são importantes para evitar duplicidade e facilitar a busca de informações.
	- **Chave Primária:** Um atributo (ou conjunto de atributos) que identifica exclusivamente cada instância de uma entidade. Exemplo: CPF de um cliente é uma chave primária porque identifica uma pessoa de maneira única.
	- **Chave Estrangeira:** Um atributo que cria uma ligação entre duas entidades. É usada para referenciar uma entidade em outra. Por exemplo, na entidade Empréstimo, a chave estrangeira poderia ser o ID do cliente, que se refere à entidade Cliente para identificar quem realizou o empréstimo.
	
	
## 📁 Classificação dos Relacionamentos

- Os relacionamentos descrevem as associações entre entidades e podem ser classificados de várias formas:

1. **Grau do Relacionamento:** O grau representa o número de entidades envolvidas em um relacionamento.
	- **Binário:** Envolve duas entidades (o mais comum). Exemplo: Cliente e Pedido.
	- **Ternário:** Envolve três entidades. Exemplo: Cliente, Produto e Vendedor em uma compra.
	- **N-ário:** Envolve mais de três entidades.
	
2. **Auto Relacional ou Não:**
	- **Auto-relacional:** Quando uma entidade se relaciona consigo mesma. Exemplo: um funcionário que é supervisor de outros funcionários.
	- **Não auto-relacional:** Envolve diferentes entidades. Exemplo: Cliente e Produto.

3. **Cardinalidade:** Representa o número máximo e mínimo de ocorrências de uma entidade que podem estar associadas a outra entidade em um relacionamento.
	- **Um-para-Um (1:1):** Um cliente possui uma conta bancária específica.
	- **Um-para-Muitos (1:N):** Um cliente pode ter vários pedidos.
	- **Muitos-para-Muitos (N:M):** Muitos alunos podem estar matriculados em muitos cursos.


## 📁 Constraints (Restrições)

- As restrições ou constraints determinam limites nas relações entre entidades e nos valores de seus atributos.

1. **Cardinalidade:** 
	- Como vimos acima, define as associações máximas e mínimas permitidas entre as entidades.

2. **Participação:**
	- **Relação de dependência:** Define o nível de dependência entre entidades, indicando se uma entidade depende da outra para existir.
	- **Minimum Cardinality Constraints:** Estabelece a participação mínima, ou seja, o número mínimo de ocorrências que devem estar presentes em um relacionamento.
	- **Classificação:**
		- **Participação Total:** Uma entidade depende de outra para existir. Exemplo: um Pedido depende de um Cliente.
		- **Participação Parcial:** A entidade pode existir independentemente de outras.

3. **Atributos de Relacionamentos:** 
	- São características dos relacionamentos. 
	- Por exemplo, o relacionamento “Compra” entre Cliente e Produto pode ter atributos como data de compra e quantidade.
	
	
## 📁 Entidades

- As entidades se dividem em:
	- **Entidades Fortes:** São independentes e possuem uma chave primária que as identifica unicamente. Exemplo: Cliente, Produto.
	- **Entidades Fracas:** Dependem de uma entidade forte para existir e geralmente têm uma chave parcial que precisa ser combinada com a chave da entidade forte. Exemplo: uma entidade Item de Pedido que depende da entidade Pedido.
	

## 📁 Notações no Diagrama ER

- Para representar as entidades, relacionamentos e atributos no Diagrama ER, usamos algumas notações:

1. **Entidades:** Representadas como classes/objetos que são fundamentais no modelo.
2. **Relacionamentos:** São as agregações que conectam as entidades.
3. **Atributos:** Características elementares de cada entidade.
4. **Entidades Fracas (Weak):**
	- **Entidades fracas:** Representadas com um retângulo de borda dupla.
	- **Relacionamentos fracos:** São indicados quando o relacionamento é necessário para a existência da entidade fraca.
5. **Chave Parcial:** Representada com uma linha pontilhada, mostrando que ela precisa de uma entidade forte para ser identificada.
6. **Chave Primária:** Representada com uma linha contínua, indicando que a entidade é identificável unicamente.
7. **Dependência de Existência:** Representada com o símbolo "||" (barras duplas) no diagrama.
8. **Atributo Derivado:** Indicado com uma linha tracejada ao redor do nome, mostrando que ele é calculado.
9. **Atributo Composto:** Indicado com um círculo em torno dos subatributos.
10. **Participação Total:** Indicada com uma linha dupla conectando entidades ao relacionamento.
11. **Cardinalidade:** Representada com números ou letras (ex.: 1:1, 1:N) para indicar o tipo de relacionamento.
12. **Constraint Estrutural:** Indica uma regra ou restrição de como as entidades podem se relacionar.


## 📁 Construtores do Esquema

- Para criar um esquema claro e organizado, alguns construtores são adotados na nomeação das entidades, relacionamentos e atributos:
	- **Convenção - Nomeando:**
		- **Entidade e Relacionamento:** Os nomes das entidades devem ser simples e representativos, como Cliente e Produto. Os relacionamentos devem ter nomes verbais, como realiza, contém.
		- **Atributo:** Deve representar a característica da entidade de forma clara, como nome_cliente ou data_compra.
		- **Função:** Pode ser usada para definir como o atributo será usado ou calculado no sistema. Exemplo: uma função para calcular idade com base na data de nascimento.