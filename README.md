# TRABALHO DE PI:  Plantoterapia
Trabalho desenvolvido durante a disciplina de Banco de Dados do Integrado no Ifes Campus Serra.

# Sumário

## 1. COMPONENTES<br>  
Integrantes do grupo<br>    
Amanda de Góes Pires: amandagoespires@gmail.com  <br>
Jessica Nogueira Duque: jessiend3@gmail.com  <br> 
Sophia Caetano Marques Souza:  caetanomarquessouza@gmail.com  <br>

## 2. MINIMUNDO<br>
No Ifes Campus Serra, existe uma horta que é administrada e cuidada pela professora de Química da escola, com a ajuda de seus alunos. Eles plantam e colhem espécies que usam principalmente para chás, mas podem usar para outras comidas, e também as usam para estudar sobre suas propriedades químicas.
O sistema web servirá para registrar sobre as plantas, algo feito apenas por quem tem uma conta, e também possibilitará a visualização destas informações por qualquer um na internet. Se o indivíduo for alguém que ajuda na plantação, ele poderá fazer uma conta utilizando seu nome, matrícula e senha, para depois utilizar a matrícula e senha toda vez que for fazer o login.
Uma vez logado, para criar um novo projeto, que é um conjunto de informações sobre  alguma planta, ele precisará escolher o tipo de projeto, em que terão as opções de modo de plantio, estrutura química, receitas e plantas, e ao escolher qualquer uma delas será necessário dar um nome ao projeto. Cada projeto tem um espaço para comentários associado com a matrícula, o identificador do projeto em questão, a data, o identificador deste fórum e o espaço para os comentários. Para o modo de plantio será pedido também os materiais necessários e o passo a passo. Para a estrutura química será pedido uma imagem. Para uma receita, será pedido os ingredientes e o modo de preparo. Para uma planta serão pedido as imagens e informações extras.
Quando existem um ou mais projetos já criados, é possível alterar estes. Dentre as opções de alteração estão: deletar, editar e renomear. Depois de sempre salvar o que é que esteja fazendo, seja criando um projeto ou alterando algo, estarão salvos e colocados na página inicial do site do sistema para pessoas de fora terem acesso aos registros.

## 3. RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Home_principal.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Entrar_e_registrar.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Home_visualizacao.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Conheca_o_projeto.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Sobre_nos.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Home_edicao.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Escolha_projeto.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Estrutura_quimica.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Modo_de_plantio.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Receitas.png)
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Prototipo/Imagens_e_infos_extras.png)


### 3.1 Quais perguntas podem ser respondidas com o sistema proposto? <br>
* Relatório que informe a quantidade de projetos relacionados a cada conta.
* Relatório que informa a quantidade de atributos relacionados a cada conta.
* Gera um relatório da quantidade de atributos existentes no sistema para cada tipo de projeto.
* Relatório que informe a quantidade de projetos criados para cada tipo de projeto.
* Relatório que mostra a quantidade de fotos existentes para cada tipo de projeto.

## 4. TABELA DE DADOS DO SISTEMA:<br>

Link: https://docs.google.com/spreadsheets/d/1GGuo_0yfd_p8xazYE0qZfNkxYcsa1S6iSd8mlfjLKqs/edit?usp=sharing

 ## 5. PMC <br>

![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Outros/PMC.jpg)
 
## 6. MODELO CONCEITUAL<br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Modelos/Modelo%20Conceitual.PNG)
    
### 6.1 Descrição dos dados <br>

CONTA: Tabela que armazena as informações relativas ao usuário com conta.<br>
matricula: campo que armazena o número da matrícula de um discente do Ifes.<br>
nome: campo que armazena o nome completo de um discente do Ifes.<br>
senha: campo que armazena uma senha criada por um discente do Ifes.<br>
<br>
PROJETO: Tabela que armazena as informações relativas aos projetos já criados por usuários com conta.<br>
id_proj: campo que armazena um número de identificação de um projeto.<br>
id_tpproj: campo que armazena o número de identificação do tipo de projeto.<br> 
nome_proj: campo que armazena um nome dado a um projeto.<br>
ordem: campo que armazena um número inteiro para indicar a posição de um projeto para a visualização do público geral. <Br>
<br>
TIPO PROJETO: Tabela que armazena os tipos de projeto existentes.<br>
id_tpproj: campo que armazena um número de identificação de um certo tipo de projeto.<br>
nome_tp: campo que armazena o nome de um certo tipo de projeto.<br>
<br>
ATRIBUTO: Tabela que armazena as informações dos atributos registrados de um projeto. <br>
id_atributo: campo que armazena um número de identificação de um atributo. <br>
tipo_atributo: campo que armazena o nome do tipo de atributo sendo guardado. <br>
descricao: campo que armazena a descrição detalhada do atributo. <br>
   
