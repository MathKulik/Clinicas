insert into medicos 
values ('José', '01/06/2006', 11985963462, 'clinico-geral, enfermeiro', 659348),
('Maria', '06/09/2000', 11954872346, 'enfermaira', 754369),
('Fernando', '08/03/1998',11952368954, 'anestesista', 259646),
('Lucia', '07/11/1997', 11985463297, 'cirurgia, parteira', 732964)

---------------------------------------------------------------------

insert into sanguineo values ('A','+')
insert into sanguineo values ('A','-')

insert into sanguineo values ('B','+')
insert into sanguineo values ('B','-')

insert into sanguineo values ('AB','+')
insert into sanguineo values ('AB','-')

insert into sanguineo values ('O','+')
insert into sanguineo values ('O','-')

---------------------------------------------------------------------

insert into pacientes
values ('Marcio', 485297, 11964298319, 'Rua jurubatuba, 224', 1),
('Joaquina', 158346, 11957863492, 'Rua João Marcos, 3330', 4),
('Vinicius', 116539, 11957248631, 'Av Maria Paula ,400', 5),
('Mario', 463197, 1193648710, 'Rua Joaquim Marimo, 783', 7)

---------------------------------------------------------------------

insert into consulta

values ('01/08/2022', '13:30', 1, 3),
('01/06/2022','15:10',4, 4),
('03/05/2022','14:50',3, 2),
('11/07/2022','08:20',2, 1)

---------------------------------------------------------------------

select nm_medicos as Medicos, dt_admissão as 'Data de Admissão', nu_telefone as Telefone, nm_especialidades as Especialidades, nu_crm as CRM from medicos

delete medicos

select ty_sanguineo + nu_rh as 'Tipo Sanguineo' from sanguineo

delete sanguineo

select nm_nome as 'Nome dos pacientes', nu_codigo as Codigo, nu_telefone as Telefone, nm_endereco Endereço  from pacientes

select nm_nome as Nome, nu_codigo as Codigo, nu_telefone as Telefone, nm_endereco as Endereço, ty_sanguineo + nu_rh as 'Tipo Sanguineo'  from pacientes
inner join sanguineo on sanguineo.cd_sanguineo = pacientes.cd_sanguineo

delete pacientes

select dt_consulta as 'Data da Consulta', hr_consulta as 'Hora da consulta' from consulta

select dt_consulta as 'Data da Consulta' , hr_consulta as 'Hora da consulta', nm_medicos as Medicos, nm_nome as 'Nome dos pacientes'  from consulta
inner join medicos on medicos.cd_medicos = consulta.cd_medicos
inner join pacientes on pacientes.cd_pacientes = consulta.cd_pacientes

delete consulta