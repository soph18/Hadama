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

![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/3f6c0462f643996136c8b5bca81f4fc9accdff07/Conhe%C3%A7a%20o%20Projeto.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Entrar%26Registrar.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Escolha%20Projeto.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Estrutura%20Qu%C3%ADmica.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Home%20Edi%C3%A7%C3%A3o.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Home%20Principal.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Home%20Visualiza%C3%A7%C3%A3o.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Imagens%20e%20Infos.%20Extras.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Modo%20de%20Plantio.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Receitas.png)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/soph18-patch-1/Sobre%20N%C3%B3s.png)


#### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>
  
* Relatório que informe quais são as contas já criadas no sistema web, incluindo nome, matrícula e senha.
* Relatório de projetos já criados quem incluem o nome, o tipo de projeto, e as informações dele mesmo.

### 4 TABELA DE DADOS DO SISTEMA:<br>

![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.31.53%20PM.jpeg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.32.28%20PM.jpeg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.33.59%20PM.jpeg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.34.42%20PM.jpeg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.35.42%20PM.jpeg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.36.24%20PM.jpeg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.36.42%20PM.jpeg)

 ### 5.PMC<br>

![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.39.06%20PM.jpeg)
 
### 6.MODELO CONCEITUAL<br>
 
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.40.57%20PM.jpeg)
    
#### 6.1 Descrição dos dados <br>

CONTA: Tabela que armazena as informações relativas ao usuário com conta.<br>
matrícula: campo que armazena o número da matrícula de um discente do Ifes.<br>
nome: campo que armazena o nome completo de um discente do Ifes.<br>
senha: campo que armazena uma senha criada por um discente do Ifes.<br>
<br>
PROJETO: Tabela que armazena as informações relativas aos projetos já criados por usuários com conta.<br>
id_proj: campo que armazena um número de identificação de um projeto.<br>
id_tpproj: campo que armazena o número de identificação do tipo de projeto.<br> 
nome_proj: campo que armazena um nome dado a um projeto.<br>
<br>
TIPO PROJETO: Tabela que armazena os tipos de projeto existentes.<br>
id_tpproj: campo que armazena um número de identificação de um certo tipo de projeto.<br>
nome_tp: campo que armazena o nome de um certo tipo de projeto.<br>
<br>
RECEITA: Tabela que armazena as informações relativas aos projetos do tipo receita.<br>
id_receita: campo que armazena um número de identificação para um receita.<br>
id_tpproj: campo que armazena o número de identificação do tipo de projeto referente a receitas.<br>
ingredientes: campo que armazena os ingredientes utilizados na receita.<br>
modo_preparo: campo que armazena os passos do modo de preparo da receita.<br>
<br>
MODO DE PLANTIO: Tabela que armazena as informações relativas aos projetos do tipo modo de plantio.<br>
id_modo: campo que armazena um número de identificação para um modo de plantio.<br>
id_tpproj: campo que armazena o número de identificação do tipo de projeto referente ao modo de plantio.<br>
materiais_nec: campo que armazena os materiais necessários no modo de plantio.<br>
passo_passo: campo que armazena os passos do modo de plantio.<br>
<br>
PLANTA: Tabela que armazena as informações relativas aos projetos do tipo planta.<br>
id_planta: campo que armazena um número de identificação para uma planta.<br>
id_tpproj: campo que armazena o número de identificação do tipo de projeto referente às plantas.<br>
imagem_plan: campo que armazena uma imagem da planta.<br>
inform_extras: campo que armazena informações extras sobre a planta.<br>
<br>
ESTRUTURA QUÍMICA: Tabela que armazena as informações relativas aos projetos do tipo estrutura química.<br>
id_estrutura: campo que armazena um número de identificação para uma estrutura química.<br>
id_tpproj: campo que armazena o número de identificação do tipo de projeto referente às estruturas químicas.<br>
imagem_est: campo que armazena uma imagem da estrutura química.<br>

   
### 7	MODELO LÓGICO <br>

![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/WhatsApp%20Image%202021-07-27%20at%203.41.57%20PM.jpeg)

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



