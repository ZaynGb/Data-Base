create table Client(
	IDC numeric(6) Primary key identity,
	carta numeric(20),
	phone numeric(15),
	FIOC varchar(100))
	

create table Zakaz(
	IDZ numeric(6)Primary key,
	DataZ date,
	IDC_Z numeric(6),
	StatusZ varchar(30),
	Stoimost numeric(5),

	constraint C_Z foreign key(IDC_Z) references Client(IDC))

	
	create table Sotr(
	IDS numeric(3)Primary key,
	Doljnost varchar(15),
	Dogovor numeric(10),
	FIO varchar (40))


create table Product(
	IDP numeric(10)Primary key,
	NameP varchar(30),
	Price numeric(10))

	create table Zakaz_Product(
	price_sale numeric(6),
	kolvo_zak_S numeric (3),
	IDZ_S numeric(6) 
	constraint IDZ_S foreign key(IDZ_S) references Zakaz(IDZ),
	IDP_S numeric(10) 
	constraint IDP_S foreign key(IDP_S) references Product(IDP),
	IDS_S  numeric(3)
	constraint s_zp foreign key (IDS_S)
	references Sotr (IDS),
	
	)


create proc ZapCli @max numeric(4)

as

declare @K numeric(4)

declare @Phone numeric(11)

declare @FIOS varchar(20)

declare @Carta numeric(20)

set @K=1

while @K<=@max

begin

set @Carta=(RAND()*999999999999999+4000000000000000)

set @Phone=(RAND()*999999999+89000000000)

set @FIOS='������ '+ ltrim(str(@K))

insert into Client(carta,phone,FIOC)

values

(@Carta,@Phone,@FIOS)

set @K=@K+1

end

exec ZapCli 1000


drop Proc ZapCli


select * from Client

insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1	,'	2016-01-01	',	76	,	'���������'	,	1083	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	2	,'	2016-01-02	',	782	,	'���������'	,	1885	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	3	,'	2016-01-03	',	123	,	'���������'	,	1854	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	4	,'	2016-01-04	',	254	,	'���������'	,	1192	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	5	,'	2016-01-05	',	605	,	'���������'	,	602	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	6	,'	2016-01-06	',	296	,	'���������'	,	4223	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	7	,'	2016-01-07	',	627	,	'���������'	,	3846	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	8	,'	2016-01-08	',	900	,	'���������'	,	1041	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	9	,'	2016-01-09	',	278	,	'���������'	,	1642	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	10	,'	2016-01-10	',	624	,	'���������'	,	4409	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	11	,'	2016-01-11	',	443	,	'���������'	,	2872	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	12	,'	2016-01-12	',	988	,	'���������'	,	2258	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	13	,'	2016-01-13	',	987	,	'���������'	,	1353	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	14	,'	2016-01-14	',	306	,	'���������'	,	683	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	15	,'	2016-01-15	',	286	,	'���������'	,	4876	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	16	,'	2016-01-16	',	722	,	'���������'	,	1996	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	17	,'	2016-01-17	',	366	,	'���������'	,	1834	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	18	,'	2016-01-18	',	687	,	'���������'	,	4881	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	19	,'	2016-01-19	',	40	,	'���������'	,	2114	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	20	,'	2016-01-20	',	630	,	'���������'	,	712	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	21	,'	2016-01-21	',	934	,	'���������'	,	4464	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	22	,'	2016-01-22	',	923	,	'���������'	,	4080	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	23	,'	2016-01-23	',	336	,	'���������'	,	3729	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	24	,'	2016-01-24	',	422	,	'���������'	,	987	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	25	,'	2016-01-25	',	821	,	'���������'	,	1522	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	26	,'	2016-01-26	',	294	,	'���������'	,	1158	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	27	,'	2016-01-27	',	469	,	'���������'	,	3853	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	28	,'	2016-01-28	',	911	,	'���������'	,	2276	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	29	,'	2016-01-29	',	44	,	'���������'	,	2545	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	30	,'	2016-01-30	',	211	,	'���������'	,	4549	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	31	,'	2016-01-31	',	137	,	'���������'	,	3811	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	32	,'	2016-02-01	',	503	,	'���������'	,	4541	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	33	,'	2016-02-02	',	216	,	'���������'	,	564	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	34	,'	2016-02-03	',	309	,	'���������'	,	2481	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	35	,'	2016-02-04	',	694	,	'���������'	,	1747	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	36	,'	2016-02-05	',	352	,	'���������'	,	1846	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	37	,'	2016-02-06	',	661	,	'���������'	,	4571	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	38	,'	2016-02-07	',	210	,	'���������'	,	4607	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	39	,'	2016-02-08	',	328	,	'���������'	,	2224	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	40	,'	2016-02-09	',	315	,	'���������'	,	3439	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	41	,'	2016-02-10	',	180	,	'���������'	,	2875	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	42	,'	2016-02-11	',	12	,	'���������'	,	3963	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	43	,'	2016-02-12	',	333	,	'���������'	,	2594	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	44	,'	2016-02-13	',	235	,	'���������'	,	4946	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	45	,'	2016-02-14	',	870	,	'���������'	,	4576	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	46	,'	2016-02-15	',	199	,	'���������'	,	2294	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	47	,'	2016-02-16	',	773	,	'���������'	,	2129	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	48	,'	2016-02-17	',	660	,	'���������'	,	2594	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	49	,'	2016-02-18	',	311	,	'���������'	,	4129	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	50	,'	2016-02-19	',	606	,	'���������'	,	725	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	51	,'	2016-02-20	',	990	,	'���������'	,	619	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	52	,'	2016-02-21	',	976	,	'���������'	,	4368	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	53	,'	2016-02-22	',	405	,	'���������'	,	4114	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	54	,'	2016-02-23	',	892	,	'���������'	,	1113	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	55	,'	2016-02-24	',	369	,	'���������'	,	785	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	56	,'	2016-02-25	',	66	,	'���������'	,	4018	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	57	,'	2016-02-26	',	961	,	'���������'	,	2436	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	58	,'	2016-02-27	',	22	,	'���������'	,	1546	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	59	,'	2016-02-28	',	453	,	'���������'	,	2873	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	60	,'	2016-02-29	',	205	,	'���������'	,	2225	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	61	,'	2016-03-01	',	477	,	'���������'	,	622	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	62	,'	2016-03-02	',	38	,	'���������'	,	579	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	63	,'	2016-03-03	',	27	,	'���������'	,	2903	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	64	,'	2016-03-04	',	139	,	'���������'	,	3364	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	65	,'	2016-03-05	',	504	,	'���������'	,	1076	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	66	,'	2016-03-06	',	817	,	'���������'	,	738	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	67	,'	2016-03-07	',	156	,	'���������'	,	663	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	68	,'	2016-03-08	',	517	,	'���������'	,	1092	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	69	,'	2016-03-09	',	795	,	'���������'	,	3423	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	70	,'	2016-03-10	',	759	,	'���������'	,	3210	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	71	,'	2016-03-11	',	120	,	'���������'	,	4373	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	72	,'	2016-03-12	',	888	,	'���������'	,	4613	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	73	,'	2016-03-13	',	698	,	'���������'	,	973	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	74	,'	2016-03-14	',	277	,	'���������'	,	4311	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	75	,'	2016-03-15	',	73	,	'���������'	,	4410	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	76	,'	2016-03-16	',	712	,	'���������'	,	3699	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	77	,'	2016-03-17	',	710	,	'���������'	,	3405	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	78	,'	2016-03-18	',	575	,	'���������'	,	1554	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	79	,'	2016-03-19	',	353	,	'���������'	,	2862	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	80	,'	2016-03-20	',	814	,	'���������'	,	2422	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	81	,'	2016-03-21	',	496	,	'���������'	,	509	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	82	,'	2016-03-22	',	990	,	'���������'	,	1445	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	83	,'	2016-03-23	',	834	,	'���������'	,	1440	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	84	,'	2016-03-24	',	443	,	'���������'	,	4909	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	85	,'	2016-03-25	',	402	,	'���������'	,	3928	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	86	,'	2016-03-26	',	770	,	'���������'	,	3594	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	87	,'	2016-03-27	',	194	,	'���������'	,	3635	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	88	,'	2016-03-28	',	970	,	'���������'	,	4531	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	89	,'	2016-03-29	',	33	,	'���������'	,	3200	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	90	,'	2016-03-30	',	54	,	'���������'	,	2497	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	91	,'	2016-03-31	',	896	,	'���������'	,	3667	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	92	,'	2016-04-01	',	503	,	'���������'	,	3802	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	93	,'	2016-04-02	',	68	,	'���������'	,	1336	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	94	,'	2016-04-03	',	742	,	'���������'	,	844	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	95	,'	2016-04-04	',	233	,	'���������'	,	4210	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	96	,'	2016-04-05	',	322	,	'���������'	,	2173	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	97	,'	2016-04-06	',	921	,	'���������'	,	4880	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	98	,'	2016-04-07	',	740	,	'���������'	,	2663	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	99	,'	2016-04-08	',	275	,	'���������'	,	2457	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	100	,'	2016-04-09	',	255	,	'���������'	,	4658	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	101	,'	2016-04-10	',	988	,	'���������'	,	1744	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	102	,'	2016-04-11	',	630	,	'���������'	,	3439	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	103	,'	2016-04-12	',	178	,	'���������'	,	2077	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	104	,'	2016-04-13	',	28	,	'���������'	,	3715	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	105	,'	2016-04-14	',	145	,	'���������'	,	4309	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	106	,'	2016-04-15	',	689	,	'���������'	,	563	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	107	,'	2016-04-16	',	293	,	'���������'	,	3152	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	108	,'	2016-04-17	',	637	,	'���������'	,	874	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	109	,'	2016-04-18	',	714	,	'���������'	,	654	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	110	,'	2016-04-19	',	388	,	'���������'	,	4566	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	111	,'	2016-04-20	',	796	,	'���������'	,	1943	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	112	,'	2016-04-21	',	401	,	'���������'	,	3629	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	113	,'	2016-04-22	',	127	,	'���������'	,	3367	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	114	,'	2016-04-23	',	972	,	'���������'	,	4368	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	115	,'	2016-04-24	',	11	,	'���������'	,	3171	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	116	,'	2016-04-25	',	379	,	'���������'	,	1753	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	117	,'	2016-04-26	',	59	,	'���������'	,	761	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	118	,'	2016-04-27	',	91	,	'���������'	,	576	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	119	,'	2016-04-28	',	899	,	'���������'	,	997	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	120	,'	2016-04-29	',	934	,	'���������'	,	2955	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	121	,'	2016-04-30	',	976	,	'���������'	,	2296	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	122	,'	2016-05-01	',	356	,	'���������'	,	1206	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	123	,'	2016-05-02	',	287	,	'���������'	,	3102	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	124	,'	2016-05-03	',	349	,	'���������'	,	3905	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	125	,'	2016-05-04	',	14	,	'���������'	,	1804	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	126	,'	2016-05-05	',	811	,	'���������'	,	2642	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	127	,'	2016-05-06	',	678	,	'���������'	,	3964	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	128	,'	2016-05-07	',	946	,	'���������'	,	4306	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	129	,'	2016-05-08	',	628	,	'���������'	,	3410	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	130	,'	2016-05-09	',	460	,	'���������'	,	3458	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	131	,'	2016-05-10	',	53	,	'���������'	,	3264	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	132	,'	2016-05-11	',	203	,	'���������'	,	1250	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	133	,'	2016-05-12	',	786	,	'���������'	,	789	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	134	,'	2016-05-13	',	640	,	'���������'	,	4513	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	135	,'	2016-05-14	',	814	,	'���������'	,	627	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	136	,'	2016-05-15	',	245	,	'���������'	,	2093	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	137	,'	2016-05-16	',	549	,	'���������'	,	2358	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	138	,'	2016-05-17	',	89	,	'���������'	,	4827	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	139	,'	2016-05-18	',	355	,	'���������'	,	1990	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	140	,'	2016-05-19	',	397	,	'���������'	,	3473	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	141	,'	2016-05-20	',	680	,	'���������'	,	1385	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	142	,'	2016-05-21	',	909	,	'���������'	,	2040	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	143	,'	2016-05-22	',	1000	,	'���������'	,	3101	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	144	,'	2016-05-23	',	199	,	'���������'	,	2279	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	145	,'	2016-05-24	',	301	,	'���������'	,	4386	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	146	,'	2016-05-25	',	892	,	'���������'	,	1821	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	147	,'	2016-05-26	',	558	,	'���������'	,	3973	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	148	,'	2016-05-27	',	931	,	'���������'	,	3873	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	149	,'	2016-05-28	',	18	,	'���������'	,	2786	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	150	,'	2016-05-29	',	964	,	'���������'	,	1438	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	151	,'	2016-05-30	',	258	,	'���������'	,	4399	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	152	,'	2016-05-31	',	936	,	'���������'	,	538	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	153	,'	2016-06-01	',	267	,	'���������'	,	3751	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	154	,'	2016-06-02	',	330	,	'���������'	,	1273	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	155	,'	2016-06-03	',	412	,	'���������'	,	4187	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	156	,'	2016-06-04	',	398	,	'���������'	,	4785	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	157	,'	2016-06-05	',	715	,	'���������'	,	2386	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	158	,'	2016-06-06	',	513	,	'���������'	,	3425	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	159	,'	2016-06-07	',	455	,	'���������'	,	587	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	160	,'	2016-06-08	',	849	,	'���������'	,	2427	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	161	,'	2016-06-09	',	466	,	'���������'	,	1258	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	162	,'	2016-06-10	',	773	,	'���������'	,	3332	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	163	,'	2016-06-11	',	311	,	'���������'	,	3701	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	164	,'	2016-06-12	',	203	,	'���������'	,	1779	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	165	,'	2016-06-13	',	209	,	'���������'	,	2226	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	166	,'	2016-06-14	',	77	,	'���������'	,	1943	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	167	,'	2016-06-15	',	529	,	'���������'	,	713	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	168	,'	2016-06-16	',	872	,	'���������'	,	3371	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	169	,'	2016-06-17	',	220	,	'���������'	,	3579	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	170	,'	2016-06-18	',	626	,	'���������'	,	3963	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	171	,'	2016-06-19	',	530	,	'���������'	,	4526	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	172	,'	2016-06-20	',	734	,	'���������'	,	995	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	173	,'	2016-06-21	',	86	,	'���������'	,	2827	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	174	,'	2016-06-22	',	882	,	'���������'	,	1222	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	175	,'	2016-06-23	',	83	,	'���������'	,	1541	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	176	,'	2016-06-24	',	55	,	'���������'	,	1963	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	177	,'	2016-06-25	',	741	,	'���������'	,	3954	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	178	,'	2016-06-26	',	721	,	'���������'	,	4455	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	179	,'	2016-06-27	',	188	,	'���������'	,	1759	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	180	,'	2016-06-28	',	980	,	'���������'	,	3584	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	181	,'	2016-06-29	',	446	,	'���������'	,	1302	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	182	,'	2016-06-30	',	879	,	'���������'	,	1740	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	183	,'	2016-07-01	',	926	,	'���������'	,	616	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	184	,'	2016-07-02	',	177	,	'���������'	,	4348	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	185	,'	2016-07-03	',	99	,	'���������'	,	2612	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	186	,'	2016-07-04	',	154	,	'���������'	,	4848	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	187	,'	2016-07-05	',	933	,	'���������'	,	2010	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	188	,'	2016-07-06	',	967	,	'���������'	,	4088	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	189	,'	2016-07-07	',	199	,	'���������'	,	2722	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	190	,'	2016-07-08	',	202	,	'���������'	,	2597	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	191	,'	2016-07-09	',	175	,	'���������'	,	4605	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	192	,'	2016-07-10	',	558	,	'���������'	,	2872	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	193	,'	2016-07-11	',	326	,	'���������'	,	646	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	194	,'	2016-07-12	',	747	,	'���������'	,	3617	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	195	,'	2016-07-13	',	829	,	'���������'	,	928	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	196	,'	2016-07-14	',	328	,	'���������'	,	4692	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	197	,'	2016-07-15	',	706	,	'���������'	,	644	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	198	,'	2016-07-16	',	950	,	'���������'	,	3072	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	199	,'	2016-07-17	',	251	,	'���������'	,	960	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	200	,'	2016-07-18	',	378	,	'���������'	,	1294	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	201	,'	2016-07-19	',	307	,	'���������'	,	1174	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	202	,'	2016-07-20	',	57	,	'���������'	,	2475	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	203	,'	2016-07-21	',	709	,	'���������'	,	4640	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	204	,'	2016-07-22	',	633	,	'���������'	,	2031	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	205	,'	2016-07-23	',	50	,	'���������'	,	3692	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	206	,'	2016-07-24	',	248	,	'���������'	,	1626	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	207	,'	2016-07-25	',	348	,	'���������'	,	4954	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	208	,'	2016-07-26	',	148	,	'���������'	,	578	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	209	,'	2016-07-27	',	801	,	'���������'	,	600	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	210	,'	2016-07-28	',	754	,	'���������'	,	3397	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	211	,'	2016-07-29	',	495	,	'���������'	,	4770	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	212	,'	2016-07-30	',	562	,	'���������'	,	1677	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	213	,'	2016-07-31	',	75	,	'���������'	,	3478	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	214	,'	2016-08-01	',	60	,	'���������'	,	1816	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	215	,'	2016-08-02	',	715	,	'���������'	,	1466	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	216	,'	2016-08-03	',	696	,	'���������'	,	3914	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	217	,'	2016-08-04	',	251	,	'���������'	,	4248	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	218	,'	2016-08-05	',	583	,	'���������'	,	2881	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	219	,'	2016-08-06	',	514	,	'���������'	,	2413	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	220	,'	2016-08-07	',	981	,	'���������'	,	4894	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	221	,'	2016-08-08	',	176	,	'���������'	,	3054	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	222	,'	2016-08-09	',	263	,	'���������'	,	4012	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	223	,'	2016-08-10	',	755	,	'���������'	,	4491	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	224	,'	2016-08-11	',	558	,	'���������'	,	1622	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	225	,'	2016-08-12	',	717	,	'���������'	,	3333	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	226	,'	2016-08-13	',	226	,	'���������'	,	3814	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	227	,'	2016-08-14	',	75	,	'���������'	,	4960	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	228	,'	2016-08-15	',	470	,	'���������'	,	783	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	229	,'	2016-08-16	',	229	,	'���������'	,	2714	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	230	,'	2016-08-17	',	774	,	'���������'	,	4067	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	231	,'	2016-08-18	',	139	,	'���������'	,	4464	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	232	,'	2016-08-19	',	390	,	'���������'	,	769	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	233	,'	2016-08-20	',	4	,	'���������'	,	2591	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	234	,'	2016-08-21	',	771	,	'���������'	,	5000	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	235	,'	2016-08-22	',	102	,	'���������'	,	2519	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	236	,'	2016-08-23	',	654	,	'���������'	,	3104	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	237	,'	2016-08-24	',	482	,	'���������'	,	3944	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	238	,'	2016-08-25	',	335	,	'���������'	,	1570	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	239	,'	2016-08-26	',	391	,	'���������'	,	3852	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	240	,'	2016-08-27	',	844	,	'���������'	,	1909	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	241	,'	2016-08-28	',	676	,	'���������'	,	1773	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	242	,'	2016-08-29	',	780	,	'���������'	,	2140	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	243	,'	2016-08-30	',	588	,	'���������'	,	1642	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	244	,'	2016-08-31	',	669	,	'���������'	,	2122	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	245	,'	2016-09-01	',	409	,	'���������'	,	724	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	246	,'	2016-09-02	',	162	,	'���������'	,	4980	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	247	,'	2016-09-03	',	218	,	'���������'	,	2940	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	248	,'	2016-09-04	',	338	,	'���������'	,	795	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	249	,'	2016-09-05	',	224	,	'���������'	,	2122	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	250	,'	2016-09-06	',	464	,	'���������'	,	1372	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	251	,'	2016-09-07	',	46	,	'���������'	,	4723	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	252	,'	2016-09-08	',	822	,	'���������'	,	3404	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	253	,'	2016-09-09	',	815	,	'���������'	,	1937	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	254	,'	2016-09-10	',	199	,	'���������'	,	3307	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	255	,'	2016-09-11	',	60	,	'���������'	,	3653	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	256	,'	2016-09-12	',	214	,	'���������'	,	3323	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	257	,'	2016-09-13	',	915	,	'���������'	,	3955	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	258	,'	2016-09-14	',	751	,	'���������'	,	4527	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	259	,'	2016-09-15	',	358	,	'���������'	,	739	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	260	,'	2016-09-16	',	823	,	'���������'	,	1653	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	261	,'	2016-09-17	',	548	,	'���������'	,	1389	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	262	,'	2016-09-18	',	585	,	'���������'	,	3534	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	263	,'	2016-09-19	',	228	,	'���������'	,	3646	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	264	,'	2016-09-20	',	601	,	'���������'	,	3492	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	265	,'	2016-09-21	',	726	,	'���������'	,	3120	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	266	,'	2016-09-22	',	470	,	'���������'	,	3014	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	267	,'	2016-09-23	',	538	,	'���������'	,	3070	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	268	,'	2016-09-24	',	366	,	'���������'	,	3067	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	269	,'	2016-09-25	',	954	,	'���������'	,	3014	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	270	,'	2016-09-26	',	212	,	'���������'	,	2100	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	271	,'	2016-09-27	',	531	,	'���������'	,	2377	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	272	,'	2016-09-28	',	547	,	'���������'	,	707	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	273	,'	2016-09-29	',	944	,	'���������'	,	4646	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	274	,'	2016-09-30	',	923	,	'���������'	,	4240	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	275	,'	2016-10-01	',	990	,	'���������'	,	4882	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	276	,'	2016-10-02	',	852	,	'���������'	,	1598	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	277	,'	2016-10-03	',	335	,	'���������'	,	1941	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	278	,'	2016-10-04	',	328	,	'���������'	,	2013	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	279	,'	2016-10-05	',	184	,	'���������'	,	3692	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	280	,'	2016-10-06	',	241	,	'���������'	,	3430	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	281	,'	2016-10-07	',	602	,	'���������'	,	2500	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	282	,'	2016-10-08	',	383	,	'���������'	,	4527	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	283	,'	2016-10-09	',	488	,	'���������'	,	2903	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	284	,'	2016-10-10	',	744	,	'���������'	,	1381	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	285	,'	2016-10-11	',	354	,	'���������'	,	2557	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	286	,'	2016-10-12	',	839	,	'���������'	,	4900	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	287	,'	2016-10-13	',	972	,	'���������'	,	2265	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	288	,'	2016-10-14	',	976	,	'���������'	,	2274	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	289	,'	2016-10-15	',	170	,	'���������'	,	4457	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	290	,'	2016-10-16	',	643	,	'���������'	,	3166	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	291	,'	2016-10-17	',	478	,	'���������'	,	2760	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	292	,'	2016-10-18	',	583	,	'���������'	,	1107	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	293	,'	2016-10-19	',	553	,	'���������'	,	4145	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	294	,'	2016-10-20	',	437	,	'���������'	,	2648	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	295	,'	2016-10-21	',	713	,	'���������'	,	4780	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	296	,'	2016-10-22	',	65	,	'���������'	,	4115	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	297	,'	2016-10-23	',	939	,	'���������'	,	3722	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	298	,'	2016-10-24	',	886	,	'���������'	,	3548	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	299	,'	2016-10-25	',	701	,	'���������'	,	1185	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	300	,'	2016-10-26	',	866	,	'���������'	,	571	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	301	,'	2016-10-27	',	54	,	'���������'	,	2394	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	302	,'	2016-10-28	',	850	,	'���������'	,	3620	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	303	,'	2016-10-29	',	589	,	'���������'	,	3566	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	304	,'	2016-10-30	',	491	,	'���������'	,	1679	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	305	,'	2016-10-31	',	953	,	'���������'	,	3452	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	306	,'	2016-11-01	',	46	,	'���������'	,	2754	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	307	,'	2016-11-02	',	573	,	'���������'	,	3600	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	308	,'	2016-11-03	',	795	,	'���������'	,	3862	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	309	,'	2016-11-04	',	624	,	'���������'	,	4920	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	310	,'	2016-11-05	',	469	,	'���������'	,	1091	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	311	,'	2016-11-06	',	433	,	'���������'	,	2524	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	312	,'	2016-11-07	',	869	,	'���������'	,	3586	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	313	,'	2016-11-08	',	771	,	'���������'	,	2753	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	314	,'	2016-11-09	',	18	,	'���������'	,	1209	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	315	,'	2016-11-10	',	665	,	'���������'	,	1289	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	316	,'	2016-11-11	',	847	,	'���������'	,	4484	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	317	,'	2016-11-12	',	312	,	'���������'	,	2853	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	318	,'	2016-11-13	',	754	,	'���������'	,	4991	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	319	,'	2016-11-14	',	183	,	'���������'	,	1900	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	320	,'	2016-11-15	',	663	,	'���������'	,	616	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	321	,'	2016-11-16	',	139	,	'���������'	,	3152	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	322	,'	2016-11-17	',	335	,	'���������'	,	1223	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	323	,'	2016-11-18	',	872	,	'���������'	,	3004	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	324	,'	2016-11-19	',	465	,	'���������'	,	2233	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	325	,'	2016-11-20	',	761	,	'���������'	,	1776	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	326	,'	2016-11-21	',	667	,	'���������'	,	2079	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	327	,'	2016-11-22	',	932	,	'���������'	,	3330	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	328	,'	2016-11-23	',	366	,	'���������'	,	4003	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	329	,'	2016-11-24	',	718	,	'���������'	,	2598	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	330	,'	2016-11-25	',	884	,	'���������'	,	3433	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	331	,'	2016-11-26	',	850	,	'���������'	,	1609	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	332	,'	2016-11-27	',	578	,	'���������'	,	970	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	333	,'	2016-11-28	',	590	,	'���������'	,	979	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	334	,'	2016-11-29	',	510	,	'���������'	,	3306	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	335	,'	2016-11-30	',	927	,	'���������'	,	4740	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	336	,'	2016-12-01	',	27	,	'���������'	,	4293	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	337	,'	2016-12-02	',	288	,	'���������'	,	3012	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	338	,'	2016-12-03	',	120	,	'���������'	,	4333	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	339	,'	2016-12-04	',	75	,	'���������'	,	1573	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	340	,'	2016-12-05	',	116	,	'���������'	,	2098	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	341	,'	2016-12-06	',	409	,	'���������'	,	3786	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	342	,'	2016-12-07	',	817	,	'���������'	,	2976	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	343	,'	2016-12-08	',	168	,	'���������'	,	4222	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	344	,'	2016-12-09	',	958	,	'���������'	,	3614	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	345	,'	2016-12-10	',	353	,	'���������'	,	2820	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	346	,'	2016-12-11	',	606	,	'���������'	,	1792	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	347	,'	2016-12-12	',	7	,	'���������'	,	2129	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	348	,'	2016-12-13	',	770	,	'���������'	,	1901	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	349	,'	2016-12-14	',	352	,	'���������'	,	1326	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	350	,'	2016-12-15	',	754	,	'���������'	,	2393	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	351	,'	2016-12-16	',	728	,	'���������'	,	1274	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	352	,'	2016-12-17	',	918	,	'���������'	,	2989	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	353	,'	2016-12-18	',	920	,	'���������'	,	2069	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	354	,'	2016-12-19	',	101	,	'���������'	,	1126	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	355	,'	2016-12-20	',	925	,	'���������'	,	3680	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	356	,'	2016-12-21	',	616	,	'���������'	,	3883	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	357	,'	2016-12-22	',	927	,	'���������'	,	4048	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	358	,'	2016-12-23	',	268	,	'���������'	,	1177	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	359	,'	2016-12-24	',	739	,	'���������'	,	1131	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	360	,'	2016-12-25	',	572	,	'���������'	,	3786	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	361	,'	2016-12-26	',	617	,	'���������'	,	3929	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	362	,'	2016-12-27	',	802	,	'���������'	,	718	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	363	,'	2016-12-28	',	61	,	'���������'	,	3211	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	364	,'	2016-12-29	',	64	,	'���������'	,	4944	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	365	,'	2016-12-30	',	308	,	'���������'	,	3098	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	366	,'	2016-12-31	',	252	,	'���������'	,	2928	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	367	,'	2017-01-01	',	842	,	'���������'	,	4609	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	368	,'	2017-01-02	',	171	,	'���������'	,	1640	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	369	,'	2017-01-03	',	397	,	'���������'	,	2370	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	370	,'	2017-01-04	',	122	,	'���������'	,	2222	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	371	,'	2017-01-05	',	908	,	'���������'	,	528	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	372	,'	2017-01-06	',	180	,	'���������'	,	553	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	373	,'	2017-01-07	',	187	,	'���������'	,	2956	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	374	,'	2017-01-08	',	141	,	'���������'	,	909	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	375	,'	2017-01-09	',	44	,	'���������'	,	2255	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	376	,'	2017-01-10	',	612	,	'���������'	,	3134	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	377	,'	2017-01-11	',	76	,	'���������'	,	2766	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	378	,'	2017-01-12	',	798	,	'���������'	,	4280	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	379	,'	2017-01-13	',	447	,	'���������'	,	4227	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	380	,'	2017-01-14	',	281	,	'���������'	,	2855	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	381	,'	2017-01-15	',	764	,	'���������'	,	2255	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	382	,'	2017-01-16	',	30	,	'���������'	,	4394	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	383	,'	2017-01-17	',	172	,	'���������'	,	655	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	384	,'	2017-01-18	',	719	,	'���������'	,	1965	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	385	,'	2017-01-19	',	384	,	'���������'	,	3787	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	386	,'	2017-01-20	',	706	,	'���������'	,	1800	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	387	,'	2017-01-21	',	1000	,	'���������'	,	4306	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	388	,'	2017-01-22	',	752	,	'���������'	,	4270	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	389	,'	2017-01-23	',	920	,	'���������'	,	3273	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	390	,'	2017-01-24	',	905	,	'���������'	,	4881	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	391	,'	2017-01-25	',	684	,	'���������'	,	4986	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	392	,'	2017-01-26	',	318	,	'���������'	,	3573	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	393	,'	2017-01-27	',	600	,	'���������'	,	3616	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	394	,'	2017-01-28	',	989	,	'���������'	,	2489	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	395	,'	2017-01-29	',	283	,	'���������'	,	4699	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	396	,'	2017-01-30	',	874	,	'���������'	,	2733	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	397	,'	2017-01-31	',	971	,	'���������'	,	660	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	398	,'	2017-02-01	',	127	,	'���������'	,	1899	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	399	,'	2017-02-02	',	571	,	'���������'	,	3377	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	400	,'	2017-02-03	',	350	,	'���������'	,	1194	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	401	,'	2017-02-04	',	722	,	'���������'	,	4052	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	402	,'	2017-02-05	',	142	,	'���������'	,	2209	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	403	,'	2017-02-06	',	563	,	'���������'	,	1172	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	404	,'	2017-02-07	',	411	,	'���������'	,	4128	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	405	,'	2017-02-08	',	255	,	'���������'	,	2333	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	406	,'	2017-02-09	',	187	,	'���������'	,	1659	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	407	,'	2017-02-10	',	647	,	'���������'	,	4032	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	408	,'	2017-02-11	',	380	,	'���������'	,	1695	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	409	,'	2017-02-12	',	160	,	'���������'	,	2188	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	410	,'	2017-02-13	',	580	,	'���������'	,	2207	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	411	,'	2017-02-14	',	884	,	'���������'	,	618	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	412	,'	2017-02-15	',	685	,	'���������'	,	529	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	413	,'	2017-02-16	',	216	,	'���������'	,	3304	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	414	,'	2017-02-17	',	500	,	'���������'	,	3172	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	415	,'	2017-02-18	',	75	,	'���������'	,	804	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	416	,'	2017-02-19	',	241	,	'���������'	,	2068	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	417	,'	2017-02-20	',	125	,	'���������'	,	1187	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	418	,'	2017-02-21	',	691	,	'���������'	,	2791	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	419	,'	2017-02-22	',	572	,	'���������'	,	1708	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	420	,'	2017-02-23	',	570	,	'���������'	,	2235	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	421	,'	2017-02-24	',	362	,	'���������'	,	1936	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	422	,'	2017-02-25	',	461	,	'���������'	,	2660	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	423	,'	2017-02-26	',	726	,	'���������'	,	1767	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	424	,'	2017-02-27	',	959	,	'���������'	,	3735	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	425	,'	2017-02-28	',	950	,	'���������'	,	4597	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	426	,'	2017-03-01	',	712	,	'���������'	,	4602	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	427	,'	2017-03-02	',	219	,	'���������'	,	1459	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	428	,'	2017-03-03	',	690	,	'���������'	,	1879	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	429	,'	2017-03-04	',	714	,	'���������'	,	1418	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	430	,'	2017-03-05	',	669	,	'���������'	,	2798	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	431	,'	2017-03-06	',	582	,	'���������'	,	3558	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	432	,'	2017-03-07	',	475	,	'���������'	,	2519	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	433	,'	2017-03-08	',	32	,	'���������'	,	4612	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	434	,'	2017-03-09	',	566	,	'���������'	,	3757	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	435	,'	2017-03-10	',	523	,	'���������'	,	3364	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	436	,'	2017-03-11	',	582	,	'���������'	,	1529	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	437	,'	2017-03-12	',	831	,	'���������'	,	2630	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	438	,'	2017-03-13	',	848	,	'���������'	,	3101	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	439	,'	2017-03-14	',	350	,	'���������'	,	1976	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	440	,'	2017-03-15	',	536	,	'���������'	,	2530	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	441	,'	2017-03-16	',	357	,	'���������'	,	3056	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	442	,'	2017-03-17	',	596	,	'���������'	,	525	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	443	,'	2017-03-18	',	637	,	'���������'	,	4209	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	444	,'	2017-03-19	',	951	,	'���������'	,	3990	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	445	,'	2017-03-20	',	141	,	'���������'	,	2374	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	446	,'	2017-03-21	',	454	,	'���������'	,	3521	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	447	,'	2017-03-22	',	820	,	'���������'	,	1488	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	448	,'	2017-03-23	',	186	,	'���������'	,	937	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	449	,'	2017-03-24	',	34	,	'���������'	,	4659	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	450	,'	2017-03-25	',	644	,	'���������'	,	4654	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	451	,'	2017-03-26	',	90	,	'���������'	,	823	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	452	,'	2017-03-27	',	542	,	'���������'	,	1951	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	453	,'	2017-03-28	',	736	,	'���������'	,	1803	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	454	,'	2017-03-29	',	957	,	'���������'	,	3705	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	455	,'	2017-03-30	',	444	,	'���������'	,	1136	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	456	,'	2017-03-31	',	770	,	'���������'	,	3684	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	457	,'	2017-04-01	',	825	,	'���������'	,	2596	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	458	,'	2017-04-02	',	440	,	'���������'	,	2660	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	459	,'	2017-04-03	',	255	,	'���������'	,	3701	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	460	,'	2017-04-04	',	264	,	'���������'	,	2524	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	461	,'	2017-04-05	',	384	,	'���������'	,	3487	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	462	,'	2017-04-06	',	698	,	'���������'	,	2004	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	463	,'	2017-04-07	',	333	,	'���������'	,	4952	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	464	,'	2017-04-08	',	7	,	'���������'	,	2754	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	465	,'	2017-04-09	',	124	,	'���������'	,	2942	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	466	,'	2017-04-10	',	797	,	'���������'	,	4503	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	467	,'	2017-04-11	',	564	,	'���������'	,	4914	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	468	,'	2017-04-12	',	330	,	'���������'	,	789	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	469	,'	2017-04-13	',	594	,	'���������'	,	1017	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	470	,'	2017-04-14	',	253	,	'���������'	,	2456	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	471	,'	2017-04-15	',	798	,	'���������'	,	4003	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	472	,'	2017-04-16	',	292	,	'���������'	,	3640	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	473	,'	2017-04-17	',	540	,	'���������'	,	3653	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	474	,'	2017-04-18	',	547	,	'���������'	,	1720	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	475	,'	2017-04-19	',	932	,	'���������'	,	1479	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	476	,'	2017-04-20	',	389	,	'���������'	,	3268	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	477	,'	2017-04-21	',	242	,	'���������'	,	3211	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	478	,'	2017-04-22	',	918	,	'���������'	,	1741	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	479	,'	2017-04-23	',	155	,	'���������'	,	3535	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	480	,'	2017-04-24	',	607	,	'���������'	,	3381	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	481	,'	2017-04-25	',	206	,	'���������'	,	4989	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	482	,'	2017-04-26	',	608	,	'���������'	,	3754	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	483	,'	2017-04-27	',	64	,	'���������'	,	1164	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	484	,'	2017-04-28	',	104	,	'���������'	,	1875	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	485	,'	2017-04-29	',	651	,	'���������'	,	1417	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	486	,'	2017-04-30	',	732	,	'���������'	,	3740	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	487	,'	2017-05-01	',	435	,	'���������'	,	2228	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	488	,'	2017-05-02	',	944	,	'���������'	,	4107	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	489	,'	2017-05-03	',	584	,	'���������'	,	4978	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	490	,'	2017-05-04	',	70	,	'���������'	,	2422	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	491	,'	2017-05-05	',	612	,	'���������'	,	1327	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	492	,'	2017-05-06	',	279	,	'���������'	,	962	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	493	,'	2017-05-07	',	960	,	'���������'	,	1344	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	494	,'	2017-05-08	',	303	,	'���������'	,	590	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	495	,'	2017-05-09	',	731	,	'���������'	,	2673	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	496	,'	2017-05-10	',	853	,	'���������'	,	1180	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	497	,'	2017-05-11	',	149	,	'���������'	,	3552	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	498	,'	2017-05-12	',	940	,	'���������'	,	1393	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	499	,'	2017-05-13	',	791	,	'���������'	,	3909	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	500	,'	2017-05-14	',	872	,	'���������'	,	1375	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	501	,'	2017-05-15	',	32	,	'���������'	,	3136	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	502	,'	2017-05-16	',	561	,	'���������'	,	931	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	503	,'	2017-05-17	',	46	,	'���������'	,	3884	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	504	,'	2017-05-18	',	711	,	'���������'	,	3515	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	505	,'	2017-05-19	',	753	,	'���������'	,	2491	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	506	,'	2017-05-20	',	599	,	'���������'	,	952	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	507	,'	2017-05-21	',	859	,	'���������'	,	1187	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	508	,'	2017-05-22	',	358	,	'���������'	,	1393	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	509	,'	2017-05-23	',	318	,	'���������'	,	3500	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	510	,'	2017-05-24	',	325	,	'���������'	,	4535	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	511	,'	2017-05-25	',	86	,	'���������'	,	3728	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	512	,'	2017-05-26	',	999	,	'���������'	,	4124	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	513	,'	2017-05-27	',	736	,	'���������'	,	2555	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	514	,'	2017-05-28	',	767	,	'���������'	,	1157	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	515	,'	2017-05-29	',	69	,	'���������'	,	3149	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	516	,'	2017-05-30	',	253	,	'���������'	,	631	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	517	,'	2017-05-31	',	535	,	'���������'	,	840	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	518	,'	2017-06-01	',	356	,	'���������'	,	2047	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	519	,'	2017-06-02	',	24	,	'���������'	,	4632	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	520	,'	2017-06-03	',	817	,	'���������'	,	3405	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	521	,'	2017-06-04	',	749	,	'���������'	,	2107	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	522	,'	2017-06-05	',	334	,	'���������'	,	4025	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	523	,'	2017-06-06	',	417	,	'���������'	,	3673	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	524	,'	2017-06-07	',	476	,	'���������'	,	4776	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	525	,'	2017-06-08	',	219	,	'���������'	,	4529	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	526	,'	2017-06-09	',	30	,	'���������'	,	1835	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	527	,'	2017-06-10	',	999	,	'���������'	,	3353	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	528	,'	2017-06-11	',	935	,	'���������'	,	4512	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	529	,'	2017-06-12	',	132	,	'���������'	,	4776	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	530	,'	2017-06-13	',	456	,	'���������'	,	1971	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	531	,'	2017-06-14	',	371	,	'���������'	,	4447	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	532	,'	2017-06-15	',	256	,	'���������'	,	4919	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	533	,'	2017-06-16	',	966	,	'���������'	,	925	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	534	,'	2017-06-17	',	89	,	'���������'	,	4109	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	535	,'	2017-06-18	',	946	,	'���������'	,	4325	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	536	,'	2017-06-19	',	734	,	'���������'	,	4955	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	537	,'	2017-06-20	',	921	,	'���������'	,	1831	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	538	,'	2017-06-21	',	498	,	'���������'	,	4501	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	539	,'	2017-06-22	',	220	,	'���������'	,	2422	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	540	,'	2017-06-23	',	614	,	'���������'	,	2522	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	541	,'	2017-06-24	',	754	,	'���������'	,	2463	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	542	,'	2017-06-25	',	819	,	'���������'	,	2155	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	543	,'	2017-06-26	',	593	,	'���������'	,	2845	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	544	,'	2017-06-27	',	778	,	'���������'	,	1438	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	545	,'	2017-06-28	',	413	,	'���������'	,	2191	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	546	,'	2017-06-29	',	714	,	'���������'	,	1321	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	547	,'	2017-06-30	',	459	,	'���������'	,	992	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	548	,'	2017-07-01	',	846	,	'���������'	,	2936	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	549	,'	2017-07-02	',	831	,	'���������'	,	3224	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	550	,'	2017-07-03	',	472	,	'���������'	,	1862	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	551	,'	2017-07-04	',	418	,	'���������'	,	2606	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	552	,'	2017-07-05	',	34	,	'���������'	,	3959	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	553	,'	2017-07-06	',	678	,	'���������'	,	595	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	554	,'	2017-07-07	',	832	,	'���������'	,	4458	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	555	,'	2017-07-08	',	430	,	'���������'	,	4592	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	556	,'	2017-07-09	',	81	,	'���������'	,	3853	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	557	,'	2017-07-10	',	77	,	'���������'	,	4432	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	558	,'	2017-07-11	',	105	,	'���������'	,	1598	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	559	,'	2017-07-12	',	119	,	'���������'	,	2675	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	560	,'	2017-07-13	',	817	,	'���������'	,	3623	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	561	,'	2017-07-14	',	792	,	'���������'	,	4521	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	562	,'	2017-07-15	',	729	,	'���������'	,	1886	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	563	,'	2017-07-16	',	874	,	'���������'	,	3503	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	564	,'	2017-07-17	',	61	,	'���������'	,	663	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	565	,'	2017-07-18	',	999	,	'���������'	,	3812	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	566	,'	2017-07-19	',	484	,	'���������'	,	4869	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	567	,'	2017-07-20	',	2	,	'���������'	,	4961	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	568	,'	2017-07-21	',	322	,	'���������'	,	555	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	569	,'	2017-07-22	',	931	,	'���������'	,	2343	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	570	,'	2017-07-23	',	217	,	'���������'	,	4910	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	571	,'	2017-07-24	',	5	,	'���������'	,	2578	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	572	,'	2017-07-25	',	196	,	'���������'	,	4767	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	573	,'	2017-07-26	',	54	,	'���������'	,	2153	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	574	,'	2017-07-27	',	473	,	'���������'	,	3546	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	575	,'	2017-07-28	',	296	,	'���������'	,	3130	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	576	,'	2017-07-29	',	402	,	'���������'	,	4442	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	577	,'	2017-07-30	',	754	,	'���������'	,	3435	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	578	,'	2017-07-31	',	799	,	'���������'	,	1138	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	579	,'	2017-08-01	',	281	,	'���������'	,	969	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	580	,'	2017-08-02	',	929	,	'���������'	,	3211	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	581	,'	2017-08-03	',	184	,	'���������'	,	1132	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	582	,'	2017-08-04	',	701	,	'���������'	,	2829	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	583	,'	2017-08-05	',	43	,	'���������'	,	2119	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	584	,'	2017-08-06	',	270	,	'���������'	,	2586	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	585	,'	2017-08-07	',	589	,	'���������'	,	1800	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	586	,'	2017-08-08	',	891	,	'���������'	,	753	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	587	,'	2017-08-09	',	334	,	'���������'	,	1149	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	588	,'	2017-08-10	',	389	,	'�� ���������'	,	3727	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	589	,'	2017-08-11	',	981	,	'�� ���������'	,	1035	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	590	,'	2017-08-12	',	571	,	'�� ���������'	,	2580	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	591	,'	2017-08-13	',	17	,	'�� ���������'	,	1201	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	592	,'	2017-08-14	',	273	,	'�� ���������'	,	3819	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	593	,'	2017-08-15	',	935	,	'�� ���������'	,	3366	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	594	,'	2017-08-16	',	158	,	'�� ���������'	,	3471	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	595	,'	2017-08-17	',	174	,	'�� ���������'	,	2538	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	596	,'	2017-08-18	',	208	,	'�� ���������'	,	3135	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	597	,'	2017-08-19	',	373	,	'�� ���������'	,	3716	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	598	,'	2017-08-20	',	61	,	'�� ���������'	,	4997	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	599	,'	2017-08-21	',	760	,	'�� ���������'	,	2325	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	600	,'	2017-08-22	',	64	,	'�� ���������'	,	4668	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	601	,'	2017-08-23	',	186	,	'�� ���������'	,	2773	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	602	,'	2017-08-24	',	167	,	'�� ���������'	,	4686	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	603	,'	2017-08-25	',	656	,	'�� ���������'	,	2616	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	604	,'	2017-08-26	',	592	,	'�� ���������'	,	1216	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	605	,'	2017-08-27	',	227	,	'�� ���������'	,	2272	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	606	,'	2017-08-28	',	957	,	'�� ���������'	,	3922	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	607	,'	2017-08-29	',	922	,	'�� ���������'	,	3543	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	608	,'	2017-08-30	',	348	,	'�� ���������'	,	4436	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	609	,'	2017-08-31	',	137	,	'�� ���������'	,	3914	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	610	,'	2017-09-01	',	874	,	'�� ���������'	,	2234	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	611	,'	2017-09-02	',	933	,	'�� ���������'	,	2872	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	612	,'	2017-09-03	',	72	,	'�� ���������'	,	2401	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	613	,'	2017-09-04	',	420	,	'�� ���������'	,	2768	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	614	,'	2017-09-05	',	148	,	'�� ���������'	,	1515	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	615	,'	2017-09-06	',	116	,	'�� ���������'	,	4210	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	616	,'	2017-09-07	',	902	,	'�� ���������'	,	1425	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	617	,'	2017-09-08	',	249	,	'�� ���������'	,	4025	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	618	,'	2017-09-09	',	131	,	'�� ���������'	,	1725	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	619	,'	2017-09-10	',	713	,	'�� ���������'	,	1814	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	620	,'	2017-09-11	',	676	,	'�� ���������'	,	2164	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	621	,'	2017-09-12	',	760	,	'�� ���������'	,	4956	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	622	,'	2017-09-13	',	35	,	'�� ���������'	,	915	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	623	,'	2017-09-14	',	912	,	'�� ���������'	,	4563	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	624	,'	2017-09-15	',	346	,	'�� ���������'	,	3463	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	625	,'	2017-09-16	',	618	,	'�� ���������'	,	3717	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	626	,'	2017-09-17	',	995	,	'�� ���������'	,	689	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	627	,'	2017-09-18	',	199	,	'�� ���������'	,	2007	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	628	,'	2017-09-19	',	774	,	'�� ���������'	,	2629	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	629	,'	2017-09-20	',	763	,	'�� ���������'	,	1134	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	630	,'	2017-09-21	',	903	,	'�� ���������'	,	1168	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	631	,'	2017-09-22	',	240	,	'�� ���������'	,	4920	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	632	,'	2017-09-23	',	956	,	'�� ���������'	,	1184	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	633	,'	2017-09-24	',	928	,	'�� ���������'	,	3615	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	634	,'	2017-09-25	',	593	,	'�� ���������'	,	2864	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	635	,'	2017-09-26	',	813	,	'�� ���������'	,	2845	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	636	,'	2017-09-27	',	157	,	'�� ���������'	,	3937	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	637	,'	2017-09-28	',	515	,	'�� ���������'	,	2258	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	638	,'	2017-09-29	',	345	,	'�� ���������'	,	4759	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	639	,'	2017-09-30	',	471	,	'�� ���������'	,	3759	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	640	,'	2017-10-01	',	750	,	'�� ���������'	,	916	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	641	,'	2017-10-02	',	892	,	'�� ���������'	,	3095	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	642	,'	2017-10-03	',	408	,	'�� ���������'	,	3656	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	643	,'	2017-10-04	',	458	,	'�� ���������'	,	734	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	644	,'	2017-10-05	',	984	,	'�� ���������'	,	1895	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	645	,'	2017-10-06	',	885	,	'�� ���������'	,	4260	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	646	,'	2017-10-07	',	233	,	'�� ���������'	,	4365	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	647	,'	2017-10-08	',	774	,	'�� ���������'	,	1137	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	648	,'	2017-10-09	',	972	,	'�� ���������'	,	4070	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	649	,'	2017-10-10	',	670	,	'�� ���������'	,	1969	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	650	,'	2017-10-11	',	933	,	'�� ���������'	,	4280	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	651	,'	2017-10-12	',	270	,	'�� ���������'	,	3869	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	652	,'	2017-10-13	',	353	,	'�� ���������'	,	4667	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	653	,'	2017-10-14	',	353	,	'�� ���������'	,	4652	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	654	,'	2017-10-15	',	770	,	'�� ���������'	,	4591	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	655	,'	2017-10-16	',	379	,	'�� ���������'	,	2390	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	656	,'	2017-10-17	',	519	,	'�� ���������'	,	1969	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	657	,'	2017-10-18	',	153	,	'�� ���������'	,	781	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	658	,'	2017-10-19	',	123	,	'�� ���������'	,	822	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	659	,'	2017-10-20	',	236	,	'�� ���������'	,	672	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	660	,'	2017-10-21	',	804	,	'�� ���������'	,	3492	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	661	,'	2017-10-22	',	384	,	'�� ���������'	,	3894	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	662	,'	2017-10-23	',	234	,	'�� ���������'	,	4197	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	663	,'	2017-10-24	',	522	,	'�� ���������'	,	1349	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	664	,'	2017-10-25	',	592	,	'�� ���������'	,	1093	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	665	,'	2017-10-26	',	797	,	'�� ���������'	,	3197	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	666	,'	2017-10-27	',	981	,	'�� ���������'	,	1695	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	667	,'	2017-10-28	',	504	,	'�� ���������'	,	2452	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	668	,'	2017-10-29	',	398	,	'�� ���������'	,	3142	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	669	,'	2017-10-30	',	197	,	'�� ���������'	,	825	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	670	,'	2017-10-31	',	549	,	'�� ���������'	,	1182	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	671	,'	2017-11-01	',	454	,	'�� ���������'	,	3392	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	672	,'	2017-11-02	',	187	,	'�� ���������'	,	3332	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	673	,'	2017-11-03	',	713	,	'�� ���������'	,	3004	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	674	,'	2017-11-04	',	539	,	'�� ���������'	,	4627	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	675	,'	2017-11-05	',	524	,	'�� ���������'	,	2742	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	676	,'	2017-11-06	',	23	,	'�� ���������'	,	2274	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	677	,'	2017-11-07	',	420	,	'�� ���������'	,	4679	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	678	,'	2017-11-08	',	730	,	'�� ���������'	,	1169	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	679	,'	2017-11-09	',	125	,	'�� ���������'	,	1466	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	680	,'	2017-11-10	',	450	,	'�� ���������'	,	1578	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	681	,'	2017-11-11	',	590	,	'�� ���������'	,	3939	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	682	,'	2017-11-12	',	149	,	'�� ���������'	,	1941	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	683	,'	2017-11-13	',	446	,	'�� ���������'	,	4710	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	684	,'	2017-11-14	',	409	,	'�� ���������'	,	2080	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	685	,'	2017-11-15	',	234	,	'�� ���������'	,	4967	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	686	,'	2017-11-16	',	745	,	'�� ���������'	,	896	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	687	,'	2017-11-17	',	407	,	'�� ���������'	,	4059	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	688	,'	2017-11-18	',	949	,	'�� ���������'	,	634	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	689	,'	2017-11-19	',	801	,	'�� ���������'	,	3569	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	690	,'	2017-11-20	',	54	,	'�� ���������'	,	1943	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	691	,'	2017-11-21	',	34	,	'�� ���������'	,	1973	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	692	,'	2017-11-22	',	484	,	'�� ���������'	,	3538	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	693	,'	2017-11-23	',	65	,	'�� ���������'	,	2299	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	694	,'	2017-11-24	',	82	,	'�� ���������'	,	3742	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	695	,'	2017-11-25	',	103	,	'�� ���������'	,	1135	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	696	,'	2017-11-26	',	574	,	'�� ���������'	,	2106	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	697	,'	2017-11-27	',	621	,	'�� ���������'	,	4930	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	698	,'	2017-11-28	',	702	,	'�� ���������'	,	4467	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	699	,'	2017-11-29	',	824	,	'�� ���������'	,	4843	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	700	,'	2017-11-30	',	839	,	'�� ���������'	,	2439	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	701	,'	2017-12-01	',	541	,	'�� ���������'	,	509	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	702	,'	2017-12-02	',	882	,	'�� ���������'	,	4477	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	703	,'	2017-12-03	',	966	,	'�� ���������'	,	3894	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	704	,'	2017-12-04	',	321	,	'�� ���������'	,	1774	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	705	,'	2017-12-05	',	581	,	'�� ���������'	,	4345	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	706	,'	2017-12-06	',	744	,	'�� ���������'	,	1184	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	707	,'	2017-12-07	',	29	,	'�� ���������'	,	4007	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	708	,'	2017-12-08	',	877	,	'�� ���������'	,	2836	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	709	,'	2017-12-09	',	752	,	'�� ���������'	,	2347	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	710	,'	2017-12-10	',	248	,	'�� ���������'	,	3299	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	711	,'	2017-12-11	',	460	,	'�� ���������'	,	4810	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	712	,'	2017-12-12	',	604	,	'�� ���������'	,	4468	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	713	,'	2017-12-13	',	114	,	'�� ���������'	,	1649	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	714	,'	2017-12-14	',	104	,	'�� ���������'	,	890	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	715	,'	2017-12-15	',	502	,	'�� ���������'	,	4915	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	716	,'	2017-12-16	',	556	,	'�� ���������'	,	3804	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	717	,'	2017-12-17	',	860	,	'�� ���������'	,	3162	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	718	,'	2017-12-18	',	58	,	'�� ���������'	,	3953	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	719	,'	2017-12-19	',	64	,	'�� ���������'	,	3922	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	720	,'	2017-12-20	',	881	,	'�� ���������'	,	2302	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	721	,'	2017-12-21	',	700	,	'�� ���������'	,	763	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	722	,'	2017-12-22	',	49	,	'�� ���������'	,	2104	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	723	,'	2017-12-23	',	148	,	'�� ���������'	,	3113	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	724	,'	2017-12-24	',	267	,	'�� ���������'	,	718	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	725	,'	2017-12-25	',	951	,	'�� ���������'	,	3488	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	726	,'	2017-12-26	',	979	,	'�� ���������'	,	2683	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	727	,'	2017-12-27	',	99	,	'�� ���������'	,	4548	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	728	,'	2017-12-28	',	476	,	'�� ���������'	,	2140	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	729	,'	2017-12-29	',	477	,	'�� ���������'	,	1082	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	730	,'	2017-12-30	',	256	,	'�� ���������'	,	4260	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	731	,'	2017-12-31	',	345	,	'�� ���������'	,	794	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	732	,'	2018-01-01	',	360	,	'�� ���������'	,	4486	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	733	,'	2018-01-02	',	640	,	'�� ���������'	,	1944	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	734	,'	2018-01-03	',	584	,	'�� ���������'	,	883	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	735	,'	2018-01-04	',	973	,	'�� ���������'	,	1591	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	736	,'	2018-01-05	',	304	,	'�� ���������'	,	3824	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	737	,'	2018-01-06	',	172	,	'�� ���������'	,	2475	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	738	,'	2018-01-07	',	179	,	'�� ���������'	,	4343	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	739	,'	2018-01-08	',	427	,	'�� ���������'	,	3903	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	740	,'	2018-01-09	',	182	,	'�� ���������'	,	4520	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	741	,'	2018-01-10	',	97	,	'�� ���������'	,	1648	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	742	,'	2018-01-11	',	644	,	'�� ���������'	,	1774	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	743	,'	2018-01-12	',	218	,	'�� ���������'	,	2210	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	744	,'	2018-01-13	',	143	,	'�� ���������'	,	1753	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	745	,'	2018-01-14	',	940	,	'�� ���������'	,	1415	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	746	,'	2018-01-15	',	728	,	'�� ���������'	,	2081	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	747	,'	2018-01-16	',	928	,	'�� ���������'	,	2033	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	748	,'	2018-01-17	',	663	,	'�� ���������'	,	4545	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	749	,'	2018-01-18	',	878	,	'�� ���������'	,	1930	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	750	,'	2018-01-19	',	392	,	'�� ���������'	,	1516	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	751	,'	2018-01-20	',	174	,	'�� ���������'	,	2140	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	752	,'	2018-01-21	',	361	,	'�� ���������'	,	2340	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	753	,'	2018-01-22	',	433	,	'�� ���������'	,	1290	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	754	,'	2018-01-23	',	506	,	'�� ���������'	,	3035	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	755	,'	2018-01-24	',	344	,	'�� ���������'	,	2995	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	756	,'	2018-01-25	',	53	,	'�� ���������'	,	2696	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	757	,'	2018-01-26	',	454	,	'�� ���������'	,	3285	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	758	,'	2018-01-27	',	148	,	'�� ���������'	,	3857	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	759	,'	2018-01-28	',	453	,	'�� ���������'	,	2817	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	760	,'	2018-01-29	',	178	,	'�� ���������'	,	620	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	761	,'	2018-01-30	',	330	,	'�� ���������'	,	1514	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	762	,'	2018-01-31	',	882	,	'�� ���������'	,	3765	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	763	,'	2018-02-01	',	974	,	'�� ���������'	,	987	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	764	,'	2018-02-02	',	944	,	'�� ���������'	,	1971	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	765	,'	2018-02-03	',	975	,	'�� ���������'	,	3034	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	766	,'	2018-02-04	',	222	,	'�� ���������'	,	2926	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	767	,'	2018-02-05	',	304	,	'�� ���������'	,	925	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	768	,'	2018-02-06	',	780	,	'�� ���������'	,	1947	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	769	,'	2018-02-07	',	908	,	'�� ���������'	,	843	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	770	,'	2018-02-08	',	580	,	'�� ���������'	,	3506	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	771	,'	2018-02-09	',	285	,	'�� ���������'	,	3618	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	772	,'	2018-02-10	',	102	,	'�� ���������'	,	2811	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	773	,'	2018-02-11	',	145	,	'�� ���������'	,	4826	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	774	,'	2018-02-12	',	817	,	'�� ���������'	,	4670	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	775	,'	2018-02-13	',	897	,	'�� ���������'	,	4624	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	776	,'	2018-02-14	',	46	,	'�� ���������'	,	4460	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	777	,'	2018-02-15	',	461	,	'�� ���������'	,	3004	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	778	,'	2018-02-16	',	802	,	'�� ���������'	,	3620	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	779	,'	2018-02-17	',	335	,	'�� ���������'	,	1066	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	780	,'	2018-02-18	',	219	,	'�� ���������'	,	3926	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	781	,'	2018-02-19	',	644	,	'�� ���������'	,	2902	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	782	,'	2018-02-20	',	7	,	'�� ���������'	,	1566	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	783	,'	2018-02-21	',	668	,	'�� ���������'	,	4398	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	784	,'	2018-02-22	',	179	,	'�� ���������'	,	979	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	785	,'	2018-02-23	',	468	,	'�� ���������'	,	3942	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	786	,'	2018-02-24	',	462	,	'�� ���������'	,	1505	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	787	,'	2018-02-25	',	434	,	'�� ���������'	,	1771	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	788	,'	2018-02-26	',	411	,	'�� ���������'	,	1453	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	789	,'	2018-02-27	',	276	,	'�� ���������'	,	759	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	790	,'	2018-02-28	',	463	,	'�� ���������'	,	2329	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	791	,'	2018-03-01	',	688	,	'�� ���������'	,	2753	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	792	,'	2018-03-02	',	642	,	'�� ���������'	,	966	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	793	,'	2018-03-03	',	641	,	'�� ���������'	,	1848	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	794	,'	2018-03-04	',	14	,	'�� ���������'	,	4496	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	795	,'	2018-03-05	',	159	,	'�� ���������'	,	4468	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	796	,'	2018-03-06	',	245	,	'�� ���������'	,	2147	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	797	,'	2018-03-07	',	554	,	'�� ���������'	,	1677	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	798	,'	2018-03-08	',	675	,	'�� ���������'	,	2833	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	799	,'	2018-03-09	',	790	,	'�� ���������'	,	3997	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	800	,'	2018-03-10	',	106	,	'�� ���������'	,	3489	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	801	,'	2018-03-11	',	496	,	'�� ���������'	,	525	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	802	,'	2018-03-12	',	642	,	'�� ���������'	,	1887	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	803	,'	2018-03-13	',	566	,	'�� ���������'	,	4616	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	804	,'	2018-03-14	',	807	,	'�� ���������'	,	822	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	805	,'	2018-03-15	',	303	,	'�� ���������'	,	2707	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	806	,'	2018-03-16	',	798	,	'�� ���������'	,	893	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	807	,'	2018-03-17	',	298	,	'�� ���������'	,	3304	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	808	,'	2018-03-18	',	284	,	'�� ���������'	,	3596	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	809	,'	2018-03-19	',	304	,	'�� ���������'	,	4434	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	810	,'	2018-03-20	',	886	,	'�� ���������'	,	2035	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	811	,'	2018-03-21	',	774	,	'�� ���������'	,	4850	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	812	,'	2018-03-22	',	454	,	'�� ���������'	,	4896	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	813	,'	2018-03-23	',	426	,	'�� ���������'	,	3024	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	814	,'	2018-03-24	',	6	,	'�� ���������'	,	2011	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	815	,'	2018-03-25	',	256	,	'�� ���������'	,	2648	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	816	,'	2018-03-26	',	178	,	'�� ���������'	,	4772	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	817	,'	2018-03-27	',	184	,	'�� ���������'	,	1029	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	818	,'	2018-03-28	',	102	,	'�� ���������'	,	4324	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	819	,'	2018-03-29	',	767	,	'�� ���������'	,	1721	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	820	,'	2018-03-30	',	818	,	'�� ���������'	,	1382	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	821	,'	2018-03-31	',	552	,	'�� ���������'	,	917	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	822	,'	2018-04-01	',	979	,	'�� ���������'	,	4536	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	823	,'	2018-04-02	',	373	,	'�� ���������'	,	1272	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	824	,'	2018-04-03	',	271	,	'�� ���������'	,	3995	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	825	,'	2018-04-04	',	209	,	'�� ���������'	,	2342	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	826	,'	2018-04-05	',	298	,	'�� ���������'	,	4422	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	827	,'	2018-04-06	',	292	,	'�� ���������'	,	4555	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	828	,'	2018-04-07	',	27	,	'�� ���������'	,	1621	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	829	,'	2018-04-08	',	617	,	'�� ���������'	,	4611	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	830	,'	2018-04-09	',	816	,	'�� ���������'	,	4264	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	831	,'	2018-04-10	',	124	,	'�� ���������'	,	4998	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	832	,'	2018-04-11	',	447	,	'�� ���������'	,	2757	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	833	,'	2018-04-12	',	498	,	'�� ���������'	,	2917	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	834	,'	2018-04-13	',	598	,	'�� ���������'	,	4755	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	835	,'	2018-04-14	',	931	,	'�� ���������'	,	2401	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	836	,'	2018-04-15	',	683	,	'�� ���������'	,	1065	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	837	,'	2018-04-16	',	171	,	'�� ���������'	,	2290	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	838	,'	2018-04-17	',	517	,	'�� ���������'	,	667	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	839	,'	2018-04-18	',	142	,	'�� ���������'	,	1447	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	840	,'	2018-04-19	',	459	,	'�� ���������'	,	3794	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	841	,'	2018-04-20	',	741	,	'�� ���������'	,	4251	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	842	,'	2018-04-21	',	879	,	'�� ���������'	,	909	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	843	,'	2018-04-22	',	982	,	'�� ���������'	,	1713	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	844	,'	2018-04-23	',	345	,	'�� ���������'	,	2108	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	845	,'	2018-04-24	',	115	,	'�� ���������'	,	2426	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	846	,'	2018-04-25	',	867	,	'�� ���������'	,	1637	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	847	,'	2018-04-26	',	979	,	'�� ���������'	,	2008	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	848	,'	2018-04-27	',	699	,	'�� ���������'	,	3394	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	849	,'	2018-04-28	',	570	,	'�� ���������'	,	1684	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	850	,'	2018-04-29	',	322	,	'�� ���������'	,	1195	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	851	,'	2018-04-30	',	237	,	'�� ���������'	,	3884	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	852	,'	2018-05-01	',	171	,	'�� ���������'	,	3167	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	853	,'	2018-05-02	',	859	,	'�� ���������'	,	4774	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	854	,'	2018-05-03	',	687	,	'�� ���������'	,	542	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	855	,'	2018-05-04	',	809	,	'�� ���������'	,	4625	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	856	,'	2018-05-05	',	763	,	'�� ���������'	,	2792	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	857	,'	2018-05-06	',	379	,	'�� ���������'	,	3136	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	858	,'	2018-05-07	',	375	,	'�� ���������'	,	3593	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	859	,'	2018-05-08	',	258	,	'�� ���������'	,	3546	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	860	,'	2018-05-09	',	912	,	'�� ���������'	,	1085	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	861	,'	2018-05-10	',	606	,	'�� ���������'	,	2511	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	862	,'	2018-05-11	',	985	,	'�� ���������'	,	4102	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	863	,'	2018-05-12	',	787	,	'�� ���������'	,	3358	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	864	,'	2018-05-13	',	892	,	'�� ���������'	,	2663	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	865	,'	2018-05-14	',	868	,	'�� ���������'	,	4483	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	866	,'	2018-05-15	',	599	,	'�� ���������'	,	826	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	867	,'	2018-05-16	',	845	,	'�� ���������'	,	1416	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	868	,'	2018-05-17	',	468	,	'�� ���������'	,	1157	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	869	,'	2018-05-18	',	724	,	'�� ���������'	,	802	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	870	,'	2018-05-19	',	713	,	'�� ���������'	,	1022	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	871	,'	2018-05-20	',	345	,	'�� ���������'	,	2395	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	872	,'	2018-05-21	',	892	,	'�� ���������'	,	2846	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	873	,'	2018-05-22	',	847	,	'�� ���������'	,	1786	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	874	,'	2018-05-23	',	272	,	'�� ���������'	,	3412	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	875	,'	2018-05-24	',	35	,	'�� ���������'	,	1603	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	876	,'	2018-05-25	',	788	,	'�� ���������'	,	2265	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	877	,'	2018-05-26	',	611	,	'�� ���������'	,	3258	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	878	,'	2018-05-27	',	385	,	'�� ���������'	,	2175	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	879	,'	2018-05-28	',	211	,	'�� ���������'	,	3009	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	880	,'	2018-05-29	',	563	,	'�� ���������'	,	2529	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	881	,'	2018-05-30	',	806	,	'�� ���������'	,	4583	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	882	,'	2018-05-31	',	342	,	'�� ���������'	,	1632	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	883	,'	2018-06-01	',	359	,	'�� ���������'	,	4618	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	884	,'	2018-06-02	',	987	,	'�� ���������'	,	1695	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	885	,'	2018-06-03	',	353	,	'�� ���������'	,	4099	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	886	,'	2018-06-04	',	891	,	'�� ���������'	,	4506	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	887	,'	2018-06-05	',	21	,	'�� ���������'	,	4247	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	888	,'	2018-06-06	',	348	,	'�� ���������'	,	1468	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	889	,'	2018-06-07	',	906	,	'�� ���������'	,	1993	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	890	,'	2018-06-08	',	301	,	'�� ���������'	,	1897	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	891	,'	2018-06-09	',	911	,	'�� ���������'	,	3131	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	892	,'	2018-06-10	',	162	,	'�� ���������'	,	883	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	893	,'	2018-06-11	',	123	,	'�� ���������'	,	1904	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	894	,'	2018-06-12	',	774	,	'�� ���������'	,	2815	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	895	,'	2018-06-13	',	766	,	'�� ���������'	,	1815	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	896	,'	2018-06-14	',	189	,	'�� ���������'	,	3065	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	897	,'	2018-06-15	',	741	,	'�� ���������'	,	1979	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	898	,'	2018-06-16	',	842	,	'�� ���������'	,	4313	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	899	,'	2018-06-17	',	710	,	'�� ���������'	,	2272	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	900	,'	2018-06-18	',	341	,	'�� ���������'	,	4552	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	901	,'	2018-06-19	',	683	,	'�� ���������'	,	3466	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	902	,'	2018-06-20	',	847	,	'�� ���������'	,	4611	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	903	,'	2018-06-21	',	98	,	'�� ���������'	,	4279	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	904	,'	2018-06-22	',	62	,	'�� ���������'	,	2430	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	905	,'	2018-06-23	',	768	,	'�� ���������'	,	2894	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	906	,'	2018-06-24	',	658	,	'�� ���������'	,	3583	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	907	,'	2018-06-25	',	231	,	'�� ���������'	,	741	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	908	,'	2018-06-26	',	286	,	'�� ���������'	,	2024	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	909	,'	2018-06-27	',	261	,	'�� ���������'	,	3067	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	910	,'	2018-06-28	',	295	,	'�� ���������'	,	3138	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	911	,'	2018-06-29	',	453	,	'�� ���������'	,	4284	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	912	,'	2018-06-30	',	873	,	'�� ���������'	,	1076	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	913	,'	2018-07-01	',	405	,	'�� ���������'	,	3087	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	914	,'	2018-07-02	',	919	,	'�� ���������'	,	3325	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	915	,'	2018-07-03	',	709	,	'�� ���������'	,	2856	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	916	,'	2018-07-04	',	557	,	'�� ���������'	,	2111	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	917	,'	2018-07-05	',	419	,	'�� ���������'	,	619	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	918	,'	2018-07-06	',	324	,	'�� ���������'	,	3018	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	919	,'	2018-07-07	',	509	,	'�� ���������'	,	3041	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	920	,'	2018-07-08	',	526	,	'�� ���������'	,	1646	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	921	,'	2018-07-09	',	172	,	'�� ���������'	,	4234	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	922	,'	2018-07-10	',	243	,	'�� ���������'	,	2120	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	923	,'	2018-07-11	',	748	,	'�� ���������'	,	2988	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	924	,'	2018-07-12	',	144	,	'�� ���������'	,	1400	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	925	,'	2018-07-13	',	200	,	'�� ���������'	,	2771	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	926	,'	2018-07-14	',	654	,	'�� ���������'	,	1961	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	927	,'	2018-07-15	',	840	,	'�� ���������'	,	3871	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	928	,'	2018-07-16	',	482	,	'�� ���������'	,	2234	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	929	,'	2018-07-17	',	669	,	'�� ���������'	,	3824	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	930	,'	2018-07-18	',	554	,	'�� ���������'	,	708	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	931	,'	2018-07-19	',	616	,	'�� ���������'	,	2685	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	932	,'	2018-07-20	',	803	,	'�� ���������'	,	2895	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	933	,'	2018-07-21	',	203	,	'�� ���������'	,	2552	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	934	,'	2018-07-22	',	825	,	'�� ���������'	,	1497	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	935	,'	2018-07-23	',	705	,	'�� ���������'	,	4123	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	936	,'	2018-07-24	',	481	,	'�� ���������'	,	1009	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	937	,'	2018-07-25	',	36	,	'�� ���������'	,	3364	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	938	,'	2018-07-26	',	710	,	'�� ���������'	,	4960	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	939	,'	2018-07-27	',	525	,	'�� ���������'	,	3553	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	940	,'	2018-07-28	',	12	,	'�� ���������'	,	1213	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	941	,'	2018-07-29	',	165	,	'�� ���������'	,	1933	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	942	,'	2018-07-30	',	967	,	'�� ���������'	,	3278	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	943	,'	2018-07-31	',	545	,	'�� ���������'	,	4996	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	944	,'	2018-08-01	',	391	,	'�� ���������'	,	3779	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	945	,'	2018-08-02	',	273	,	'�� ���������'	,	730	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	946	,'	2018-08-03	',	890	,	'�� ���������'	,	3524	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	947	,'	2018-08-04	',	255	,	'�� ���������'	,	783	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	948	,'	2018-08-05	',	324	,	'�� ���������'	,	3712	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	949	,'	2018-08-06	',	651	,	'�� ���������'	,	4699	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	950	,'	2018-08-07	',	546	,	'�� ���������'	,	759	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	951	,'	2018-08-08	',	681	,	'�� ���������'	,	1404	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	952	,'	2018-08-09	',	542	,	'�� ���������'	,	674	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	953	,'	2018-08-10	',	576	,	'�� ���������'	,	4228	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	954	,'	2018-08-11	',	476	,	'�� ���������'	,	1968	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	955	,'	2018-08-12	',	287	,	'�� ���������'	,	3577	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	956	,'	2018-08-13	',	988	,	'�� ���������'	,	2772	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	957	,'	2018-08-14	',	740	,	'�� ���������'	,	2788	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	958	,'	2018-08-15	',	233	,	'�� ���������'	,	3703	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	959	,'	2018-08-16	',	772	,	'�� ���������'	,	3794	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	960	,'	2018-08-17	',	533	,	'�� ���������'	,	4157	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	961	,'	2018-08-18	',	655	,	'�� ���������'	,	1245	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	962	,'	2018-08-19	',	202	,	'�� ���������'	,	4959	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	963	,'	2018-08-20	',	342	,	'�� ���������'	,	3319	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	964	,'	2018-08-21	',	425	,	'�� ���������'	,	1607	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	965	,'	2018-08-22	',	791	,	'�� ���������'	,	3887	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	966	,'	2018-08-23	',	202	,	'�� ���������'	,	937	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	967	,'	2018-08-24	',	856	,	'�� ���������'	,	1001	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	968	,'	2018-08-25	',	448	,	'�� ���������'	,	4918	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	969	,'	2018-08-26	',	588	,	'�� ���������'	,	2676	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	970	,'	2018-08-27	',	567	,	'�� ���������'	,	548	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	971	,'	2018-08-28	',	516	,	'�� ���������'	,	1222	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	972	,'	2018-08-29	',	817	,	'�� ���������'	,	2419	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	973	,'	2018-08-30	',	263	,	'�� ���������'	,	1222	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	974	,'	2018-08-31	',	687	,	'�� ���������'	,	791	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	975	,'	2018-09-01	',	699	,	'�� ���������'	,	3634	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	976	,'	2018-09-02	',	774	,	'�� ���������'	,	3466	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	977	,'	2018-09-03	',	508	,	'�� ���������'	,	4124	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	978	,'	2018-09-04	',	656	,	'�� ���������'	,	4687	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	979	,'	2018-09-05	',	267	,	'�� ���������'	,	4700	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	980	,'	2018-09-06	',	782	,	'�� ���������'	,	1721	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	981	,'	2018-09-07	',	457	,	'�� ���������'	,	4315	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	982	,'	2018-09-08	',	596	,	'�� ���������'	,	788	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	983	,'	2018-09-09	',	914	,	'�� ���������'	,	3083	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	984	,'	2018-09-10	',	218	,	'�� ���������'	,	1148	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	985	,'	2018-09-11	',	429	,	'�� ���������'	,	3869	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	986	,'	2018-09-12	',	297	,	'�� ���������'	,	1945	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	987	,'	2018-09-13	',	502	,	'�� ���������'	,	4550	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	988	,'	2018-09-14	',	821	,	'�� ���������'	,	4126	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	989	,'	2018-09-15	',	342	,	'�� ���������'	,	4876	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	990	,'	2018-09-16	',	519	,	'�� ���������'	,	4966	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	991	,'	2018-09-17	',	105	,	'�� ���������'	,	3011	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	992	,'	2018-09-18	',	702	,	'�� ���������'	,	3285	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	993	,'	2018-09-19	',	377	,	'�� ���������'	,	3326	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	994	,'	2018-09-20	',	296	,	'�� ���������'	,	3941	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	995	,'	2018-09-21	',	331	,	'�� ���������'	,	1020	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	996	,'	2018-09-22	',	238	,	'�� ���������'	,	1479	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	997	,'	2018-09-23	',	289	,	'�� ���������'	,	4904	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	998	,'	2018-09-24	',	448	,	'�� ���������'	,	1228	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	999	,'	2018-09-25	',	860	,	'�� ���������'	,	1387	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1000	,'	2018-09-26	',	948	,	'�� ���������'	,	2838	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1001	,'	2018-09-27	',	789	,	'�� ���������'	,	3936	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1002	,'	2018-09-28	',	87	,	'�� ���������'	,	2609	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1003	,'	2018-09-29	',	86	,	'�� ���������'	,	678	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1004	,'	2018-09-30	',	263	,	'�� ���������'	,	3481	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1005	,'	2018-10-01	',	573	,	'�� ���������'	,	2551	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1006	,'	2018-10-02	',	879	,	'�� ���������'	,	4320	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1007	,'	2018-10-03	',	389	,	'�� ���������'	,	3472	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1008	,'	2018-10-04	',	176	,	'�� ���������'	,	4147	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1009	,'	2018-10-05	',	217	,	'�� ���������'	,	4141	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1010	,'	2018-10-06	',	651	,	'�� ���������'	,	3384	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1011	,'	2018-10-07	',	493	,	'�� ���������'	,	2618	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1012	,'	2018-10-08	',	114	,	'�� ���������'	,	2914	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1013	,'	2018-10-09	',	752	,	'�� ���������'	,	1651	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1014	,'	2018-10-10	',	518	,	'�� ���������'	,	2559	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1015	,'	2018-10-11	',	528	,	'�� ���������'	,	3965	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1016	,'	2018-10-12	',	160	,	'�� ���������'	,	1191	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1017	,'	2018-10-13	',	778	,	'�� ���������'	,	1727	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1018	,'	2018-10-14	',	306	,	'�� ���������'	,	618	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1019	,'	2018-10-15	',	666	,	'�� ���������'	,	4397	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1020	,'	2018-10-16	',	809	,	'�� ���������'	,	3737	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1021	,'	2018-10-17	',	945	,	'�� ���������'	,	4587	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1022	,'	2018-10-18	',	916	,	'�� ���������'	,	3064	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1023	,'	2018-10-19	',	19	,	'�� ���������'	,	1218	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1024	,'	2018-10-20	',	810	,	'�� ���������'	,	741	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1025	,'	2018-10-21	',	229	,	'�� ���������'	,	1308	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1026	,'	2018-10-22	',	243	,	'�� ���������'	,	3577	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1027	,'	2018-10-23	',	176	,	'�� ���������'	,	3578	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1028	,'	2018-10-24	',	549	,	'�� ���������'	,	943	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1029	,'	2018-10-25	',	106	,	'�� ���������'	,	3259	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1030	,'	2018-10-26	',	18	,	'�� ���������'	,	4361	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1031	,'	2018-10-27	',	715	,	'�� ���������'	,	643	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1032	,'	2018-10-28	',	288	,	'�� ���������'	,	1991	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1033	,'	2018-10-29	',	209	,	'�� ���������'	,	2679	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1034	,'	2018-10-30	',	693	,	'�� ���������'	,	1283	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1035	,'	2018-10-31	',	471	,	'�� ���������'	,	1360	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1036	,'	2018-11-01	',	868	,	'�� ���������'	,	3862	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1037	,'	2018-11-02	',	199	,	'�� ���������'	,	2370	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1038	,'	2018-11-03	',	280	,	'�� ���������'	,	2258	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1039	,'	2018-11-04	',	410	,	'�� ���������'	,	2201	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1040	,'	2018-11-05	',	645	,	'�� ���������'	,	4945	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1041	,'	2018-11-06	',	628	,	'�� ���������'	,	3059	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1042	,'	2018-11-07	',	434	,	'�� ���������'	,	3143	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1043	,'	2018-11-08	',	111	,	'�� ���������'	,	3478	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1044	,'	2018-11-09	',	773	,	'�� ���������'	,	2720	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1045	,'	2018-11-10	',	453	,	'�� ���������'	,	2341	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1046	,'	2018-11-11	',	708	,	'�� ���������'	,	4339	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1047	,'	2018-11-12	',	971	,	'�� ���������'	,	4913	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1048	,'	2018-11-13	',	466	,	'�� ���������'	,	986	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1049	,'	2018-11-14	',	964	,	'�� ���������'	,	1549	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1050	,'	2018-11-15	',	899	,	'�� ���������'	,	1787	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1051	,'	2018-11-16	',	697	,	'�� ���������'	,	2541	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1052	,'	2018-11-17	',	967	,	'�� ���������'	,	3939	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1053	,'	2018-11-18	',	31	,	'�� ���������'	,	844	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1054	,'	2018-11-19	',	733	,	'�� ���������'	,	729	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1055	,'	2018-11-20	',	756	,	'�� ���������'	,	2426	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1056	,'	2018-11-21	',	436	,	'�� ���������'	,	923	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1057	,'	2018-11-22	',	162	,	'�� ���������'	,	1487	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1058	,'	2018-11-23	',	13	,	'�� ���������'	,	4343	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1059	,'	2018-11-24	',	804	,	'�� ���������'	,	4288	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1060	,'	2018-11-25	',	59	,	'�� ���������'	,	945	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1061	,'	2018-11-26	',	588	,	'�� ���������'	,	2848	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1062	,'	2018-11-27	',	574	,	'�� ���������'	,	4921	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1063	,'	2018-11-28	',	232	,	'�� ���������'	,	2418	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1064	,'	2018-11-29	',	583	,	'�� ���������'	,	1306	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1065	,'	2018-11-30	',	889	,	'�� ���������'	,	4662	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1066	,'	2018-12-01	',	544	,	'�� ���������'	,	4720	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1067	,'	2018-12-02	',	542	,	'�� ���������'	,	2568	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1068	,'	2018-12-03	',	947	,	'�� ���������'	,	2803	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1069	,'	2018-12-04	',	146	,	'�� ���������'	,	3242	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1070	,'	2018-12-05	',	459	,	'�� ���������'	,	3035	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1071	,'	2018-12-06	',	976	,	'�� ���������'	,	3291	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1072	,'	2018-12-07	',	69	,	'�� ���������'	,	728	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1073	,'	2018-12-08	',	671	,	'�� ���������'	,	4918	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1074	,'	2018-12-09	',	685	,	'�� ���������'	,	795	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1075	,'	2018-12-10	',	626	,	'�� ���������'	,	1996	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1076	,'	2018-12-11	',	63	,	'�� ���������'	,	4833	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1077	,'	2018-12-12	',	313	,	'�� ���������'	,	2301	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1078	,'	2018-12-13	',	979	,	'�� ���������'	,	640	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1079	,'	2018-12-14	',	496	,	'�� ���������'	,	3281	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1080	,'	2018-12-15	',	923	,	'�� ���������'	,	2522	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1081	,'	2018-12-16	',	286	,	'�� ���������'	,	2572	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1082	,'	2018-12-17	',	129	,	'�� ���������'	,	1368	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1083	,'	2018-12-18	',	549	,	'�� ���������'	,	4025	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1084	,'	2018-12-19	',	91	,	'�� ���������'	,	3478	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1085	,'	2018-12-20	',	569	,	'�� ���������'	,	3094	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1086	,'	2018-12-21	',	400	,	'�� ���������'	,	4966	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1087	,'	2018-12-22	',	238	,	'�� ���������'	,	605	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1088	,'	2018-12-23	',	763	,	'�� ���������'	,	4360	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1089	,'	2018-12-24	',	62	,	'�� ���������'	,	672	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1090	,'	2018-12-25	',	34	,	'�� ���������'	,	2646	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1091	,'	2018-12-26	',	884	,	'�� ���������'	,	2230	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1092	,'	2018-12-27	',	994	,	'�� ���������'	,	1661	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1093	,'	2018-12-28	',	47	,	'�� ���������'	,	4616	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1094	,'	2018-12-29	',	326	,	'�� ���������'	,	1189	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1095	,'	2018-12-30	',	114	,	'�� ���������'	,	3991	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1096	,'	2018-12-31	',	902	,	'�� ���������'	,	796	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1097	,'	2019-01-01	',	266	,	'�� ���������'	,	2242	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1098	,'	2019-01-02	',	219	,	'�� ���������'	,	2027	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1099	,'	2019-01-03	',	587	,	'�� ���������'	,	4093	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1100	,'	2019-01-04	',	52	,	'�� ���������'	,	3799	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1101	,'	2019-01-05	',	737	,	'�� ���������'	,	3400	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1102	,'	2019-01-06	',	823	,	'�� ���������'	,	4174	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1103	,'	2019-01-07	',	760	,	'�� ���������'	,	3395	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1104	,'	2019-01-08	',	305	,	'�� ���������'	,	2914	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1105	,'	2019-01-09	',	505	,	'�� ���������'	,	2461	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1106	,'	2019-01-10	',	208	,	'�� ���������'	,	1979	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1107	,'	2019-01-11	',	455	,	'�� ���������'	,	832	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1108	,'	2019-01-12	',	860	,	'�� ���������'	,	1155	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1109	,'	2019-01-13	',	531	,	'�� ���������'	,	520	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1110	,'	2019-01-14	',	266	,	'�� ���������'	,	1077	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1111	,'	2019-01-15	',	205	,	'�� ���������'	,	3738	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1112	,'	2019-01-16	',	707	,	'�� ���������'	,	1418	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1113	,'	2019-01-17	',	325	,	'�� ���������'	,	670	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1114	,'	2019-01-18	',	893	,	'�� ���������'	,	3602	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1115	,'	2019-01-19	',	187	,	'�� ���������'	,	4804	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1116	,'	2019-01-20	',	37	,	'�� ���������'	,	3692	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1117	,'	2019-01-21	',	384	,	'�� ���������'	,	1739	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1118	,'	2019-01-22	',	757	,	'�� ���������'	,	762	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1119	,'	2019-01-23	',	377	,	'�� ���������'	,	3328	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1120	,'	2019-01-24	',	929	,	'�� ���������'	,	3081	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1121	,'	2019-01-25	',	503	,	'�� ���������'	,	1510	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1122	,'	2019-01-26	',	238	,	'�� ���������'	,	3452	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1123	,'	2019-01-27	',	341	,	'�� ���������'	,	2325	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1124	,'	2019-01-28	',	358	,	'�� ���������'	,	4344	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1125	,'	2019-01-29	',	236	,	'�� ���������'	,	4498	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1126	,'	2019-01-30	',	915	,	'�� ���������'	,	3373	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1127	,'	2019-01-31	',	876	,	'�� ���������'	,	759	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1128	,'	2019-02-01	',	767	,	'�� ���������'	,	3944	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1129	,'	2019-02-02	',	649	,	'�� ���������'	,	2339	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1130	,'	2019-02-03	',	88	,	'�� ���������'	,	624	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1131	,'	2019-02-04	',	909	,	'�� ���������'	,	818	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1132	,'	2019-02-05	',	988	,	'�� ���������'	,	1886	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1133	,'	2019-02-06	',	85	,	'�� ���������'	,	2341	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1134	,'	2019-02-07	',	923	,	'�� ���������'	,	504	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1135	,'	2019-02-08	',	510	,	'�� ���������'	,	843	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1136	,'	2019-02-09	',	705	,	'�� ���������'	,	2419	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1137	,'	2019-02-10	',	791	,	'�� ���������'	,	4335	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1138	,'	2019-02-11	',	93	,	'�� ���������'	,	1416	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1139	,'	2019-02-12	',	605	,	'�� ���������'	,	1641	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1140	,'	2019-02-13	',	295	,	'�� ���������'	,	2140	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1141	,'	2019-02-14	',	688	,	'�� ���������'	,	3290	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1142	,'	2019-02-15	',	815	,	'�� ���������'	,	521	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1143	,'	2019-02-16	',	944	,	'�� ���������'	,	4374	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1144	,'	2019-02-17	',	245	,	'�� ���������'	,	778	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1145	,'	2019-02-18	',	123	,	'�� ���������'	,	4157	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1146	,'	2019-02-19	',	479	,	'�� ���������'	,	1317	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1147	,'	2019-02-20	',	555	,	'�� ���������'	,	4868	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1148	,'	2019-02-21	',	731	,	'�� ���������'	,	3214	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1149	,'	2019-02-22	',	511	,	'�� ���������'	,	570	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1150	,'	2019-02-23	',	618	,	'�� ���������'	,	3915	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1151	,'	2019-02-24	',	304	,	'�� ���������'	,	2784	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1152	,'	2019-02-25	',	47	,	'�� ���������'	,	4253	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1153	,'	2019-02-26	',	662	,	'�� ���������'	,	4650	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1154	,'	2019-02-27	',	583	,	'�� ���������'	,	4056	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1155	,'	2019-02-28	',	653	,	'�� ���������'	,	1120	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1156	,'	2019-03-01	',	33	,	'�� ���������'	,	850	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1157	,'	2019-03-02	',	515	,	'�� ���������'	,	2602	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1158	,'	2019-03-03	',	875	,	'�� ���������'	,	3318	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1159	,'	2019-03-04	',	463	,	'�� ���������'	,	859	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1160	,'	2019-03-05	',	530	,	'�� ���������'	,	1919	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1161	,'	2019-03-06	',	836	,	'�� ���������'	,	1016	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1162	,'	2019-03-07	',	141	,	'�� ���������'	,	3824	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1163	,'	2019-03-08	',	408	,	'�� ���������'	,	3890	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1164	,'	2019-03-09	',	305	,	'�� ���������'	,	3707	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1165	,'	2019-03-10	',	510	,	'�� ���������'	,	3067	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1166	,'	2019-03-11	',	411	,	'�� ���������'	,	2147	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1167	,'	2019-03-12	',	253	,	'�� ���������'	,	3255	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1168	,'	2019-03-13	',	256	,	'�� ���������'	,	3925	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1169	,'	2019-03-14	',	852	,	'�� ���������'	,	1311	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1170	,'	2019-03-15	',	803	,	'�� ���������'	,	1628	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1171	,'	2019-03-16	',	447	,	'�� ���������'	,	2999	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1172	,'	2019-03-17	',	980	,	'�� ���������'	,	3588	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1173	,'	2019-03-18	',	380	,	'�� ���������'	,	3946	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1174	,'	2019-03-19	',	492	,	'�� ���������'	,	3667	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1175	,'	2019-03-20	',	711	,	'�� ���������'	,	2829	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1176	,'	2019-03-21	',	811	,	'�� ���������'	,	1140	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1177	,'	2019-03-22	',	454	,	'�� ���������'	,	3394	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1178	,'	2019-03-23	',	274	,	'�� ���������'	,	4855	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1179	,'	2019-03-24	',	758	,	'�� ���������'	,	4286	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1180	,'	2019-03-25	',	584	,	'�� ���������'	,	931	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1181	,'	2019-03-26	',	975	,	'�� ���������'	,	3902	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1182	,'	2019-03-27	',	426	,	'�� ���������'	,	2623	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1183	,'	2019-03-28	',	841	,	'�� ���������'	,	1896	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1184	,'	2019-03-29	',	268	,	'�� ���������'	,	1339	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1185	,'	2019-03-30	',	10	,	'�� ���������'	,	4588	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1186	,'	2019-03-31	',	967	,	'�� ���������'	,	3628	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1187	,'	2019-04-01	',	47	,	'�� ���������'	,	2216	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1188	,'	2019-04-02	',	998	,	'�� ���������'	,	903	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1189	,'	2019-04-03	',	495	,	'�� ���������'	,	1800	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1190	,'	2019-04-04	',	541	,	'�� ���������'	,	4020	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1191	,'	2019-04-05	',	505	,	'�� ���������'	,	1362	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1192	,'	2019-04-06	',	222	,	'�� ���������'	,	1833	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1193	,'	2019-04-07	',	369	,	'�� ���������'	,	4096	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1194	,'	2019-04-08	',	432	,	'�� ���������'	,	1995	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1195	,'	2019-04-09	',	508	,	'�� ���������'	,	3852	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1196	,'	2019-04-10	',	888	,	'�� ���������'	,	2940	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1197	,'	2019-04-11	',	315	,	'�� ���������'	,	1311	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1198	,'	2019-04-12	',	8	,	'�� ���������'	,	3905	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1199	,'	2019-04-13	',	103	,	'�� ���������'	,	4452	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1200	,'	2019-04-14	',	197	,	'�� ���������'	,	3861	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1201	,'	2019-04-15	',	476	,	'�� ���������'	,	4034	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1202	,'	2019-04-16	',	332	,	'�� ���������'	,	2875	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1203	,'	2019-04-17	',	28	,	'�� ���������'	,	680	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1204	,'	2019-04-18	',	322	,	'�� ���������'	,	1712	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1205	,'	2019-04-19	',	199	,	'�� ���������'	,	1992	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1206	,'	2019-04-20	',	689	,	'�� ���������'	,	1563	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1207	,'	2019-04-21	',	802	,	'�� ���������'	,	1757	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1208	,'	2019-04-22	',	111	,	'�� ���������'	,	1706	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1209	,'	2019-04-23	',	596	,	'�� ���������'	,	4101	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1210	,'	2019-04-24	',	276	,	'�� ���������'	,	2316	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1211	,'	2019-04-25	',	578	,	'�� ���������'	,	3433	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1212	,'	2019-04-26	',	55	,	'�� ���������'	,	4740	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1213	,'	2019-04-27	',	430	,	'�� ���������'	,	1209	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1214	,'	2019-04-28	',	743	,	'�� ���������'	,	2540	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1215	,'	2019-04-29	',	247	,	'�� ���������'	,	2996	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1216	,'	2019-04-30	',	432	,	'�� ���������'	,	4911	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1217	,'	2019-05-01	',	469	,	'�� ���������'	,	622	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1218	,'	2019-05-02	',	344	,	'�� ���������'	,	3603	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1219	,'	2019-05-03	',	600	,	'�� ���������'	,	2395	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1220	,'	2019-05-04	',	742	,	'�� ���������'	,	1439	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1221	,'	2019-05-05	',	48	,	'�� ���������'	,	3006	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1222	,'	2019-05-06	',	208	,	'�� ���������'	,	2802	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1223	,'	2019-05-07	',	303	,	'�� ���������'	,	4308	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1224	,'	2019-05-08	',	634	,	'�� ���������'	,	4417	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1225	,'	2019-05-09	',	798	,	'�� ���������'	,	2343	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1226	,'	2019-05-10	',	335	,	'�� ���������'	,	1350	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1227	,'	2019-05-11	',	424	,	'�� ���������'	,	2072	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1228	,'	2019-05-12	',	810	,	'�� ���������'	,	3989	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1229	,'	2019-05-13	',	493	,	'�� ���������'	,	2911	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1230	,'	2019-05-14	',	559	,	'�� ���������'	,	4479	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1231	,'	2019-05-15	',	651	,	'�� ���������'	,	3629	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1232	,'	2019-05-16	',	256	,	'�� ���������'	,	1700	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1233	,'	2019-05-17	',	728	,	'�� ���������'	,	1251	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1234	,'	2019-05-18	',	948	,	'�� ���������'	,	1941	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1235	,'	2019-05-19	',	365	,	'�� ���������'	,	3073	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1236	,'	2019-05-20	',	31	,	'�� ���������'	,	1269	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1237	,'	2019-05-21	',	571	,	'�� ���������'	,	4280	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1238	,'	2019-05-22	',	841	,	'�� ���������'	,	3203	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1239	,'	2019-05-23	',	187	,	'�� ���������'	,	3112	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1240	,'	2019-05-24	',	916	,	'�� ���������'	,	4369	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1241	,'	2019-05-25	',	408	,	'�� ���������'	,	2877	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1242	,'	2019-05-26	',	724	,	'�� ���������'	,	3468	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1243	,'	2019-05-27	',	719	,	'�� ���������'	,	1477	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1244	,'	2019-05-28	',	69	,	'�� ���������'	,	4507	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1245	,'	2019-05-29	',	436	,	'�� ���������'	,	3021	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1246	,'	2019-05-30	',	742	,	'�� ���������'	,	4760	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1247	,'	2019-05-31	',	430	,	'�� ���������'	,	3231	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1248	,'	2019-06-01	',	796	,	'�� ���������'	,	992	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1249	,'	2019-06-02	',	375	,	'�� ���������'	,	2641	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1250	,'	2019-06-03	',	216	,	'�� ���������'	,	1150	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1251	,'	2019-06-04	',	597	,	'�� ���������'	,	3918	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1252	,'	2019-06-05	',	694	,	'�� ���������'	,	3277	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1253	,'	2019-06-06	',	244	,	'�� ���������'	,	3399	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1254	,'	2019-06-07	',	92	,	'�� ���������'	,	4700	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1255	,'	2019-06-08	',	81	,	'�� ���������'	,	2801	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1256	,'	2019-06-09	',	358	,	'�� ���������'	,	536	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1257	,'	2019-06-10	',	706	,	'�� ���������'	,	2733	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1258	,'	2019-06-11	',	456	,	'�� ���������'	,	1974	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1259	,'	2019-06-12	',	626	,	'�� ���������'	,	714	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1260	,'	2019-06-13	',	106	,	'�� ���������'	,	2274	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1261	,'	2019-06-14	',	400	,	'�� ���������'	,	3268	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1262	,'	2019-06-15	',	670	,	'�� ���������'	,	3057	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1263	,'	2019-06-16	',	423	,	'�� ���������'	,	4252	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1264	,'	2019-06-17	',	162	,	'�� ���������'	,	4522	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1265	,'	2019-06-18	',	535	,	'�� ���������'	,	1307	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1266	,'	2019-06-19	',	974	,	'�� ���������'	,	2241	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1267	,'	2019-06-20	',	52	,	'�� ���������'	,	1634	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1268	,'	2019-06-21	',	474	,	'�� ���������'	,	1538	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1269	,'	2019-06-22	',	398	,	'�� ���������'	,	1772	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1270	,'	2019-06-23	',	672	,	'�� ���������'	,	3716	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1271	,'	2019-06-24	',	845	,	'�� ���������'	,	885	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1272	,'	2019-06-25	',	904	,	'�� ���������'	,	4677	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1273	,'	2019-06-26	',	143	,	'�� ���������'	,	3030	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1274	,'	2019-06-27	',	168	,	'�� ���������'	,	2766	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1275	,'	2019-06-28	',	864	,	'�� ���������'	,	666	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1276	,'	2019-06-29	',	870	,	'�� ���������'	,	1809	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1277	,'	2019-06-30	',	896	,	'�� ���������'	,	4602	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1278	,'	2019-07-01	',	186	,	'�� ���������'	,	2440	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1279	,'	2019-07-02	',	179	,	'�� ���������'	,	2199	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1280	,'	2019-07-03	',	808	,	'�� ���������'	,	1399	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1281	,'	2019-07-04	',	124	,	'�� ���������'	,	3381	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1282	,'	2019-07-05	',	861	,	'�� ���������'	,	4832	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1283	,'	2019-07-06	',	63	,	'�� ���������'	,	977	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1284	,'	2019-07-07	',	494	,	'�� ���������'	,	2543	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1285	,'	2019-07-08	',	710	,	'�� ���������'	,	4489	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1286	,'	2019-07-09	',	493	,	'�� ���������'	,	1464	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1287	,'	2019-07-10	',	198	,	'�� ���������'	,	2331	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1288	,'	2019-07-11	',	285	,	'�� ���������'	,	2061	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1289	,'	2019-07-12	',	670	,	'�� ���������'	,	3594	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1290	,'	2019-07-13	',	503	,	'�� ���������'	,	1415	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1291	,'	2019-07-14	',	878	,	'�� ���������'	,	3708	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1292	,'	2019-07-15	',	191	,	'�� ���������'	,	4509	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1293	,'	2019-07-16	',	837	,	'�� ���������'	,	4042	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1294	,'	2019-07-17	',	528	,	'�� ���������'	,	1080	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1295	,'	2019-07-18	',	633	,	'�� ���������'	,	3309	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1296	,'	2019-07-19	',	578	,	'�� ���������'	,	3545	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1297	,'	2019-07-20	',	791	,	'�� ���������'	,	3542	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1298	,'	2019-07-21	',	344	,	'�� ���������'	,	624	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1299	,'	2019-07-22	',	536	,	'�� ���������'	,	2505	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1300	,'	2019-07-23	',	344	,	'�� ���������'	,	3270	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1301	,'	2019-07-24	',	328	,	'�� ���������'	,	1008	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1302	,'	2019-07-25	',	783	,	'�� ���������'	,	3615	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1303	,'	2019-07-26	',	595	,	'�� ���������'	,	4644	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1304	,'	2019-07-27	',	739	,	'�� ���������'	,	4511	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1305	,'	2019-07-28	',	23	,	'�� ���������'	,	2960	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1306	,'	2019-07-29	',	955	,	'�� ���������'	,	1657	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1307	,'	2019-07-30	',	105	,	'�� ���������'	,	702	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1308	,'	2019-07-31	',	286	,	'�� ���������'	,	2534	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1309	,'	2019-08-01	',	547	,	'�� ���������'	,	2322	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1310	,'	2019-08-02	',	683	,	'�� ���������'	,	2267	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1311	,'	2019-08-03	',	340	,	'�� ���������'	,	4734	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1312	,'	2019-08-04	',	800	,	'�� ���������'	,	4230	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1313	,'	2019-08-05	',	302	,	'�� ���������'	,	1725	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1314	,'	2019-08-06	',	724	,	'�� ���������'	,	802	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1315	,'	2019-08-07	',	362	,	'�� ���������'	,	2331	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1316	,'	2019-08-08	',	123	,	'�� ���������'	,	740	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1317	,'	2019-08-09	',	301	,	'�� ���������'	,	3230	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1318	,'	2019-08-10	',	956	,	'�� ���������'	,	2081	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1319	,'	2019-08-11	',	241	,	'�� ���������'	,	2403	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1320	,'	2019-08-12	',	859	,	'�� ���������'	,	1813	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1321	,'	2019-08-13	',	772	,	'�� ���������'	,	1408	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1322	,'	2019-08-14	',	155	,	'�� ���������'	,	887	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1323	,'	2019-08-15	',	380	,	'�� ���������'	,	4828	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1324	,'	2019-08-16	',	741	,	'�� ���������'	,	2730	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1325	,'	2019-08-17	',	96	,	'�� ���������'	,	1867	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1326	,'	2019-08-18	',	375	,	'�� ���������'	,	2823	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1327	,'	2019-08-19	',	222	,	'�� ���������'	,	1625	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1328	,'	2019-08-20	',	861	,	'�� ���������'	,	1361	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1329	,'	2019-08-21	',	635	,	'�� ���������'	,	1992	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1330	,'	2019-08-22	',	938	,	'�� ���������'	,	4556	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1331	,'	2019-08-23	',	833	,	'�� ���������'	,	3710	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1332	,'	2019-08-24	',	719	,	'�� ���������'	,	4015	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1333	,'	2019-08-25	',	44	,	'�� ���������'	,	4985	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1334	,'	2019-08-26	',	94	,	'�� ���������'	,	954	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1335	,'	2019-08-27	',	249	,	'�� ���������'	,	4847	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1336	,'	2019-08-28	',	353	,	'�� ���������'	,	1109	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1337	,'	2019-08-29	',	662	,	'�� ���������'	,	552	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1338	,'	2019-08-30	',	577	,	'�� ���������'	,	2008	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1339	,'	2019-08-31	',	46	,	'�� ���������'	,	4121	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1340	,'	2019-09-01	',	849	,	'�� ���������'	,	3899	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1341	,'	2019-09-02	',	275	,	'�� ���������'	,	641	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1342	,'	2019-09-03	',	747	,	'�� ���������'	,	4099	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1343	,'	2019-09-04	',	351	,	'�� ���������'	,	3706	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1344	,'	2019-09-05	',	694	,	'�� ���������'	,	1721	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1345	,'	2019-09-06	',	536	,	'�� ���������'	,	3011	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1346	,'	2019-09-07	',	718	,	'�� ���������'	,	3434	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1347	,'	2019-09-08	',	917	,	'�� ���������'	,	869	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1348	,'	2019-09-09	',	988	,	'�� ���������'	,	3699	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1349	,'	2019-09-10	',	492	,	'�� ���������'	,	2710	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1350	,'	2019-09-11	',	786	,	'�� ���������'	,	605	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1351	,'	2019-09-12	',	318	,	'�� ���������'	,	4110	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1352	,'	2019-09-13	',	32	,	'�� ���������'	,	3142	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1353	,'	2019-09-14	',	89	,	'�� ���������'	,	4824	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1354	,'	2019-09-15	',	648	,	'�� ���������'	,	2642	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1355	,'	2019-09-16	',	619	,	'�� ���������'	,	2102	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1356	,'	2019-09-17	',	577	,	'�� ���������'	,	2254	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1357	,'	2019-09-18	',	79	,	'�� ���������'	,	4991	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1358	,'	2019-09-19	',	583	,	'�� ���������'	,	3211	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1359	,'	2019-09-20	',	632	,	'�� ���������'	,	2293	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1360	,'	2019-09-21	',	871	,	'�� ���������'	,	2057	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1361	,'	2019-09-22	',	427	,	'�� ���������'	,	704	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1362	,'	2019-09-23	',	226	,	'�� ���������'	,	4114	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1363	,'	2019-09-24	',	816	,	'�� ���������'	,	3436	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1364	,'	2019-09-25	',	479	,	'�� ���������'	,	827	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1365	,'	2019-09-26	',	529	,	'�� ���������'	,	2807	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1366	,'	2019-09-27	',	451	,	'�� ���������'	,	4465	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1367	,'	2019-09-28	',	938	,	'�� ���������'	,	2012	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1368	,'	2019-09-29	',	434	,	'�� ���������'	,	4045	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1369	,'	2019-09-30	',	946	,	'�� ���������'	,	2090	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1370	,'	2019-10-01	',	598	,	'�� ���������'	,	3266	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1371	,'	2019-10-02	',	836	,	'�� ���������'	,	4272	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1372	,'	2019-10-03	',	127	,	'�� ���������'	,	4949	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1373	,'	2019-10-04	',	377	,	'�� ���������'	,	1803	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1374	,'	2019-10-05	',	324	,	'�� ���������'	,	708	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1375	,'	2019-10-06	',	193	,	'�� ���������'	,	2099	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1376	,'	2019-10-07	',	701	,	'�� ���������'	,	2767	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1377	,'	2019-10-08	',	109	,	'�� ���������'	,	1866	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1378	,'	2019-10-09	',	592	,	'�� ���������'	,	4965	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1379	,'	2019-10-10	',	986	,	'�� ���������'	,	1947	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1380	,'	2019-10-11	',	603	,	'�� ���������'	,	1649	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1381	,'	2019-10-12	',	487	,	'� ��������'	,	883	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1382	,'	2019-10-13	',	213	,	'� ��������'	,	4363	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1383	,'	2019-10-14	',	36	,	'� ��������'	,	683	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1384	,'	2019-10-15	',	234	,	'� ��������'	,	3612	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1385	,'	2019-10-16	',	392	,	'� ��������'	,	1857	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1386	,'	2019-10-17	',	59	,	'� ��������'	,	3354	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1387	,'	2019-10-18	',	298	,	'� ��������'	,	4184	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1388	,'	2019-10-19	',	642	,	'� ��������'	,	675	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1389	,'	2019-10-20	',	60	,	'� ��������'	,	3035	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1390	,'	2019-10-21	',	50	,	'� ��������'	,	4491	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1391	,'	2019-10-22	',	287	,	'� ��������'	,	975	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1392	,'	2019-10-23	',	311	,	'� ��������'	,	876	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1393	,'	2019-10-24	',	586	,	'� ��������'	,	1609	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1394	,'	2019-10-25	',	883	,	'� ��������'	,	2646	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1395	,'	2019-10-26	',	810	,	'� ��������'	,	4051	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1396	,'	2019-10-27	',	204	,	'� ��������'	,	995	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1397	,'	2019-10-28	',	352	,	'� ��������'	,	4168	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1398	,'	2019-10-29	',	333	,	'� ��������'	,	3743	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1399	,'	2019-10-30	',	330	,	'� ��������'	,	4431	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1400	,'	2019-10-31	',	638	,	'� ��������'	,	2183	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1401	,'	2019-11-01	',	674	,	'� ��������'	,	1855	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1402	,'	2019-11-02	',	970	,	'� ��������'	,	3353	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1403	,'	2019-11-03	',	797	,	'� ��������'	,	4858	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1404	,'	2019-11-04	',	848	,	'� ��������'	,	4989	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1405	,'	2019-11-05	',	3	,	'� ��������'	,	901	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1406	,'	2019-11-06	',	543	,	'� ��������'	,	3534	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1407	,'	2019-11-07	',	48	,	'� ��������'	,	1499	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1408	,'	2019-11-08	',	224	,	'� ��������'	,	4117	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1409	,'	2019-11-09	',	108	,	'� ��������'	,	1368	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1410	,'	2019-11-10	',	455	,	'� ��������'	,	553	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1411	,'	2019-11-11	',	670	,	'� ��������'	,	3524	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1412	,'	2019-11-12	',	426	,	'� ��������'	,	1373	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1413	,'	2019-11-13	',	284	,	'� ��������'	,	1371	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1414	,'	2019-11-14	',	747	,	'� ��������'	,	1424	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1415	,'	2019-11-15	',	426	,	'� ��������'	,	3831	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1416	,'	2019-11-16	',	765	,	'� ��������'	,	2778	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1417	,'	2019-11-17	',	829	,	'� ��������'	,	2936	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1418	,'	2019-11-18	',	860	,	'� ��������'	,	4600	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1419	,'	2019-11-19	',	844	,	'� ��������'	,	2280	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1420	,'	2019-11-20	',	979	,	'� ��������'	,	4433	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1421	,'	2019-11-21	',	401	,	'� ��������'	,	548	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1422	,'	2019-11-22	',	58	,	'� ��������'	,	1653	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1423	,'	2019-11-23	',	710	,	'� ��������'	,	3576	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1424	,'	2019-11-24	',	661	,	'� ��������'	,	3354	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1425	,'	2019-11-25	',	43	,	'� ��������'	,	3283	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1426	,'	2019-11-26	',	930	,	'� ��������'	,	1362	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1427	,'	2019-11-27	',	82	,	'� ��������'	,	931	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1428	,'	2019-11-28	',	100	,	'� ��������'	,	3740	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1429	,'	2019-11-29	',	963	,	'� ��������'	,	1875	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1430	,'	2019-11-30	',	24	,	'� ��������'	,	2935	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1431	,'	2019-12-01	',	943	,	'� ��������'	,	583	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1432	,'	2019-12-02	',	109	,	'� ��������'	,	2186	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1433	,'	2019-12-03	',	222	,	'� ��������'	,	3671	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1434	,'	2019-12-04	',	685	,	'� ��������'	,	1938	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1435	,'	2019-12-05	',	123	,	'� ��������'	,	4319	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1436	,'	2019-12-06	',	806	,	'� ��������'	,	3044	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1437	,'	2019-12-07	',	613	,	'� ��������'	,	1529	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1438	,'	2019-12-08	',	58	,	'� ��������'	,	2495	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1439	,'	2019-12-09	',	972	,	'� ��������'	,	3047	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1440	,'	2019-12-10	',	81	,	'� ��������'	,	2728	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1441	,'	2019-12-11	',	464	,	'� ��������'	,	550	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1442	,'	2019-12-12	',	472	,	'� ��������'	,	4086	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1443	,'	2019-12-13	',	780	,	'� ��������'	,	2029	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1444	,'	2019-12-14	',	651	,	'� ��������'	,	1727	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1445	,'	2019-12-15	',	94	,	'� ��������'	,	980	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1446	,'	2019-12-16	',	244	,	'� ��������'	,	4628	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1447	,'	2019-12-17	',	515	,	'� ��������'	,	2373	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1448	,'	2019-12-18	',	312	,	'� ��������'	,	4909	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1449	,'	2019-12-19	',	2	,	'� ��������'	,	3825	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1450	,'	2019-12-20	',	707	,	'� ��������'	,	2740	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1451	,'	2019-12-21	',	30	,	'� ��������'	,	2378	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1452	,'	2019-12-22	',	292	,	'� ��������'	,	1677	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1453	,'	2019-12-23	',	831	,	'� ��������'	,	1466	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1454	,'	2019-12-24	',	211	,	'� ��������'	,	1831	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1455	,'	2019-12-25	',	256	,	'� ��������'	,	585	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1456	,'	2019-12-26	',	969	,	'� ��������'	,	4232	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1457	,'	2019-12-27	',	623	,	'� ��������'	,	1863	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1458	,'	2019-12-28	',	564	,	'� ��������'	,	3932	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1459	,'	2019-12-29	',	729	,	'� ��������'	,	728	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1460	,'	2019-12-30	',	241	,	'� ��������'	,	2546	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1461	,'	2019-12-31	',	342	,	'� ��������'	,	1164	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1462	,'	2020-01-01	',	767	,	'� ��������'	,	2294	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1463	,'	2020-01-02	',	352	,	'� ��������'	,	2136	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1464	,'	2020-01-03	',	345	,	'� ��������'	,	4132	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1465	,'	2020-01-04	',	350	,	'� ��������'	,	2177	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1466	,'	2020-01-05	',	662	,	'� ��������'	,	4302	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1467	,'	2020-01-06	',	55	,	'� ��������'	,	666	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1468	,'	2020-01-07	',	69	,	'� ��������'	,	3493	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1469	,'	2020-01-08	',	948	,	'� ��������'	,	4711	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1470	,'	2020-01-09	',	73	,	'� ��������'	,	3718	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1471	,'	2020-01-10	',	623	,	'� ��������'	,	3220	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1472	,'	2020-01-11	',	394	,	'� ��������'	,	3449	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1473	,'	2020-01-12	',	976	,	'� ��������'	,	743	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1474	,'	2020-01-13	',	234	,	'� ��������'	,	4136	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1475	,'	2020-01-14	',	338	,	'� ��������'	,	1416	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1476	,'	2020-01-15	',	929	,	'� ��������'	,	1102	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1477	,'	2020-01-16	',	48	,	'� ��������'	,	2468	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1478	,'	2020-01-17	',	249	,	'� ��������'	,	4647	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1479	,'	2020-01-18	',	790	,	'� ��������'	,	2890	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1480	,'	2020-01-19	',	198	,	'� ��������'	,	876	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1481	,'	2020-01-20	',	800	,	'� ��������'	,	4613	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1482	,'	2020-01-21	',	286	,	'� ��������'	,	1257	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1483	,'	2020-01-22	',	969	,	'� ��������'	,	2088	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1484	,'	2020-01-23	',	892	,	'� ��������'	,	3869	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1485	,'	2020-01-24	',	773	,	'� ��������'	,	3258	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1486	,'	2020-01-25	',	950	,	'� ��������'	,	1100	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1487	,'	2020-01-26	',	724	,	'� ��������'	,	2600	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1488	,'	2020-01-27	',	185	,	'� ��������'	,	2987	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1489	,'	2020-01-28	',	499	,	'� ��������'	,	1878	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1490	,'	2020-01-29	',	237	,	'� ��������'	,	4156	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1491	,'	2020-01-30	',	842	,	'� ��������'	,	1046	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1492	,'	2020-01-31	',	415	,	'� ��������'	,	998	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1493	,'	2020-02-01	',	960	,	'� ��������'	,	4764	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1494	,'	2020-02-02	',	306	,	'� ��������'	,	4278	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1495	,'	2020-02-03	',	167	,	'� ��������'	,	1389	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1496	,'	2020-02-04	',	669	,	'� ��������'	,	3770	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1497	,'	2020-02-05	',	820	,	'� ��������'	,	1360	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1498	,'	2020-02-06	',	336	,	'� ��������'	,	4768	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1499	,'	2020-02-07	',	396	,	'� ��������'	,	657	);
insert into Zakaz(IDZ, DataZ,IDC_Z, StatusZ, Stoimost) values(	1500	,'	2020-02-08	',	379	,	'� ��������'	,	2277	);




