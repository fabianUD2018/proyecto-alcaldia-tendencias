/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     18/10/2018 2:40:08 p. m.                     */
/*==============================================================*/


drop index RELATIONSHIP_20_FK;

drop index ADULTO_PK;

drop table ADULTO;

drop index ADULTO_EMPRESA_FK;

drop index ADULTO_EMPRESA2_FK;

drop index ADULTO_EMPRESA_PK;

drop table ADULTO_EMPRESA;

drop index BAJO_RUTAS_FK;

drop index BAJO_RUTAS2_FK;

drop index BAJO_RUTAS_PK;

drop table BAJO_RUTAS;

drop index BARRIO_PK;

drop table BARRIO;

drop index RELATIONSHIP_9_FK;

drop index B_BAJO_PK;

drop table B_BAJO;

drop index RELATIONSHIP_10_FK;

drop index B_INDUSTRIAL_PK;

drop table B_INDUSTRIAL;

drop index RELATIONSHIP_18_FK;

drop index EMPRESA_PK;

drop table EMPRESA;

drop index ENFERMEDADES_PK;

drop table ENFERMEDADES;

drop index RELATIONSHIP_15_FK;

drop index FAMILIA_PK;

drop table FAMILIA;

drop index FAMILIA_PERSONA_FK;

drop index FAMILIA_PERSONA2_FK;

drop index FAMILIA_PERSONA_PK;

drop table FAMILIA_PERSONA;

drop index RELATIONSHIP_16_FK;

drop index GUARDERIA_PK;

drop table GUARDERIA;

drop index RELATIONSHIP_14_FK;

drop index INSTITUCION_PK;

drop table INSTITUCION;

drop index RELATIONSHIP_19_FK;

drop index RELATIONSHIP_12_FK;

drop index JOVEN_PK;

drop table JOVEN;

drop index MENOR_ENFERMEDAD_FK;

drop index MENOR_ENFERMEDAD2_FK;

drop index MENOR_ENFERMEDAD_PK;

drop table MENOR_ENFERMEDAD;

drop index RELATIONSHIP_22_FK;

drop index PERSONA_PK;

drop table PERSONA;

drop index RELATIONSHIP_21_FK;

drop index RELATIONSHIP_11_FK;

drop index PERSONA_MENOR_PK;

drop table PERSONA_MENOR;

drop index RELATIONSHIP_17_FK;

drop index PLANTEL_PK;

drop table PLANTEL;

drop index RUTAS_PK;

drop table RUTAS;

drop index TIPO_DOCUMENTO_PK;

drop table TIPO_DOCUMENTO;

/*==============================================================*/
/* Table: ADULTO                                                */
/*==============================================================*/
create table ADULTO (
   CARGO                VARCHAR(30)          null,
   JORNADA              VARCHAR(30)          null,
   SUELDO               VARCHAR(30)          null,
   ID_ADULTO            INT4                 not null,
   ID_PERSONA           INT4                 null,
   constraint PK_ADULTO primary key (ID_ADULTO)
);

