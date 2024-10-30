# 💾 Sistemas de Gerenciamento de Banco de Dados

## 📁 O que é um SGBD?

- Um SGBD é um software que permite gerenciar bancos de dados de forma organizada e segura. 
- Imagine o SGBD como uma "biblioteca" onde os dados ficam guardados, organizados e seguros, e onde usuários diferentes podem acessar as informações que precisam.


### Principais Características do SGBD

- Essas características tornam o SGBD eficiente e confiável para empresas e organizações:
	- **Abstração e Auto-descrição:** Os dados são organizados de forma independente da aplicação que os usa. Assim, qualquer programa pode acessar os dados sem saber detalhes complexos de armazenamento.
	- **Isolamento e Compartilhamento:** O SGBD permite que vários usuários acessem e atualizem o banco de dados ao mesmo tempo sem interferirem uns nos outros.
	- **Transação Multiusuário:** Suporta operações simultâneas de vários usuários, garantindo que os dados sejam sempre consistentes e precisos.
	- **Controle de Concorrência:** Quando muitos usuários acessam o sistema ao mesmo tempo, o SGBD usa um mecanismo que organiza os acessos para que todos possam usá-lo sem causar conflitos.

<br>


## 📁 Aplicação além de DB:

### OLTP (Online Transaction Processing) - Ambiente Operacional

- O OLTP é um ambiente focado em processamento de transações em tempo real. 
- Ele gerencia e registra operações e atualizações frequentes, que ocorrem constantemente. 
- Esse tipo de sistema é essencial em setores como o financeiro, de vendas e atendimento ao cliente, onde transações precisam ser registradas e confirmadas imediatamente.
- Exemplo: 
	- Um sistema de ponto de venda (PDV) em um supermercado. 
	- Cada vez que um cliente passa um produto no caixa, uma transação é registrada no sistema OLTP. 
	- O objetivo aqui é garantir que todas as vendas sejam gravadas de forma rápida e segura.


#### Principais Características do OLTP:

- **Alta Concorrência:** Suporta vários usuários realizando operações ao mesmo tempo.
- **Velocidade e Eficiência:** Priorizado para realizar operações rápidas e simples, como inserções, atualizações e exclusões de registros.
- **Ambiente de Banco de Dados Relacional:** Frequentemente, o OLTP usa bancos de dados relacionais onde os dados estão organizados em tabelas.


### OLAP (Online Analytical Processing) - Ambiente Informativo

- O OLAP é um ambiente focado em análise de dados e suporte à decisão. 
- Ele organiza e armazena grandes volumes de dados históricos para análise, fornecendo informações que ajudam nas decisões estratégicas. 
- Ao contrário do OLTP, que se concentra em operações rápidas e transacionais, o OLAP processa consultas complexas que envolvem grandes volumes de dados.
- Exemplo: 
	- Uma empresa usa um sistema OLAP para analisar os dados de vendas de vários anos, buscando entender padrões de consumo e prever tendências futuras. 
	- Com essas informações, a empresa pode tomar decisões sobre estoque e campanhas de marketing.


#### Principais Características do OLAP:

- **Consulta de Dados em Lote:** Ideal para consultas complexas que não precisam de resposta em tempo real.
- **Data Warehouse (Armazém de Dados):** O OLAP geralmente se baseia em um Data Warehouse, que organiza os dados de maneira mais ampla e não apenas para operações diárias.
- **Multi-Dimensionalidade:** Os dados são organizados de forma a permitir análise por múltiplas dimensões, como tempo, região e produto.


### Como OLTP e OLAP Trabalham Juntos?

- Embora sejam diferentes, OLTP e OLAP geralmente trabalham em conjunto. 
- Um dos processos que liga esses ambientes é o ETL (Extract, Transform, Load).
- **ETL (Extract, Transform, Load):** O ETL é o processo que extrai dados do sistema OLTP, transforma-os conforme necessário (por exemplo, agregando ou limpando dados) e carrega-os no sistema OLAP.
	- **Extract (Extrair):** Dados são copiados do OLTP.
	- **Transform (Transformar):** Dados são modificados, agregados ou formatados conforme necessário para análise.
	- **Load (Carregar):** Dados transformados são carregados no OLAP (Data Warehouse).
	
	
### Funções e Benefícios dos Ambientes OLTP e OLAP

- OLTP (Ambiente de Banco de Dados):
	- Suporta operações do dia a dia da empresa.
	- A resposta é rápida para operações como vendas e atendimento.
	- Focado na precisão e consistência de transações em tempo real.

