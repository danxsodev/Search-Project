create database db_ds2A;
use db_ds2A;

create table db_emprego(
	registro int primary key,
    nome varchar(40) not null,
    cargo varchar (20) not null,
    area varchar (20) not null,
    salario decimal (10,2) not null,
    status varchar(7) not null
);

select * from tbl_emprego;

-- contagem de registros da tabela db_emprego
select count(*) from tbl_emprego; 

alter table db_emprego
rename to tbl_emprego;

-- exibindo apenas algumas colunas da tbl emprego
select nome,cargo,salario from tbl_emprego;
 
 -- exibindo os noems de clientes por 
 -- ordem alfabetica crescente
select nome,cargo,salario from tbl_emprego
order by nome;
-- order by nome asc;
 
  -- exibindo os noems de clientes por 
  -- ordem alfabetica decrescente
 select nome,cargo,salario from tbl_emprego
 order by nome desc;
 
-- exibindo somente clientes ativos 
  select nome,cargo,salario,status from tbl_emprego
  where status = 'Ativo';
  
  -- exibindo somente clientes inativos 
  select nome,cargo,salario,status from tbl_emprego
  where status = 'Inativo';
  
  -- contagem somente clientes ativos
  select count(*) from tbl_emprego
  where status = 'ativo';
 
   -- contagem somente clientes inativo
  select count(*) from tbl_emprego
  where status = 'inativo';
  
  -- exibir o nome e o cargo 
  -- de todos os funcionarios ativos
   select nome,cargo,status from tbl_emprego
   where status = 'ativo' 
   order by nome;
   
   -- exibir o nome e o cargo 
  -- de todos os funcionarios inativos
   select nome,cargo,status from tbl_emprego
   where status = 'inativo';
   
   -- exibir os nomes, cargos, area, das
   -- pessoas q trabalham na area adm
	select nome,cargo,area,status from tbl_emprego
   where area = 'administrativo';
   
      -- exibir os nomes, cargos, area, das
   -- pessoas q trabalham na area adm
	select nome,cargo,area,status from tbl_emprego
   where area = 'administrativo' && status = 'ativo';
   
   
	-- exibir os nomes, cargos, area, das
   -- pessoas de todos os cargos exceto na area adm
select nome,cargo,area, status from tbl_emprego
where not area = 'administrativo' && status = 'ativo';

-- contagem somente das pessoas que trabalham na area financeiro ativos
  select count(area) from tbl_emprego
  where area = 'Financeiro' && status = 'ativo';
  
  	-- exibir os nomes, cargos, area, salario das
   -- pessoas de todos os cargos e area maior 8000
  select nome,cargo,area, salario, status from tbl_emprego
  where salario >= '8000' and status = 'ativo'
  order by salario;
  
  select nome,cargo,area, salario, status from tbl_emprego
  where salario <= '5000' and status = 'ativo'
  order by salario desc;




 