# TRABALHO DE PI:  Plantoterapia
Trabalho desenvolvido durante a disciplina de Banco de Dados do Integrado.

# Sumário

### 1. COMPONENTES<br>  
Integrantes do grupo<br>    
Amanda de Góes Pires: amandagoespires@gmail.com  <br>
Jessica Nogueira Duque: JessieND3@gmail.com  <br> 
Sophia Caetano Marques Souza:  caetanomarquessouza@gmail.com  <br>

### 2. MINIMUNDO<br>
No Ifes Campus Serra, existe uma horta que é administrada e cuidada pela professora de Química da escola, com a ajuda de seus alunos. Eles plantam e colhem espécies que usam principalmente para chás, mas podem usar para outras comidas, e também as usam para estudar sobre suas propriedades químicas.
O sistema web servirá para registrar sobre as plantas, algo feito apenas por quem tem uma conta, e também possibilitará a visualização destas informações por qualquer um na internet. Se o indivíduo for alguém que ajuda na plantação, ele poderá fazer uma conta utilizando seu nome, matrícula e senha, para depois utilizar a matrícula e senha toda vez que for fazer o login.
Uma vez logado, para criar um novo projeto, que é um conjunto de informações sobre  alguma planta, ele precisará escolher o tipo de projeto, em que terão as opções de modo de plantio, estrutura química, receitas e plantas, e ao escolher qualquer uma delas será necessário dar um nome ao projeto. Cada projeto tem um espaço para comentários associado com a matrícula, o identificador do projeto em questão, a data, o identificador deste fórum e o espaço para os comentários. Para o modo de plantio será pedido também os materiais necessários e o passo a passo. Para a estrutura química será pedido uma imagem. Para uma receita, será pedido os ingredientes e o modo de preparo. Para uma planta serão pedido as imagens e informações extras.
Quando existem um ou mais projetos já criados, é possível alterar estes. Dentre as opções de alteração estão: deletar, editar e renomear. Depois de sempre salvar o que é que esteja fazendo, seja criando um projeto ou alterando algo, estarão salvos e colocados na página inicial do site do sistema para pessoas de fora terem acesso aos registros.

### 3.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

IMAGEM DO PROTÓTIPO

#### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>
  
* Relatório que informe quais são as contas já criadas no sistema web, incluindo nome, matrícula e senha.
* Relatório de projetos já criados quem incluem o nome, o tipo de projeto, e as informações dele mesmo.
* Relatório sobre o fórum que informe os comentários feitos, sobre qual projeto ele se refere, a identidade de quem comentou e a data.

### 4 TABELA DE DADOS DO SISTEMA:<br>

 ### 5.PMC<br>

IMAGEM DO PMC
 
### 6.MODELO CONCEITUAL<br>
 
IAMGEM MODELO CONCEITUAL
    
#### 6.1 Descrição dos dados <br>


   
### 7	MODELO LÓGICO <br>

IMAGEM MODELO LÓGICO

### 8	MODELO FÍSICO<br>
drop database if exists Plantoterapia;

CREATE DATABASE "Plantoterapia"


CREATE TABLE Conta (
    matricula varchar(20) PRIMARY KEY,
    nome varchar(40),
    senha varchar(30)
);

CREATE TABLE Projeto (
    id_proj varchar(30) PRIMARY KEY,
    nome_proj varchar(60),
    matricula varchar(20),
    id_tpproj varchar(30)
);

CREATE TABLE Forum (
    id_coment varchar(20),
    comentario varchar(5000),
    Data date,
    id_proj varchar(30),
    matricula varchar(20),
    PRIMARY KEY (id_coment, id_proj)
);

CREATE TABLE TipoProjeto (
    id_tpproj varchar(30) PRIMARY KEY,
    nome_tp varchar(30)
);

CREATE TABLE EstruturaQuimica (
    id_estrutura varchar(30) PRIMARY KEY,
    imagem_est varchar(80),
    id_tpproj varchar(30)
);

CREATE TABLE Planta (
    id_planta varchar(30) PRIMARY KEY,
    imagem_plan varchar(30),
    inform_extras varchar(3000),
    id_tpproj varchar(30)
);

CREATE TABLE MododePlantio (
    id_modo varchar(30) PRIMARY KEY,
    materiais_nec varchar(300),
    passo_a_passo varchar(1000),
    id_tpproj varchar(30)
);

CREATE TABLE Receita (
    id_receita varchar(30) PRIMARY KEY,
    ingredientes varchar(500),
    modo_preparo varchar(1000),
    id_tpproj varchar(30)
);
 
ALTER TABLE Projeto ADD CONSTRAINT matricula
    FOREIGN KEY (matricula)
    REFERENCES Conta (matricula);
 