CREATE TABLE TipoProjeto (
    id_tpproj varchar(30) PRIMARY KEY,
    nome_tp varchar(30)
);


 
 CREATE TABLE TipoAtributo (
    id_atributo varchar(30) PRIMARY KEY,
    nom_atributo varchar(30),
    descricao text
);

CREATE TABLE ProjetoAtributo (
    id_projatrib varchar(30) PRIMARY KEY,
    id_atributo varchar(30),
    id_proj varchar(30),
    FOREIGN KEY(id_atributo)
    REFERENCES TipoAtributo(id_atributo),
    FOREIGN KEY(id_proj)
    REFERENCES Projeto(id_proj)
);

ALTER TABLE Projeto ADD CONSTRAINT matricula
    FOREIGN KEY (matricula)
    REFERENCES Conta (matricula);
 
ALTER TABLE Projeto ADD CONSTRAINT id_tpproj
    FOREIGN KEY (id_tpproj)
    REFERENCES TipoProjeto (id_tpproj);
  

 alter table Projeto add ordem int;

### 9	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
insert into Conta(matricula,nome,senha) values ('2019tiimi0038','Aline Santos ','gatinha123');
insert into Conta(matricula,nome,senha) values ('2019tiimi0089','Gabriel Souza','soufeliz345');
insert into Conta(matricula,nome,senha) values ('2019tiimi0035','Tales do Amaral','deusdainfo777');
insert into Conta(matricula,nome,senha) values ('2019tiimi0090','Amanda Góes','gatinha1410');
insert into Conta(matricula,nome,senha) values ('2019tiimi1410','Davi Santos','venceremos13');


insert into Projeto(id_proj,nome_proj,matricula,id_tpproj) values
('PROJETO1234','Chá de boldo','2019tiimi0038','TPPROJ1'),
('PROJETO1235','Hortênsia','2019tiimi0089','TPPROJ2'),
('PROJETO1240','Boldo','2019tiimi0035','TPPROJ3'),
('PROJETO1250','Estrutura Quimica da Camomila','2019tiimi1410','TPPROJ4'),
('PROJETO1242','Chá de Camomila','2019tiimi0038','TPPROJ1'),
('PROJETO1230','Chá de Manjericão','2019tiimi0089','TPPROJ1'),
('PROJETO1231','Chá de Hortelã','2019tiimi0038','TPPROJ1'),
('PROJETO1232','Girassol','2019tiimi0089','TPPROJ2'),
('PROJETO1233','Acerola','2019tiimi0038','TPPROJ2'),
('PROJETO1236','Pimenta do Reino','2019tiimi0089','TPPROJ2'),
('PROJETO1237','Manjericão','2019tiimi0035','TPPROJ3'),
('PROJETO1238','Hortelã','2019tiimi0090','TPPROJ3'),
('PROJETO1239','Cravo','2019tiimi0035','TPPROJ3'),
('PROJETO1241','Estrutura Quimica do manjericão','2019tiimi0090','TPPROJ4'),
('PROJETO1245','Estrutura Quimica da hortelã','2019tiimi0035','TPPROJ4'),
('PROJETO1251','Estrutura Quimica do cravo','2019tiimi0090','TPPROJ4');


update Projeto set ordem=000001 where id_proj='PROJETO1234';
update Projeto set ordem=000002 where id_proj='PROJETO1235';
update Projeto set ordem=000003 where id_proj='PROJETO1240';
update Projeto set ordem=000004 where id_proj='PROJETO1250';
update Projeto set ordem=000005 where id_proj='PROJETO1242';
update Projeto set ordem=000006 where id_proj='PROJETO1230';
update Projeto set ordem=000007 where id_proj='PROJETO1231';
update Projeto set ordem=000008 where id_proj='PROJETO1232';
update Projeto set ordem=000009 where id_proj='PROJETO1233';
update Projeto set ordem=000010 where id_proj='PROJETO1236';
update Projeto set ordem=000011 where id_proj='PROJETO1237';
update Projeto set ordem=000012 where id_proj='PROJETO1238';
update Projeto set ordem=000013 where id_proj='PROJETO1239';
update Projeto set ordem=000014 where id_proj='PROJETO1241';
update Projeto set ordem=000015 where id_proj='PROJETO1245';
update Projeto set ordem=000016 where id_proj='PROJETO1251';



