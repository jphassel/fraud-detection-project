# Detecção de transações fraudulentas
## Projeto Final da disciplina Hands-On Enhegenharia de Dados em Big Data 
## Equipe
#### Alex Assis - 10444718
#### João Pedro - 10444884
#### Kayque Mendes - 10444510
#### Laís Caniato - 10444191
#### Leonardo Toschi - 10444888
## Proposta
Esse repositório foi criado com o intuito de armazenar os arquivos e a documentação de todo o projeto da disciplina, onde definimos um problema, selecionamos uma base de dados e provisionamos uma infraestrutura dedicada para coleta, transformação e carregamento desde os dados brutos até os dados já processados e tratados para fins analíticos.

Para que o projeto atinjisse as expectativas necessárias, realizamos uma série de etapas pré e pós-definidas na apresentação inicial, que foram: **Definição do Caso de Uso**; **Entregáveis do Projeto**; **Etapas do Projeto** e **Critério de Sucesso**.

---
## Definição do Caso de Uso
### 1. Para qual mercado e negócio proposto?
A solução proposta pela definição do nosso caso de uso será direcionada ao **mercado bancário**, e o negócio a ser oferecido será uma plataforma de monitoramento em tempo real para prevenção de fraudes bancárias.
### 2. Qual problema estamos enfrentando?
O problema que a solução busca tratar são ocorrências de transações fraudulentas, ou seja, que não condizem com o perfil de compra dos clientes.
### 3. Qual público-alvo?
O público-alvo de nossa solução são instituições bancárias.
### 4. Existe viabilidade técnica?
Sim, haverá viabilidade técnica. Nossa solução se baseia em uma infraestrutura construída utilizando serviços da Amazon Web Services (AWS), onde todos os dados registrados serão coletados, armazenados, transformados e processados para no fim chegarmos a um modelo de predição e prevenção de transações fraudulentas.
### 5. Descrição do Pitch
Levando em consideração o problema, mercado, negócio e público proposto, descrevemos o seguinte Pitch para nossa solução:

"Prejuízos financeiros não são os únicos problemas que as vítimas de fraudes financeiras enfrentam, pois os danos de imagem e moral e quebra de confiança com a instituição também entram em pauta. A falta de medidas de protação contra atividades fraudulentas ocasionam experiências negativas ao cliente, que insatisfeito, pode migrar a concorrência, realizar avaliações negativas, ou até mesmo mover ações judiciais a empresa por não cumprir com o dever de evitar essas atividades.

Para resolver esses problemas, desenvolvemos e oferecemos uma solução: **uma plataforma de monitoramento e prevenção em tempo real de fraudes bancárias**. Utilizando ferramentas do sistema de nuvem da AWS, coletamos dados históricos, processamos e tratamos, até chegar a etapa de análises de transações em tempo real, identificando e impedindo atividades suspeitas antes de gerar qualquer exposição ao cliente.

Nosso modelo de predição detecta padrões anormais, que fujam do perfil e padrão de compra de cada cliente, e previne efetivamente a transação, notificando ou bloqueando a atividade, protegendo os ativos do cliente e mantendo o dever e comprometimento da empresa.
De maneira resumida, nossa proposta é combater prejuízos e atividades fraudulentas, oferecendo proteção e aumentando a confiança entre instituição e cliente!"

---
## Entregáveis do Projeto
### 1. Arquitetura Lambda em Nuvem
Como parte dos entregáveis do projeto, e material fundamental para a elaboração da solução, definimos a seguinte arquitetura Lambda em nuvem:

![Arquitetura_HandsOn_BigData](https://github.com/user-attachments/assets/616714e1-c87c-48e9-8d66-afc52f821f04)

### 2. Modelagem Star Schema e Wide Table
Também englobando os entregáveis, definimos a Wide Table abaixo, que unifica apenas os campos mais relevantes em uma só tabela, chamada de "transactions".

![widetable](https://github.com/user-attachments/assets/49ecd4e2-3906-49a7-9708-9b426cf49c2e)

### ~~3. Integração de Processos (CI/CD)~~
### ~~4. Infraestrutura como Código (Terraform)~~
### 5. Versionamento e Documentação
O versionamento e documentação do projeto, onde são definidas todas as sprints e etapas de desenvolvimento, se encontram anexos nesse repositório (https://github.com/jphassel/fraud-detection-project).

## Etapas do Projeto:
### Sprint#1
#### - Definição do Problema
Tendo em vista os prejuízos financeiros e danos de imagem decorrentes de atividades fraudulentas, a detecção de fraude se tornou de suma importância.

A falta de medidas de proteção a fraude pode levar a experiências negativas  dos clientes. Um cliente insatisfeito pode migrar para a concorrência e ainda fazer propaganda negativa, prejudicando a reputação da mesma. Estudos revelam que um cliente insatisfeito comunica essa insatisfação para 9 pessoas em média (Stichler e Schumacher, 2003) 

Além disso, segundo o STF, os bancos têm o dever de evitar fraudes, identificando e impedindo transações que não condizem com o perfil do cliente e caso não cumpram as medidas de prevenção, podem enfrentar ordens judiciais,  que geralmente resultam em penalidades e multas. Um exemplo disso é o Bank of America que teve uma falha em um sistema de detecção de fraude e foi multado pelas agências reguladoras federais dos EUA  em US$ 225 milhões.

E por isso, a empresa deseja detectar transações financeiras fraudulentas em tempo real,  identificando e definindo comportamentos e padrões anômalos nas transações financeiras que indicam atividades fraudulentas (como roubo de identidade, transações não autorizadas, manipulação de dados, entre outros), visando garantir a segurança e satisfação de nossos clientes e evitando prejuízos financeiros. 
#### - Escolha da Base de Dados
Para definir a nossa base de dados a ser utilizada para o projeto, utilizamos a ferramenta Kaggle, que fornece inúmeras bases de dados de maneira pública, que podem ser instaladas para manipulação como o usuário desejar. Buscamos por uma base de dados relacionada a atividades fraudulentas em bancos (https://www.kaggle.com/code/miguelsevero/detec-o-de-transa-es-fraudulentas-ml) e a utilizamos para elaboração da solução.
#### - Desenho da Arquitetura
O desenho da arquitetura se encontra em anexo na seguinte seção de "**Entregáveis do Projeto**", mais especificamente, no tópico [1. Arquitetura Lambda em Nuvem](#arquitetura-lambda-em-nuvem). Na seção abaixo, iremos detalhar melhor sobre a nossa escolha de stack de ferramentas ideais para a solução.
#### - Escolha Stack de Ferramentas
Para desenvolver a arquitetura na nuvem AWS para detecção de fraudes em uma instituição financeira, são necessárias ferramentas capazes de processar grande  volume de dados, tanto históricos quanto em tempo real. Pensando nisso foram selecionadas as seguintes ferramentas: 

|Categoria|Serviços|Descrição|
|-----------|----------|-----------|
|Ingestão|Amazon Kinesis Data Streams|Ingestão de dados em tempo real das transações bancárias, configurado com auto scaling para escalabilidade (speed layer).|
||AWS Glue|Ingestão de dados históricos ou arquivos CSV (Batch Layer)|
||Amazon Kinesis Data Firehose|Ingestão e entrega de dados em tempo real para destinos como Amazon S3, Redshift, Elasticsearch e outros, com transformação opcional usando AWS Lambda.|
|Processamento|AWS Lambda|Processamento de lógica customizada de detecção de fraudes em tempo real (Speed Layer), configurado com auto scaling para escalabilidade.|
|Armazenamento|Amazon S3|Armazenamento central para dados históricos.|
|Modelagem e Machine Learning|Amazon SageMaker|Treinamento e implementação de modelos de machine learning baseados em dados históricos armazenados na Batch Layer.|
|Business Intelligence|Amazon QuickSight|Análise de dados em tempo real e criação de dashboards interativos para visualização e tomada de decisões.|

Resumindo as escolhas e alternativas:

Kinesis Data Streams foi escolhido em vez do MSK por sua integração mais simples e gerenciamento menos complexo. O Kinesis Data Streams facilita a ingestão de dados em tempo real, especialmente adequado para a captura de transações bancárias e eventos contínuos, permitindo uma solução escalável e eficiente no processamento de dados em tempo real.

AWS Glue foi escolhido para o processamento batch devido à sua simplicidade e flexibilidade para transformação de dados, em vez de soluções como EMR. Com o Glue, a ingestão de dados históricos e arquivos CSV pode ser feita de forma eficiente, sem a necessidade de uma configuração complexa.

AWS Lambda foi priorizado por ser serverless e facilmente escalável, em vez de Fargate, que requer mais configuração de infraestrutura. Lambda permite processar dados em tempo real de maneira altamente eficiente e sob demanda, especialmente para a lógica de detecção de fraudes em tempo real.

Amazon S3 foi escolhido como o armazém central de dados históricos, devido à sua alta escalabilidade, durabilidade e custo-benefício. O S3 é ideal para armazenar grandes volumes de dados, incluindo dados históricos de transações bancárias e logs, e integra-se facilmente com outras ferramentas da AWS, como Glue e QuickSight. Ele também oferece recursos de segurança e controle de acesso, garantindo que os dados armazenados estejam protegidos e acessíveis apenas por usuários autorizados.

Amazon Kinesis Data Firehose foi incluído para facilitar a ingestão e entrega de dados em tempo real para destinos como S3, Redshift e Elasticsearch. Ele pode transformar os dados utilizando AWS Lambda, antes de enviá-los para os destinos, permitindo uma ingestão contínua e uma integração mais simples com outras ferramentas de análise.

Amazon QuickSight foi selecionado para análise de dados e business intelligence. Ele permite criar dashboards interativos e realizar análises em tempo real de dados provenientes de diferentes fontes, como o Amazon S3 e Redshift, proporcionando insights rápidos para a detecção de fraudes e a tomada de decisões estratégicas.

Amazon SageMaker foi escolhido para o treinamento e implementação de modelos de machine learning, baseados em dados históricos armazenados na Batch Layer. O SageMaker permite construir, treinar e implementar modelos de forma eficiente e escalável, contribuindo para a melhoria da detecção de fraudes com o uso de dados históricos e análises avançadas.
### Sprint#2
- Criação de Kanban (Tarefas e Responsáveis)

Visando a organização no fluxo de trabalho utilizamos o Trello, que é uma ferramenta da metodologia Kanban que possibilita criar um quadro visual que proporciona uma visão clara do progresso do projeto.

O Trello permite definir tarefas e quebrá-las em etapas menores se for necessário, classificar de acordo com a prioridade, definir prazo de entrega e o membro da equipe responsável por cada tarefa.

O projeto foi dividido em 5 sprints, refletidos em listas no Trello, com cartões detalhando cada tarefa. Dividimos as Sprints em:

---
#### Sprint #1
Estruturar o problema a ser resolvido e a estratégia inicial 
- Tarefas:
1. Definição do Caso de Uso
   
    1.1 Definir mercado e negócio

    1.2 Identificar o problema
  
    1.3 Determinar público-alvo
  
    1.4 Avaliar viabilidade técnica
  
    1.5 Elaborar o pitch
  
2. Escolher a base de dados inicial
3. Desenhar a arquitetura
4. Selecionar stack de ferramentas

Data de conclusão: 02/12/2024
#### Sprint #2 
Criar o planejamento das tarefas e estruturar as bases de dados
- Tarefas:
1. Criar um Kanban para tarefas e responsabilidades.
2. Modelar camadas de dados

    2.1 Criar Star Schema para a análise
   
    2.2 Criar Wide Table para a análise
   
Data de conclusão: 04/12/2024
#### Sprint #3: 
Estabelecer o escopo mínimo do produto e organizar o ambiente de trabalho
- Tarefas:
1. Definir o MVP.
2. Elaborar um planner para as entregas do MVP.
3. Levantar os requisitos necessários.
4. Preparar o ambiente técnico.
Data de conclusão: 09/12/2024
#### Sprint #4:
Implementar a infraestrutura necessária e o pipeline de dados
- Tarefas:
1. Configuração e desenvolvimento
   
    1.1 Criar a Arquitetura Lambda em nuvem
   
    1.2 Definir e documentar a base RAW
   
    1.3 Prover recursos (especificar tamanho, processador, memória etc.)
   
    1.4 Ingerir dados brutos (RAW)
   
    1.5 Limpar e padronizar os dados (camada Silver)
   
    1.6 Disponibilizar dados para analytics (camada Gold)
   
3. Documentar todos os processos
Data de conclusão: 15/12/2024
#### Sprint #5:
Validar, revisar e Criar apresentação
- Tarefas:
1. Desenvolvimento do ppt
2. Revisão final 
Data de conclusão: 16/12/2024
---

- Modelagem das Camadas de Dados

Efetuamos a modelagem Wide Table aos invés da modelagem Star Schema, pois para nosso caso de uso em detecção de fraude em tempo real, a análise precisa ser realizada rapidamente, e o Wide Table nos oferece a simplicidade e agilidade necessária, por ser uma única tabela que fornece os dados das transações e comportamentos.

**Legenda Dos Dados**

**step** - mapeia uma unidade de tempo. Neste caso, 1 passo equivale a 1 hora

**type** - tipos de pagamento: CASH-IN (dinheiro), CASH-OUT (saque), DEBIT (débito), PAYMENT (pagamento) and TRANSFE (transferência)

**amount** - valor da transação

**nameOrig** - cliente que efetuou a transação

**oldbalanceOrg** - antigo saldo antes da transação

**newbalanceOrig** - novo saldo após a transação

**nameDest** - destinatário da transação

**oldbalanceDest** - destinatário do saldo inicial antes da transação. Observe que não há informações para que iniciam com M (Comerciantes)

**newbalanceDest** - novo destinatário do saldo após a transação. Observe que não há informações para clientes que iniciam com M (Comerciantes)

**isFraud** - número 1 é fraude e 0 não fraude

**isFlaggedFraud** - Controle do modelo que sinaliza possíveis fraudes, 0 não é fraude e 1 sinaliza possível fraude
### Sprint#3
- Definição MVP

O objetivo deste MVP é criar uma versão simplificada da arquitetura de dados na AWS para a detecção de fraudes, contendo apenas o essencial para testar a ideia, para isso iremos:
- Ingerir dados de transações financeiras e informações complementares (como por exemplo a cidades) em formato CSV
- Criar camadas de dados organizadas: Bronze, Silver e Gold
- Garantir a limpeza e integração dos dados nas camadas intermediárias (Silver) e transformar em formato parquet, para ter os dados armazenados em formato otimizado
- Ter os dados na camada Gold, unificados e preparados para treinar e alimentar um modelo inicial de detecção de fraudes.

- Planner MVP

|Etapa|Atividade|Duração|
|-----|---------|-------|
|1. Planejamento|Definir requisitos do projeto, arquitetura inicial e ferramentas a serem utilizadas.|1 dia|
|2. Configuração Inicial|Configurar o ambiente AWS||
|3. Ingestão de Dados|Implementar ingestão de dados para a camada Bronze, Carregando os dados brutos em CSV no S3.|1 dia|
|4. Processamento de Dados|- Limpeza dos dado e conversão dos arquivos para formato parquet, para inserir na camada Silver.<br>- Transformação e unificação para a camada Gold.|1 dia|
|6. Detecção de Fraudes|- Criar modelo básico de detecção de fraudes com scikit-learn.<br>- Treinar modelo com dados da camada Gold.|1 dia|
|8. Testes e Validações|Realizar testes de ponta a ponta para ingestão, processamento, detecção e visualização.|1 dia|
|9. Documentação e Entrega|Documentar a arquitetura, fluxos de dados e instruções para manutenção.|1 dia|

Duração total estimada: 6 dias úteis

- Levantamento Requisitos
- Preparação ambiente
- 
### Script 4, 5, 6 - Parte prática:
- Análise e Design 
- Configuração 
- Desenvolvimento 
- Análise e Design 
- Configuração 
- Desenvolvimento 
- Teste e Validação

### Apresentação Final

## Critério de Sucesso:
### 1. Proposição para Mercado Prático
Levando em consideração que os problemas relacionados a fraudes financeiras são problemas reais, tanto para os clientes quanto para as instituições, soluções pensadas para identificar e prevenir golpes são extremamente necessárias e facilmente aplicáveis ao Mercado Prático.

Contudo, é um problema complicado de ser resolvido, pois uma transação fora do padrão do cliente pode sim ser uma transação genuína, bem como uma transação que se encaixa no perfil do cliente pode se tratar de uma transação fraudulenta. Com isso, é necessário dedicar mais ferramentas, mais tempo e mais recursos para tratar uma base com maior volumetria e qualidade de dados, para que modelos melhores possam ser implementados de maneira prática.
### 2. Detalhamento Técnico Arquitetura
Partindo para o detalhamento técnico de nossa arquitetura, partimos do princípio de utilizarmos apenas ferramentas próprias da AWS, uma vez que todas se integram com bastante facilidade, diminuindo também o número de dependências externas, facilitando o gerenciamento das ferramentas, acarretando em redução de custos e facilitando a busca por suporte, se necessário.

Faremos uma simulação da cotação do uso dos serviços da AWS para alimentar essa infraestrutura.

![calculadora](https://github.com/user-attachments/assets/3e36df30-18f2-4329-a919-790a43d27141)


### 3. Demonstração Funcional MVP
Para a demonstração funcional do nosso MVP, iremos demonstrar com prints evidências da nossa solução de ingestão de dados, desde a camada bronze até a camada gold.

Criação dos 3 buckets principais: bronze, silver e gold.

![3buckets](https://github.com/user-attachments/assets/c523c2ed-6c05-40f6-a2c7-ba6752a790aa)

Ingestão da base de dados na camada bronze.

![bronze](https://github.com/user-attachments/assets/bc20b188-3365-4712-a003-0d97ba3b8cdd)

Conversão para formato parquet na camada silver.

![silver](https://github.com/user-attachments/assets/2d3150f0-f4d6-4617-a293-0d8032dc152e)

Junção de bases em formato parquet na camada gold.

![gold](https://github.com/user-attachments/assets/8ded6e69-467d-4d72-889e-7685bf92b2c0)

Para a conversão dos arquivos csv em parquet, foi utilizado o seguinte script abaixo.

```python
import pandas as pd

# Ler e ajustar o arquivo cidades_moradores
cidades_moradores = pd.read_csv("cidades_moradores.csv", delimiter=";")
cidades_moradores.columns = ["Estado", "Total"]  # Renomear colunas, se necessário

# Ler e ajustar o arquivo dados_tratados
dados_tratados = pd.read_csv("dados_tratados.csv", low_memory=False)
dados_tratados = dados_tratados.loc[:, ~dados_tratados.columns.str.contains('^Unnamed')]  # Remover colunas 'Unnamed'

# Padronizar nomes das colunas
cidades_moradores.columns = cidades_moradores.columns.str.strip()
dados_tratados.columns = dados_tratados.columns.str.strip()

# Unir os DataFrames pela coluna Estado
df_unido = pd.merge(cidades_moradores, dados_tratados, on="Estado")

# Salvar como Parquet
df_unido.to_parquet("dados_unidos.parquet", engine="pyarrow", index=False)

print("Arquivo Parquet criado com sucesso!")
```
### 4. Documentação Entregue, GitHub
A documentação de todo o projeto se encontra neste repositório (https://github.com/jphassel/fraud-detection-project).
### 5. Utilização de Ferramentas de Big Data
Durante toda a elaboração do projeto, desde o desenho da arquitetura até a implementação final da solução, foram definidas e utilizadas diversas ferramentas de Big Data, com capacidade para lidar e manipular um grande volume de dados. Como, por exemplo:
- Amazon Simple Storage Service (S3), para armazenar dados;
- Kinesis para ingestão de dados em streaming;
- Glue para preparar os dados utilizando ETL;
- Athena para consulta e limpeza de dados;
- SageMaker para análise e treinamento de dados;
- QuickSight para visualização desses dados.
