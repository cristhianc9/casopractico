drop table stg_mystery_shopping;
drop table fac_evaluacion;
drop table dim_tiempo;
drop table dim_localidad;
drop table dim_proyecto;
drop table dim_auditor;


create table stg_mystery_shopping(
	cod_loc	varchar(15),
	nombre_loc	varchar(60),
	cp	int,
	poblacion	varchar(50),
	oficina	char(3),
	provincia	varchar(25),
	cod_proy	varchar(15),
	id_evaluacion	int,
	fecha_ejecucion	date,
	cod_auditor	varchar(10),
	resultado	decimal(5,4),
	titulo_cuestionario	varchar(50)
);

CREATE TABLE dim_tiempo (
	id_tiempo int not null,
	fecha DATE not null,
	anio int not null,
	mes int not null,
	dia int not null,
	constraint pk_tiempo PRIMARY key (id_tiempo));


CREATE TABLE dim_localidad (
	id_localidad int not null,
	provincia varchar(25) ,
	poblacion text ,
	cp int ,
	cod_loc varchar(15) ,
	nombre_loc text ,
	oficina varchar(3) ,
	constraint pk_localidad PRIMARY key (id_localidad));
	

create table dim_proyecto(
	id_proyecto int not null,
	cod_proy	varchar(15),
	titulo_cuestionario	varchar(50),
	constraint pk_proyecto PRIMARY key (id_proyecto));

	
create table dim_auditor(
	id_auditor	int not null,
	cod_auditor	varchar(10),
	constraint pk_auditor PRIMARY key (id_auditor));
	

CREATE TABLE fac_evaluacion (
	tbl_evaluacion_id int not null,
	id_evaluacion int not null,
	id_localidad int not null,
	id_auditor int not null,	
	id_proyecto int not null,
	id_tiempo int not null,
	resultado int not null,
	constraint pk_evaluacion PRIMARY key (tbl_evaluacion_id));



ALTER TABLE fac_evaluacion
ADD CONSTRAINT FK_EVA_LOC FOREIGN KEY(id_localidad)
REFERENCES DIM_LOCALIDAD (id_localidad);


ALTER TABLE fac_evaluacion
ADD CONSTRAINT FK_EVA_AUD FOREIGN KEY(id_auditor)
REFERENCES DIM_AUDITOR (id_auditor);


ALTER TABLE fac_evaluacion
ADD CONSTRAINT FK_EVA_PRO FOREIGN KEY(id_proyecto)
REFERENCES DIM_PROYECTO (id_proyecto);


ALTER TABLE fac_evaluacion
ADD CONSTRAINT FK_EVA_TIE FOREIGN KEY(id_tiempo)
REFERENCES DIM_TIEMPO (id_tiempo);