- OLAP (Data Warehouse):
	- Dá suporte a decisões estratégicas de longo prazo.
	- Armazena dados históricos e agrega valor por meio da análise, ajudando a entender tendências e padrões.
	- Permite que a empresa realize Data Mining (mineração de dados) e outras análises avançadas, explorando grandes volumes de dados para encontrar insights úteis.


### Resumo Prático do Processo

- **Ambiente OLTP (Banco de Dados Operacional):** Gerencia transações diárias e armazena dados brutos.
- **ETL Process:** Extrai os dados do OLTP, transforma-os e os carrega no OLAP.
- **Ambiente OLAP (Data Warehouse):** Armazena os dados transformados para análises, oferecendo uma base sólida para Data Mining, Análises e Tomada de Decisões.
- Em resumo:
	- O OLTP mantém as operações em movimento;
	- Enquanto o OLAP transforma dados em informações estratégicas. 
	- Juntos, eles ajudam as organizações a operar no presente e planejar para o futuro, com o OLTP gerando dados transacionais e o OLAP fornecendo análises aprofundadas.

<br>


## 📁 Atores em Banco de Dados

Pessoas que interagem com o banco de dados se dividem em diferentes tipos:

- **DBA (Administrador de Banco de Dados):** Gerencia a segurança, mantém o banco de dados e define quem pode acessar e o que pode fazer.

- **Designers de Banco de Dados:** Planejam a estrutura do banco de dados para atender às necessidades do sistema. Eles escolhem o que será armazenado e como as informações serão relacionadas.

- **Usuários Finais:**
	- **Casual:** Usa o banco de dados ocasionalmente para consultas rápidas.
	- **Ingênuos:** Executam operações pré-definidas, como funcionários de caixa que registram vendas.
	- **Sofisticados:** Conhecem o banco de dados e fazem consultas complexas, como analistas e engenheiros.
	- **Standalone:** Usam bancos de dados pessoais, geralmente para fins individuais.

<br>


## 📁 Atores Fora do Contexto de BD

 - Existem também os profissionais fora do contexto direto de banco de dados, que desempenham papéis importantes no suporte e na operação do SGBD (Sistema de Gerenciamento de Banco de Dados) para que ele funcione de forma eficiente. 
 - Esses profissionais ajudam a manter o ambiente adequado para o SGBD e facilitam o uso do banco de dados, mesmo que não trabalhem diretamente com os dados.


### Designer do Sistema de SGBD

- Esse profissional desenvolve o sistema que dá suporte ao SGBD, criando a "infraestrutura" que permite ao SGBD existir e operar. 
- Por exemplo:
	- Implementam módulos e interfaces do SGBD, como os componentes que vão armazenar e recuperar dados.
	- Criam o software de base que será usado por outros profissionais para construir bancos de dados.
	
	
### Pessoal de Operação e Manutenção

- Esses profissionais garantem que o ambiente de hardware (servidores e equipamentos) e o software necessário para o SGBD estejam sempre funcionando bem:
	- São responsáveis pelo monitoramento de servidores e recursos que suportam o SGBD.
	- Resolvem problemas técnicos, como falta de memória ou conexão, e fazem manutenção regular para evitar falhas.
	
	
### Desenvolvedores de Ferramentas

- Eles criam ferramentas opcionais que ajudam os usuários do SGBD a trabalhar de forma mais eficiente. 
- Essas ferramentas podem ter várias finalidades:
	- Melhorar a performance do banco de dados, otimizando as consultas.
	- Ajudar na modelagem de dados, criando gráficos e mapas visuais que mostram as relações entre as tabelas do banco de dados.
	- Análise e monitoramento de dados, identificando problemas ou oportunidades para ajustar o banco de dados.
	
	
### Em resumo:

- Esses profissionais são importantes porque, embora não mexam diretamente nos dados, ajudam a criar e manter o ambiente ideal para que o SGBD funcione bem. 
- Graças ao trabalho deles, o SGBD fica mais acessível, seguro e eficiente para os demais usuários.	
	
<br>


## 📁 Vantagens do SGBD

- **Controle de Redundância:** Evita dados duplicados e inconsistências.
- **Restrição de Acesso:** Define quem pode ver ou modificar os dados.
- **Backup e Recuperação:** Protege dados contra falhas, garantindo que eles possam ser recuperados em caso de problemas.
- **Facilidade Multiusuário:** Suporta acesso simultâneo de vários usuários sem problemas.


### Quando não Usar um SGBD?

Algumas situações não precisam de um SGBD, como:
- **Aplicações simples ou de tempo real rigoroso:** Se o custo e a complexidade do SGBD não se justificam.
- **Sistemas embarcados:** Equipamentos que realizam tarefas específicas podem não precisar de um SGBD robusto.