insert into TipoProjeto(id_tpproj,nome_tp) values ('TPPROJ1','Receita'),('TPPROJ2','Modo de Plantio'),('TPPROJ3','Planta'),
('TPPROJ4','Estrutura Química');



insert into TipoAtributo(id_atributo, nom_atributo, descricao) values
('ATRIBUTO1', 'Ingredientes','1 colher de chá de boldo'),
('ATRIBUTO2','Ingredientes','150ml de água'),
('ATRIBUTO3','Modo de preparo','Misturar 1 colher de chá
 de folhas de boldo secas
 em entre 150 ml e 200 ml 
de água fervente. Desligar
 o fogo e deixar descansar
 por 10 minutos. Coar e beber'),
('ATRIBUTO4','Materiais necessários','Semente de girassol'),
('ATRIBUTO5','Materiais necessários','terra fertilizada'),
('ATRIBUTO6','Passo-a-passo','Escolha o tipo de girassol,repare o solo;faça uma cova de 5 cm;
coloque as sementes e cubra com a terra aerada e fertilizada'),
('ATRIBUTO7','Foto da estrutura Quimica','Foto da estrutura química do manjericão'),
('ATRIBUTO8','Materiais necessários','água'),
('ATRIBUTO9','Materiais necessários','planta'),
('ATRIBUTO10','Passo-a-passo','Reserve um vaso e coloque
a terra. Em seguida coloque
a planta com a ajuda de uma pá'),
('ATRIBUTO11','Foto da estrutura Quimica','Foto da estrutura química do cravo'),
('ATRIBUTO12','Foto da planta','Foto do Cravo'),
('ATRIBUTO13','Informações extras','Relaxante muscular;melhora a saúde óssea.
Ajuda no controle da diarreia e facilita a digestão'),
('ATRIBUTO14','Foto da estrutura Quimica','Foto da estrutura Química da hortelã'),
('ATRIBUTO15','Materiais necessários','vaso de plantas'),
('ATRIBUTO16','Materiais necessários','terra');


insert into ProjetoAtributo(id_projatrib, id_atributo, id_proj) values
('PROJATRIB1', 'ATRIBUTO13','PROJETO1239'),
('PROJATRIB2','ATRIBUTO12','PROJETO1239'),
('PROJATRIB3','ATRIBUTO14','PROJETO1245'),
('PROJATRIB4','ATRIBUTO1','PROJETO1234'),
('PROJATRIB5','ATRIBUTO2','PROJETO1234'),
('PROJATRIB6','ATRIBUTO3','PROJETO1234'),
('PROJATRIB7','ATRIBUTO4','PROJETO1232'),
('PROJATRIB8','ATRIBUTO5','PROJETO1232'),
('PROJATRIB9','ATRIBUTO6','PROJETO1232'),
('PROJATRIB10','ATRIBUTO7','PROJETO1241'),
('PROJATRIB11','ATRIBUTO8','PROJETO1235'),
('PROJATRIB12','ATRIBUTO9','PROJETO1235'),
('PROJATRIB13','ATRIBUTO10','PROJETO1235'),
('PROJATRIB14','ATRIBUTO11','PROJETO1251'),
('PROJATRIB15','ATRIBUTO15','PROJETO1235'),
('PROJATRIB16','ATRIBUTO16','PROJETO1235');




### 10	TABELAS E PRINCIPAIS CONSULTAS<br>

#### 10.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.1%20-%201.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.1%20-%202.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.1%20-%203.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.1%20-%204.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.1%20-%205.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.1%20-%206.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.1%20-%207.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.1%20-%208.jpg)

#### 10.2 PRINCIPAIS CONSULTAS DO SISTEMA <br>
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.2%20-%201.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.2%20-%202.jpg)
![alt text](https://raw.githubusercontent.com/soph18/template_projeto_integrador/main/10.2%20-%203.jpg)

### AINDA NÃO FEITOS
 
 ### 11 Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>
 
 #### 11.1	Integração com Linguagem de programação; <br>
 
 #### 11.2	Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais solicitações feitas pelo professor.
 
 ### 12 Slides e Apresentação em vídeo. <br>
 
 #### 12.1 Slides; <br>
 
 #### 12.2 Apresentação em vídeo <br>