ALTER TABLE Projeto ADD CONSTRAINT id_tpproj
    FOREIGN KEY (id_tpproj)
    REFERENCES TipoProjeto (id_tpproj);
 
ALTER TABLE Forum ADD CONSTRAINT id_proj
    FOREIGN KEY (id_proj)
    REFERENCES Projeto (id_proj);
 
ALTER TABLE Forum ADD CONSTRAINT matricula
    FOREIGN KEY (matricula)
    REFERENCES Conta (matricula);
 
ALTER TABLE EstruturaQuimica ADD CONSTRAINT id_tpproj
    FOREIGN KEY (id_tpproj)
    REFERENCES TipoProjeto (id_tpproj);
 
ALTER TABLE Planta ADD CONSTRAINT id_tpproj
    FOREIGN KEY (id_tpproj)
    REFERENCES TipoProjeto (id_tpproj);
 
ALTER TABLE MododePlantio ADD CONSTRAINT id_tpproj
    FOREIGN KEY (id_tpproj)
    REFERENCES TipoProjeto (id_tpproj);
 
ALTER TABLE Receita ADD CONSTRAINT id_tpproj
    FOREIGN KEY (id_tpproj)
    REFERENCES TipoProjeto (id_tpproj);

insert into Conta(matricula,nome,senha) values ('2019tiimi0038','Aline Santos ','gatinha123');
insert into Conta(matricula,nome,senha) values ('2019tiimi0089','Gabriel Souza','soufeliz345');
insert into Conta(matricula,nome,senha) values ('2019tiimi0035','Tales do Amaral','deusdainfo777');
insert into Conta(matricula,nome,senha) values ('2019tiimi0090','Amanda Góes','gatinha1410');
insert into Conta(matricula,nome,senha) values ('2019tiimi1410','Davi Santos','venceremos13');

insert into Projeto(id_proj,nome_proj,matricula,id_tpproj) values
(‘PROJETO1234’,’Chá de boldo’,’2019tiimi0038’,’TPPROJ1’),
(‘PROJETO1235’,’Hortênsia’,’2019tiimi0089’,’TPPROJ2’),
(‘PROJETO1240’,’Boldo’,’2019tiimi0035’,’TPPROJ3’),
(‘PROJETO1250’,’Estrutura Quimica da Camomila’,’2019tiimi1410’,’TPPROJ4’),
(‘PROJETO1242’,’Chá de Camomila’,’2019tiimi0038’,’TPPROJ1’),
(‘PROJETO1230’,’Chá de Manjericão’,’2019tiimi0089’,’TPPROJ1’),
(‘PROJETO1231’,’Chá de Hortelã’,’2019tiimi0038’,’TPPROJ1’),
(‘PROJETO1232’,’Girassol’,’2019tiimi0089’,’TPPROJ2’),
(‘PROJETO1233’,’Acerola’,’2019tiimi0038’,’TPPROJ2’),
(‘PROJETO1236’,’Pimenta do Reino’,’2019tiimi0089’,’TPPROJ2’),
(‘PROJETO1237’,’Manjericão’,’2019tiimi0035’,’TPPROJ3’),
(‘PROJETO1238’,’Hortelã’,’2019tiimi0090’,’TPPROJ3’),
(‘PROJETO1239’,’Cravo’,’2019tiimi0035’,’TPPROJ3’),
(‘PROJETO1241’,’Estrutura Quimica do manjericão’,’2019tiimi0090’,’TPPROJ4’),
(‘PROJETO1245’,’Estrutura Quimica da hortelã’,’2019tiimi0035’,’TPPROJ4’),
(‘PROJETO1251’,’Estrutura Quimica do cravo’,’2019tiimi0090’,’TPPROJ4’);


insert into TipoProjeto(id_tpproj,nome_tp) values ('TPPROJ1','Receita'),('TPPROJ2','Modo de Plantio'),('TPPROJ3','Planta'),
('PPROJ4','Estrutura Química');


