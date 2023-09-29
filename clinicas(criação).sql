create database clinica

use clinica

drop database clinica

CREATE TABLE medicos ( 
cd_medicos int identity(1,1) not null, 
nm_medicos varchar(50) not null,
dt_admissão date null,
nu_telefone float not null, 
nm_especialidades varchar(50) not null,
nu_crm float not null, 
constraint pk_medicos PRIMARY KEY(cd_medicos),
constraint nu_crm unique(nu_crm) 

)

CREATE TABLE sanguineo ( 
cd_sanguineo int identity(1,1) not null, 
ty_sanguineo varchar(10) not null, 
nu_rh varchar(10) not null, 
constraint pk_sanguineo PRIMARY KEY(cd_sanguineo),
constraint check_nu_rh check(nu_rh in ('+','-')),
constraint check_ty_sanguineo check(ty_sanguineo in ('A','B','AB','O'))
) 

CREATE TABLE pacientes ( 
cd_pacientes int identity(1,1) not null, 
nm_nome varchar(50) not null, 
nu_codigo float not null, 
nu_telefone float null, 
nm_endereco varchar(50) not null, 
cd_sanguineo int not null,
constraint pk_pacientes PRIMARY KEY(cd_pacientes),
constraint fk_clinica_sanguineo FOREIGN KEY(cd_sanguineo) REFERENCES sanguineo (cd_sanguineo),
constraint nu_codigo unique(nu_codigo)
)

CREATE TABLE consulta ( 
cd_consulta int identity(1,1) not null, 
dt_consulta date not null, 
hr_consulta time not null,
cd_medicos int not null,
cd_pacientes int not null,
constraint pk_consulta PRIMARY KEY(cd_consulta),
constraint fk_clinica_pacientes FOREIGN KEY(cd_pacientes) REFERENCES pacientes (cd_pacientes), 
constraint fk_clinica_medicos FOREIGN KEY(cd_medicos) REFERENCES medicos (cd_medicos)
)

drop table consulta

drop table medicos

drop table pacientes

drop table sanguineo