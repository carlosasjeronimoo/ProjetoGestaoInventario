# Projeto Gestão Inventário

## Índice
 - [Sobre o Projeto](#sobre-o-projeto)
 - [Modelagem do Banco de Dados](#modelagem-do-banco-de-dados)
 - [Modelo Entidade Relacionamento (MER)](#modelo-entidade-relacionamento-(mer))
 - [Mapeamento ER para Modelo Relacional](#mapeamento-er-para-modelo-relacional)
 - [Diagrama Lógico](#diagrama-lógico)
 - [Modelo Físico](#diagrama-físico)
 - [Implementação do CRUD com Python](#implementação-do-crud-com-python)
 - [Configuração do Ambiente](#configuração-do-ambiente)
 - [Conexão com o Banco de Dados](#conexão-com-o-banco-de-dados)
 - [Operação CRUD](#operação-crud)
 - [Realizando o teste com o CRUD](#realizando-o-teste-com-o-crud)
 - [Ferramentaas Utilizadas](#ferramentas-utilizadas)
 - [Considerações Finais](#considerações-finais)

## Sobre o Projeto

O projeto é desenvolver um sistema abrangente de banco de dados com funcionalidades CRUD, destinado a atender às necessidades específicas de uma loja de artesanato online. O sistema visa proporcionar uma gestão eficiente de inventário, abrangendo informações detalhadas sobre produtos, fornecedores, pedidos e clientes. Ao implementar as operações CRUD, o sistema permitirá a criação, leitura, atualização e exclusão de dados, garantindo uma experiência fluida e organizada no gerenciamento de informações cruciais para o funcionamento da loja. A integração dessas funcionalidades contribuirá para a eficácia na administração do inventário, melhorando a tomada de decisões e otimizando as operações da loja de artesanato online.

## Modelagem do Banco de Dados

A modelagem de banco de dados é o processo de representar a estrutura e a organização de um sistema de informações em formato visual, geralmente usando diagramas. Ela inclui a identificação de entidades, atributos e relacionamentos, fornecendo uma base para a criação eficiente de bancos de dados que atendam às necessidades específicas de uma aplicação. A modelagem do banco de dados é crucial para garantir a integridade, eficiência e escalabilidade dos sistemas de gerenciamento de dados.

### Modelo Entidade Relacionamento (MER)

O Modelo Entidade-Relacionamento (MER) é uma técnica de modelagem de dados que visa representar visualmente as relações entre diferentes entidades em um sistema ou domínio específico. Ele é frequentemente utilizado na fase de design de banco de dados durante o desenvolvimento de sistemas de informação. De início ao projeto adicionei as principais entidades com seus respectivos atributos e os relacionamentos, posteriormente como melhorias ao projeto estarei inserindo mais entendidades com novos atributos.

![MER](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/1.Gest%C3%A3o%20de%20Invent%C3%A1rio%20Modelo%20Entidade%20Relacionamento.jpg)

### Mapeamento ER para Modelo Relacional

O Modelo Relacional é um modelo de dados utilizado para organizar informações em um banco de dados de forma estruturada. Ele fornece uma estrutura lógica que facilita consultas complexas e suporta a integridade dos dados, contribuindo para a consistência e confiabilidade dos sistemas de gerenciamento de banco de dados relacionais. Com as entidades e atributos definidos, organizei em planilhas adicionando as chaves primáriass e secundárias além dos tipos de dados que serão utilizados ao elaborar no modelo físico que abordarei mais abaixo.

![ModeloRelacional](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/2.Modelo%20Relacional.jpg)

### Diagrama Lógico

O Diagrama Lógico é uma representação visual das estruturas de dados e das relações entre essas estruturas em um banco de dados. Ele oferece uma visão abstrata e mais detalhada do modelo de dados, que pode ser implementado em um Sistema de Gerenciamento de Banco de Dados (SGBD). De uma forma mais simplificada, primeiramente realizei a estruturação do modelo físico no programa do MySQL permitindo utilizar uma própria ferramenta para a elaboração do Modelo Lógico.

![ModeloLógico](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/3.Diagrama%20L%C3%B3gico.jpg) 

### Modelo Físico

O Modelo Físico é uma representação concreta e detalhada do banco de dados, mostrando como os dados são armazenados fisicamente em um Sistema de Gerenciamento de Banco de Dados (SGBD). Serve como base para a implementação prática do banco de dados e é utilizado pelos administradores de banco de dados e desenvolvedores para criar as tabelas, índices e outros objetos do banco de dados no SGBD escolhido. Com o levantamento de todos os dados, efetuei a estruturação do bando de dados no modelo físico, vale ressaltar que os dados utilizados são ficticios qualquer semelhança com a realidade será mera coincidência.

![CódigoPrévia](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/Pr%C3%A9viaC%C3%B3digo.JPG)

Para verificar o código completo:

- [CódigoSQL](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/4.GestaoInventario.sql)

## Implementação do CRUD com Python

A implementação do CRUD (Create, Read, Update, Delete) com Python refere-se à criação de operações básicas para manipular dados em um sistema. Utilizando bibliotecas como SQLAlchemy, Django ORM ou simples consultas SQL, o CRUD permite a criação de registros, leitura de dados existentes, atualização de informações e exclusão de registros. Essa funcionalidade é essencial em aplicações Python para interagir eficientemente com bancos de dados, proporcionando uma gestão completa e flexível das informações armazenadas.

### Configuração do Ambiente

Para implementar a operação CRUD, utilizei a integração do MySQL e o Pycharm. A príncipio verificamos se o MySQL Connector/Python estava instalado, como não havia a instalação, utlizei o seguinte comando no prompt de comando: pip install mysql-connector-python. Segui com a adição do suporte ao nosso banco de dados no Pycharm configurando e preechendo com as informações necessárias, como host, usuário, senha e o banco de dados. Após inserir as informações, testei a conexão para garantir que o PyCharm pode se conectar ao nosso banco de dados MySQL, com o sucesso do teste pude ver no painel o nosso banco de dados listado, conforme figura abaixo:

![Configuração do Ambiente](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/5.PyCharmMySQL.JPG)

### Conexão com o Banco de Dados

A fim de dar início ao desenvolvimento do código Python usando o Pycharm para realizar as operações CRUD. Utilizamos o módulo mysql.connector para interagir com o banco de dados. Desse modo, para o nosso projeto, o código ficou implementado da seguinte maneira:

![Conexão com o Banco de Dados](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/6.Conex%C3%A3o%20Banco%20de%20Dados.JPG)

### Operação CRUD

Desenvolvi com o auxilio do Professor, as funções no Python para inserir, consultar, atualizar e deletar registros na tabela Clientes. Abaixo segue a estrutura dos códigos para efetuar o CRUD. Futuramente estarei realizando para todas as tabelas desenvolvidas.

![PréviaCRUD](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/Pr%C3%A9viaCRUD.JPG)

Para verificar o código completo: 
- [CódigoCRUD](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/C%C3%B3digoCrud.py)

### Realizando o teste com o CRUD

Ao realizar meu primeiro teste na tabela clientes, efetuei as seguintes operações: 

- Cadastrei o cliente inserindo nome completo, data de nascimento e endereço;
- Listei todos os cliente, verificando o exito do meu cadastro com o ID 13;
- Alterei os dados do cliente cadastrado, informando seu ID primeiramente e em seguida alterando, respectivamente, nome completo, data de nascimento e endereço;
- Listei novamente todos os clientes e pude analisar que os dados foram alterados com sucesso;
- Por fim, informei o ID do cliente novamente e deletei seu cadastro.

A seguir todo scrit da execução do CRUD:

![CRUD1](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/CRUD_page-0001.jpg)
![CRUD2](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/CRUD_page-0002.jpg)
![CRUD3](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/CRUD_page-0003.jpg)
![CRUD4](https://github.com/carlosasjeronimoo/ProjetoGestaoInventario/blob/main/CRUD_page-0004.jpg)

### Ferramentaas Utilizadas

- [Draw.io](https://app.diagrams.net/)
- [MySQL](https://www.mysql.com/)
- [PyCharm](https://www.jetbrains.com/pt-br/pycharm/)

## Considerações Finais

Ao longo do desenvolvimento, conquistei uma compreensão mais profunda dos seguintes tópicos:

- Modelagem de Banco de Dados: Explorei as nuances da modelagem de banco de dados, desde a identificação de entidades e atributos até a criação de diagramas MER (Modelo Entidade Relacionamento), Modelo Relacional e Modelo Físico . Este processo foi crucial para estabelecer uma base sólida que refletisse com precisão a lógica de negócios do sistema.
- MySQL: Aprofundei meus conhecimentos em design de banco de dados, consultas SQL avançadas e otimização de desempenho. Isso incluiu a modelagem de dados eficiente, onde aprendi a traduzir requisitos complexos em esquemas de banco de dados bem estruturados, considerando aspectos como relacionamentos, chaves primárias e estrangeiras.
- PyCharm: Explorei as capacidades do PyCharm como uma ferramenta de desenvolvimento integrada (IDE) para Python. Aprofundei-me em depuração, controle de versão e outras funcionalidades, otimizando meu fluxo de trabalho de desenvolvimento.

Além de seu valor intrínseco, este projeto se estabeleceu como um ponto de partida sólido para empreendimentos futuros. Planejo realizar melhorias significativas, incluindo:

- Inclusão de Atributos Específicos: Incorporarei atributos mais específicos para enriquecer a representação dos dados, tornando o sistema mais abrangente e informativo.
- Normalizações: Implementarei técnicas de normalização para garantir a eficiência e a consistência do banco de dados, promovendo uma estrutura mais organizada e sem redundâncias.
- CRUD em Novas Tabelas: Expandirei a funcionalidade do sistema, introduzindo operações CRUD (Create, Read, Update, Delete) em novas tabelas, proporcionando uma gama mais ampla de operações aos usuários.

Este projeto marca apenas o início de uma jornada contínua no vasto mundo do desenvolvimento de software, gerenciamento de bancos de dados e modelagem eficiente. As lições aprendidas e as melhorias planejadas são testemunhas do compromisso constante com o aprimoramento técnico e a busca pela excelência no campo do desenvolvimento de software.












