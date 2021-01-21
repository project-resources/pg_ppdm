FROM postgres:9.6-alpine

ARG SCHEMA=PPDM39
ENV POSTGRES_USER=ppdm_user
ENV POSTGRES_PASSWORD=ppdm_pass
ENV POSTGRES_DB=${SCHEMA}

COPY postgres_39/PPDM39_TAB.SQL /docker-entrypoint-initdb.d/001_PPDM39_TAB.sql
COPY postgres_39/PPDM39_PK.SQL /docker-entrypoint-initdb.d/002_PPDM39_PK.sql
COPY postgres_39/PPDM39_CK.SQL /docker-entrypoint-initdb.d/003_PPDM39_CK.sql
COPY postgres_39/PPDM39_FK.SQL /docker-entrypoint-initdb.d/004_PPDM39_FK.sql
COPY postgres_39/PPDM39_OUOM.SQL /docker-entrypoint-initdb.d/005_PPDM39_OUOM.sql
COPY postgres_39/PPDM39_UOM.SQL /docker-entrypoint-initdb.d/006_PPDM39_UOM.sql
COPY postgres_39/PPDM39_RQUAL.SQL /docker-entrypoint-initdb.d/007_PPDM39_RQUAL.sql
COPY postgres_39/PPDM39_RSRC.SQL /docker-entrypoint-initdb.d/008_PPDM39_RSRC.sql
COPY postgres_39/PPDM39_TCM.SQL /docker-entrypoint-initdb.d/009_PPDM39_TCM.sql
COPY postgres_39/PPDM39_CCM.SQL /docker-entrypoint-initdb.d/010_PPDM39_CCM.sql
# COPY postgres_39/PPDM39_SYN.SQL /docker-entrypoint-initdb.d/011_PPDM39_SYN.sql
COPY postgres_39/PPDM39_GUID.SQL /docker-entrypoint-initdb.d/012_PPDM39_GUID.sql