## 7.	MODELO LÓGICO <br>

![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Modelos/Modelo%20L%C3%B3gico.png)

## 8.	MODELO FÍSICO<br>
drop database if exists Plantoterapia;

CREATE DATABASE "Plantoterapia";


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
  
ALTER TABLE Projeto ADD ordem int; 
 
ALTER TABLE TipoAtributo RENAME column nom_atributo TO tipo_atributo;

ALTER TABLE TipoAtributo RENAME TO Atributo; 

## 9.	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
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


## 10.	TABELAS E PRINCIPAIS CONSULTAS<br>

### 10.1	Consultas das tabelas com todos os dados inseridos <br>
 select * from Conta;<br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Consultas_tabelas_completas/Consulta_Conta.PNG)
 
 select * from TipoProjeto;<br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Consultas_tabelas_completas/Consulta_TipoProjeto.PNG)
 
 select * from Projeto;<br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Consultas_tabelas_completas/Consulta_Projeto.PNG)
 
 select * from ProjetoAtributo;<br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Consultas_tabelas_completas/Consulta_ProjetoAtributo_1.PNG)
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Consultas_tabelas_completas/Consulta_ProjetoAtributo_2.PNG)
 
 select * from Atributo;<br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Consultas_tabelas_completas/Consulta_Atributo_1.PNG)
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Consultas_tabelas_completas/Consulta_Atributo_2.PNG)
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Consultas_tabelas_completas/Consulta_Atributo_3.PNG)

### 10.2 Principais consultas do sistema <br>
select con.matricula"Matrícula",count(pro.id_proj)"Quantidade de Projetos" from Conta con join Projeto pro on(con.matricula=pro.matricula) group by con.matricula; <br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Consultas_principais/Consulta1.png)
 
select con.matricula"Matrícula", count(at.id_atributo)"Quantidade de Atributos" from Conta con join Projeto pro 
on(con.matricula = pro.matricula) join ProjetoAtributo proat on(pro.id_proj = proat.id_proj) join Atributo at on(proat.id_atributo = at.id_atributo)
group by con.matricula; <br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Consultas_principais/Consulta2.png)
 
select tppro.nome_tp"Tipo de Projeto", count(at.id_atributo)"Quantidade de Atributos" from Atributo at join ProjetoAtributo proat 
on (at.id_atributo=proat.id_atributo) join Projeto pro on (proat.id_proj=pro.id_proj) join TipoProjeto tppro on(pro.id_tpproj=tppro.id_tpproj) group by tppro.nome_tp; <br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Consultas_principais/Consulta3.png)
 
select tp.nome_tp"Tipo de projeto", count(proj.id_proj) as "Quantidade de Projetos" from TipoProjeto tp join Projeto proj on(tp.id_tpproj = proj.id_tpproj)
group by tp.id_tpproj order by tp.id_tpproj; <br>
 
![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Consultas_principais/Consulta4.png)
 
select tp.nome_tp"Tipo de Projeto", count(at.id_atributo)"Quantidade de Fotos"
from Atributo at join ProjetoAtributo projatrib on (at.id_atributo=projatrib.id_atributo) join Projeto proj on(projatrib.id_proj=proj.id_proj) 
join TipoProjeto tp on (proj.id_tpproj=tp.id_tpproj) where at.tipo_atributo='Foto da planta' or at.tipo_atributo='Foto da estrutura Quimica' 
group by tp.nome_tp; <br>

![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Consultas_principais/Consulta5.png)

 
 ## 11. GRÁFICOS, RELATÓRIOS, INTEGRAÇÃO COM LINGUAGEM DE PROGRAMAÇÃO E OUTRAS SOLICITAÇÕES <br>
 
 ### 11.1	Integração com Linguagem de programação <br>
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Integra%C3%A7%C3%A3o1.jpg)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Integra%C3%A7%C3%A3o2.png)
 
 ### 11.2	Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais solicitações feitas pelo professor
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio1_1.PNG)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio1_2.PNG)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio1_3.PNG)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio2_1.jpeg)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio2_2.jpeg)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio2_3.jpeg)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio3.jpeg)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio4.jpeg)
 ![alt text](https://raw.githubusercontent.com/soph18/Hadama/main/Imagens/Relatorios/Relatorio5.jpeg)
 
 
 ## 12. SLIDES E APRESENTAÇÃO EM VÍDEO <br>
 
 ### 12.1 Slides: https://docs.google.com/presentation/d/1J5q3_IFNHZ1oFranBZIqQj9kgW1IYTXld40ILd6ItOA/edit?usp=sharing <br>
 
 ### 12.2 Apresentação em vídeo formato pecha kucha: https://youtu.be/opwMuvvlfog 
