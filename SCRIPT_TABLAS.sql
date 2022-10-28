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

create table public.dim_localidad (
	id_localidad int not null,
	provincia varchar(25) null,
	poblacion text null,
	cp int null ,
	cod_loc varchar(15) null,
	nombre_loc text null,
	oficina varchar(3) null,
	primary key (id_localidad)
);

create table public.dim_proyecto(
	id_proy		int,
	cod_proy	varchar(15),
	titulo_cuestionario	varchar(50),
	primary key (id_proy)
);

create table public.dim_auditor(
	id_auditor	int,
	cod_auditor	varchar(10),
	primary key (id_auditor)
);

create table public.fac_evaluacion (
	tbl_evaluacion_id int null,
	id_evaluacion int null,
	id_localidad int null,
	id_proyecto varchar(15) null,
	id_auditor	int,
	resultado numeric(9, 4) null,
	primary key (tbl_evaluacion_id)
);
