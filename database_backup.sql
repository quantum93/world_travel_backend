--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: countries; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    name character varying
);


ALTER TABLE public.countries OWNER TO "Guest";

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO "Guest";

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-19 22:16:54.80737	2019-08-19 22:16:54.80737
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.countries (id, name) FROM stdin;
122	Afghanistan
123	Albania
124	Algeria
125	Andorra
126	Angola
127	Antigua & Deps
128	Argentina
129	Armenia
130	Australia
131	Austria
132	Azerbaijan
133	Bahamas
134	Bahrain
135	Bangladesh
136	Barbados
137	Belarus
138	Belgium
139	Belize
140	Benin
141	Bhutan
142	Bolivia
143	Bosnia Herzegovina
144	Botswana
145	Brazil
146	Brunei
147	Bulgaria
148	Burkina
149	Burundi
150	Cambodia
151	Cameroon
152	Canada
153	Cape Verde
154	Central African Rep
155	Chad
156	Chile
157	China
158	Colombia
159	Comoros
160	Congo
161	Costa Rica
162	Croatia
163	Cuba
164	Cyprus
165	Czech Republic
166	Denmark
167	Djibouti
168	Dominica
169	Dominican Republic
170	East Timor
171	Ecuador
172	Egypt
173	El Salvador
174	Equatorial Guinea
175	Eritrea
176	Estonia
177	Ethiopia
178	Fiji
179	Finland
180	France
181	Gabon
182	Gambia
183	Georgia
184	Germany
185	Ghana
186	Greece
187	Grenada
188	Guatemala
189	Guinea
190	Guinea-Bissau
191	Guyana
192	Haiti
193	Honduras
194	Hungary
195	Iceland
196	India
197	Indonesia
198	Iran
199	Iraq
200	Ireland 
201	Israel
202	Italy
203	Ivory Coast
204	Jamaica
205	Japan
206	Jordan
207	Kazakhstan
208	Kenya
209	Kiribati
210	Korea North
211	Korea South
212	Kosovo
213	Kuwait
214	Kyrgyzstan
215	Laos
216	Latvia
217	Lebanon
218	Lesotho
219	Liberia
220	Libya
221	Liechtenstein
222	Lithuania
223	Luxembourg
224	Macedonia
225	Madagascar
226	Malawi
227	Malaysia
228	Maldives
229	Mali
230	Malta
231	Marshall Islands
232	Mauritania
233	Mauritius
234	Mexico
235	Micronesia
236	Moldova
237	Monaco
238	Mongolia
239	Montenegro
240	Morocco
241	Mozambique
242	Myanmar
243	Namibia
244	Nauru
245	Nepal
246	Netherlands
247	New Zealand
248	Nicaragua
249	Niger
250	Nigeria
251	Norway
252	Oman
253	Pakistan
254	Palau
255	Panama
256	Papua New Guinea
257	Paraguay
258	Peru
259	Philippines
260	Poland
261	Portugal
262	Qatar
263	Romania
264	Russian Federation
265	Rwanda
266	St Kitts & Nevis
267	St Lucia
268	Saint Vincent & the Grenadines
269	Samoa
270	San Marino
271	Sao Tome & Principe
272	Saudi Arabia
273	Senegal
274	Serbia
275	Seychelles
276	Sierra Leone
277	Singapore
278	Slovakia
279	Slovenia
280	Solomon Islands
281	Somalia
282	South Africa
283	South Sudan
284	Spain
285	Sri Lanka
286	Sudan
287	Suriname
288	Swaziland
289	Sweden
290	Switzerland
291	Syria
292	Taiwan
293	Tajikistan
294	Tanzania
295	Thailand
296	Togo
297	Tonga
298	Trinidad & Tobago
299	Tunisia
300	Turkey
301	Turkmenistan
302	Tuvalu
303	Uganda
304	Ukraine
305	United Arab Emirates
306	United Kingdom
307	United States
308	Uruguay
309	Uzbekistan
310	Vanuatu
311	Vatican City
312	Venezuela
313	Vietnam
314	Yemen
315	Zambia
316	Zimbabwe
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20190819214333
\.


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.countries_id_seq', 316, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

