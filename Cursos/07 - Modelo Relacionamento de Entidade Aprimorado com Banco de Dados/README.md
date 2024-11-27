# 💾 Modelo Relacionamento de Entidade Aprimorado com Banco de Dados

## 📁 EER: Novos conceitos semânticos

- O EER (Enhanced Entity-Relationship) adiciona novos conceitos que facilitam a representação de cenários complexos em um banco de dados. 
- Ele inclui noções como generalização e especialização, além de permitir um tipo de herança, semelhante ao que ocorre em programação orientada a objetos (POO).


### Desenvolvidos fora da área de BDs

- Esses conceitos de especialização, generalização e herança vêm da programação orientada a objetos (POO) e foram adaptados para bancos de dados. 
- A ideia é trazer mais flexibilidade e organização aos dados, permitindo que atributos e relacionamentos possam ser compartilhados ou especificados conforme necessário.


### Diagrama ERR (Diagrama de Entidade-Relacionamento Estendido)

- O Diagrama ERR é uma extensão do diagrama ER, incorporando os novos elementos do EER. 
- Ele permite visualizar hierarquias e subtipos, com setas e conectores que mostram a relação entre entidades "pais" e "filhos".


## 📁 Modelo Enhanced ER (Modelo ER Estendido)

- No Modelo ER Estendido, encontramos conceitos como generalização, especialização, herança e categoria.

	1. **Generalização e Especialização:**
		- **Generalização:** 
			- Agrupa características comuns de várias entidades em uma entidade "pai". 
			- Por exemplo, em um banco de dados de um zoológico, você pode ter as entidades **Cachorro** e **Gato** que compartilham características comuns (como nome e idade). 
				- Em vez de repetir esses atributos, criamos uma entidade **Animal** com esses atributos. 
				- Assim, **Animal** é uma generalização de **Cachorro** e **Gato**.
		- **Especialização:** 
			- É o oposto da generalização. 
			- Partimos de uma entidade "pai" e a dividimos em entidades "filhas" que têm características específicas. 
			- Por exemplo, **Animal** pode ser dividido em **Cachorro** (que tem o atributo específico raça de cachorro) e **Gato** (com o atributo específico cor da pelagem).

	2. **Categoria ou Union Type:**
		- A **Categoria (ou Union Type)** permite que uma entidade "filha" seja associada a mais de uma entidade "pai". 
		- Por exemplo, se temos uma entidade **Veículo**, uma entidade **Meio de Transporte** pode representar **Carro** e **Avião** ao mesmo tempo, unindo esses dois tipos em uma única categoria.

	3. **Herança (Atributo e Relacionamento):**
		- **Herança de Atributos:** 
			- No EER, uma entidade "filha" pode herdar atributos da entidade "pai". 
			- Por exemplo, **Aluno** e **Professor** podem herdar o atributo nome da entidade **Pessoa**.
		- **Herança de Relacionamentos:** 
			- Relacionamentos também podem ser herdados. 
			- Se **Pessoa** tem um relacionamento com **Endereço**, **Aluno** e **Professor** também têm.


## 📁 Subclasse e Subtipo

- **Tipos de Entidades:** 
	- São as diferentes classes de objetos representadas no modelo. 
	- Por exemplo, Pessoa é um tipo de entidade, e Aluno e Professor podem ser tipos especializados dessa entidade.
- **Conjuntos de Entidades:** 
	- Refere-se a um grupo de instâncias de uma mesma entidade. 
	- Exemplo: o conjunto de todas as instâncias de Aluno forma o conjunto de entidades Aluno.

### Subclasse

- **Depende do contexto do BD:** 
	- A subclasse é criada para representar uma variação específica dentro de uma entidade, conforme necessário para o contexto do banco de dados. 
	- Por exemplo, em um sistema de gestão escolar, Aluno e Professor são subclasses de Pessoa.
- **Objeto distinto no BD:** 
	- Cada subclasse pode ser tratada como um objeto distinto, com seus próprios atributos, mas que também herda atributos da classe "pai".


## 📁 Herança

- A herança no EER é similar à herança na POO. 
- Ela permite criar uma nova classe (ou entidade) a partir de uma já existente, reutilizando atributos e relacionamentos.

	1. **Princípio próprio da POO:** 
		- Em POO, herança significa que uma classe "filha" herda as características de uma classe "pai". 
		- No EER, isso é usado para organizar dados de forma hierárquica.

	2. **Agregar Atributos e Métodos:** 
		- As subclasses podem ter seus próprios atributos e métodos, além dos herdados.
	
	3. **Reutilização de Código:** 
		- Evita repetição de atributos, melhorando a organização do modelo.

	4. **Especialização de Classe:** 
		- A herança permite especializar a classe "pai" em subclasses com características únicas.
	
	