insert into Receita(id_receita,ingredientes,modo_preparo,id_tpproj) values ('R1233','1 colher de chá de boldo
150ml de água','Misturar 1 colher de chá
 de folhas de boldo secas
 em entre 150 ml e 200 ml 
de água fervente. Desligar
 o fogo e deixar descansar
 por 10 minutos. Coar e beber','TPPROJ1'),
('R1230','Misturar 1 colher de chá
 de folhas de boldo secas
 em entre 150 ml e 200 ml 
de água fervente. Desligar
 o fogo e deixar descansar
 por 10 minutos. Coar e beber','Ferver a água, após fervida, 
despejar na camomila.
 Depois, deixar em infusão
 por 7 minutos e em seguida coar','TPPROJ1'),
('R1231','10 folhas de manjericão,1 xícara de água','Adicionar 10 folhas de manjericão em 1 xícara de água fervente. Deixar repousar por 5 minutos, esperar amornar, coar e beber a seguir','TPPROJ1'),
('R1232','2 a 3 colheres de folhas frescas de manjericão e 
150ml de água fervente','Numa xícara adicionar a hortelã e a água fervente. Tapar e deixar
 repousar durante 10 minutos.
 Este chá deve ser bebido 3 a 4 
vezes por dia, e de preferência
 após ou entre as refeições','TPPROJ1');

insert into Forum(id_coment,comentario,data,id_proj,matricula) values ('COMENT12341','Boa tarde, sabe onde 
posso encontrar boldo para vender ou como plantar?','2022/07/21','PROJETO1234','2019tiimi0089'),
('COMENT12342','Olá, em breve postarei aqui
 o modo de plantio do boldo','2022/07/22','PROJETO1234','2019tiimi0038'),
('COMENT12401','Boa tarde! Gostaria de
saber como vc planta o boldo é uma planta fácil de plantar?','2022/09/23','PROJETO1240','2019tiimi1410'),
('COMENT12401','Olá, interessante a estrutura química, sabe me dizer quais as funções
orgânicas dela?','2022/07/29','PROJETO1250','2019tiimi0035');


insert into MododePlantio(id_modo,materiais_nec,passo_a_passo,id_tpproj) values ('M1233','vaso de plantas,
terra,pá,planta','Reserve um vaso e coloque
a terra. Em seguida coloque
a planta com a ajuda de uma pá','TPPROJ2'),
('M1230','Semente de girassol,
terra fertilizada e uma pá','Escolha o tipo de girassol,repare o solo;faça uma cova de 5 cm;
coloque as sementes e cubra com a terra aerada e fertilizada','TPPROJ2'),
('M1231','Terra, adubo, muda
 de acerola, vaso, água e pá','Prepare a terra com o adubo de sua preferência;coloque a muda no vaso (espaçamento 5x5);pegue ao menos 2x na semana;mantenha em local ensolarado','TPPROJ2'),
('M1232','Semente de Pimento do Reino,
terra, adubo, água, pá,vaso e regador','Coloque as sementes da pimenta de molho na água morna 24 horas antes do cultivo;
Encha o vaso com terra e coloque as sementes em 1cm de profundidade. Coloque-as separadas por espaços de 8cm;
Regue após o plantio e deixe por 30 dias num ambiente úmido e quente, antes de posicionar ao ar livre;
Mantenha o solo úmido, mas sem encharcar;','TPPROJ2');
 

insert into Planta(id_planta,imagem_plan,inform_extras,id_tpproj) values ('P1233','Imagem do boldo','Pode ser utilizado como 
remédio caseiro para o fígado.Possui propriedades diuréticas,anti-inflamatória e antioxidante','TPPROJ3'),
('P1230','Imagem da camomila','Ajudar no tratamento de tosse, catarro;
Feridas;
Problemas de estômago;
Falta de apetite;
Gases;
Aftas;','TPPROJ3'),
('P1231','Imagem da ortelã','Melhora a digestão
Alivia a síndrome do intestino irritado
Ajuda a aliviar sintomas da asma 
e outros problemas respiratórios','TPPROJ3'),
('P1232','Imagem do cravo','Relaxante muscular;melhora a saúde óssea.
Ajuda no controle da diarreia e facilita a digestão','TPPROJ3');

insert into EstruturaQuimica(id_estrutura,imagem_est,id_tpproj) values ('E1233','Imagem da estrutura 
química da camomila','TPPROJ4'),
('E1230','Imagem da estrutura 
química do manjericão','TPPROJ4'),
('E1231','Imagem da estrutura 
química da ortelã','TPPROJ4'),
('E1232','Imagem da estrutura 
química do cravo','TPPROJ4');

IMAGEM MODELO FÍSICO
        
       
### 9	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

IMAGEM INSERT

### AINDA NÃO FEITOS
### 10	TABELAS E PRINCIPAIS CONSULTAS<br>

#### 10.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 10.2 PRINCIPAIS CONSULTAS DO SISTEMA <br>
 
 ### 11 Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>
 
 #### 11.1	Integração com Linguagem de programação; <br>
 
 #### 11.2	Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais solicitações feitas pelo professor.
 
 ### 12 Slides e Apresentação em vídeo. <br>
 
 #### 12.1 Slides; <br>
 
 #### 12.2 Apresentação em vídeo <br>