/*==============================================================*/
/* Index: ADULTO_PK                                             */
/*==============================================================*/
create unique index ADULTO_PK on ADULTO (
ID_ADULTO
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on ADULTO (
ID_PERSONA
);

/*==============================================================*/
/* Table: ADULTO_EMPRESA                                        */
/*==============================================================*/
create table ADULTO_EMPRESA (
   ID_ADULTO            INT4                 not null,
   ID_EMPRESA           INT4                 not null,
   constraint PK_ADULTO_EMPRESA primary key (ID_ADULTO, ID_EMPRESA)
);

/*==============================================================*/
/* Index: ADULTO_EMPRESA_PK                                     */
/*==============================================================*/
create unique index ADULTO_EMPRESA_PK on ADULTO_EMPRESA (
ID_ADULTO,
ID_EMPRESA
);

/*==============================================================*/
/* Index: ADULTO_EMPRESA2_FK                                    */
/*==============================================================*/
create  index ADULTO_EMPRESA2_FK on ADULTO_EMPRESA (
ID_EMPRESA
);

/*==============================================================*/
/* Index: ADULTO_EMPRESA_FK                                     */
/*==============================================================*/
create  index ADULTO_EMPRESA_FK on ADULTO_EMPRESA (
ID_ADULTO
);

/*==============================================================*/
/* Table: BAJO_RUTAS                                            */
/*==============================================================*/
create table BAJO_RUTAS (
   ID_RUTA              INT4                 not null,
   ID_B_BAJO            INT4                 not null,
   constraint PK_BAJO_RUTAS primary key (ID_RUTA, ID_B_BAJO)
);

/*==============================================================*/
/* Index: BAJO_RUTAS_PK                                         */
/*==============================================================*/
create unique index BAJO_RUTAS_PK on BAJO_RUTAS (
ID_RUTA,
ID_B_BAJO
);

/*==============================================================*/
/* Index: BAJO_RUTAS2_FK                                        */
/*==============================================================*/
create  index BAJO_RUTAS2_FK on BAJO_RUTAS (
ID_B_BAJO
);

/*==============================================================*/
/* Index: BAJO_RUTAS_FK                                         */
/*==============================================================*/
create  index BAJO_RUTAS_FK on BAJO_RUTAS (
ID_RUTA
);

/*==============================================================*/
/* Table: BARRIO                                                */
/*==============================================================*/
create table BARRIO (
   AREA                 VARCHAR(30)          not null,
   ESTRATO              INT4                 not null,
   NOMBRE               VARCHAR(30)          not null,
   TIPO                 VARCHAR(30)          not null,
   ID_BARRIO            INT4                 not null,
   constraint PK_BARRIO primary key (ID_BARRIO)
);

/*==============================================================*/
/* Index: BARRIO_PK                                             */
/*==============================================================*/
create unique index BARRIO_PK on BARRIO (
ID_BARRIO
);

/*==============================================================*/
/* Table: B_BAJO                                                */
/*==============================================================*/
create table B_BAJO (
   ID_B_BAJO            INT4                 not null,
   ID_BARRIO            INT4                 null,
   constraint PK_B_BAJO primary key (ID_B_BAJO)
);

/*==============================================================*/
/* Index: B_BAJO_PK                                             */
/*==============================================================*/
create unique index B_BAJO_PK on B_BAJO (
ID_B_BAJO
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on B_BAJO (
ID_BARRIO
);

/*==============================================================*/
/* Table: B_INDUSTRIAL                                          */
/*==============================================================*/
create table B_INDUSTRIAL (
   ID_B_INDUSTRIAL      INT4                 not null,
   ID_BARRIO            INT4                 null,
   constraint PK_B_INDUSTRIAL primary key (ID_B_INDUSTRIAL)
);

/*==============================================================*/
/* Index: B_INDUSTRIAL_PK                                       */
/*==============================================================*/
create unique index B_INDUSTRIAL_PK on B_INDUSTRIAL (
ID_B_INDUSTRIAL
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on B_INDUSTRIAL (
ID_BARRIO
);

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   NIT                  VARCHAR(30)          not null,
   DUENO                VARCHAR(30)          not null,
   ID_EMPRESA           INT4                 not null,
   ID_INSTITUCION       INT4                 null,
   constraint PK_EMPRESA primary key (ID_EMPRESA)
);

/*==============================================================*/
/* Index: EMPRESA_PK                                            */
/*==============================================================*/
create unique index EMPRESA_PK on EMPRESA (
ID_EMPRESA
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on EMPRESA (
ID_INSTITUCION
);

/*==============================================================*/
/* Table: ENFERMEDADES                                          */
/*==============================================================*/
create table ENFERMEDADES (
   ID_ENFERMEDAD        INT4                 not null,
   DESCRIPCION          VARCHAR(50)          not null,
   constraint PK_ENFERMEDADES primary key (ID_ENFERMEDAD)
);

/*==============================================================*/
/* Index: ENFERMEDADES_PK                                       */
/*==============================================================*/
create unique index ENFERMEDADES_PK on ENFERMEDADES (
ID_ENFERMEDAD
);

/*==============================================================*/
/* Table: FAMILIA                                               */
/*==============================================================*/
create table FAMILIA (
   ID_CODIGO            INT4                 not null,
   ID_BARRIO            INT4                 null,
   DIRECCION            VARCHAR(30)          not null,
   INGRESOS             DECIMAL(10,1)        not null,
   TELEFONO             INT4                 not null,
   TIPO_HABITACION      VARCHAR(30)          not null,
   TIPO_VIVIENDA        VARCHAR(30)          not null,
   constraint PK_FAMILIA primary key (ID_CODIGO)
);

/*==============================================================*/
/* Index: FAMILIA_PK                                            */
/*==============================================================*/
create unique index FAMILIA_PK on FAMILIA (
ID_CODIGO
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on FAMILIA (
ID_BARRIO
);

/*==============================================================*/
/* Table: FAMILIA_PERSONA                                       */
/*==============================================================*/
create table FAMILIA_PERSONA (
   ID_PERSONA           INT4                 not null,
   ID_CODIGO            INT4                 not null,
   constraint PK_FAMILIA_PERSONA primary key (ID_PERSONA, ID_CODIGO)
);

/*==============================================================*/
/* Index: FAMILIA_PERSONA_PK                                    */
/*==============================================================*/
create unique index FAMILIA_PERSONA_PK on FAMILIA_PERSONA (
ID_PERSONA,
ID_CODIGO
);

/*==============================================================*/
/* Index: FAMILIA_PERSONA2_FK                                   */
/*==============================================================*/
create  index FAMILIA_PERSONA2_FK on FAMILIA_PERSONA (
ID_CODIGO
);

/*==============================================================*/
/* Index: FAMILIA_PERSONA_FK                                    */
/*==============================================================*/
create  index FAMILIA_PERSONA_FK on FAMILIA_PERSONA (
ID_PERSONA
);

/*==============================================================*/
/* Table: GUARDERIA                                             */
/*==============================================================*/
create table GUARDERIA (
   NIT                  VARCHAR(30)          not null,
   REPRESENTANTE        VARCHAR(30)          not null,
   ID_GUARDERIA         INT4                 not null,
   ID_INSTITUCION       INT4                 null,
   constraint PK_GUARDERIA primary key (ID_GUARDERIA)
);

/*==============================================================*/
/* Index: GUARDERIA_PK                                          */
/*==============================================================*/
create unique index GUARDERIA_PK on GUARDERIA (
ID_GUARDERIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on GUARDERIA (
ID_INSTITUCION
);

/*==============================================================*/
/* Table: INSTITUCION                                           */
/*==============================================================*/
create table INSTITUCION (
   ID_INSTITUCION       INT4                 not null,
   ID_B_INDUSTRIAL      INT4                 null,
   ACTIVIDAD            VARCHAR(30)          not null,
   TIPO                 VARCHAR(30)          not null,
   JURISDICCION         VARCHAR(30)          not null,
   NOMBRE               VARCHAR(30)          not null,
   constraint PK_INSTITUCION primary key (ID_INSTITUCION)
);

/*==============================================================*/
/* Index: INSTITUCION_PK                                        */
/*==============================================================*/
create unique index INSTITUCION_PK on INSTITUCION (
ID_INSTITUCION
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_14_FK on INSTITUCION (
ID_B_INDUSTRIAL
);

/*==============================================================*/
/* Table: JOVEN                                                 */
/*==============================================================*/
create table JOVEN (
   CURSO                INT4                 null,
   EDUCACION            VARCHAR(30)          null,
   TIPO_E               VARCHAR(30)          null,
   ID_JOVEN             INT4                 not null,
   ID_PLANTEL           INT4                 null,
   ID_PERSONA           INT4                 null,
   constraint PK_JOVEN primary key (ID_JOVEN)
);

/*==============================================================*/
/* Index: JOVEN_PK                                              */
/*==============================================================*/
create unique index JOVEN_PK on JOVEN (
ID_JOVEN
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_12_FK on JOVEN (
ID_PLANTEL
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on JOVEN (
ID_PERSONA
);

/*==============================================================*/
/* Table: MENOR_ENFERMEDAD                                      */
/*==============================================================*/
create table MENOR_ENFERMEDAD (
   ID_ENFERMEDAD        INT4                 not null,
   ID_MENOR             INT4                 not null,
   constraint PK_MENOR_ENFERMEDAD primary key (ID_ENFERMEDAD, ID_MENOR)
);

/*==============================================================*/
/* Index: MENOR_ENFERMEDAD_PK                                   */
/*==============================================================*/
create unique index MENOR_ENFERMEDAD_PK on MENOR_ENFERMEDAD (
ID_ENFERMEDAD,
ID_MENOR
);

/*==============================================================*/
/* Index: MENOR_ENFERMEDAD2_FK                                  */
/*==============================================================*/
create  index MENOR_ENFERMEDAD2_FK on MENOR_ENFERMEDAD (
ID_MENOR
);

/*==============================================================*/
/* Index: MENOR_ENFERMEDAD_FK                                   */
/*==============================================================*/
create  index MENOR_ENFERMEDAD_FK on MENOR_ENFERMEDAD (
ID_ENFERMEDAD
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   DOCUMENTO            INT8                 not null,
   FECHA_NACIMIENTO     DATE                 null,
   LUGAR                VARCHAR(30)          null,
   NOMBRE               VARCHAR(30)          null,
   ID_PERSONA           INT4                 not null,
   ID_TIPO_DOC          INT4                 null,
   constraint PK_PERSONA primary key (ID_PERSONA)
);

/*==============================================================*/
/* Index: PERSONA_PK                                            */
/*==============================================================*/
create unique index PERSONA_PK on PERSONA (
ID_PERSONA
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on PERSONA (
ID_TIPO_DOC
);

/*==============================================================*/
/* Table: PERSONA_MENOR                                         */
/*==============================================================*/
create table PERSONA_MENOR (
   ID_MENOR             INT4                 not null,
   ID_GUARDERIA         INT4                 null,
   ID_PERSONA           INT4                 null,
   constraint PK_PERSONA_MENOR primary key (ID_MENOR)
);

/*==============================================================*/
/* Index: PERSONA_MENOR_PK                                      */
/*==============================================================*/
create unique index PERSONA_MENOR_PK on PERSONA_MENOR (
ID_MENOR
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on PERSONA_MENOR (
ID_GUARDERIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on PERSONA_MENOR (
ID_PERSONA
);

/*==============================================================*/
/* Table: PLANTEL                                               */
/*==============================================================*/
create table PLANTEL (
   NIT                  VARCHAR(30)          not null,
   REPRESENTANTE        VARCHAR(30)          not null,
   TIPO_PLANTEL         VARCHAR(30)          not null,
   ID_PLANTEL           INT4                 not null,
   ID_INSTITUCION       INT4                 null,
   constraint PK_PLANTEL primary key (ID_PLANTEL)
);

/*==============================================================*/
/* Index: PLANTEL_PK                                            */
/*==============================================================*/
create unique index PLANTEL_PK on PLANTEL (
ID_PLANTEL
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on PLANTEL (
ID_INSTITUCION
);

/*==============================================================*/
/* Table: RUTAS                                                 */
/*==============================================================*/
create table RUTAS (
   ID_RUTA              INT4                 not null,
   DES_RUTA             VARCHAR(30)          not null,
   constraint PK_RUTAS primary key (ID_RUTA)
);

/*==============================================================*/
/* Index: RUTAS_PK                                              */
/*==============================================================*/
create unique index RUTAS_PK on RUTAS (
ID_RUTA
);

/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
create table TIPO_DOCUMENTO (
   ID_TIPO_DOC          INT4                 not null,
   TIPO                 VARCHAR(30)          null,
   constraint PK_TIPO_DOCUMENTO primary key (ID_TIPO_DOC)
);

/*==============================================================*/
/* Index: TIPO_DOCUMENTO_PK                                     */
/*==============================================================*/
create unique index TIPO_DOCUMENTO_PK on TIPO_DOCUMENTO (
ID_TIPO_DOC
);

alter table ADULTO
   add constraint FK_ADULTO_RELATIONS_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on delete restrict on update restrict;

alter table ADULTO_EMPRESA
   add constraint FK_ADULTO_E_ADULTO_EM_ADULTO foreign key (ID_ADULTO)
      references ADULTO (ID_ADULTO)
      on delete restrict on update restrict;

alter table ADULTO_EMPRESA
   add constraint FK_ADULTO_E_ADULTO_EM_EMPRESA foreign key (ID_EMPRESA)
      references EMPRESA (ID_EMPRESA)
      on delete restrict on update restrict;

alter table BAJO_RUTAS
   add constraint FK_BAJO_RUT_BAJO_RUTA_RUTAS foreign key (ID_RUTA)
      references RUTAS (ID_RUTA)
      on delete restrict on update restrict;

alter table BAJO_RUTAS
   add constraint FK_BAJO_RUT_BAJO_RUTA_B_BAJO foreign key (ID_B_BAJO)
      references B_BAJO (ID_B_BAJO)
      on delete restrict on update restrict;

alter table B_BAJO
   add constraint FK_B_BAJO_RELATIONS_BARRIO foreign key (ID_BARRIO)
      references BARRIO (ID_BARRIO)
      on delete restrict on update restrict;

alter table B_INDUSTRIAL
   add constraint FK_B_INDUST_RELATIONS_BARRIO foreign key (ID_BARRIO)
      references BARRIO (ID_BARRIO)
      on delete restrict on update restrict;

alter table EMPRESA
   add constraint FK_EMPRESA_RELATIONS_INSTITUC foreign key (ID_INSTITUCION)
      references INSTITUCION (ID_INSTITUCION)
      on delete restrict on update restrict;

alter table FAMILIA
   add constraint FK_FAMILIA_RELATIONS_BARRIO foreign key (ID_BARRIO)
      references BARRIO (ID_BARRIO)
      on delete restrict on update restrict;

alter table FAMILIA_PERSONA
   add constraint FK_FAMILIA__FAMILIA_P_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on delete restrict on update restrict;

alter table FAMILIA_PERSONA
   add constraint FK_FAMILIA__FAMILIA_P_FAMILIA foreign key (ID_CODIGO)
      references FAMILIA (ID_CODIGO)
      on delete restrict on update restrict;

alter table GUARDERIA
   add constraint FK_GUARDERI_RELATIONS_INSTITUC foreign key (ID_INSTITUCION)
      references INSTITUCION (ID_INSTITUCION)
      on delete restrict on update restrict;

alter table INSTITUCION
   add constraint FK_INSTITUC_RELATIONS_B_INDUST foreign key (ID_B_INDUSTRIAL)
      references B_INDUSTRIAL (ID_B_INDUSTRIAL)
      on delete restrict on update restrict;

alter table JOVEN
   add constraint FK_JOVEN_RELATIONS_PLANTEL foreign key (ID_PLANTEL)
      references PLANTEL (ID_PLANTEL)
      on delete restrict on update restrict;

alter table JOVEN
   add constraint FK_JOVEN_RELATIONS_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on delete restrict on update restrict;

alter table MENOR_ENFERMEDAD
   add constraint FK_MENOR_EN_MENOR_ENF_ENFERMED foreign key (ID_ENFERMEDAD)
      references ENFERMEDADES (ID_ENFERMEDAD)
      on delete restrict on update restrict;

alter table MENOR_ENFERMEDAD
   add constraint FK_MENOR_EN_MENOR_ENF_PERSONA_ foreign key (ID_MENOR)
      references PERSONA_MENOR (ID_MENOR)
      on delete restrict on update restrict;

alter table PERSONA
   add constraint FK_PERSONA_RELATIONS_TIPO_DOC foreign key (ID_TIPO_DOC)
      references TIPO_DOCUMENTO (ID_TIPO_DOC)
      on delete restrict on update restrict;

alter table PERSONA_MENOR
   add constraint FK_PERSONA__RELATIONS_GUARDERI foreign key (ID_GUARDERIA)
      references GUARDERIA (ID_GUARDERIA)
      on delete restrict on update restrict;

alter table PERSONA_MENOR
   add constraint FK_PERSONA__RELATIONS_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on delete restrict on update restrict;

alter table PLANTEL
   add constraint FK_PLANTEL_RELATIONS_INSTITUC foreign key (ID_INSTITUCION)
      references INSTITUCION (ID_INSTITUCION)
      on delete restrict on update restrict;

