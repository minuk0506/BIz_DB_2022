--------------------------------------------------------
--  파일이 생성됨 - 일요일-6월-12-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BASKET
--------------------------------------------------------

  CREATE TABLE "SCHOOL"."BASKET" 
   (	"C_CODE" VARCHAR2(20 BYTE), 
	"U_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SCHOOL_TABLESPACE" ;
--------------------------------------------------------
--  DDL for Index SYS_C007186
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCHOOL"."SYS_C007186" ON "SCHOOL"."BASKET" ("C_CODE", "U_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SCHOOL_TABLESPACE" ;
--------------------------------------------------------
--  Constraints for Table BASKET
--------------------------------------------------------

  ALTER TABLE "SCHOOL"."BASKET" ADD PRIMARY KEY ("C_CODE", "U_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SCHOOL_TABLESPACE"  ENABLE;
  ALTER TABLE "SCHOOL"."BASKET" MODIFY ("U_ID" NOT NULL ENABLE);
  ALTER TABLE "SCHOOL"."BASKET" MODIFY ("C_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BASKET
--------------------------------------------------------

  ALTER TABLE "SCHOOL"."BASKET" ADD CONSTRAINT "FK_BASKET_CLASS" FOREIGN KEY ("C_CODE")
	  REFERENCES "SCHOOL"."CLASS" ("CLASS_CODE") ENABLE;
  ALTER TABLE "SCHOOL"."BASKET" ADD CONSTRAINT "FK_BASKET_USER" FOREIGN KEY ("U_ID")
	  REFERENCES "SCHOOL"."USERS" ("USERNAME") ENABLE;