## 📁 Especialização e Generalização

- **Especialização:** 
	- Move-se do geral para o específico. 
	- Começamos com uma entidade genérica e a dividimos em subclasses especializadas com atributos específicos.
	- Exemplo: Pessoa se divide em Aluno e Professor.
- **Generalização:**
	- Move-se do específico para o geral. 
	- Agrupamos características comuns de várias entidades em uma entidade genérica.
	- Exemplo: Cachorro e Gato compartilham características em comum e, por isso, podem ser generalizados para a entidade Animal.

### Generalização versus Especialização

- **Generalização** é útil quando queremos evitar a repetição de atributos entre várias entidades. Agrupamos esses atributos em uma entidade "pai".
- **Especialização** é usada quando precisamos distinguir entre diferentes tipos de uma entidade, cada um com suas próprias características.


## 📁 Constraints - Modelo EER

- As restrições no Modelo EER ajudam a controlar as associações entre entidades e subclasses. 
- Existem três tipos principais:
	1. **Predicate-Defined (Definida por Predicado):**
		- A especialização é definida por uma condição ou regra, chamada predicado. 
		- Por exemplo, uma entidade **Pessoa** pode ser dividida em **Aluno** e **Professor** com base em um atributo específico, como cargo. 
		- Aqui, o predicado seria algo como "cargo = 'Aluno'" para a subclasse **Aluno**.
	2. **Attribute-Defined Specialization (Especialização Definida por Atributo):**
		- A especialização ocorre com base em um atributo da entidade "pai". 
		- No exemplo acima, **cargo** é o atributo que define a especialização. 
		- Todos os valores desse atributo indicam a qual subclasse cada instância pertence.
	3. **User-Defined (Definida pelo Usuário):**
		- A classificação não é determinada por um predicado ou atributo, mas pelo próprio usuário ao inserir os dados. 
		- Isso significa que o usuário decide a qual subclasse uma instância pertence ao inseri-la no banco de dados.


## 📁 Constraints - Especialização

- Na especialização, também temos restrições específicas que ajudam a definir as relações entre subclasses e superclasses.
	1. **Disjointness Constraint (Restrição de Conjuntos Disjuntos):**
		- Define se as subclasses são **disjuntas** ou **sobrepostas**. 
		- Em uma restrição **disjoint** (disjunta), uma instância pode pertencer a apenas uma subclasse. 
		- Por exemplo, se uma entidade é **Aluno**, ela não pode ser **Professor** ao mesmo tempo.
	2. **Overlapping:**
		- Indica que uma instância pode pertencer a várias subclasses ao mesmo tempo. 
		- Exemplo: em um sistema hospitalar, uma pessoa pode ser tanto **Médico** quanto **Paciente**.
	3. **Completeness Constraint (Restrição de Integridade):**
		- Define se a participação nas subclasses é obrigatória ou opcional.
		- **Total (Pertencimento Obrigatório):** 
			- Cada instância da superclasse deve estar em pelo menos uma subclasse. 
			- Exemplo: toda **Pessoa** no sistema deve ser **Aluno** ou **Professor**.
		- **Parcial (Participação Opcional):** 
			- Algumas instâncias da superclasse podem não pertencer a nenhuma subclasse. 
			- Exemplo: uma entidade **Pessoa** pode não ser nem **Aluno** nem **Professor**.


## 📁 Constraints - Regras

- As regras de constraints também incluem restrições para operações de inserção e exclusão, o que ajuda a garantir a integridade dos dados.
	1. **Deletar:**
		- **Superclasse -> Subclasses:** 
			- Se uma instância da superclasse for deletada, as instâncias associadas nas subclasses também devem ser deletadas para manter a consistência. 
			- Exemplo: ao deletar uma instância de **Pessoa**, suas representações em **Aluno** ou **Professor** também devem ser removidas.
	2. **Inserção:**
		- **Entidade em Superclasse -> Predicate-Defined:** 
			- Se a especialização é predicate-defined, a inserção na superclasse deve satisfazer o predicado para ser incluída em uma subclasse.
		- **Entidade em Superclasse com Total -> Subclasse Match:** 
			- Se a especialização tem restrição de participação total, então cada nova instância da superclasse deve ter uma correspondência em pelo menos uma subclasse. 
			- Por exemplo, ao adicionar uma nova **Pessoa** em um sistema com participação total, essa instância deve ser categorizada como **Aluno** ou **Professor**.