INSERT INTO Sotr(IDS,Doljnost,Dogovor,FIO)
values
	(1,'�������������','1567','Horev Mixail Antonovic'),
	(2,'������','7687','Shestopalov Alexey Georgievich'),
	(3,'��������','9897','Pyryalov Danil Sergeevich'),
	(4,'���������','9382','Zainullin Vadim Karamatullovich'),
	(5,'�������','7345','Gareev Denis Sergeevich')
	
INSERT INTO Product(IDP,NameP,Price)
values
	(1,'��������',700 ),
	(2,'���������', 1000 ),
	(3,'������ �����', 3500 ),
	(4,'������ ������', 900 ),
	(5,'������ �������������', 1500 )

select * from Client
select * from Zakaz
select * from Sotr
Select * from Product
select * from Zakaz_Product


-- 3 ������� 
create view zap as
select c.IDC, c.FIOC, z.IDZ, z.DataZ,z.IDC_Z, z.StatusZ, z.Stoimost, s.IDS, s.FIO, p.IDP, p.NameP, zp.price_sale, zp.kolvo_zak_S, zp.IDZ_S, zp.IDP_S, zp.IDS_S
from Client c, Zakaz z, Sotr s, Product p, Zakaz_Product zp
where c.IDC=z.IDC_Z and z.IDZ=zp.IDZ_S and s.IDS=zp.IDS_S and p.IDP=zp.IDP_S 
select * from zap
drop view zap

