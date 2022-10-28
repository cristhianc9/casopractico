create table public.stg_mystery_shopping(
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


CREATE TABLE public.dim_localidad (
	provincia varchar(25) NULL,
	poblacion text NULL,
	cp int8 NULL,
	cod_loc varchar(15) NULL,
	nombre_loc text NULL,
	oficina varchar(3) NULL,
	id_localidad int8 NOT NULL
);

create table public.dim_proyecto(
	id_proy		varchar(15),
	cod_proy	varchar(15),
	titulo_cuestionario	varchar(50)
);

CREATE TABLE public.fac_evaluacion (
	id_evaluacion int8 NULL,
	id_localidad int8 NULL,
	id_auditor int8 NULL,	
	id_proyecto varchar(15) NULL,	
	tbl_evaluacion_id numeric NULL
);

create table public.dim_auditor(
	id_auditor	int,
	cod_auditor	varchar(10)
);