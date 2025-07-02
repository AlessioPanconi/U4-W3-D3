CREATE TABLE "Evento"(
    "id_evento" BIGINT NOT NULL,
    "titolo" VARCHAR(255) NOT NULL,
    "data_evento" DATE NOT NULL,
    "tipo_evento" VARCHAR(255) NOT NULL,
    "numero_partecipanti_massimo" BIGINT NOT NULL,
    "id_location_fk" BIGINT NOT NULL
);
ALTER TABLE
    "Evento" ADD PRIMARY KEY("id_evento");
CREATE TABLE "Location"(
    "id_location" BIGINT NOT NULL,
    "nome" VARCHAR(255) NOT NULL,
    "città" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Location" ADD PRIMARY KEY("id_location");
CREATE TABLE "Persona"(
    "id_persona" BIGINT NOT NULL,
    "nome" VARCHAR(255) NOT NULL,
    "cognome" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "data di nascita" DATE NOT NULL,
    "Sesso" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Persona" ADD PRIMARY KEY("id_persona");
CREATE TABLE "Partecipazioni"(
    "id" BIGINT NOT NULL,
    "Persona_id_fk" BIGINT NOT NULL,
    "Evento_id_fk" BIGINT NOT NULL,
    "stato" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Partecipazioni" ADD PRIMARY KEY("id");
ALTER TABLE
    "Evento" ADD CONSTRAINT "evento_id_location_fk_foreign" FOREIGN KEY("id_location_fk") REFERENCES "Location"("id_location");
ALTER TABLE
    "Partecipazioni" ADD CONSTRAINT "partecipazioni_persona_id_fk_foreign" FOREIGN KEY("Persona_id_fk") REFERENCES "Persona"("id_persona");
ALTER TABLE
    "Partecipazioni" ADD CONSTRAINT "partecipazioni_evento_id_fk_foreign" FOREIGN KEY("Evento_id_fk") REFERENCES "Evento"("id_evento");