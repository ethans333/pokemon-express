--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Debian 17.5-1.pgdg120+1)
-- Dumped by pg_dump version 17.5 (Debian 17.5-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    id integer NOT NULL,
    name text,
    type1 text,
    type2 text,
    total integer,
    hp integer,
    defense integer,
    speed integer,
    generation integer,
    legendary boolean,
    attack text
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    dirty boolean NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon (id, name, type1, type2, total, hp, defense, speed, generation, legendary, attack) FROM stdin;
1	Bulbasaur	Grass	Poison	318	45	49	45	1	t	49
2	Ivysaur	Grass	Poison	405	60	63	60	1	t	62
3	Venusaur	Grass	Poison	525	80	83	80	1	t	82
4	VenusaurMega Venusaur	Grass	Poison	625	80	123	80	1	t	100
5	Charmander	Fire	\N	309	39	43	65	1	t	52
6	Charmeleon	Fire	\N	405	58	58	80	1	t	64
7	Charizard	Fire	Flying	534	78	78	100	1	t	84
8	CharizardMega Charizard X	Fire	Dragon	634	78	111	100	1	t	130
9	CharizardMega Charizard Y	Fire	Flying	634	78	78	100	1	t	104
10	Squirtle	Water	\N	314	44	65	43	1	t	48
11	Wartortle	Water	\N	405	59	80	58	1	t	63
12	Blastoise	Water	\N	530	79	100	78	1	t	83
13	BlastoiseMega Blastoise	Water	\N	630	79	120	78	1	t	103
14	Caterpie	Bug	\N	195	45	35	45	1	t	30
15	Metapod	Bug	\N	205	50	55	30	1	t	20
16	Butterfree	Bug	Flying	395	60	50	70	1	t	45
17	Weedle	Bug	Poison	195	40	30	50	1	t	35
18	Kakuna	Bug	Poison	205	45	50	35	1	t	25
19	Beedrill	Bug	Poison	395	65	40	75	1	t	90
20	BeedrillMega Beedrill	Bug	Poison	495	65	40	145	1	t	150
21	Pidgey	Normal	Flying	251	40	40	56	1	t	45
22	Pidgeotto	Normal	Flying	349	63	55	71	1	t	60
23	Pidgeot	Normal	Flying	479	83	75	101	1	t	80
24	PidgeotMega Pidgeot	Normal	Flying	579	83	80	121	1	t	80
25	Rattata	Normal	\N	253	30	35	72	1	t	56
26	Raticate	Normal	\N	413	55	60	97	1	t	81
27	Spearow	Normal	Flying	262	40	30	70	1	t	60
28	Fearow	Normal	Flying	442	65	65	100	1	t	90
29	Ekans	Poison	\N	288	35	44	55	1	t	60
30	Arbok	Poison	\N	438	60	69	80	1	t	85
31	Pikachu	Electric	\N	320	35	40	90	1	t	55
32	Raichu	Electric	\N	485	60	55	110	1	t	90
33	Sandshrew	Ground	\N	300	50	85	40	1	t	75
34	Sandslash	Ground	\N	450	75	110	65	1	t	100
35	Nidoran♀	Poison	\N	275	55	52	41	1	t	47
36	Nidorina	Poison	\N	365	70	67	56	1	t	62
37	Nidoqueen	Poison	Ground	505	90	87	76	1	t	92
38	Nidoran♂	Poison	\N	273	46	40	50	1	t	57
39	Nidorino	Poison	\N	365	61	57	65	1	t	72
40	Nidoking	Poison	Ground	505	81	77	85	1	t	102
41	Clefairy	Fairy	\N	323	70	48	35	1	t	45
42	Clefable	Fairy	\N	483	95	73	60	1	t	70
43	Vulpix	Fire	\N	299	38	40	65	1	t	41
44	Ninetales	Fire	\N	505	73	75	100	1	t	76
45	Jigglypuff	Normal	Fairy	270	115	20	20	1	t	45
46	Wigglytuff	Normal	Fairy	435	140	45	45	1	t	70
47	Zubat	Poison	Flying	245	40	35	55	1	t	45
48	Golbat	Poison	Flying	455	75	70	90	1	t	80
49	Oddish	Grass	Poison	320	45	55	30	1	t	50
50	Gloom	Grass	Poison	395	60	70	40	1	t	65
51	Vileplume	Grass	Poison	490	75	85	50	1	t	80
52	Paras	Bug	Grass	285	35	55	25	1	t	70
53	Parasect	Bug	Grass	405	60	80	30	1	t	95
54	Venonat	Bug	Poison	305	60	50	45	1	t	55
55	Venomoth	Bug	Poison	450	70	60	90	1	t	65
56	Diglett	Ground	\N	265	10	25	95	1	t	55
57	Dugtrio	Ground	\N	405	35	50	120	1	t	80
58	Meowth	Normal	\N	290	40	35	90	1	t	45
59	Persian	Normal	\N	440	65	60	115	1	t	70
60	Psyduck	Water	\N	320	50	48	55	1	t	52
61	Golduck	Water	\N	500	80	78	85	1	t	82
62	Mankey	Fighting	\N	305	40	35	70	1	t	80
63	Primeape	Fighting	\N	455	65	60	95	1	t	105
64	Growlithe	Fire	\N	350	55	45	60	1	t	70
65	Arcanine	Fire	\N	555	90	80	95	1	t	110
66	Poliwag	Water	\N	300	40	40	90	1	t	50
67	Poliwhirl	Water	\N	385	65	65	90	1	t	65
68	Poliwrath	Water	Fighting	510	90	95	70	1	t	95
69	Abra	Psychic	\N	310	25	15	90	1	t	20
70	Kadabra	Psychic	\N	400	40	30	105	1	t	35
71	Alakazam	Psychic	\N	500	55	45	120	1	t	50
72	AlakazamMega Alakazam	Psychic	\N	590	55	65	150	1	t	50
73	Machop	Fighting	\N	305	70	50	35	1	t	80
74	Machoke	Fighting	\N	405	80	70	45	1	t	100
75	Machamp	Fighting	\N	505	90	80	55	1	t	130
76	Bellsprout	Grass	Poison	300	50	35	40	1	t	75
77	Weepinbell	Grass	Poison	390	65	50	55	1	t	90
78	Victreebel	Grass	Poison	490	80	65	70	1	t	105
79	Tentacool	Water	Poison	335	40	35	70	1	t	40
80	Tentacruel	Water	Poison	515	80	65	100	1	t	70
81	Geodude	Rock	Ground	300	40	100	20	1	t	80
82	Graveler	Rock	Ground	390	55	115	35	1	t	95
83	Golem	Rock	Ground	495	80	130	45	1	t	120
84	Ponyta	Fire	\N	410	50	55	90	1	t	85
85	Rapidash	Fire	\N	500	65	70	105	1	t	100
86	Slowpoke	Water	Psychic	315	90	65	15	1	t	65
87	Slowbro	Water	Psychic	490	95	110	30	1	t	75
88	SlowbroMega Slowbro	Water	Psychic	590	95	180	30	1	t	75
89	Magnemite	Electric	Steel	325	25	70	45	1	t	35
90	Magneton	Electric	Steel	465	50	95	70	1	t	60
91	Farfetch'd	Normal	Flying	352	52	55	60	1	t	65
92	Doduo	Normal	Flying	310	35	45	75	1	t	85
93	Dodrio	Normal	Flying	460	60	70	100	1	t	110
94	Seel	Water	\N	325	65	55	45	1	t	45
95	Dewgong	Water	Ice	475	90	80	70	1	t	70
96	Grimer	Poison	\N	325	80	50	25	1	t	80
97	Muk	Poison	\N	500	105	75	50	1	t	105
98	Shellder	Water	\N	305	30	100	40	1	t	65
99	Cloyster	Water	Ice	525	50	180	70	1	t	95
100	Gastly	Ghost	Poison	310	30	30	80	1	t	35
101	Haunter	Ghost	Poison	405	45	45	95	1	t	50
102	Gengar	Ghost	Poison	500	60	60	110	1	t	65
103	GengarMega Gengar	Ghost	Poison	600	60	80	130	1	t	65
104	Onix	Rock	Ground	385	35	160	70	1	t	45
105	Drowzee	Psychic	\N	328	60	45	42	1	t	48
106	Hypno	Psychic	\N	483	85	70	67	1	t	73
107	Krabby	Water	\N	325	30	90	50	1	t	105
108	Kingler	Water	\N	475	55	115	75	1	t	130
109	Voltorb	Electric	\N	330	40	50	100	1	t	30
110	Electrode	Electric	\N	480	60	70	140	1	t	50
111	Exeggcute	Grass	Psychic	325	60	80	40	1	t	40
112	Exeggutor	Grass	Psychic	520	95	85	55	1	t	95
113	Cubone	Ground	\N	320	50	95	35	1	t	50
114	Marowak	Ground	\N	425	60	110	45	1	t	80
115	Hitmonlee	Fighting	\N	455	50	53	87	1	t	120
116	Hitmonchan	Fighting	\N	455	50	79	76	1	t	105
117	Lickitung	Normal	\N	385	90	75	30	1	t	55
118	Koffing	Poison	\N	340	40	95	35	1	t	65
119	Weezing	Poison	\N	490	65	120	60	1	t	90
120	Rhyhorn	Ground	Rock	345	80	95	25	1	t	85
121	Rhydon	Ground	Rock	485	105	120	40	1	t	130
122	Chansey	Normal	\N	450	250	5	50	1	t	5
123	Tangela	Grass	\N	435	65	115	60	1	t	55
124	Kangaskhan	Normal	\N	490	105	80	90	1	t	95
125	KangaskhanMega Kangaskhan	Normal	\N	590	105	100	100	1	t	125
126	Horsea	Water	\N	295	30	70	60	1	t	40
127	Seadra	Water	\N	440	55	95	85	1	t	65
128	Goldeen	Water	\N	320	45	60	63	1	t	67
129	Seaking	Water	\N	450	80	65	68	1	t	92
130	Staryu	Water	\N	340	30	55	85	1	t	45
131	Starmie	Water	Psychic	520	60	85	115	1	t	75
132	Mr. Mime	Psychic	Fairy	460	40	65	90	1	t	45
133	Scyther	Bug	Flying	500	70	80	105	1	t	110
134	Jynx	Ice	Psychic	455	65	35	95	1	t	50
135	Electabuzz	Electric	\N	490	65	57	105	1	t	83
136	Magmar	Fire	\N	495	65	57	93	1	t	95
137	Pinsir	Bug	\N	500	65	100	85	1	t	125
138	PinsirMega Pinsir	Bug	Flying	600	65	120	105	1	t	155
139	Tauros	Normal	\N	490	75	95	110	1	t	100
140	Magikarp	Water	\N	200	20	55	80	1	t	10
141	Gyarados	Water	Flying	540	95	79	81	1	t	125
142	GyaradosMega Gyarados	Water	Dark	640	95	109	81	1	t	155
143	Lapras	Water	Ice	535	130	80	60	1	t	85
144	Ditto	Normal	\N	288	48	48	48	1	t	48
145	Eevee	Normal	\N	325	55	50	55	1	t	55
146	Vaporeon	Water	\N	525	130	60	65	1	t	65
147	Jolteon	Electric	\N	525	65	60	130	1	t	65
148	Flareon	Fire	\N	525	65	60	65	1	t	130
149	Porygon	Normal	\N	395	65	70	40	1	t	60
150	Omanyte	Rock	Water	355	35	100	35	1	t	40
151	Omastar	Rock	Water	495	70	125	55	1	t	60
152	Kabuto	Rock	Water	355	30	90	55	1	t	80
153	Kabutops	Rock	Water	495	60	105	80	1	t	115
154	Aerodactyl	Rock	Flying	515	80	65	130	1	t	105
155	AerodactylMega Aerodactyl	Rock	Flying	615	80	85	150	1	t	135
156	Snorlax	Normal	\N	540	160	65	30	1	t	110
157	Articuno	Ice	Flying	580	90	100	85	1	t	85
158	Zapdos	Electric	Flying	580	90	85	100	1	t	90
159	Moltres	Fire	Flying	580	90	90	90	1	t	100
160	Dratini	Dragon	\N	300	41	45	50	1	t	64
161	Dragonair	Dragon	\N	420	61	65	70	1	t	84
162	Dragonite	Dragon	Flying	600	91	95	80	1	t	134
163	Mewtwo	Psychic	\N	680	106	90	130	1	t	110
164	MewtwoMega Mewtwo X	Psychic	Fighting	780	106	100	130	1	t	190
165	MewtwoMega Mewtwo Y	Psychic	\N	780	106	70	140	1	t	150
166	Mew	Psychic	\N	600	100	100	100	1	t	100
167	Chikorita	Grass	\N	318	45	65	45	2	t	49
168	Bayleef	Grass	\N	405	60	80	60	2	t	62
169	Meganium	Grass	\N	525	80	100	80	2	t	82
170	Cyndaquil	Fire	\N	309	39	43	65	2	t	52
171	Quilava	Fire	\N	405	58	58	80	2	t	64
172	Typhlosion	Fire	\N	534	78	78	100	2	t	84
173	Totodile	Water	\N	314	50	64	43	2	t	65
174	Croconaw	Water	\N	405	65	80	58	2	t	80
175	Feraligatr	Water	\N	530	85	100	78	2	t	105
176	Sentret	Normal	\N	215	35	34	20	2	t	46
177	Furret	Normal	\N	415	85	64	90	2	t	76
178	Hoothoot	Normal	Flying	262	60	30	50	2	t	30
179	Noctowl	Normal	Flying	442	100	50	70	2	t	50
180	Ledyba	Bug	Flying	265	40	30	55	2	t	20
181	Ledian	Bug	Flying	390	55	50	85	2	t	35
182	Spinarak	Bug	Poison	250	40	40	30	2	t	60
183	Ariados	Bug	Poison	390	70	70	40	2	t	90
184	Crobat	Poison	Flying	535	85	80	130	2	t	90
185	Chinchou	Water	Electric	330	75	38	67	2	t	38
186	Lanturn	Water	Electric	460	125	58	67	2	t	58
187	Pichu	Electric	\N	205	20	15	60	2	t	40
188	Cleffa	Fairy	\N	218	50	28	15	2	t	25
189	Igglybuff	Normal	Fairy	210	90	15	15	2	t	30
190	Togepi	Fairy	\N	245	35	65	20	2	t	20
191	Togetic	Fairy	Flying	405	55	85	40	2	t	40
192	Natu	Psychic	Flying	320	40	45	70	2	t	50
193	Xatu	Psychic	Flying	470	65	70	95	2	t	75
194	Mareep	Electric	\N	280	55	40	35	2	t	40
195	Flaaffy	Electric	\N	365	70	55	45	2	t	55
196	Ampharos	Electric	\N	510	90	85	55	2	t	75
197	AmpharosMega Ampharos	Electric	Dragon	610	90	105	45	2	t	95
198	Bellossom	Grass	\N	490	75	95	50	2	t	80
199	Marill	Water	Fairy	250	70	50	40	2	t	20
200	Azumarill	Water	Fairy	420	100	80	50	2	t	50
201	Sudowoodo	Rock	\N	410	70	115	30	2	t	100
202	Politoed	Water	\N	500	90	75	70	2	t	75
203	Hoppip	Grass	Flying	250	35	40	50	2	t	35
204	Skiploom	Grass	Flying	340	55	50	80	2	t	45
205	Jumpluff	Grass	Flying	460	75	70	110	2	t	55
206	Aipom	Normal	\N	360	55	55	85	2	t	70
207	Sunkern	Grass	\N	180	30	30	30	2	t	30
208	Sunflora	Grass	\N	425	75	55	30	2	t	75
209	Yanma	Bug	Flying	390	65	45	95	2	t	65
210	Wooper	Water	Ground	210	55	45	15	2	t	45
211	Quagsire	Water	Ground	430	95	85	35	2	t	85
212	Espeon	Psychic	\N	525	65	60	110	2	t	65
213	Umbreon	Dark	\N	525	95	110	65	2	t	65
214	Murkrow	Dark	Flying	405	60	42	91	2	t	85
215	Slowking	Water	Psychic	490	95	80	30	2	t	75
216	Misdreavus	Ghost	\N	435	60	60	85	2	t	60
217	Unown	Psychic	\N	336	48	48	48	2	t	72
218	Wobbuffet	Psychic	\N	405	190	58	33	2	t	33
219	Girafarig	Normal	Psychic	455	70	65	85	2	t	80
220	Pineco	Bug	\N	290	50	90	15	2	t	65
221	Forretress	Bug	Steel	465	75	140	40	2	t	90
222	Dunsparce	Normal	\N	415	100	70	45	2	t	70
223	Gligar	Ground	Flying	430	65	105	85	2	t	75
224	Steelix	Steel	Ground	510	75	200	30	2	t	85
225	SteelixMega Steelix	Steel	Ground	610	75	230	30	2	t	125
226	Snubbull	Fairy	\N	300	60	50	30	2	t	80
227	Granbull	Fairy	\N	450	90	75	45	2	t	120
228	Qwilfish	Water	Poison	430	65	75	85	2	t	95
229	Scizor	Bug	Steel	500	70	100	65	2	t	130
230	ScizorMega Scizor	Bug	Steel	600	70	140	75	2	t	150
231	Shuckle	Bug	Rock	505	20	230	5	2	t	10
232	Heracross	Bug	Fighting	500	80	75	85	2	t	125
233	HeracrossMega Heracross	Bug	Fighting	600	80	115	75	2	t	185
234	Sneasel	Dark	Ice	430	55	55	115	2	t	95
235	Teddiursa	Normal	\N	330	60	50	40	2	t	80
236	Ursaring	Normal	\N	500	90	75	55	2	t	130
237	Slugma	Fire	\N	250	40	40	20	2	t	40
238	Magcargo	Fire	Rock	410	50	120	30	2	t	50
239	Swinub	Ice	Ground	250	50	40	50	2	t	50
240	Piloswine	Ice	Ground	450	100	80	50	2	t	100
241	Corsola	Water	Rock	380	55	85	35	2	t	55
242	Remoraid	Water	\N	300	35	35	65	2	t	65
243	Octillery	Water	\N	480	75	75	45	2	t	105
244	Delibird	Ice	Flying	330	45	45	75	2	t	55
245	Mantine	Water	Flying	465	65	70	70	2	t	40
246	Skarmory	Steel	Flying	465	65	140	70	2	t	80
247	Houndour	Dark	Fire	330	45	30	65	2	t	60
248	Houndoom	Dark	Fire	500	75	50	95	2	t	90
249	HoundoomMega Houndoom	Dark	Fire	600	75	90	115	2	t	90
250	Kingdra	Water	Dragon	540	75	95	85	2	t	95
251	Phanpy	Ground	\N	330	90	60	40	2	t	60
252	Donphan	Ground	\N	500	90	120	50	2	t	120
253	Porygon2	Normal	\N	515	85	90	60	2	t	80
254	Stantler	Normal	\N	465	73	62	85	2	t	95
255	Smeargle	Normal	\N	250	55	35	75	2	t	20
256	Tyrogue	Fighting	\N	210	35	35	35	2	t	35
257	Hitmontop	Fighting	\N	455	50	95	70	2	t	95
258	Smoochum	Ice	Psychic	305	45	15	65	2	t	30
259	Elekid	Electric	\N	360	45	37	95	2	t	63
260	Magby	Fire	\N	365	45	37	83	2	t	75
261	Miltank	Normal	\N	490	95	105	100	2	t	80
262	Blissey	Normal	\N	540	255	10	55	2	t	10
263	Raikou	Electric	\N	580	90	75	115	2	t	85
264	Entei	Fire	\N	580	115	85	100	2	t	115
265	Suicune	Water	\N	580	100	115	85	2	t	75
266	Larvitar	Rock	Ground	300	50	50	41	2	t	64
267	Pupitar	Rock	Ground	410	70	70	51	2	t	84
268	Tyranitar	Rock	Dark	600	100	110	61	2	t	134
269	TyranitarMega Tyranitar	Rock	Dark	700	100	150	71	2	t	164
270	Lugia	Psychic	Flying	680	106	130	110	2	t	90
271	Ho-oh	Fire	Flying	680	106	90	90	2	t	130
272	Celebi	Psychic	Grass	600	100	100	100	2	t	100
273	Treecko	Grass	\N	310	40	35	70	3	t	45
274	Grovyle	Grass	\N	405	50	45	95	3	t	65
275	Sceptile	Grass	\N	530	70	65	120	3	t	85
276	SceptileMega Sceptile	Grass	Dragon	630	70	75	145	3	t	110
277	Torchic	Fire	\N	310	45	40	45	3	t	60
278	Combusken	Fire	Fighting	405	60	60	55	3	t	85
279	Blaziken	Fire	Fighting	530	80	70	80	3	t	120
280	BlazikenMega Blaziken	Fire	Fighting	630	80	80	100	3	t	160
281	Mudkip	Water	\N	310	50	50	40	3	t	70
282	Marshtomp	Water	Ground	405	70	70	50	3	t	85
283	Swampert	Water	Ground	535	100	90	60	3	t	110
284	SwampertMega Swampert	Water	Ground	635	100	110	70	3	t	150
285	Poochyena	Dark	\N	220	35	35	35	3	t	55
286	Mightyena	Dark	\N	420	70	70	70	3	t	90
287	Zigzagoon	Normal	\N	240	38	41	60	3	t	30
288	Linoone	Normal	\N	420	78	61	100	3	t	70
289	Wurmple	Bug	\N	195	45	35	20	3	t	45
290	Silcoon	Bug	\N	205	50	55	15	3	t	35
291	Beautifly	Bug	Flying	395	60	50	65	3	t	70
292	Cascoon	Bug	\N	205	50	55	15	3	t	35
293	Dustox	Bug	Poison	385	60	70	65	3	t	50
294	Lotad	Water	Grass	220	40	30	30	3	t	30
295	Lombre	Water	Grass	340	60	50	50	3	t	50
296	Ludicolo	Water	Grass	480	80	70	70	3	t	70
297	Seedot	Grass	\N	220	40	50	30	3	t	40
298	Nuzleaf	Grass	Dark	340	70	40	60	3	t	70
299	Shiftry	Grass	Dark	480	90	60	80	3	t	100
300	Taillow	Normal	Flying	270	40	30	85	3	t	55
301	Swellow	Normal	Flying	430	60	60	125	3	t	85
302	Wingull	Water	Flying	270	40	30	85	3	t	30
303	Pelipper	Water	Flying	430	60	100	65	3	t	50
304	Ralts	Psychic	Fairy	198	28	25	40	3	t	25
305	Kirlia	Psychic	Fairy	278	38	35	50	3	t	35
306	Gardevoir	Psychic	Fairy	518	68	65	80	3	t	65
307	GardevoirMega Gardevoir	Psychic	Fairy	618	68	65	100	3	t	85
308	Surskit	Bug	Water	269	40	32	65	3	t	30
309	Masquerain	Bug	Flying	414	70	62	60	3	t	60
310	Shroomish	Grass	\N	295	60	60	35	3	t	40
311	Breloom	Grass	Fighting	460	60	80	70	3	t	130
312	Slakoth	Normal	\N	280	60	60	30	3	t	60
313	Vigoroth	Normal	\N	440	80	80	90	3	t	80
314	Slaking	Normal	\N	670	150	100	100	3	t	160
315	Nincada	Bug	Ground	266	31	90	40	3	t	45
316	Ninjask	Bug	Flying	456	61	45	160	3	t	90
317	Shedinja	Bug	Ghost	236	1	45	40	3	t	90
318	Whismur	Normal	\N	240	64	23	28	3	t	51
319	Loudred	Normal	\N	360	84	43	48	3	t	71
320	Exploud	Normal	\N	490	104	63	68	3	t	91
321	Makuhita	Fighting	\N	237	72	30	25	3	t	60
322	Hariyama	Fighting	\N	474	144	60	50	3	t	120
323	Azurill	Normal	Fairy	190	50	40	20	3	t	20
324	Nosepass	Rock	\N	375	30	135	30	3	t	45
325	Skitty	Normal	\N	260	50	45	50	3	t	45
326	Delcatty	Normal	\N	380	70	65	70	3	t	65
327	Sableye	Dark	Ghost	380	50	75	50	3	t	75
328	SableyeMega Sableye	Dark	Ghost	480	50	125	20	3	t	85
329	Mawile	Steel	Fairy	380	50	85	50	3	t	85
330	MawileMega Mawile	Steel	Fairy	480	50	125	50	3	t	105
331	Aron	Steel	Rock	330	50	100	30	3	t	70
332	Lairon	Steel	Rock	430	60	140	40	3	t	90
333	Aggron	Steel	Rock	530	70	180	50	3	t	110
334	AggronMega Aggron	Steel	\N	630	70	230	50	3	t	140
335	Meditite	Fighting	Psychic	280	30	55	60	3	t	40
336	Medicham	Fighting	Psychic	410	60	75	80	3	t	60
337	MedichamMega Medicham	Fighting	Psychic	510	60	85	100	3	t	100
338	Electrike	Electric	\N	295	40	40	65	3	t	45
339	Manectric	Electric	\N	475	70	60	105	3	t	75
340	ManectricMega Manectric	Electric	\N	575	70	80	135	3	t	75
341	Plusle	Electric	\N	405	60	40	95	3	t	50
342	Minun	Electric	\N	405	60	50	95	3	t	40
343	Volbeat	Bug	\N	400	65	55	85	3	t	73
344	Illumise	Bug	\N	400	65	55	85	3	t	47
345	Roselia	Grass	Poison	400	50	45	65	3	t	60
346	Gulpin	Poison	\N	302	70	53	40	3	t	43
347	Swalot	Poison	\N	467	100	83	55	3	t	73
348	Carvanha	Water	Dark	305	45	20	65	3	t	90
349	Sharpedo	Water	Dark	460	70	40	95	3	t	120
350	SharpedoMega Sharpedo	Water	Dark	560	70	70	105	3	t	140
351	Wailmer	Water	\N	400	130	35	60	3	t	70
352	Wailord	Water	\N	500	170	45	60	3	t	90
353	Numel	Fire	Ground	305	60	40	35	3	t	60
354	Camerupt	Fire	Ground	460	70	70	40	3	t	100
355	CameruptMega Camerupt	Fire	Ground	560	70	100	20	3	t	120
356	Torkoal	Fire	\N	470	70	140	20	3	t	85
357	Spoink	Psychic	\N	330	60	35	60	3	t	25
358	Grumpig	Psychic	\N	470	80	65	80	3	t	45
359	Spinda	Normal	\N	360	60	60	60	3	t	60
360	Trapinch	Ground	\N	290	45	45	10	3	t	100
361	Vibrava	Ground	Dragon	340	50	50	70	3	t	70
362	Flygon	Ground	Dragon	520	80	80	100	3	t	100
363	Cacnea	Grass	\N	335	50	40	35	3	t	85
364	Cacturne	Grass	Dark	475	70	60	55	3	t	115
365	Swablu	Normal	Flying	310	45	60	50	3	t	40
366	Altaria	Dragon	Flying	490	75	90	80	3	t	70
367	AltariaMega Altaria	Dragon	Fairy	590	75	110	80	3	t	110
368	Zangoose	Normal	\N	458	73	60	90	3	t	115
369	Seviper	Poison	\N	458	73	60	65	3	t	100
370	Lunatone	Rock	Psychic	440	70	65	70	3	t	55
371	Solrock	Rock	Psychic	440	70	85	70	3	t	95
372	Barboach	Water	Ground	288	50	43	60	3	t	48
373	Whiscash	Water	Ground	468	110	73	60	3	t	78
374	Corphish	Water	\N	308	43	65	35	3	t	80
375	Crawdaunt	Water	Dark	468	63	85	55	3	t	120
376	Baltoy	Ground	Psychic	300	40	55	55	3	t	40
377	Claydol	Ground	Psychic	500	60	105	75	3	t	70
378	Lileep	Rock	Grass	355	66	77	23	3	t	41
379	Cradily	Rock	Grass	495	86	97	43	3	t	81
380	Anorith	Rock	Bug	355	45	50	75	3	t	95
381	Armaldo	Rock	Bug	495	75	100	45	3	t	125
382	Feebas	Water	\N	200	20	20	80	3	t	15
383	Milotic	Water	\N	540	95	79	81	3	t	60
384	Castform	Normal	\N	420	70	70	70	3	t	70
385	Kecleon	Normal	\N	440	60	70	40	3	t	90
386	Shuppet	Ghost	\N	295	44	35	45	3	t	75
387	Banette	Ghost	\N	455	64	65	65	3	t	115
388	BanetteMega Banette	Ghost	\N	555	64	75	75	3	t	165
389	Duskull	Ghost	\N	295	20	90	25	3	t	40
390	Dusclops	Ghost	\N	455	40	130	25	3	t	70
391	Tropius	Grass	Flying	460	99	83	51	3	t	68
392	Chimecho	Psychic	\N	425	65	70	65	3	t	50
393	Absol	Dark	\N	465	65	60	75	3	t	130
394	AbsolMega Absol	Dark	\N	565	65	60	115	3	t	150
395	Wynaut	Psychic	\N	260	95	48	23	3	t	23
396	Snorunt	Ice	\N	300	50	50	50	3	t	50
397	Glalie	Ice	\N	480	80	80	80	3	t	80
398	GlalieMega Glalie	Ice	\N	580	80	80	100	3	t	120
399	Spheal	Ice	Water	290	70	50	25	3	t	40
400	Sealeo	Ice	Water	410	90	70	45	3	t	60
401	Walrein	Ice	Water	530	110	90	65	3	t	80
402	Clamperl	Water	\N	345	35	85	32	3	t	64
403	Huntail	Water	\N	485	55	105	52	3	t	104
404	Gorebyss	Water	\N	485	55	105	52	3	t	84
405	Relicanth	Water	Rock	485	100	130	55	3	t	90
406	Luvdisc	Water	\N	330	43	55	97	3	t	30
407	Bagon	Dragon	\N	300	45	60	50	3	t	75
408	Shelgon	Dragon	\N	420	65	100	50	3	t	95
409	Salamence	Dragon	Flying	600	95	80	100	3	t	135
410	SalamenceMega Salamence	Dragon	Flying	700	95	130	120	3	t	145
411	Beldum	Steel	Psychic	300	40	80	30	3	t	55
412	Metang	Steel	Psychic	420	60	100	50	3	t	75
413	Metagross	Steel	Psychic	600	80	130	70	3	t	135
414	MetagrossMega Metagross	Steel	Psychic	700	80	150	110	3	t	145
415	Regirock	Rock	\N	580	80	200	50	3	t	100
416	Regice	Ice	\N	580	80	100	50	3	t	50
417	Registeel	Steel	\N	580	80	150	50	3	t	75
418	Latias	Dragon	Psychic	600	80	90	110	3	t	80
419	LatiasMega Latias	Dragon	Psychic	700	80	120	110	3	t	100
420	Latios	Dragon	Psychic	600	80	80	110	3	t	90
421	LatiosMega Latios	Dragon	Psychic	700	80	100	110	3	t	130
422	Kyogre	Water	\N	670	100	90	90	3	t	100
423	KyogrePrimal Kyogre	Water	\N	770	100	90	90	3	t	150
424	Groudon	Ground	\N	670	100	140	90	3	t	150
425	GroudonPrimal Groudon	Ground	Fire	770	100	160	90	3	t	180
426	Rayquaza	Dragon	Flying	680	105	90	95	3	t	150
427	RayquazaMega Rayquaza	Dragon	Flying	780	105	100	115	3	t	180
428	Jirachi	Steel	Psychic	600	100	100	100	3	t	100
429	DeoxysNormal Forme	Psychic	\N	600	50	50	150	3	t	150
430	DeoxysAttack Forme	Psychic	\N	600	50	20	150	3	t	180
431	DeoxysDefense Forme	Psychic	\N	600	50	160	90	3	t	70
432	DeoxysSpeed Forme	Psychic	\N	600	50	90	180	3	t	95
433	Turtwig	Grass	\N	318	55	64	31	4	t	68
434	Grotle	Grass	\N	405	75	85	36	4	t	89
435	Torterra	Grass	Ground	525	95	105	56	4	t	109
436	Chimchar	Fire	\N	309	44	44	61	4	t	58
437	Monferno	Fire	Fighting	405	64	52	81	4	t	78
438	Infernape	Fire	Fighting	534	76	71	108	4	t	104
439	Piplup	Water	\N	314	53	53	40	4	t	51
440	Prinplup	Water	\N	405	64	68	50	4	t	66
441	Empoleon	Water	Steel	530	84	88	60	4	t	86
442	Starly	Normal	Flying	245	40	30	60	4	t	55
443	Staravia	Normal	Flying	340	55	50	80	4	t	75
444	Staraptor	Normal	Flying	485	85	70	100	4	t	120
445	Bidoof	Normal	\N	250	59	40	31	4	t	45
446	Bibarel	Normal	Water	410	79	60	71	4	t	85
447	Kricketot	Bug	\N	194	37	41	25	4	t	25
448	Kricketune	Bug	\N	384	77	51	65	4	t	85
449	Shinx	Electric	\N	263	45	34	45	4	t	65
450	Luxio	Electric	\N	363	60	49	60	4	t	85
451	Luxray	Electric	\N	523	80	79	70	4	t	120
452	Budew	Grass	Poison	280	40	35	55	4	t	30
453	Roserade	Grass	Poison	515	60	65	90	4	t	70
454	Cranidos	Rock	\N	350	67	40	58	4	t	125
455	Rampardos	Rock	\N	495	97	60	58	4	t	165
456	Shieldon	Rock	Steel	350	30	118	30	4	t	42
457	Bastiodon	Rock	Steel	495	60	168	30	4	t	52
458	Burmy	Bug	\N	224	40	45	36	4	t	29
459	WormadamPlant Cloak	Bug	Grass	424	60	85	36	4	t	59
460	WormadamSandy Cloak	Bug	Ground	424	60	105	36	4	t	79
461	WormadamTrash Cloak	Bug	Steel	424	60	95	36	4	t	69
462	Mothim	Bug	Flying	424	70	50	66	4	t	94
463	Combee	Bug	Flying	244	30	42	70	4	t	30
464	Vespiquen	Bug	Flying	474	70	102	40	4	t	80
465	Pachirisu	Electric	\N	405	60	70	95	4	t	45
466	Buizel	Water	\N	330	55	35	85	4	t	65
467	Floatzel	Water	\N	495	85	55	115	4	t	105
468	Cherubi	Grass	\N	275	45	45	35	4	t	35
469	Cherrim	Grass	\N	450	70	70	85	4	t	60
470	Shellos	Water	\N	325	76	48	34	4	t	48
471	Gastrodon	Water	Ground	475	111	68	39	4	t	83
472	Ambipom	Normal	\N	482	75	66	115	4	t	100
473	Drifloon	Ghost	Flying	348	90	34	70	4	t	50
474	Drifblim	Ghost	Flying	498	150	44	80	4	t	80
475	Buneary	Normal	\N	350	55	44	85	4	t	66
476	Lopunny	Normal	\N	480	65	84	105	4	t	76
477	LopunnyMega Lopunny	Normal	Fighting	580	65	94	135	4	t	136
478	Mismagius	Ghost	\N	495	60	60	105	4	t	60
479	Honchkrow	Dark	Flying	505	100	52	71	4	t	125
480	Glameow	Normal	\N	310	49	42	85	4	t	55
481	Purugly	Normal	\N	452	71	64	112	4	t	82
482	Chingling	Psychic	\N	285	45	50	45	4	t	30
483	Stunky	Poison	Dark	329	63	47	74	4	t	63
484	Skuntank	Poison	Dark	479	103	67	84	4	t	93
485	Bronzor	Steel	Psychic	300	57	86	23	4	t	24
486	Bronzong	Steel	Psychic	500	67	116	33	4	t	89
487	Bonsly	Rock	\N	290	50	95	10	4	t	80
488	Mime Jr.	Psychic	Fairy	310	20	45	60	4	t	25
489	Happiny	Normal	\N	220	100	5	30	4	t	5
490	Chatot	Normal	Flying	411	76	45	91	4	t	65
491	Spiritomb	Ghost	Dark	485	50	108	35	4	t	92
492	Gible	Dragon	Ground	300	58	45	42	4	t	70
493	Gabite	Dragon	Ground	410	68	65	82	4	t	90
494	Garchomp	Dragon	Ground	600	108	95	102	4	t	130
495	GarchompMega Garchomp	Dragon	Ground	700	108	115	92	4	t	170
496	Munchlax	Normal	\N	390	135	40	5	4	t	85
497	Riolu	Fighting	\N	285	40	40	60	4	t	70
498	Lucario	Fighting	Steel	525	70	70	90	4	t	110
499	LucarioMega Lucario	Fighting	Steel	625	70	88	112	4	t	145
500	Hippopotas	Ground	\N	330	68	78	32	4	t	72
501	Hippowdon	Ground	\N	525	108	118	47	4	t	112
502	Skorupi	Poison	Bug	330	40	90	65	4	t	50
503	Drapion	Poison	Dark	500	70	110	95	4	t	90
504	Croagunk	Poison	Fighting	300	48	40	50	4	t	61
505	Toxicroak	Poison	Fighting	490	83	65	85	4	t	106
506	Carnivine	Grass	\N	454	74	72	46	4	t	100
507	Finneon	Water	\N	330	49	56	66	4	t	49
508	Lumineon	Water	\N	460	69	76	91	4	t	69
509	Mantyke	Water	Flying	345	45	50	50	4	t	20
510	Snover	Grass	Ice	334	60	50	40	4	t	62
511	Abomasnow	Grass	Ice	494	90	75	60	4	t	92
512	AbomasnowMega Abomasnow	Grass	Ice	594	90	105	30	4	t	132
513	Weavile	Dark	Ice	510	70	65	125	4	t	120
514	Magnezone	Electric	Steel	535	70	115	60	4	t	70
515	Lickilicky	Normal	\N	515	110	95	50	4	t	85
516	Rhyperior	Ground	Rock	535	115	130	40	4	t	140
517	Tangrowth	Grass	\N	535	100	125	50	4	t	100
518	Electivire	Electric	\N	540	75	67	95	4	t	123
519	Magmortar	Fire	\N	540	75	67	83	4	t	95
520	Togekiss	Fairy	Flying	545	85	95	80	4	t	50
521	Yanmega	Bug	Flying	515	86	86	95	4	t	76
522	Leafeon	Grass	\N	525	65	130	95	4	t	110
523	Glaceon	Ice	\N	525	65	110	65	4	t	60
524	Gliscor	Ground	Flying	510	75	125	95	4	t	95
525	Mamoswine	Ice	Ground	530	110	80	80	4	t	130
526	Porygon-Z	Normal	\N	535	85	70	90	4	t	80
527	Gallade	Psychic	Fighting	518	68	65	80	4	t	125
528	GalladeMega Gallade	Psychic	Fighting	618	68	95	110	4	t	165
529	Probopass	Rock	Steel	525	60	145	40	4	t	55
530	Dusknoir	Ghost	\N	525	45	135	45	4	t	100
531	Froslass	Ice	Ghost	480	70	70	110	4	t	80
532	Rotom	Electric	Ghost	440	50	77	91	4	t	50
533	RotomHeat Rotom	Electric	Fire	520	50	107	86	4	t	65
534	RotomWash Rotom	Electric	Water	520	50	107	86	4	t	65
535	RotomFrost Rotom	Electric	Ice	520	50	107	86	4	t	65
536	RotomFan Rotom	Electric	Flying	520	50	107	86	4	t	65
537	RotomMow Rotom	Electric	Grass	520	50	107	86	4	t	65
538	Uxie	Psychic	\N	580	75	130	95	4	t	75
539	Mesprit	Psychic	\N	580	80	105	80	4	t	105
540	Azelf	Psychic	\N	580	75	70	115	4	t	125
541	Dialga	Steel	Dragon	680	100	120	90	4	t	120
542	Palkia	Water	Dragon	680	90	100	100	4	t	120
543	Heatran	Fire	Steel	600	91	106	77	4	t	90
544	Regigigas	Normal	\N	670	110	110	100	4	t	160
545	GiratinaAltered Forme	Ghost	Dragon	680	150	120	90	4	t	100
546	GiratinaOrigin Forme	Ghost	Dragon	680	150	100	90	4	t	120
547	Cresselia	Psychic	\N	600	120	120	85	4	t	70
548	Phione	Water	\N	480	80	80	80	4	t	80
549	Manaphy	Water	\N	600	100	100	100	4	t	100
550	Darkrai	Dark	\N	600	70	90	125	4	t	90
551	ShayminLand Forme	Grass	\N	600	100	100	100	4	t	100
552	ShayminSky Forme	Grass	Flying	600	100	75	127	4	t	103
553	Arceus	Normal	\N	720	120	120	120	4	t	120
554	Victini	Psychic	Fire	600	100	100	100	5	t	100
555	Snivy	Grass	\N	308	45	55	63	5	t	45
556	Servine	Grass	\N	413	60	75	83	5	t	60
557	Serperior	Grass	\N	528	75	95	113	5	t	75
558	Tepig	Fire	\N	308	65	45	45	5	t	63
559	Pignite	Fire	Fighting	418	90	55	55	5	t	93
560	Emboar	Fire	Fighting	528	110	65	65	5	t	123
561	Oshawott	Water	\N	308	55	45	45	5	t	55
562	Dewott	Water	\N	413	75	60	60	5	t	75
563	Samurott	Water	\N	528	95	85	70	5	t	100
564	Patrat	Normal	\N	255	45	39	42	5	t	55
565	Watchog	Normal	\N	420	60	69	77	5	t	85
566	Lillipup	Normal	\N	275	45	45	55	5	t	60
567	Herdier	Normal	\N	370	65	65	60	5	t	80
568	Stoutland	Normal	\N	500	85	90	80	5	t	110
569	Purrloin	Dark	\N	281	41	37	66	5	t	50
570	Liepard	Dark	\N	446	64	50	106	5	t	88
571	Pansage	Grass	\N	316	50	48	64	5	t	53
572	Simisage	Grass	\N	498	75	63	101	5	t	98
573	Pansear	Fire	\N	316	50	48	64	5	t	53
574	Simisear	Fire	\N	498	75	63	101	5	t	98
575	Panpour	Water	\N	316	50	48	64	5	t	53
576	Simipour	Water	\N	498	75	63	101	5	t	98
577	Munna	Psychic	\N	292	76	45	24	5	t	25
578	Musharna	Psychic	\N	487	116	85	29	5	t	55
579	Pidove	Normal	Flying	264	50	50	43	5	t	55
580	Tranquill	Normal	Flying	358	62	62	65	5	t	77
581	Unfezant	Normal	Flying	488	80	80	93	5	t	115
582	Blitzle	Electric	\N	295	45	32	76	5	t	60
583	Zebstrika	Electric	\N	497	75	63	116	5	t	100
584	Roggenrola	Rock	\N	280	55	85	15	5	t	75
585	Boldore	Rock	\N	390	70	105	20	5	t	105
586	Gigalith	Rock	\N	515	85	130	25	5	t	135
587	Woobat	Psychic	Flying	313	55	43	72	5	t	45
588	Swoobat	Psychic	Flying	425	67	55	114	5	t	57
589	Drilbur	Ground	\N	328	60	40	68	5	t	85
590	Excadrill	Ground	Steel	508	110	60	88	5	t	135
591	Audino	Normal	\N	445	103	86	50	5	t	60
592	AudinoMega Audino	Normal	Fairy	545	103	126	50	5	t	60
593	Timburr	Fighting	\N	305	75	55	35	5	t	80
594	Gurdurr	Fighting	\N	405	85	85	40	5	t	105
595	Conkeldurr	Fighting	\N	505	105	95	45	5	t	140
596	Tympole	Water	\N	294	50	40	64	5	t	50
597	Palpitoad	Water	Ground	384	75	55	69	5	t	65
598	Seismitoad	Water	Ground	509	105	75	74	5	t	95
599	Throh	Fighting	\N	465	120	85	45	5	t	100
600	Sawk	Fighting	\N	465	75	75	85	5	t	125
601	Sewaddle	Bug	Grass	310	45	70	42	5	t	53
602	Swadloon	Bug	Grass	380	55	90	42	5	t	63
603	Leavanny	Bug	Grass	500	75	80	92	5	t	103
604	Venipede	Bug	Poison	260	30	59	57	5	t	45
605	Whirlipede	Bug	Poison	360	40	99	47	5	t	55
606	Scolipede	Bug	Poison	485	60	89	112	5	t	100
607	Cottonee	Grass	Fairy	280	40	60	66	5	t	27
608	Whimsicott	Grass	Fairy	480	60	85	116	5	t	67
609	Petilil	Grass	\N	280	45	50	30	5	t	35
610	Lilligant	Grass	\N	480	70	75	90	5	t	60
611	Basculin	Water	\N	460	70	65	98	5	t	92
612	Sandile	Ground	Dark	292	50	35	65	5	t	72
613	Krokorok	Ground	Dark	351	60	45	74	5	t	82
614	Krookodile	Ground	Dark	519	95	80	92	5	t	117
615	Darumaka	Fire	\N	315	70	45	50	5	t	90
616	DarmanitanStandard Mode	Fire	\N	480	105	55	95	5	t	140
617	DarmanitanZen Mode	Fire	Psychic	540	105	105	55	5	t	30
618	Maractus	Grass	\N	461	75	67	60	5	t	86
619	Dwebble	Bug	Rock	325	50	85	55	5	t	65
620	Crustle	Bug	Rock	475	70	125	45	5	t	95
621	Scraggy	Dark	Fighting	348	50	70	48	5	t	75
622	Scrafty	Dark	Fighting	488	65	115	58	5	t	90
623	Sigilyph	Psychic	Flying	490	72	80	97	5	t	58
624	Yamask	Ghost	\N	303	38	85	30	5	t	30
625	Cofagrigus	Ghost	\N	483	58	145	30	5	t	50
626	Tirtouga	Water	Rock	355	54	103	22	5	t	78
627	Carracosta	Water	Rock	495	74	133	32	5	t	108
628	Archen	Rock	Flying	401	55	45	70	5	t	112
629	Archeops	Rock	Flying	567	75	65	110	5	t	140
630	Trubbish	Poison	\N	329	50	62	65	5	t	50
631	Garbodor	Poison	\N	474	80	82	75	5	t	95
632	Zorua	Dark	\N	330	40	40	65	5	t	65
633	Zoroark	Dark	\N	510	60	60	105	5	t	105
634	Minccino	Normal	\N	300	55	40	75	5	t	50
635	Cinccino	Normal	\N	470	75	60	115	5	t	95
636	Gothita	Psychic	\N	290	45	50	45	5	t	30
637	Gothorita	Psychic	\N	390	60	70	55	5	t	45
638	Gothitelle	Psychic	\N	490	70	95	65	5	t	55
639	Solosis	Psychic	\N	290	45	40	20	5	t	30
640	Duosion	Psychic	\N	370	65	50	30	5	t	40
641	Reuniclus	Psychic	\N	490	110	75	30	5	t	65
642	Ducklett	Water	Flying	305	62	50	55	5	t	44
643	Swanna	Water	Flying	473	75	63	98	5	t	87
644	Vanillite	Ice	\N	305	36	50	44	5	t	50
645	Vanillish	Ice	\N	395	51	65	59	5	t	65
646	Vanilluxe	Ice	\N	535	71	85	79	5	t	95
647	Deerling	Normal	Grass	335	60	50	75	5	t	60
648	Sawsbuck	Normal	Grass	475	80	70	95	5	t	100
649	Emolga	Electric	Flying	428	55	60	103	5	t	75
650	Karrablast	Bug	\N	315	50	45	60	5	t	75
651	Escavalier	Bug	Steel	495	70	105	20	5	t	135
652	Foongus	Grass	Poison	294	69	45	15	5	t	55
653	Amoonguss	Grass	Poison	464	114	70	30	5	t	85
654	Frillish	Water	Ghost	335	55	50	40	5	t	40
655	Jellicent	Water	Ghost	480	100	70	60	5	t	60
656	Alomomola	Water	\N	470	165	80	65	5	t	75
657	Joltik	Bug	Electric	319	50	50	65	5	t	47
658	Galvantula	Bug	Electric	472	70	60	108	5	t	77
659	Ferroseed	Grass	Steel	305	44	91	10	5	t	50
660	Ferrothorn	Grass	Steel	489	74	131	20	5	t	94
661	Klink	Steel	\N	300	40	70	30	5	t	55
662	Klang	Steel	\N	440	60	95	50	5	t	80
663	Klinklang	Steel	\N	520	60	115	90	5	t	100
664	Tynamo	Electric	\N	275	35	40	60	5	t	55
665	Eelektrik	Electric	\N	405	65	70	40	5	t	85
666	Eelektross	Electric	\N	515	85	80	50	5	t	115
667	Elgyem	Psychic	\N	335	55	55	30	5	t	55
668	Beheeyem	Psychic	\N	485	75	75	40	5	t	75
669	Litwick	Ghost	Fire	275	50	55	20	5	t	30
670	Lampent	Ghost	Fire	370	60	60	55	5	t	40
671	Chandelure	Ghost	Fire	520	60	90	80	5	t	55
672	Axew	Dragon	\N	320	46	60	57	5	t	87
673	Fraxure	Dragon	\N	410	66	70	67	5	t	117
674	Haxorus	Dragon	\N	540	76	90	97	5	t	147
675	Cubchoo	Ice	\N	305	55	40	40	5	t	70
676	Beartic	Ice	\N	485	95	80	50	5	t	110
677	Cryogonal	Ice	\N	485	70	30	105	5	t	50
678	Shelmet	Bug	\N	305	50	85	25	5	t	40
679	Accelgor	Bug	\N	495	80	40	145	5	t	70
680	Stunfisk	Ground	Electric	471	109	84	32	5	t	66
681	Mienfoo	Fighting	\N	350	45	50	65	5	t	85
682	Mienshao	Fighting	\N	510	65	60	105	5	t	125
683	Druddigon	Dragon	\N	485	77	90	48	5	t	120
684	Golett	Ground	Ghost	303	59	50	35	5	t	74
685	Golurk	Ground	Ghost	483	89	80	55	5	t	124
686	Pawniard	Dark	Steel	340	45	70	60	5	t	85
687	Bisharp	Dark	Steel	490	65	100	70	5	t	125
688	Bouffalant	Normal	\N	490	95	95	55	5	t	110
689	Rufflet	Normal	Flying	350	70	50	60	5	t	83
690	Braviary	Normal	Flying	510	100	75	80	5	t	123
691	Vullaby	Dark	Flying	370	70	75	60	5	t	55
692	Mandibuzz	Dark	Flying	510	110	105	80	5	t	65
693	Heatmor	Fire	\N	484	85	66	65	5	t	97
694	Durant	Bug	Steel	484	58	112	109	5	t	109
695	Deino	Dark	Dragon	300	52	50	38	5	t	65
696	Zweilous	Dark	Dragon	420	72	70	58	5	t	85
697	Hydreigon	Dark	Dragon	600	92	90	98	5	t	105
698	Larvesta	Bug	Fire	360	55	55	60	5	t	85
699	Volcarona	Bug	Fire	550	85	65	100	5	t	60
700	Cobalion	Steel	Fighting	580	91	129	108	5	t	90
701	Terrakion	Rock	Fighting	580	91	90	108	5	t	129
702	Virizion	Grass	Fighting	580	91	72	108	5	t	90
703	TornadusIncarnate Forme	Flying	\N	580	79	70	111	5	t	115
704	TornadusTherian Forme	Flying	\N	580	79	80	121	5	t	100
705	ThundurusIncarnate Forme	Electric	Flying	580	79	70	111	5	t	115
706	ThundurusTherian Forme	Electric	Flying	580	79	70	101	5	t	105
707	Reshiram	Dragon	Fire	680	100	100	90	5	t	120
708	Zekrom	Dragon	Electric	680	100	120	90	5	t	150
709	LandorusIncarnate Forme	Ground	Flying	600	89	90	101	5	t	125
710	LandorusTherian Forme	Ground	Flying	600	89	90	91	5	t	145
711	Kyurem	Dragon	Ice	660	125	90	95	5	t	130
712	KyuremBlack Kyurem	Dragon	Ice	700	125	100	95	5	t	170
713	KyuremWhite Kyurem	Dragon	Ice	700	125	90	95	5	t	120
714	KeldeoOrdinary Forme	Water	Fighting	580	91	90	108	5	t	72
715	KeldeoResolute Forme	Water	Fighting	580	91	90	108	5	t	72
716	MeloettaAria Forme	Normal	Psychic	600	100	77	90	5	t	77
717	MeloettaPirouette Forme	Normal	Fighting	600	100	90	128	5	t	128
718	Genesect	Bug	Steel	600	71	95	99	5	t	120
719	Chespin	Grass	\N	313	56	65	38	6	t	61
720	Quilladin	Grass	\N	405	61	95	57	6	t	78
721	Chesnaught	Grass	Fighting	530	88	122	64	6	t	107
722	Fennekin	Fire	\N	307	40	40	60	6	t	45
723	Braixen	Fire	\N	409	59	58	73	6	t	59
724	Delphox	Fire	Psychic	534	75	72	104	6	t	69
725	Froakie	Water	\N	314	41	40	71	6	t	56
726	Frogadier	Water	\N	405	54	52	97	6	t	63
727	Greninja	Water	Dark	530	72	67	122	6	t	95
728	Bunnelby	Normal	\N	237	38	38	57	6	t	36
729	Diggersby	Normal	Ground	423	85	77	78	6	t	56
730	Fletchling	Normal	Flying	278	45	43	62	6	t	50
731	Fletchinder	Fire	Flying	382	62	55	84	6	t	73
732	Talonflame	Fire	Flying	499	78	71	126	6	t	81
733	Scatterbug	Bug	\N	200	38	40	35	6	t	35
734	Spewpa	Bug	\N	213	45	60	29	6	t	22
735	Vivillon	Bug	Flying	411	80	50	89	6	t	52
736	Litleo	Fire	Normal	369	62	58	72	6	t	50
737	Pyroar	Fire	Normal	507	86	72	106	6	t	68
738	Flabébé	Fairy	\N	303	44	39	42	6	t	38
739	Floette	Fairy	\N	371	54	47	52	6	t	45
740	Florges	Fairy	\N	552	78	68	75	6	t	65
741	Skiddo	Grass	\N	350	66	48	52	6	t	65
742	Gogoat	Grass	\N	531	123	62	68	6	t	100
743	Pancham	Fighting	\N	348	67	62	43	6	t	82
744	Pangoro	Fighting	Dark	495	95	78	58	6	t	124
745	Furfrou	Normal	\N	472	75	60	102	6	t	80
746	Espurr	Psychic	\N	355	62	54	68	6	t	48
747	MeowsticMale	Psychic	\N	466	74	76	104	6	t	48
748	MeowsticFemale	Psychic	\N	466	74	76	104	6	t	48
749	Honedge	Steel	Ghost	325	45	100	28	6	t	80
750	Doublade	Steel	Ghost	448	59	150	35	6	t	110
751	AegislashBlade Forme	Steel	Ghost	520	60	50	60	6	t	150
752	AegislashShield Forme	Steel	Ghost	520	60	150	60	6	t	50
753	Spritzee	Fairy	\N	341	78	60	23	6	t	52
754	Aromatisse	Fairy	\N	462	101	72	29	6	t	72
755	Swirlix	Fairy	\N	341	62	66	49	6	t	48
756	Slurpuff	Fairy	\N	480	82	86	72	6	t	80
757	Inkay	Dark	Psychic	288	53	53	45	6	t	54
758	Malamar	Dark	Psychic	482	86	88	73	6	t	92
759	Binacle	Rock	Water	306	42	67	50	6	t	52
760	Barbaracle	Rock	Water	500	72	115	68	6	t	105
761	Skrelp	Poison	Water	320	50	60	30	6	t	60
762	Dragalge	Poison	Dragon	494	65	90	44	6	t	75
763	Clauncher	Water	\N	330	50	62	44	6	t	53
764	Clawitzer	Water	\N	500	71	88	59	6	t	73
765	Helioptile	Electric	Normal	289	44	33	70	6	t	38
766	Heliolisk	Electric	Normal	481	62	52	109	6	t	55
767	Tyrunt	Rock	Dragon	362	58	77	48	6	t	89
768	Tyrantrum	Rock	Dragon	521	82	119	71	6	t	121
769	Amaura	Rock	Ice	362	77	50	46	6	t	59
770	Aurorus	Rock	Ice	521	123	72	58	6	t	77
771	Sylveon	Fairy	\N	525	95	65	60	6	t	65
772	Hawlucha	Fighting	Flying	500	78	75	118	6	t	92
773	Dedenne	Electric	Fairy	431	67	57	101	6	t	58
774	Carbink	Rock	Fairy	500	50	150	50	6	t	50
775	Goomy	Dragon	\N	300	45	35	40	6	t	50
776	Sliggoo	Dragon	\N	452	68	53	60	6	t	75
777	Goodra	Dragon	\N	600	90	70	80	6	t	100
778	Klefki	Steel	Fairy	470	57	91	75	6	t	80
779	Phantump	Ghost	Grass	309	43	48	38	6	t	70
780	Trevenant	Ghost	Grass	474	85	76	56	6	t	110
781	PumpkabooAverage Size	Ghost	Grass	335	49	70	51	6	t	66
782	PumpkabooSmall Size	Ghost	Grass	335	44	70	56	6	t	66
783	PumpkabooLarge Size	Ghost	Grass	335	54	70	46	6	t	66
784	PumpkabooSuper Size	Ghost	Grass	335	59	70	41	6	t	66
785	GourgeistAverage Size	Ghost	Grass	494	65	122	84	6	t	90
786	GourgeistSmall Size	Ghost	Grass	494	55	122	99	6	t	85
787	GourgeistLarge Size	Ghost	Grass	494	75	122	69	6	t	95
788	GourgeistSuper Size	Ghost	Grass	494	85	122	54	6	t	100
789	Bergmite	Ice	\N	304	55	85	28	6	t	69
790	Avalugg	Ice	\N	514	95	184	28	6	t	117
791	Noibat	Flying	Dragon	245	40	35	55	6	t	30
792	Noivern	Flying	Dragon	535	85	80	123	6	t	70
793	Xerneas	Fairy	\N	680	126	95	99	6	t	131
794	Yveltal	Dark	Flying	680	126	95	99	6	t	131
795	Zygarde50% Forme	Dragon	Ground	600	108	121	95	6	t	100
796	Diancie	Rock	Fairy	600	50	150	50	6	t	100
797	DiancieMega Diancie	Rock	Fairy	700	50	110	110	6	t	160
798	HoopaHoopa Confined	Psychic	Ghost	600	80	60	70	6	t	110
799	HoopaHoopa Unbound	Psychic	Dark	680	80	60	80	6	t	160
800	Volcanion	Fire	Water	600	80	120	70	6	t	110
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version, dirty) FROM stdin;
1	f
\.


--
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

