# Detecção de transações fraudulentas
## Projeto Final da disciplina Hands-On Enhegenharia de Dados em Big Data 
## Equipe
#### Alex Assis
#### João Pedro
#### Kayque Mendes
#### Laís Caniato
#### Leonardo Toschi
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

Prejuízos financeiros não são os únicos problemas que as vítimas de fraudes financeiras enfrentam, pois os danos de imagem e moral e quebra de confiança com a instituição também entram em pauta. A falta de medidas de protação contra atividades fraudulentas ocasionam experiências negativas ao cliente, que insatisfeito, pode migrar a concorrência, realizar avaliações negativas, ou até mesmo mover ações judiciais a empresa por não cumprir com o dever de evitar essas atividades.

Para resolver esses problemas, desenvolvemos e oferecemos uma solução: **uma plataforma de monitoramento e prevenção em tempo real de fraudes bancárias**. Utilizando ferramentas do sistema de nuvem da AWS, coletamos dados históricos, processamos e tratamos, até chegar a etapa de análises de transações em tempo real, identificando e impedindo atividades suspeitas antes de gerar qualquer exposição ao cliente.

Nosso modelo de predição detecta padrões anormais, que fujam do perfil e padrão de compra de cada cliente, e previne efetivamente a transação, notificando ou bloqueando a atividade, protegendo os ativos do cliente e mantendo o dever e comprometimento da empresa.
De maneira resumida, nossa proposta é combater prejuízos e atividades fraudulentas, oferecendo proteção e aumentando a confiança entre instituição e cliente!

---
## Entregáveis do Projeto
### 1. Arquitetura Lambda em Nuvem
Como parte dos entregáveis do projeto, e material fundamental para a elaboração da solução, definimos a seguinte arquitetura Lambda em nuvem:

![Arquitetura_HandsOn_BigData](https://github.com/user-attachments/assets/616714e1-c87c-48e9-8d66-afc52f821f04)

### 2. Modelagem Star Schema e Wide Table
Também englobando os entregáveis, definimos a Wide Table abaixo, que unifica apenas os campos mais relevantes em uma só tabela, chamada de "transactions".

![WideTable](https://github.com/user-attachments/assets/e91165fd-950b-4064-9c83-d63a9d36b522)

### ~~3. Integração de Processos (CI/CD)~~
### ~~4. Infraestrutura como Código (Terraform)~~
### 5. Versionamento e Documentação

## Critério de Sucesso:
### 1. Proposição para Mercado Prático
Levando em consideração que os problemas relacionados a fraudes financeiras são problemas reais, tanto para os clientes quanto para as instituições, soluções pensadas para identificar e prevenir golpes são extremamente necessárias e facilmente aplicáveis ao Mercado Prático.

Contudo, é um problema complicado de ser resolvido, pois uma transação fora do padrão do cliente pode sim ser uma transação genuína, bem como uma transação que se encaixa no perfil do cliente pode se tratar de uma transação fraudulenta. Com isso, é necessário dedicar mais ferramentas, mais tempo e mais recursos para tratar uma base com maior volumetria e qualidade de dados, para que modelos melhores possam ser implementados de maneira prática.
### 2. Detalhamento Técnico Arquitetura
Partindo para o detalhamento técnico de nossa arquitetura, partimos do princípio de utilizarmos apenas ferramentas próprias da AWS, uma vez que todas se integram com bastante facilidade, diminuindo também o número de dependências externas, facilitando o gerenciamento das ferramentas, acarretando em redução de custos e facilitando a busca por suporte, se necessário.

Faremos uma comparação entre as ferramentas que utilizamos e suas equivalentes em outros serviços de cloud, especificamente, o Google Cloud Platform (GCP), e o Microsoft Azure.


Para a escol
### 3. Demonstração Funcional MVP
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
