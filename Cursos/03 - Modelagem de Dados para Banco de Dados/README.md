# 💾 Modelagem de Dados para Banco de Dados

## 📁 Por que modelar?

- Compreensão do sistema: Modelar ajuda a entender como um sistema funciona e como os dados são organizados. 
- Por exemplo, ao modelar um sistema de biblioteca, criamos um diagrama que mostra como os livros, autores, e clientes se relacionam. 
- Assim, entendemos o que o sistema precisa para funcionar e como os dados estão conectados.


### Modelagem

- **Representação:** Na modelagem, fazemos uma "representação" simplificada de algo complexo, como um mapa para um lugar, mas no caso, é um "mapa" dos dados de um sistema.
- **Modelo:** É o desenho ou estrutura criada para representar o sistema.
- **Referência:** O modelo é uma "referência" que usamos para guiar a construção do banco de dados, servindo como um plano.


### Tipos de Modelagem
- **Software:** Modelagem para sistemas de software, para organizar como os programas funcionam.
- **Dados:** Focada em estruturar como os dados serão armazenados no banco.
- **Computacional:** Representa dados que serão manipulados por computadores.
- **Conceitual:** Modelo que representa ideias e o conceito geral do sistema. É mais abstrato e de fácil entendimento.
- **Processo de Negócios:** Representa o que o negócio faz e como faz, útil para modelar processos empresariais.
- **Matemática:** Envolve fórmulas e cálculos para simular partes do sistema.


### Modelagem - Definição:

- Modelagem é o processo de criar uma representação (ou modelo) dos elementos e das relações de um sistema. 
- Imagina uma escola: o modelo descreve alunos, professores, salas de aula, e as relações entre eles, como "aluno estuda em sala de aula".


### Tipos de Modelos
- **Modelo conceitual:** Um diagrama geral e abstrato das entidades e suas relações. Exemplo: Diagrama de Entidade-Relacionamento (ER) para mostrar o que é "cliente", "pedido", e como eles se conectam.
- **Modelo físico:** Representa como os dados serão armazenados fisicamente no banco de dados, incluindo detalhes específicos como tabelas, colunas e tipos de dados.


### Modelagem SGBD (Sistema de Gerenciamento de Banco de Dados)

- **Mini-mundo:** Representa o contexto específico do sistema. Exemplo: em um sistema bancário, o mini-mundo inclui contas, transações e clientes.
- **Alto nível:** É o momento de entender os requisitos (necessidades) do sistema, como: "Preciso guardar informações de clientes e transações."
- **Esquema:** É a estrutura do banco, como as tabelas e as colunas que ele terá.
- **SGBD:** Onde o banco de dados será criado e gerido, como MySQL ou PostgreSQL.


###  Modelagem de alto nível

- **Entidade-Relacionamento (ER):** Um diagrama que mostra entidades (objetos, como clientes, produtos) e seus relacionamentos. Exemplo: Em um ER para um restaurante, as entidades poderiam ser "Clientes" e "Pedidos", onde um cliente pode fazer vários pedidos.
- **UML (Unified Modeling Language):** Usada para modelar mais do que apenas dados. Serve para mostrar processos e fluxos, como um pedido indo de "novo" a "preparado".


### Explorando a modelagem

- **Instâncias:** Exemplos reais de dados. Exemplo: Um cliente específico com nome "Maria" é uma instância da entidade "Cliente".
- **Multiplicidade:** Define quantos objetos podem se relacionar entre si. Exemplo: "Um cliente pode ter vários pedidos" representa uma multiplicidade de 1 para N.
- **Chaves e Constraints (Restrições):** Regras de unicidade e validade. Exemplo: "CPF" como chave única para cada cliente, para não haver dois clientes com o mesmo CPF.
- **Integridade de dados:** Garante que os dados sejam consistentes e corretos. Exemplo: Garantir que um pedido sempre tenha um cliente associado.