## 📁 Hierarquia de Especialização e Rede de Especialização

### Hierarquia de Especialização:

- Em uma hierarquia, cada subclasse tem apenas uma entidade "pai" direta. 
- A hierarquia é como uma árvore de especialização onde as subclasses se ramificam a partir de uma única superclasse. 
- Exemplo: **Pessoa** é a superclasse, com subclasses **Aluno** e **Professor**.


### Rede de Especialização:

- Em uma rede de especialização, uma subclasse pode ter múltiplas superclasses, criando uma estrutura de rede, em vez de uma árvore. 
- Exemplo: uma subclasse **Funcionário-Estudante** pode herdar tanto de **Funcionário** quanto de **Estudante**. 
- Isso permite uma maior flexibilidade ao modelar situações em que uma entidade "filha" pode pertencer a múltiplas entidades "pais".


## 📁 Modelagem de Union Types usando Categorias

- Union Type é um conceito do Modelo EER que permite criar uma subclasse a partir de objetos de diferentes tipos de entidades. 
- Isso é útil quando queremos representar uma coleção de instâncias que vêm de várias entidades, mas têm características comuns e precisam ser tratadas de forma unificada.

### Union Type:

- É uma coleção que agrupa objetos de diferentes entidades, como uma "categoria" que abrange múltiplos tipos. 
- Imagine uma entidade chamada **Cliente** que representa tanto **Pessoa Física** quanto **Pessoa Jurídica**. 
- A categoria **Cliente** é um **Union Type** que une as entidades **Pessoa Física** e **Pessoa Jurídica**.
- **Representação:** 
	- No diagrama **EER**, o **Union Type** aparece como uma subclasse conectada a várias entidades "pai" usando uma notação específica. 
	- Ele ajuda a visualizar que **Cliente** pode ser uma instância de **Pessoa Física** ou **Pessoa Jurídica**.


### Union Type - Parcial e Total:

1. **Parcial:** 
	- Nem todas as instâncias das entidades "pais" estão na categoria. 
	- Por exemplo, nem toda **Pessoa Física** precisa ser um **Cliente**.
2. **Total:** 
	- Todas as instâncias das entidades "pais" devem estar na categoria. 
	- Se for total, então todas as instâncias de **Pessoa Física** e **Pessoa Jurídica** devem ser representadas na categoria **Cliente**.


## 📁 Generalização/Especialização vs Union Type/Categorização: Por qual optar?

1. **Generalização/Especialização:**
	- **Generalização** agrupa entidades que compartilham características comuns em uma entidade mais genérica, a partir de várias entidades específicas.
	- **Especialização** é o oposto: partimos de uma entidade genérica e criamos entidades mais específicas que têm características exclusivas.
	- É útil quando queremos organizar uma hierarquia e sabemos que as entidades "filhas" são apenas variações da entidade "pai".
	- Exemplo: uma entidade **Pessoa** generaliza **Aluno** e **Professor**, que herdam todos os atributos e relacionamentos da entidade "pai".
2. **Union Type/Categorização:**
	- **Union Type** permite que uma categoria represente um conjunto de objetos que vêm de diferentes entidades "pais" e têm algo em comum, mas sem compartilhar uma **hierarquia de especialização**.
	- Escolha o **Union Type** quando precisar agrupar instâncias de entidades diferentes (mas sem relação hierárquica direta) em uma única "categoria" para tratá-las em conjunto.
	- Exemplo: **Cliente** como um **Union Type** que pode incluir **Pessoa Física** e **Pessoa Jurídica**. 
	- Elas não têm uma hierarquia, mas compartilham características relacionadas ao relacionamento com a empresa.


### Resumo:

- **Generalização/Especialização** é usada quando há uma hierarquia e queremos organizar entidades "filhas" especializadas de uma entidade "pai".
- **Union Type/Categorização** é a melhor opção quando precisamos agrupar entidades distintas (sem hierarquia) em uma categoria unificada, representando objetos de diferentes tipos que compartilham uma funcionalidade comum.


## 📁 Decisões de Design de Banco de Dados

- O design de um banco de dados envolve decisões estratégicas para representar os dados da maneira mais eficiente e organizada possível. 
- Aqui estão alguns guias de decisão:

### Guideline (Diretrizes)