create table pokupka(
IDC numeric(6),
FIOC varchar(100),
IDZ numeric(6),
DataZ date,
IDC_Z numeric(6),
StatusZ varchar(30),
Stoimost numeric(5),
IDS numeric(3),
FIO varchar (40),
IDP numeric(10),
NameP varchar(30),
price_sale numeric(6),
	kolvo_zak_S numeric (3),
	IDZ_S numeric(6) ,
	IDP_S numeric(10),
	IDS_S  numeric(3))

	INSERT INTO pokupka SELECT * FROM zap

select * from pokupka
drop table pokupka

--�������
--�1 ������� ������� ��������� ��������� 

select FIO, Count(kolvo_zak_S) as '���������� ������������ �������'
from zap 
where IDS=IDS
group by FIO

--�2 ������� �� ������� + ���� 
select NameP, Month(DATAZ) as'�����', SUM(price_sale) as '����� �������'
from zap 
where IDS=IDS
group by NameP, Month(DATAZ)
					
--�3 �������� ���������� ������� � �� ���� � ����������� ����������
select FIO, Count(kolvo_zak_S) as '���������� ������������ �������', SUM(price_sale) as 'C���� �������'
from zap 
where IDS=5 
group by FIO
					
--�4 ����� ������� �� ����� ����� ������
select NameP,  Count(kolvo_zak_S) as 'C���� �������'
from zap 
where IDP=IDP
group by NameP

										
--#5 ������� �� ����� 
select NameP, Year(DATAZ) as 'Year', Count (kolvo_zak_S) as '���-�� ������'
from zap
where IDP=IDP
group by NameP, Year(DATAZ)			

