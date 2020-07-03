INSERT INTO "solid_account_media" ( "t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "media", "medianame") VALUES ( '2020-04-10 18:29:16.024', '2020-04-10 18:29:16.024', 'SOLID_BACKEND', 'SOLID_BACKEND', 142906, 'EingefÃ¼gtes Bild - 3.png');

INSERT INTO "solid_account" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "email", "firstname", "keycloakuserid", "lastname", "phone", "media_t_id") VALUES ( '2020-04-10 18:28:44.754', '2020-04-10 18:28:44.754', 'SOLID_BACKEND', 'SOLID_BACKEND', 'kontakt@bauernhof-stahl.de', 'Herbert', '8f683601-de1c-4fd2-a5eb-c96c3186061f', 'Stahl', '07041 810173', NULL);
INSERT INTO "solid_account" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "email", "firstname", "keycloakuserid", "lastname", "phone", "media_t_id") VALUES ( '2020-04-10 18:28:09.149', '2020-04-10 18:28:09.149', 'SOLID_BACKEND', 'SOLID_BACKEND', 'kontakt@bauernhof-eppinger.de', 'Frieda', '3a1e6a48-6db6-4158-9db0-7086f2dc4583', 'Eppinger', '0170 5806250', NULL);
INSERT INTO "solid_account" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "email", "firstname", "keycloakuserid", "lastname", "phone", "media_t_id") VALUES ( '2020-04-10 18:29:16.039', '2020-04-10 18:27:48.388', 'SOLID_BACKEND', 'SOLID_BACKEND', 'kontakt@bauernhof-mueller.de', 'Bauer', '8d08a4f3-278c-4eb5-a08a-7b2549079c5d', 'Müller', '07195 57413', 1);
INSERT INTO "solid_account" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "email", "firstname", "keycloakuserid", "lastname", "phone", "media_t_id") VALUES ( '2020-04-10 18:28:54.248', '2020-04-10 18:28:54.248', 'SOLID_BACKEND', 'SOLID_BACKEND', 'bla@blubb.de', 'Fridolin', '05a40bb2-591b-4d1f-9e04-ae95cbd0e633', 'Huber', '0176 32942841', NULL);

INSERT INTO "solid_address" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "city", "housenr", "street", "zip") VALUES ( '2020-04-10 18:27:49.616', '2020-04-10 18:27:49.616', 'SOLID_BACKEND', 'SOLID_BACKEND', 'Schwaikheim', '19', 'Seestrasse', '71409');
INSERT INTO "solid_address" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "city", "housenr", "street", "zip") VALUES ( '2020-04-10 18:28:10.672', '2020-04-10 18:28:10.672', 'SOLID_BACKEND', 'SOLID_BACKEND', 'Remseck am Neckar', '19', 'Beim Rötelbrunnen', '71686');
INSERT INTO "solid_address" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "city", "housenr", "street", "zip") VALUES ( '2020-04-10 18:28:46.5', '2020-04-10 18:28:46.5', 'SOLID_BACKEND', 'SOLID_BACKEND', 'Mühlacker', '2', 'Vordere Wanne', '75417');