1. **Subclasses/Superclasses: Acurácia vs Desordem:**
	- O uso de subclasses e superclasses aumenta a acurácia da modelagem de dados, mas também pode levar à complexidade ou "desordem" no diagrama. 
	- É importante equilibrar detalhamento e simplicidade.

2. **Merge de Subclasse em uma Superclasse:**
	- Se as subclasses têm poucos atributos específicos ou não possuem relacionamentos exclusivos, pode ser mais simples unir as subclasses em uma única superclasse. 
	- Isso reduz a complexidade do modelo.

3. **Union Types: Evitados por Padrão:**
	- Embora úteis em cenários específicos, os Union Types são evitados por padrão porque podem dificultar a consulta e o gerenciamento dos dados.

4. **Escolhas Guiadas pelo Mini-Mundo:**
	- O design deve refletir o "mini-mundo" que o banco de dados modela. 
	- O entendimento detalhado do domínio de negócio é essencial para tomar decisões coerentes.


## 📁 Representando por UML

- A **UML (Unified Modeling Language)** é uma ferramenta popular para modelagem de dados e sistemas. 
- No contexto de bancos de dados, foca-se principalmente no diagrama de classes, que destaca as estruturas e relações.

1. **Foco na Modelagem de Dados:**
	- Os diagramas de classe em UML mostram como os dados estão organizados, incluindo atributos, relacionamentos e heranças.

2. **Classes Concretas:**
	- Representam entidades reais no banco de dados, como **Cliente**, **Pedido**, ou **Produto**.

3. **Nomenclatura:**
	- **Classe Base:** É a superclasse ou entidade geral, como **Pessoa**.
	- **Classes Folha:** São as subclasses ou especializações, como **Aluno** ou **Professor**.


## 📁 Terminologias Alternativas

### Knowledge Representation (KR)

1. **Definição:**
	- Representação de conhecimento refere-se a uma forma de modelar informações de forma abrangente, incluindo regras, conhecimento espacial, temporal e mecanismos de inferência.

2. **Características:**
	- **Modelagem semântica:** Capta o significado dos dados e seus contextos.
	- **Abrangente:** Vai além da estrutura de dados, incluindo lógica e regras de negócio.
	- **Mistura instâncias e esquemas:** Representa tanto os dados (instâncias) quanto a estrutura (esquema).

3. **Similaridades com Modelagem de Dados:**
	- Ambas utilizam abstração para identificar componentes essenciais e provêm recursos para organizar informações de maneira estruturada.


### Ontologia

1. **Definição:**
	- Uma ontologia descreve formalmente um domínio, incluindo suas propriedades, conceitos e relações. 
	- Ela fornece um contexto detalhado para o banco de dados.

2. **Descrição:**
	- **Thesaurus:** Mapeia relacionamentos e conceitos.
	- **Taxonomia:** Define hierarquias e classificações de conceitos.
	- **Esquema Detalhado:** Descreve os conceitos e suas propriedades.
	- **Lógica Teórica:** Utiliza lógica matemática para formalizar conceitos e relações.

3. **Função no Banco de Dados:**
	- Alimenta o BD com informações contextuais sobre o domínio, permitindo consultas mais inteligentes e consistentes.


## 📁 Conceitos Abstratos

1. **Classificação e Instanciação:**
	- Atribui objetos ou entidades a tipos ou classes. 
	- Exemplo: o objeto "Maria" é uma instância da classe **Pessoa**.

2. **Identificação:**
	- Processo de atribuir um identificador único a cada entidade, como o **CPF** para **Pessoa**.

3. **Especialização e Generalização:**
	- Refinam dados em subclasses (especialização) ou agrupam características comuns em superclasses (generalização).

4. **Agregação e Associação:**
	- **Agregação:** Modela relações "parte de" entre entidades. Exemplo: **Carro** tem partes como **Motor** e **Rodas**.
	- **Associação:** Relaciona entidades sem hierarquia de composição. Exemplo: **Cliente** e **Pedido**.


## 📁 Generalização/Especialização vs Ontologia

### Generalização/Especialização:

- Focam na hierarquia e organização dos dados no banco.
- Útil para modelar dados com atributos e relacionamentos claramente definidos.


### Ontologia:

- Vai além da estrutura, incorporando regras, lógica e contexto.
- Ideal para sistemas que precisam de maior compreensão semântica, como sistemas de IA ou consultas complexas.


#### Conclusão:

- A escolha entre generalização/especialização ou ontologia depende da necessidade de simplicidade versus complexidade contextual no sistema.