-- --��������� ������� ������� �  �������
create proc ewq
@id numeric (10),
@month int,
@year int
as
select SUM(price_sale) as '����� ������� �� ������������ ������ �������' from zap
where IDP=@id and YEAR(DATAZ)=@year and Month(DATAZ)=@month and IDP=IDP
go
exec ewq
'500', 10, 2020

drop proc ewq 


---- ����� �������  �� �����
SELECT NameP,[2016],[2017],[2018] FROM (SELECT NameP, price_sale, YEAR(DATAZ) as 'YEAR' FROM pokupka) AS SourceTable  
PIVOT  
(  
SUM(price_sale) 
FOR [YEAR] IN ([2016],[2017],[2018])  
) AS PivotTable
					
select @@servername



--������� ������
-- 1-�� �����(�������� �� ������ ��������)
select * from pokupka where IDC is null         
select * from pokupka where FIOC is null
select * from pokupka where IDZ is null
select * from pokupka where DataZ is null
select * from pokupka where IDC_Z is null
select * from pokupka where StatusZ is null
select * from pokupka where Stoimost is null
select * from pokupka where IDS is null
select * from pokupka where FIO is null
select * from pokupka where IDP is null
select * from pokupka where NameP is null
select * from pokupka where price_sale is null
select * from pokupka where kolvo_zak_S is null
select * from pokupka where IDZ_S is null
select * from pokupka where IDP_S  is null
select * from pokupka where IDS_S  is null

select*from Client where IDC is null or carta is null or phone is null or FIOC is null
select*from Product where IDP is null or NameP is null or Price is null
select*from Sotr where IDS is null or Doljnost is null or Dogovor is null or FIO is null
select*from Zakaz where IDZ is null or DataZ is null or IDC_Z is null or StatusZ is null or Stoimost is null
select*from Zakaz_Product where price_sale is null or kolvo_zak_S is null or IDZ_S is null or IDP_S is null or IDS_S is null


insert into Client (carta) values (6173917291128461) 
delete Client where IDC >2000
select*from Client