INSERT INTO "solid_provider" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "crops", "farmname", "hourlyrate", "latitude", "longitude", "minworkperiod", "url", "account_t_id", "address_t_id","bio","languages","workingconditions","overnightinformation","providinginformation","otherinformation","overnightprice","workactivities") VALUES ( '2020-04-10 18:28:46.5', '2020-04-10 18:28:46.5', 'SOLID_BACKEND', 'SOLID_BACKEND', 'Weinbau', 'Bauernhof Stahl', 9.5, 48.93926, 8.86962, 3,  'https://wirackern.de', 1, 3,'true','Deutsch, Englisch und ein wenig Polnisch','Arbeitsbeginn ist 5:30 Uhr','Übernachtungsmöglichkeiten sind im Gästehaus vorhanden','Für Verpflegung ist gesorgt (Frühstück und Mittagessen auf dem Feld)','Unser Betrieb arbeitet nachhaltig','5.50','Ernten|||Fahren');
INSERT INTO "solid_provider" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "crops", "farmname", "hourlyrate", "latitude", "longitude", "minworkperiod", "pickuprange", "url", "account_t_id", "address_t_id","bio","languages","workingconditions","providinginformation","otherinformation","overnightprice","workactivities") VALUES ( '2020-04-10 18:28:10.672', '2020-04-10 18:28:10.672', 'SOLID_BACKEND', 'SOLID_BACKEND', 'Obstbau|||Sonstige', 'Bauernhof Eppinger', 9.5, 48.87509, 9.28792, 5, 20, 'https://wirackern.de', 2, 2,'false','Deutsch, Ungarisch','Arbeitsbeginn ist 7:30 Uhr','Für Verpflegung ist gesorgt (Frühstück und Mittagessen auf dem Feld)','Unser Betrieb bezahlt immer zuverlässig','7.50','Ernten');
INSERT INTO "solid_provider" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "crops", "farmname", "hourlyrate", "latitude", "longitude", "minworkperiod", "pickuprange", "url", "account_t_id", "address_t_id","bio","languages","workingconditions","overnightinformation","providinginformation","otherinformation","workactivities") VALUES ( '2020-04-10 18:27:49.616', '2020-04-10 18:27:49.616', 'SOLID_BACKEND', 'SOLID_BACKEND', 'Erdbeeren|||Spargel|||Hopfen|||Sonstige', 'Bauernhof Müller', 9.5, 48.87926, 9.34905, 5, 20,'https://wirackern.de', 3, 1,'true','Deutsch, Polnisch, Russisch','Arbeitsbeginn ist 5:30 Uhr','Übernachtungsmöglichkeiten sind im Gästehaus vorhanden','Für Verpflegung ist gesorgt (Frühstück und Mittagessen auf dem Feld)','Wir achten auf biologische Landwirtschaft','Jäten|||Fahren');

INSERT INTO "solid_helper" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "employmentstatus", "driverlicense", "fulltime", "pickuprequired", "account_t_id") VALUES ( '2020-04-10 18:28:54.262', '2020-04-10 18:28:54.262', 'SOLID_BACKEND', 'SOLID_BACKEND', 0, 'true', 'true', 'true', 4);

INSERT INTO "solid_ticket" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "expires_at", "related_account", "related_account_type", "ticket_validated", "uuid") VALUES ( '2020-04-10 18:27:49.627', '2020-04-10 18:27:49.627', 'SOLID_BACKEND', 'SOLID_BACKEND', '2020-04-11 18:27:49.626', 1, 1, 'false', 'dc9892d4-fcbc-4c69-be9a-79b83fdc9493');
INSERT INTO "solid_ticket" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "expires_at", "related_account", "related_account_type", "ticket_validated", "uuid") VALUES ( '2020-04-10 18:28:10.679', '2020-04-10 18:28:10.679', 'SOLID_BACKEND', 'SOLID_BACKEND', '2020-04-11 18:28:10.679', 2, 1, 'false', 'aa31a821-ea6b-4ffe-84e7-807f9c1e0b07');
INSERT INTO "solid_ticket" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "expires_at", "related_account", "related_account_type", "ticket_validated", "uuid") VALUES ( '2020-04-10 18:28:46.507', '2020-04-10 18:28:46.507', 'SOLID_BACKEND', 'SOLID_BACKEND', '2020-04-11 18:28:46.507', 3, 1, 'false', 'ff885ae0-9421-4eac-946c-5f49c4a7c66a');
INSERT INTO "solid_ticket" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "expires_at", "related_account", "related_account_type", "ticket_validated", "uuid") VALUES ( '2020-04-10 18:28:54.265', '2020-04-10 18:28:54.265', 'SOLID_BACKEND', 'SOLID_BACKEND', '2020-04-11 18:28:54.265', 4, 0, 'false', '0b00ff02-d55f-489b-97f9-85722a6aaee2');

INSERT INTO "solid_inquiries" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "contacted", "helper_t_id", "provider_t_id") VALUES ( '2020-04-10 18:30:49.66', '2020-04-10 18:30:49.66', 'SOLID_BACKEND', 'SOLID_BACKEND', 'false', 1, 1);

INSERT INTO "solid_favorites" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "helper_t_id", "provider_t_id") VALUES ( '2020-04-10 18:30:57.834', '2020-04-10 18:30:57.834', 'SOLID_BACKEND', 'SOLID_BACKEND', 1, 2);
INSERT INTO "solid_favorites" ("t_date_changed", "t_date_created", "t_user_changed", "t_user_created", "helper_t_id", "provider_t_id") VALUES ( '2020-04-10 18:31:02.19', '2020-04-10 18:31:02.19', 'SOLID_BACKEND', 'SOLID_BACKEND', 1, 1);
