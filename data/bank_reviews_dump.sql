--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13
-- Dumped by pg_dump version 15.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: banks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks (
    bank_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.banks OWNER TO postgres;

--
-- Name: banks_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banks_bank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banks_bank_id_seq OWNER TO postgres;

--
-- Name: banks_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banks_bank_id_seq OWNED BY public.banks.bank_id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    review_id integer NOT NULL,
    bank_id integer,
    review_text text NOT NULL,
    rating integer,
    review_date date,
    sentiment_label text,
    sentiment_score double precision
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_review_id_seq OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_review_id_seq OWNED BY public.reviews.review_id;


--
-- Name: banks bank_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks ALTER COLUMN bank_id SET DEFAULT nextval('public.banks_bank_id_seq'::regclass);


--
-- Name: reviews review_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN review_id SET DEFAULT nextval('public.reviews_review_id_seq'::regclass);


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banks (bank_id, name) FROM stdin;
1	Commercial Bank of Ethiopia
2	Bank of Abyssinia
3	Dashen Bank
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (review_id, bank_id, review_text, rating, review_date, sentiment_label, sentiment_score) FROM stdin;
1	1	dedeb	5	2025-06-04	negative	0.9974835515022278
2	1	good	5	2025-06-04	positive	0.999816119670868
3	1	Good	5	2025-06-04	positive	0.999816119670868
4	1	👌👍	5	2025-06-04	negative	0.6970566511154175
5	1	very niec	5	2025-06-04	positive	0.5192599296569824
6	1	best app of finance	5	2025-06-04	positive	0.9996503591537476
7	1	yetemeta	1	2025-06-03	positive	0.6553667783737183
8	1	Engida Kebede Fetera	5	2025-06-03	negative	0.8396738767623901
9	1	it is not safety	1	2025-06-03	negative	0.9997867941856384
10	1	NICE bank	5	2025-06-03	positive	0.999805510044098
11	1	it is like a childish app make it better the worst I have ever seen	1	2025-06-02	negative	0.9997958540916444
12	1	It's a problem solver application, go ahead CBE, I love so much.	5	2025-06-02	positive	0.9997678399086
13	1	It's good but try to make it facilitate for your client	4	2025-06-02	positive	0.9491770267486572
14	1	best app	5	2025-06-01	positive	0.999686598777771
15	1	Awesome bank	5	2025-06-01	positive	0.99984610080719
16	1	this app has developed in a very good ways but there are some comments I need to make 1- preventing the screenshot likely not good for someone like me coz I need to make screenshot for quicker evidence. 2-it would be good if you make us to access recent transaction histories for 30 days coz we don't have to go to the Bank's in person to see old transactions or add colander category so user can easily access old transactions through colanders.	5	2025-05-31	negative	0.9983141422271729
17	1	Masha alla	5	2025-05-31	negative	0.9514628052711488
18	1	Recently there is big problem when sending to safaricom, telebir, and even to cbebirr wallet could anybody who is responsible fix it, it's very frustrating it's been 5 days and my money hasn't been returned it takes it out of my account but doesn't send it to my mpesa update- they have just corrected it and sent me back the money but still I'm afraid now to send again	2	2025-05-31	negative	0.9991102814674376
19	1	better service	5	2025-05-31	positive	0.9982219338417052
20	1	it,s good app and time manager 👍	5	2025-05-30	positive	0.999837040901184
21	1	malkaamuu Jiidhaa Namoo	5	2025-05-30	negative	0.9887813329696656
22	1	lower system everything	3	2025-05-30	negative	0.9993475079536438
23	1	Nice!	5	2025-05-30	positive	0.999863862991333
24	1	Keep it up My CBE	5	2025-05-29	positive	0.9996104836463928
25	1	yes good	5	2025-05-28	positive	0.9998410940170288
26	1	I was using this app for the last two years with no problems. It stopped working about 3 months ago. when I tried to transfer funds it gives me error "can't do this transaction. inactive account."	4	2025-05-27	negative	0.9996353387832642
27	1	i like everything of this app	5	2025-05-27	positive	0.9996908903121948
28	1	🤬🤬🤬🤬 network 🛜	1	2025-05-26	negative	0.6856130361557007
29	1	Best	5	2025-05-26	positive	0.9997941851615906
30	1	CBE is the best financial application and and very dimple to use. I would like to say thank you so much for the developer of application. I really appreciate this app.	5	2025-05-26	positive	0.9982792139053344
31	1	nice	5	2025-05-26	positive	0.9998552799224854
32	1	good job	5	2025-05-26	positive	0.999835729598999
33	1	it's awesome!!	5	2025-05-25	positive	0.999871015548706
34	1	best	5	2025-05-25	positive	0.9997941851615906
35	1	thankyou every one	5	2025-05-25	positive	0.99984610080719
36	1	Ronaldo 🇵🇹 🥇	5	2025-05-25	positive	0.9948286414146424
37	1	this app is absolutely fantastic I love it and I enjoying to it ,let us support this foundation together .	5	2025-05-25	positive	0.9998852014541626
38	1	The CBE app has been highly unreliable in recent weeks. It frequently fails to work properly on both Ethio Telecom and Safaricom networks, whether using Wi-Fi or mobile data. This week, the system was down entirely for extended periods, making it very difficult to access banking services. The app only functions intermittently, and the lack of consistency is frustrating. I hope the issues are addressed soon, and that any non-technical influences are removed from such essential services.	2	2025-05-25	negative	0.9997394680976868
39	1	mortuary app	5	2025-05-25	negative	0.7924920320510864
40	1	it is smart app but it has stoped after some period of time on my device with out any reason .	5	2025-05-25	negative	0.9961044788360596
41	1	amazing app I am used this app for one year	4	2025-05-24	positive	0.9991408586502076
42	1	👍	5	2025-05-24	negative	0.6970566511154175
43	1	good app	5	2025-05-24	positive	0.9998493194580078
44	1	i love it 😍😘	5	2025-05-24	positive	0.9998791217803956
45	1	It makes life easy!👌	5	2025-05-24	positive	0.9993600249290466
46	1	its not fast	1	2025-05-24	negative	0.9949808716773988
47	1	wow	4	2025-05-24	positive	0.999592125415802
48	1	it is sooo good	5	2025-05-24	positive	0.9998735189437866
49	1	excellent	5	2025-05-24	positive	0.9998434782028198
50	1	ok	1	2025-05-24	positive	0.9997851252555848
51	1	Fantastic	5	2025-05-23	positive	0.9998743534088136
52	1	accessible to using	5	2025-05-23	positive	0.999116837978363
53	1	I like it	4	2025-05-23	positive	0.99985933303833
54	1	why you change default network?	5	2025-05-23	negative	0.9962357878684998
55	1	very nice 👍	5	2025-05-23	positive	0.999857783317566
56	1	nice fast app	5	2025-05-23	positive	0.999833345413208
57	1	how to I get my money	5	2025-05-23	negative	0.9934091567993164
58	1	Very bad, can't even load they need to improve their services.	1	2025-05-22	negative	0.999816596508026
59	1	Very good app, but please make it reliable . it crashes sometimes .	4	2025-05-22	positive	0.964985489845276
60	1	very busy I don't know why... I prefer 889	3	2025-05-22	negative	0.9991938471794128
61	1	Sometimes it has a nasty lag for several hour fix that , the rest is 👌	4	2025-05-22	negative	0.9966771602630616
62	1	the most boring Mobil banking application in ethiopia.Please use alternative private banks mobile banking apps	1	2025-05-22	negative	0.9986202716827391
63	1	hojii bonsaadha	5	2025-05-22	positive	0.9568662047386168
64	1	user-friendly apps.because this app is easy.	5	2025-05-22	positive	0.955450713634491
65	1	Awosome!!!	5	2025-05-22	positive	0.6944891810417175
66	1	Very good app,	5	2025-05-22	positive	0.9998691082000732
67	1	sync problem may 22 2025 but the date stack on may 8 2025 help pls	5	2025-05-22	negative	0.992516815662384
68	1	ይህ መተግበሪያ በጣም ጥሩ ነው. this app is very nice	5	2025-05-22	positive	0.9997020363807678
69	1	I hate this app 😒	1	2025-05-22	negative	0.9996378421783448
70	1	trustful	5	2025-05-22	positive	0.9998213648796082
71	1	I like	5	2025-05-22	positive	0.9998149275779724
72	1	update issue	4	2025-05-22	positive	0.5473247170448303
73	1	its not working over safari network	1	2025-05-22	negative	0.9991377592086792
74	1	oldie	1	2025-05-22	negative	0.6663163304328918
75	1	it doesn't work	1	2025-05-21	negative	0.9997813105583192
76	1	This app is good, and we are using it well	1	2025-05-21	positive	0.999855637550354
77	1	very nice 👌 app for android phone	5	2025-05-21	positive	0.9994401335716248
78	1	Yes Yes	5	2025-05-21	positive	0.9997482895851136
79	1	በጣም ከርፋፋ	1	2025-05-21	negative	0.7850591540336609
80	1	easy to use helpful in my life	5	2025-05-21	positive	0.9981144666671752
81	1	good 👍	4	2025-05-21	positive	0.9998576641082764
82	1	the best mobile banking app	5	2025-05-21	positive	0.9998278617858888
83	1	this app is very useful app,it saves time,and it is secure	4	2025-05-21	positive	0.9992597699165344
84	1	it's a good application 👍	5	2025-05-21	positive	0.9998123049736024
85	1	the screenshot and the reffresh options are so annoying that makes transaction so delaying activity !	2	2025-05-21	negative	0.9997513890266418
86	1	poor service	1	2025-05-21	negative	0.999653458595276
87	1	amazing	5	2025-05-20	positive	0.999875545501709
88	1	it is reliable and easy to use.	5	2025-05-20	positive	0.9998389482498168
89	1	the most annoying mobile banking app I've ever seen	1	2025-05-20	negative	0.9994208812713624
90	1	Eliasmels	5	2025-05-20	negative	0.5762406587600708
91	1	Cbe mobile banking	5	2025-05-20	positive	0.8304283022880554
92	1	i can't make Screenshout in this app, please made modification	5	2025-05-20	negative	0.9966920614242554
93	1	Best app I loved it	5	2025-05-19	positive	0.999849796295166
94	1	nice app	5	2025-05-19	positive	0.9998061060905457
95	1	Amazing applicatiom sometimes doesnt work!	5	2025-05-18	negative	0.6448792219161987
96	1	well satisfied with this beautiful app	5	2025-05-18	positive	0.999858856201172
97	1	very good	4	2025-05-17	positive	0.9998520612716676
98	1	best app.	5	2025-05-17	positive	0.999774158000946
99	1	not working,why???	5	2025-05-17	negative	0.9995881915092468
100	1	Great impact but why Developer option turnoff if you fix 🙏 🙏 🙏	5	2025-05-17	negative	0.9841780066490172
101	1	always disappointing ! especially the iOS one !! some similar local applications are extremely superior to this application!! Really disappointing!	1	2025-05-17	negative	0.9996201992034912
102	1	woxe harimo ribiso	5	2025-05-17	negative	0.9374372959136964
103	1	Good ,easy to use	5	2025-05-16	positive	0.9998592138290404
104	1	Good app	5	2025-05-15	positive	0.9998493194580078
105	1	Good job👍	5	2025-05-14	positive	0.9998576641082764
106	1	Please kindly ask to update the app and allow us to screenshot, it's convenient and efficient as long as you add security to the access there is no reason to block us from screenshooting our screen.	2	2025-05-14	positive	0.9939066767692566
107	1	I have using the CBE mobile banking app. and overall i appreciate its Feuteres However i.ve Notticed that when i turn on the Developer options on my divice the App.Stop Functioning prorerly It.Would Be Great If You could look into This issue as l often need to access Developer setting for Otter Application ThankYou For Your attention to This Matter	4	2025-05-13	negative	0.9474119544029236
108	1	customer service is bad nothing is good about this bank	1	2025-05-13	negative	0.9996613264083862
109	1	It is Amazing Mobile Banking App....But why the screenshot of the receipt doesnt work	5	2025-05-13	negative	0.992915153503418
110	1	fast and simple easy to use 👌	5	2025-05-12	positive	0.998494267463684
111	1	The fastest transferring app I ever had its so reliable	5	2025-05-11	positive	0.9844427704811096
112	1	Funds transferred from the same bank do not reflect in the account, even though a confirmation text message was received.	3	2025-05-11	negative	0.9986681938171388
113	1	it's easy and fast	5	2025-05-10	positive	0.9995684027671814
114	1	This app don't have self activation only you have to look near cbe branch that's disgusting	1	2025-05-10	negative	0.9960438013076782
115	1	hello dearest CBE office personnel make some benefits for those using interest free accounts thanks for your help	5	2025-05-09	positive	0.999572217464447
116	1	wow best application ever	5	2025-05-09	positive	0.9997984766960144
117	1	Am sorry but what does developer mode do to the application ? hack it ? are you sure you are developer or are you stupid, doesnt makes sense,	1	2025-05-08	negative	0.9997019171714784
118	1	the pride of Ethiopian bank 🏦	5	2025-05-08	positive	0.999118983745575
119	1	why the app telling me to turn of developer options please fix it.	1	2025-05-07	negative	0.9990994930267334
120	1	i am very happy . i have small prob. after i transfer i cant put the transfer cashe bil to my dic.	5	2025-05-07	positive	0.9976927042007446
121	1	amazing apps	5	2025-05-06	positive	0.9998716115951538
122	1	All service of Mobile Banking	5	2025-05-06	positive	0.8924252986907959
123	1	needs improvement	1	2025-05-06	negative	0.9966731071472168
124	1	i miss the old one i couldn't send my mony to other bank..	1	2025-05-06	negative	0.995843231678009
125	1	the app is recently crushing each time you open and try to make transfers...it used to be good. take lessons from the Dashen Super app or ethiotelecom. it is not befitting of your experience and glory. inv3st in making it more friendly and convenient. I am considering leaving CBE for good.	2	2025-05-06	negative	0.9984410405158995
126	1	good but these week not oky	4	2025-05-06	negative	0.9554156064987184
127	1	well designed! Fixing bugs & two step verification with biometric... simply it's great!	5	2025-05-06	positive	0.99980491399765
128	1	If any developer is reading this please fix the screenshot functionality or at least the download button should work flawlessly without me touching it twenty times.	1	2025-05-05	negative	0.9975224137306212
129	1	it's a great job.but one more thing, it hasn't been placed for transfer to other banks on face like mobile charge card place	5	2025-05-05	positive	0.8991116285324097
130	1	CBE mobilr bankg	5	2025-05-05	positive	0.8703052997589111
131	1	verygood	3	2025-05-05	positive	0.9988996982574464
132	1	ممتاز جدا	5	2025-05-04	negative	0.8031745553016663
133	1	it's very low quality application	1	2025-05-04	negative	0.9996594190597534
134	1	Very Amazing Apps	5	2025-05-04	positive	0.9998774528503418
135	1	አዛ	1	2025-05-04	negative	0.6970566511154175
136	1	wow simple life	5	2025-05-04	positive	0.9997076392173768
137	1	it's nice	5	2025-05-03	positive	0.9998672008514404
138	1	Why stacked sometimes	5	2025-05-03	negative	0.9941052198410034
139	1	okay 👍 but sometimes busy	1	2025-05-03	negative	0.8515537977218628
140	1	the worst commercial company that fails to do even the most normal things again and and again.	1	2025-05-03	negative	0.9997990727424622
141	1	Very good app. but disappointed by general cessation of system.	5	2025-05-02	negative	0.998118817806244
142	1	Good and fast	5	2025-05-02	positive	0.9998561143875122
143	1	Unreliable!	1	2025-05-02	negative	0.9997379183769226
144	1	Best the best fast	5	2025-05-02	positive	0.9998427629470824
145	1	happy	5	2025-05-02	positive	0.99987530708313
146	1	fast and reliable	5	2025-05-02	positive	0.9998595714569092
147	1	network errorrrrrr	2	2025-05-02	negative	0.9978076815605164
148	1	Best app but there is some problem I can't send money to telebirr or mpesa so if you can add that it could be use full	4	2025-05-02	negative	0.9982808828353882
149	1	its good and simple to use	5	2025-05-02	positive	0.9998610019683838
150	1	worest app like that bank for security and network access	1	2025-05-02	negative	0.9927296042442322
151	1	it's the best app i	5	2025-05-02	positive	0.999834418296814
152	1	not bad not good	1	2025-05-02	negative	0.9715350866317748
153	1	its very nice	5	2025-05-02	positive	0.9998526573181152
154	1	do not work this week	3	2025-04-30	negative	0.99776029586792
155	1	It crashes frequently	4	2025-04-30	negative	0.9993256330490112
156	1	the best	5	2025-04-28	positive	0.9998332262039183
157	1	I can simply describe this app as "Making all your work easier".	5	2025-04-28	positive	0.8382592797279358
158	1	goid	5	2025-04-28	negative	0.7086985111236572
159	1	best appearance	5	2025-04-27	positive	0.9996986389160156
160	1	it's very good 👍 app	5	2025-04-27	positive	0.999859094619751
161	1	abinet kutafo	1	2025-04-27	positive	0.9704495072364808
162	1	I need support you	5	2025-04-27	negative	0.9881443977355956
163	1	the worst Mobile banking i have ever seen in my life	1	2025-04-26	negative	0.9997807145118712
164	1	Nuree mahamud	5	2025-04-26	positive	0.9565324783325196
165	1	super	5	2025-04-26	positive	0.998783528804779
166	1	ጠጀጨገጀ።ጀገ	5	2025-04-26	negative	0.8337253928184509
167	1	i like the app	5	2025-04-26	positive	0.9994398951530457
168	1	the Best	1	2025-04-26	positive	0.9998332262039183
169	1	to other bank is bad	1	2025-04-25	negative	0.9997149109840392
170	1	tank's	5	2025-04-25	negative	0.9855977892875672
171	1	its good but add more features such like. bank statement showing	5	2025-04-24	positive	0.9881664514541626
172	1	it is so nice	5	2025-04-24	positive	0.9998714923858644
173	1	Very Good👍	5	2025-04-21	positive	0.8243634104728699
174	1	my first frequent experience of cbe app is critical-time failure such as suspending payment on air for 2-5 days with zero explanation, deducting from sender account without depositing to the receiver act. Another fatal error by the banking company as a whole (not the app itself though) is forced-banking with corporations without consent of employers-users of the corresponding corporations	2	2025-04-21	negative	0.9995972514152528
175	1	wow, amazing app	5	2025-04-21	positive	0.9998503923416138
176	1	use ful	5	2025-04-21	negative	0.9949980974197388
177	1	Great app	5	2025-04-21	positive	0.999821126461029
178	1	well app	5	2025-04-20	positive	0.9993765950202942
179	1	Actually it is inactive	4	2025-04-19	negative	0.9996483325958252
180	1	slow, only one account is used	2	2025-04-19	negative	0.9997527003288268
181	1	always CBE is the leading Commercial Bank💪💪💪	5	2025-04-18	positive	0.9975135326385498
182	1	i like it	5	2025-04-18	positive	0.99985933303833
183	1	why removing screenshot feature why?	1	2025-04-18	negative	0.9981147050857544
184	1	nice apps where network is good in connection	5	2025-04-18	positive	0.9994925260543824
185	1	Thank you!!!	5	2025-04-18	positive	0.9998666048049928
186	1	i can't take screenshot	1	2025-04-18	negative	0.9897894263267516
187	1	every update was made the system better and better until the March 19th, 2025 update, not allowing us to screenshot. you guys didn't understand how much it's a really quick and significant thing. You add extra steps to us, which makes the process draw back	3	2025-04-18	negative	0.9861215949058532
188	1	perfectly special	5	2025-04-18	positive	0.999879002571106
189	1	Fast and Reliable	5	2025-04-18	positive	0.9998595714569092
190	1	The best application I have ever seen in Ethiopia banking industry.	5	2025-04-17	positive	0.9997448325157166
191	1	great app!!!	5	2025-04-17	positive	0.9998501539230348
192	1	because sometimes it doesn't working it load too much	3	2025-04-17	negative	0.9911932349205016
193	1	Absolutely the best app! It works flawlessly, anytime and anywhere.	5	2025-04-17	positive	0.9998784065246582
194	1	very nice app ever!!!	5	2025-04-16	positive	0.9998270869255066
195	1	the best app	5	2025-04-16	positive	0.9998469352722168
196	1	Biometric security for mobile banking is not available	5	2025-04-16	negative	0.9996340274810792
197	1	great	5	2025-04-15	positive	0.9998630285263062
198	1	Nice service	5	2025-04-15	positive	0.9998397827148438
199	1	great app	5	2025-04-15	positive	0.999821126461029
200	1	it's special apps	5	2025-04-15	positive	0.9995416402816772
201	1	In the updated version of the app, it takes more time to download the receipt.	3	2025-04-15	negative	0.9985652565956116
202	1	ለምንድነው ትራንዛክሽን ትንሽ ብቻ የሚያሳየው ?	3	2025-04-14	negative	0.9647620320320128
203	1	Good 🔥	5	2025-04-14	positive	0.9998576641082764
204	1	very interesting app i am using every day fantastic	5	2025-04-14	positive	0.9998443126678468
205	1	lebaa bank	5	2025-04-14	negative	0.9437296390533448
206	1	Can't scan/recognize other banks' Interoperable QR Codes	1	2025-04-13	negative	0.9983273148536682
207	1	OK	5	2025-04-13	positive	0.9997851252555848
208	1	grateful app	5	2025-04-13	positive	0.9998038411140442
209	1	100% ❤️❤️❤️🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏	5	2025-04-13	positive	0.9974650144577026
210	1	everthing wellbeok	3	2025-04-13	negative	0.7055785655975342
211	1	"This mobile banking app is fast and user-friendly, but the only issue I encountered is that I can't access my bank statement within the app. I kindly request that this feature be added, similar to what is offered by other private bank mobile banking apps.	4	2025-04-13	negative	0.9963226318359376
212	1	nice app 👌	5	2025-04-12	positive	0.9996724128723145
213	1	why did this app is not screenshot	5	2025-04-12	negative	0.9989493489265442
214	1	it so good app	5	2025-04-12	positive	0.999868631362915
215	1	جميل	5	2025-04-11	positive	0.9271727800369264
216	1	less network, specially to make fee for utility purpose	1	2025-04-11	negative	0.994688868522644
217	1	simply for used	4	2025-04-11	negative	0.9918004870414734
218	1	wow keep up	5	2025-04-10	positive	0.9998539686203004
219	1	its great app but when updating we can't take screen shot please try to fix it	3	2025-04-10	negative	0.9934490323066713
220	1	good one	5	2025-04-10	positive	0.9998288154602052
221	1	everything is easy thank you cebe	5	2025-04-10	positive	0.9998396635055542
222	1	ፈጣን ቀልጣፋ	5	2025-04-10	negative	0.7850591540336609
223	1	ጎበዝ	5	2025-04-09	negative	0.6970566511154175
224	1	but this app says can't sync	5	2025-04-09	negative	0.9988365769386292
225	1	waw	5	2025-04-09	negative	0.7346174120903015
226	1	to slow	3	2025-04-09	negative	0.999487280845642
227	1	work on screen shot system	4	2025-04-08	negative	0.5902668833732605
228	1	very very nice aplication	1	2025-04-08	positive	0.9998292922973632
229	1	wonder full and it is easy to use	5	2025-04-08	positive	0.9996142387390136
230	1	easy and reliable	2	2025-04-08	positive	0.9998584985733032
231	1	it is Very Useful app 👍	5	2025-04-07	positive	0.994536280632019
232	1	perfect app	5	2025-04-07	positive	0.9998340606689452
233	1	I like it.	5	2025-04-07	positive	0.999869465827942
234	1	bugs	3	2025-04-07	negative	0.9988303780555724
235	1	commerial Bank	5	2025-04-06	negative	0.681026041507721
236	1	Genat biru	2	2025-04-06	negative	0.966159999370575
237	1	🙏	5	2025-04-06	negative	0.6970566511154175
238	1	it is good but it doesn't allow screen shot	4	2025-04-06	positive	0.6723145842552185
239	1	the best one	5	2025-04-06	positive	0.9998371601104736
240	1	You need to copy many things from other bank apps like Amole(Dashen)	2	2025-04-06	negative	0.9967620372772216
241	1	bring back the screenshot feature.	1	2025-04-05	positive	0.9942916631698608
242	1	Good!👍	3	2025-04-05	positive	0.9998579025268556
243	1	best app to experience him that to smooth transaction among the customers	1	2025-04-05	positive	0.9985142350196838
244	1	nice app suitable to use it. the only weak side is it need data connections and hoping will be fixed to offline i gave 4 rate	4	2025-04-05	negative	0.9551453590393066
245	1	easy to use	5	2025-04-05	positive	0.9988542795181274
246	1	Good job to the CBE team on this mobile app! It's designed in a way that's simple and intuitive to navigate, which is great for everyone. It effectively handles the essential banking tasks I need to perform regularly. It's a practical and reliable tool that makes everyday banking much more convenient. Thank you for this useful application.	5	2025-04-04	positive	0.9998189806938172
247	1	ለኔ በጣም ምርጥ ነው ግን screenshot ማረግ ቢቻል ምርጥ ነበር	5	2025-04-04	negative	0.881923258304596
248	1	before it was smooth and good. this time after the new update in 2025 i can not make screenshot of my recite. even the downlod button is very delayed in putting my recite in my gallery for simple proof. please fix this i am unable to show proof of payment to my clients. thankyou.	3	2025-04-04	negative	0.9973511695861816
249	1	cool ❤	4	2025-04-04	positive	0.9997991919517516
250	1	Best app	5	2025-04-04	positive	0.999686598777771
251	1	best banking App	4	2025-04-03	positive	0.999736487865448
252	1	satisfied	5	2025-04-03	positive	0.9997212290763856
253	1	this app is very necessary app many people found it	5	2025-04-03	positive	0.9980692267417908
254	1	cbe very active Bank I'm using CBE app very very satisfaction	5	2025-04-03	positive	0.989459753036499
255	1	It made life alot easier. I cant even imagine having to make all those transactions in person. So this app was crucial for me. Very good app. well done.	5	2025-04-03	positive	0.9997400641441344
256	1	perfect	5	2025-04-03	positive	0.9998517036437988
257	1	thankyou	5	2025-04-02	positive	0.999842882156372
258	1	I Like it	5	2025-04-02	positive	0.99985933303833
259	1	I don't understand the reason, why I need to disable developer options to access the app, it has no security risks nor does it hinder the app's functionalities. This goes out to the dev, I hope your life is filled with inconveniences.	1	2025-04-02	negative	0.9986600875854492
260	1	smart app	5	2025-04-02	positive	0.999789297580719
261	1	isin ga'a	2	2025-04-02	positive	0.7607287764549255
262	1	it's great	5	2025-04-02	positive	0.9998691082000732
263	1	very good app and stars faction with work	5	2025-04-02	positive	0.999858856201172
264	1	It is excelent	5	2025-04-01	positive	0.9998881816864014
265	1	Smart	5	2025-04-01	positive	0.9998456239700316
266	1	በየወሩ አፕደት እየጠየቀኝ ነው ለነገሩ ብር ስሌለኝ ይሆናል እና ምን ለማለት ፈልገ መሰላቹ ወላህ ቼግሮኛል 🥺🥺🥺	3	2025-04-01	negative	0.9570208191871644
267	1	very interesting app	5	2025-04-01	positive	0.9997968077659608
268	1	wow.......cbe.....keep it up.....!!!!!!	5	2025-04-01	positive	0.998596966266632
269	1	ጊዜን ቆጣቢ እና ህይወትን ቀለል ከሚያደርጉ ኢትዬጲያ ካሉ ፋይናንስ አፕልኬሽኖች ሁሉ ይሄ ይለያል	5	2025-04-01	negative	0.9510266780853271
270	1	Excellent🙏app	5	2025-04-01	negative	0.6970566511154175
271	1	the most useful	5	2025-04-01	positive	0.9997223019599916
272	1	I am more satisfied in this app . More sure you have to secure.	4	2025-04-01	positive	0.9787843823432922
273	1	Easy to use	5	2025-04-01	positive	0.9988542795181274
274	1	very good, but sometimes NUR CBE comes without my consent. even if I choose locked, it appears	4	2025-04-01	negative	0.9585955142974854
275	1	Excellent !!!	5	2025-04-01	positive	0.999865174293518
276	1	always we relay on	5	2025-04-01	positive	0.9971832633018494
277	1	I'm lucky to have this🙏 thank you CBE.	5	2025-04-01	positive	0.999750792980194
278	1	it's need more improvement like Tellbirr.	4	2025-04-01	negative	0.999363124370575
279	1	goode app	5	2025-04-01	positive	0.9997406601905824
280	1	a very nice app.👍👍👍	5	2025-04-01	positive	0.9998323917388916
281	1	safe easy & fast	5	2025-04-01	positive	0.999711573123932
282	1	it's good app	5	2025-04-01	positive	0.9998689889907836
283	1	It is veary useful app but screen shout was impossible .solve this problem	5	2025-04-01	negative	0.9958590865135192
284	1	ጥሩ ነው	5	2025-04-01	negative	0.7850591540336609
285	1	እጅግ በጣም ጥሩ አፕ	5	2025-04-01	negative	0.8616330027580261
465	2	This is help full i like ittttt	5	2025-02-14	positive	0.9977995753288268
286	1	በጣም ሃሪፍ ነው ግን ብር በሚተላለፍበት ወቅት ተቀንሷል ይላል እላፊ መልክቱ ይደርሳል ግን አይቀንስም	5	2025-04-01	negative	0.9528433680534364
287	1	suitable app	4	2025-04-01	positive	0.9997665286064148
288	1	Dear cbe this app is not comparable with 21century and pls try to solve it.💀💀💀	1	2025-04-01	negative	0.9995038509368896
289	1	best transaction method of financial	5	2025-04-01	positive	0.9995972514152528
290	1	#CBE is Now going to on the right Pathway/track/!! Thank you CBE one step ahead on payment platform app!!	5	2025-04-01	positive	0.9995881915092468
291	1	It literarily don't work at all	4	2025-04-01	negative	0.9995075464248656
292	1	good give us plus	5	2025-04-01	positive	0.9998716115951538
293	1	Very good application. However, I have one functionality recommendation. What if you let the app transfer money to any telebirr account as for MPESA? By the way, I am not the only one to ask this. Thank you!	4	2025-04-01	positive	0.9895473718643188
294	1	before update it was able to screenshot while after update I can't able to screenshot the transfere details	4	2025-04-01	negative	0.9852171540260316
295	1	Tnc Cbe	5	2025-04-01	positive	0.9070308804512024
296	1	it is good app. But you have integrate cbe with cbe birr. to allow cardless withdrawal directly from our accout!	4	2025-03-31	negative	0.9151977896690368
297	1	great apps	5	2025-03-31	positive	0.999853491783142
298	1	Excellent	5	2025-03-31	positive	0.9998434782028198
299	1	Great app!	4	2025-03-31	positive	0.9998462200164796
300	1	CBE	5	2025-03-31	positive	0.9966009855270386
301	1	very good 👍 👏	5	2025-03-31	positive	0.99985933303833
302	1	great when it works	5	2025-03-31	positive	0.9998693466186525
303	1	the app is very good, but why screenshots is impossible?	5	2025-03-31	negative	0.981265127658844
304	1	excellent match application	5	2025-03-31	positive	0.9998453855514526
305	1	The Best app😍😍😍	5	2025-03-31	positive	0.9998503923416138
306	1	excellent app	5	2025-03-31	positive	0.9998356103897096
307	1	easy to use and user friendly	5	2025-03-31	positive	0.9979179501533508
308	1	very nice	5	2025-03-31	positive	0.9998563528060912
309	1	አሪፍ ነው በተለይ የአሻራ ደህነቱ መረጋገጡ ተመችቶኛል	3	2025-03-31	negative	0.9200406670570374
310	1	well software	5	2025-03-31	positive	0.999262273311615
311	1	ጥሩ ነው አንዳንዴ ስታክ ቢያደርግም	4	2025-03-31	negative	0.8832131028175354
312	1	CBE very good apps	5	2025-03-31	positive	0.9998394250869752
313	1	This application fast, secure and more convenient. Thanks CBE	5	2025-03-31	positive	0.9992094039916992
314	1	excellent service	5	2025-03-31	positive	0.9998576641082764
315	1	it's best	5	2025-03-31	positive	0.999842643737793
316	1	Why didn't you display cash transactions and bank statement in the mobile banking app?	4	2025-03-31	negative	0.9976195693016052
317	1	Amazing app	5	2025-03-31	positive	0.9998670816421508
318	1	our legitimate bank	4	2025-03-31	positive	0.9954161643981934
319	1	Ever and never seen this kind of app I proud my CBE	5	2025-03-31	positive	0.9952196478843688
320	1	very good and safe for me!	5	2025-03-31	positive	0.9998769760131836
321	1	it is best bank	5	2025-03-31	positive	0.9997767806053162
322	1	very good, but sometimes....	4	2025-03-31	positive	0.9997310042381288
323	1	ከአንድ መስሪያ ቤት ወይም ድርጅት ወይም ግለሰብ በርከት ላለ ሰው ሲላክ የላኪውን መስሪያ ቤት ወይም ድርጅት ወይም ግለሰብ እንዲያሳይ አታደርጉም ? ግለሰብ ለግለሰብ ወይም ለድርጅት ሲከፍል ያሳያል ።	5	2025-03-31	negative	0.972727358341217
324	1	Why not allowed to pay for fuel?	4	2025-03-31	negative	0.9974955916404724
325	1	Really! this app is more simple to use at any time in every where also it's transaction quality between the users within the transaction receipt as abank that means this app is our bank on hand in mobile frankly I proud on this bank digital. I have no word to wrote ...... but it's have weakness on poor connection.	5	2025-03-31	negative	0.9962796568870544
326	1	ቆንጆ ነው	5	2025-03-31	negative	0.7850591540336609
327	1	Great version	5	2025-03-31	positive	0.9998726844787598
328	1	Good and easy to use	5	2025-03-31	positive	0.9998656511306764
329	1	nice app and fast money transfer	5	2025-03-31	positive	0.9994321465492249
330	1	Really automated...	5	2025-03-31	positive	0.889448344707489
331	1	good App	5	2025-03-31	positive	0.9998493194580078
332	1	bek betam kelal	5	2025-03-31	positive	0.9325478076934814
333	1	ምርጥ አፕ ነው ተመችቶኛል❤❤	3	2025-03-31	negative	0.8616330027580261
334	1	Recently app keeps closing and the notification after says this app has a bug. Can you make an update please	4	2025-03-31	negative	0.9968405961990356
335	1	very good, keep it up	5	2025-03-31	positive	0.9998643398284912
336	1	there is some issue the process it delay	3	2025-03-31	negative	0.9957571625709534
337	1	what an amazing application in Ethiopian Banking industry which is very interested one!	5	2025-03-31	positive	0.9997572302818298
338	1	interesting	3	2025-03-30	positive	0.9998446702957152
339	1	simple&fast!!!	5	2025-03-30	positive	0.9997504353523254
340	1	it is very good app	5	2025-03-30	positive	0.9998699426651
341	1	It is very excellent anddynamic plus user friend all in one bank apps of the era. I loved it.	5	2025-03-30	positive	0.999854326248169
342	1	Very God thanks	5	2025-03-30	positive	0.9993305206298828
343	1	The sum is good.	3	2025-03-30	positive	0.9998589754104614
344	1	best of bests	5	2025-03-30	positive	0.99969482421875
345	1	am happy thank you CBE🫡	5	2025-03-30	positive	0.9998605251312256
346	1	it's very nice 👍.	5	2025-03-30	positive	0.9998632669448853
347	1	The history sometimes misses transactions, tranfer to cbe birr debited but not really transferred, We need to really cop up with the world for real. The hacks and security problems, invest on and solve them.	3	2025-03-30	negative	0.994558334350586
348	1	Very good	5	2025-03-30	positive	0.9998520612716676
349	1	halan garidhaa cbe	5	2025-03-30	positive	0.9760899543762208
350	1	best apps for useing	5	2025-03-30	positive	0.9989523887634276
351	1	like it	5	2025-03-29	positive	0.9997184872627258
352	1	Good apps ...But fix the screenshot its not easy like before ......	5	2025-03-29	negative	0.9470351338386536
353	1	l love it	5	2025-03-29	positive	0.9998722076416016
466	2	The is not functional at all?	2	2025-02-12	negative	0.9997331500053406
467	2	Best bank	5	2025-02-08	positive	0.9997438788414
354	1	I am not exaggerating when I say that this application is one of the biggest players in the banking industry. It has simplified a lot of things for the user, even if the bank is in his pocket. But my opinion is (1), when we transfer money, there is a word limit on the (Note) at the end. Why can't we write our reason briefly? I don't understand why it is limited. On the other hand, there is no limit on the bank. Could you explain this? (2), when we pay for water, why is the code not mentioned	5	2025-03-29	negative	0.9912715554237366
355	1	in this update why screenshoot is disabled now it's not working	1	2025-03-28	negative	0.9996315240859984
356	1	realy I donot seen like this application ! fast ,safe ande confortable	5	2025-03-28	positive	0.989232301712036
357	1	Excellent but needed upgrading!	5	2025-03-28	positive	0.9263746738433838
358	1	goods app!! pleace update this apps??	4	2025-03-28	negative	0.9845630526542664
359	1	The latest update prevents taking screenshots, which is really annoying! please allow us to take screenshots! we need it for evidence (particularly, in case of transfer failure!).	1	2025-03-27	negative	0.9977697134017944
360	1	Fantastic app! I appreciate it very much	5	2025-03-27	positive	0.9998745918273926
361	1	Convenient app	5	2025-03-27	positive	0.9977468848228456
362	1	Doesn't work properly. It crashes some many times. commercial bank of Ethiopia not only the application but also sending money to own CBE birr doesn't get your money in your bank account. forcefully you must wait 3-5 days to get your money back to your account. walk up CBE the world is going to decentralized finance.	1	2025-03-26	negative	0.9995678067207336
363	1	It crashes multiple times everytime you launch it. Fix it. Edit: crash fixed but screenshots has been disabled. I don't know who thought this was a good idea.	1	2025-03-26	negative	0.9995493292808532
364	1	why why u remove screen shoot😡😡	2	2025-03-26	negative	0.9993287324905396
365	1	I fails mid transaction, No screenshot, download don't work, link shared not working bring back the old app this is usless	1	2025-03-26	negative	0.9996533393859864
366	1	very nice one	5	2025-03-26	positive	0.9998561143875122
367	1	good application	5	2025-03-25	positive	0.999854564666748
368	1	problem solver and the best fast app	5	2025-03-25	positive	0.9997761845588684
369	1	ምርጥ አፕሊከሽን ነው ገንዘብ ለመላክም ሆነ ለማንኛውም ነገር ተመችቶኛል በዚው ቀጥሉበት	5	2025-03-25	negative	0.944585382938385
370	1	Please bring back the screenshot option. The screenshot download option takes like 15 second appear in gallery and most people don't know about it.	3	2025-03-25	negative	0.995722770690918
371	1	you must added dark mode options ❗	3	2025-03-25	negative	0.9864996671676636
372	1	Thank you	5	2025-03-25	positive	0.9998352527618408
373	1	cbe	5	2025-03-25	positive	0.9966009855270386
374	1	ممتاز جدا جدا	5	2025-03-24	negative	0.8608055114746094
375	1	very nice and convenient app	5	2025-03-24	positive	0.999826729297638
376	1	there are to many bugs app keeps crashi ng and the update file seems to keep getting worse	2	2025-03-24	negative	0.9997902512550354
377	1	👍👍👍	5	2025-03-24	negative	0.6970566511154175
378	1	Great experience so far but why this app ain't working while developer mode is on?	4	2025-03-24	negative	0.9967141151428224
379	1	why did the screen shot stopped ?????	3	2025-03-24	negative	0.999007761478424
380	1	it's genuine app..	5	2025-03-24	positive	0.9998555183410645
381	1	okay 👌👍	5	2025-03-24	positive	0.998088538646698
382	1	it's a very good application but sometimes it takes a long time to synchronize	4	2025-03-23	negative	0.9900750517845154
383	1	commercial dank...	5	2025-03-23	negative	0.9671615362167358
384	1	it's very good	5	2025-03-23	positive	0.9998470544815063
385	1	to getting money	5	2025-03-23	positive	0.8595291972160339
386	1	some times it is difficult to get reciepts for the payment made	1	2025-03-23	negative	0.9993370175361632
387	1	this app is best	1	2025-03-23	positive	0.998983919620514
388	1	it's very useful	5	2025-03-23	positive	0.9997983574867249
389	1	best app and update more features *****	5	2025-03-23	positive	0.9995169639587402
390	1	best app for this vast digital finanical word	5	2025-03-23	positive	0.9931873083114624
391	2	Hello, I’m facing a problem with the BOA Mobile app. Every time I enter my phone number and password, the app crashes and shows an error that says “BoaMobile closed because this app has a bug.” I tried updating, reinstalling, and clearing cache, but nothing worked. Please fix this bug in the next update. I really need access to my account. Thank you.	1	2025-06-03	negative	0.999415159225464
392	2	exceptional	5	2025-06-03	positive	0.9998514652252196
393	2	BoA Mobile good bank	5	2025-06-02	positive	0.9984728693962096
394	2	this is worest app 24/7 loading	1	2025-06-01	negative	0.993474304676056
395	2	This App is not interest for Android phone Please update it .	1	2025-06-01	negative	0.9971383810043336
396	2	BoA system is confartable	5	2025-06-01	negative	0.9980142116546632
397	2	very nice Abyssinia bank is choice all	5	2025-05-31	positive	0.999583065509796
398	2	this app, for me , is a waste of time. It doesn't work . I can't even long in, and it really piss me off. FIX THE PROBLEM	1	2025-05-27	negative	0.99980491399765
399	2	Good service.	3	2025-05-25	positive	0.9998533725738524
400	2	the app crush frequently	1	2025-05-24	negative	0.998525083065033
401	2	You guys keeps getting worst	1	2025-05-22	negative	0.9997075200080872
402	2	This app is a joke. It crashes more than it works, takes forever to load, and half the features are just decorative at this point. Can’t log in, can’t transfer money, can’t even check my balance without it bugging out. To the developer: Are you actually trying to make this work, or is this some kind of social experiment to test our patience? Did you build this in your sleep? Because it definitely looks like it. If this is your idea of a functional app, maybe consider a different career path🙏	1	2025-05-21	negative	0.999026656150818
403	2	BoA	2	2025-05-20	negative	0.74105304479599
404	2	but not opening on android	4	2025-05-19	negative	0.9952228665351868
405	2	Worst App ever. Totally unreliable. And it didn't work at all for the last 4 months.	1	2025-05-18	negative	0.9997984766960144
406	2	ሞላዬ ከበደ	5	2025-05-14	negative	0.7850591540336609
407	2	this app does no work on Samsung a51, it just gives a preview of the logo	1	2025-05-11	negative	0.9992283582687378
408	2	i entered incorrect security question by mistake boa app lock pin forever, why is there no other options? ?? i contacted different branchs more then 4times but they didn't able to solve this issue .	5	2025-05-10	negative	0.9994921684265136
409	2	liking this application good 👍	5	2025-05-07	positive	0.9996829032897948
410	2	This app future is good, but there is problems with apps to reset and activate it, which is difficult even to the branch staffs, and it takes too long times to active at the branch plus most of the time high expected failure of activation after process at the counter and OTP sent not work	1	2025-05-06	negative	0.9989790916442872
411	2	it's really good 👍	5	2025-04-23	positive	0.9998701810836792
412	2	Bad app . it stuck when you open and noting WORKS.	1	2025-04-23	negative	0.9995198249816896
413	2	the app isn't working after it asked me the password it starts loading, but it doesn't open	3	2025-04-20	negative	0.9997255206108092
414	2	It keeps showing this pop up to turn off developer options even tho it's off! I had to turn on and then off to make it work! This is a horrible experience and needs a fix asap! Plus kinda slow.	1	2025-04-19	negative	0.999669909477234
415	2	yideg	1	2025-04-18	negative	0.767581045627594
416	2	አይከፍትም እኮ	1	2025-04-17	negative	0.7850591540336609
417	2	great boa	5	2025-04-10	positive	0.9992689490318298
418	2	boa of mobile backing	5	2025-04-09	negative	0.980626106262207
419	2	faster bank of Abissinya	5	2025-04-08	positive	0.9722142815589904
420	2	i would have given it a lower if it was possible because it crush so much and it take the bank so long to fix the bug	1	2025-04-08	negative	0.9996716976165771
421	2	it just doesn't work...so frustrating	1	2025-04-07	negative	0.999774158000946
422	2	like	5	2025-04-06	positive	0.9910564422607422
423	2	it's not work correctly... you must have update it	1	2025-04-06	negative	0.9998013377189636
424	2	the app gets a considerable improvements like language , QR scanner and unlimited transfers survice. but BOA Please do alot on its fastness and convenient when we login and making a transactions.	5	2025-04-04	positive	0.9575353264808656
425	2	after i typed in my password it says successfully logged out ...and goes back to the first page	2	2025-04-04	negative	0.5856848359107971
426	2	good but they don't update enough don't add new things	3	2025-04-04	negative	0.9693678617477416
427	2	thank you	5	2025-04-02	positive	0.9998352527618408
428	2	it doesn't work period z slowest mobile banking ever i would rather use *815#	1	2025-04-01	negative	0.9990907907485962
429	2	after activated the application it not allowed to sign , automatically it is turn off In my phone, why ?	1	2025-03-31	negative	0.9973751306533812
430	2	this version is not working for me I cannot even buy card. I cannot send money	1	2025-03-30	negative	0.9995684027671814
431	2	It can't actively on initialization, it says incorrect OTP getting the exact OTP	1	2025-03-29	negative	0.9996182918548584
432	2	always problematic hardly works	1	2025-03-26	negative	0.99955552816391
433	2	considering the fact the bank is huge this app really bad you could do better	1	2025-03-25	negative	0.9997418522834778
434	2	worst app and Bank ever u be ashamed, scammer	1	2025-03-24	negative	0.9998050332069396
435	2	great BoA	5	2025-03-22	positive	0.9992689490318298
436	2	i have went to the bank so many times because i couldn't make any transaction i can only see my balance nothing else so what is the point of having mobile banking if i can't make any transaction with it please work in that	1	2025-03-21	negative	0.9988333582878112
437	2	there is no speed	1	2025-03-19	negative	0.9994422793388368
438	2	For anyone who wants to download it, just don't!!!	1	2025-03-19	negative	0.999398112297058
439	2	wonderful	5	2025-03-19	positive	0.9998772144317628
440	2	all worck	5	2025-03-19	negative	0.9971314668655396
441	2	Loved it	5	2025-03-14	positive	0.9998797178268432
442	2	Wow	1	2025-03-14	positive	0.999592125415802
443	2	Edit: New bug, app not letting me type in my otp codes. Shameful Why does this app not allow me to use it while having developer options on? Did y'all consider that I might, perhaps, be an actual developer? Why am I expected to toggle the option on and off just to bank (restarting my phone when I do)? Why is the message labled as somthing that will "smoothen" the experience? This is like the most "security consultant" thing to implement in an app. Please invest in actual security, not this mess.	1	2025-03-12	negative	0.9985970854759216
444	2	Improved to be the best	5	2025-03-11	positive	0.9998570680618286
445	2	Decent, but there problems sometimes it says error When i transfer money but infact it transferred because of this bug i transferred 2 times instead of 1 and also we can't transfer money to others telebirr acc we only can to our self BOE Dev fix this !!!	3	2025-03-11	negative	0.99748432636261
446	2	BoA Greqt Ethiopian bank.	5	2025-03-11	negative	0.8457717895507812
447	2	The bug is still there,the app crashes every time i try to log in, especially in old phones like my Galaxy A32	1	2025-03-10	negative	0.9994600415229796
448	2	Almost better compared to cbe where it is not qualified for	4	2025-03-09	negative	0.974167823791504
449	2	what awesome apps. it is very simple to use and more much important apps.	5	2025-03-09	positive	0.9998214840888976
450	2	Wonderfull app	5	2025-03-08	positive	0.9998815059661864
451	2	i can't use this app why?	5	2025-03-07	negative	0.9993101358413696
452	2	Worst mobile banking app I ever experienced I was blaming other apps but comparing with this they're too much better!!!! It clashes it takes much longer time to login while loading in short it's a complete of trash	1	2025-03-06	negative	0.9997013211250304
453	2	bro the worst app made by human kind!! as a software engineer it make me so sad seeing enterprise as big as BOA make apps like this. it is a disgrace for our country!!	1	2025-03-05	negative	0.9998133778572084
454	2	AGA B Girja Miss language of admin Afaan oromo & other Itoophiyaa languages	1	2025-03-04	negative	0.9959415793418884
455	2	I downloaded the app for the first time while reading other customers reviews and as soon as i installed and opened the app it closes back automatically, what unserious bank, now i uninstalled the app immediately	1	2025-03-03	negative	0.9916398525238036
456	2	It has good features but sometimes it doesn't work...0	1	2025-03-02	negative	0.9956711530685424
457	2	Very poor proformance	1	2025-03-01	negative	0.9998043179512024
458	2	It's not opening. Really frustrating	1	2025-03-01	negative	0.9997020363807678
459	2	Verry Amazing App from all IB	5	2025-03-01	positive	0.9997394680976868
460	2	Not working on this days	1	2025-02-26	negative	0.9972773194313048
461	2	Thank you BoA	5	2025-02-23	positive	0.9998399019241332
462	2	best banking app in the wworld	5	2025-02-22	positive	0.999572217464447
463	2	Nice app and it's easy to use	5	2025-02-21	positive	0.999751627445221
464	2	please add language in the apps setting(amharic afan oromo, tigniya,and others) sometimes bank to bank transfer is not available through time and even if if it is available not reachable…it is serious issue!	1	2025-02-15	negative	0.999267876148224
468	2	Make it easy and convienient to use and perfect for all to high prefrence and choice.	3	2025-02-07	positive	0.9997236132621764
469	2	🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹👍👍👍👍👍👍👍	5	2025-02-04	negative	0.6970566511154175
470	2	I have been using this app for two years.It is amazing.	5	2025-02-01	positive	0.9998595714569092
471	2	Good 👍	5	2025-01-31	positive	0.9998576641082764
472	2	Sad experience	1	2025-01-30	negative	0.999068796634674
473	2	Always do update and that is annoying	3	2025-01-27	negative	0.9994439482688904
474	2	Best app, somehow waiting a few minutes	5	2025-01-23	negative	0.6387050747871399
475	2	I can't dijitalize my atm in the apollo app on my phone	1	2025-01-22	negative	0.9946038126945496
476	2	Whenever I try to sign in app close please fixed it out	2	2025-01-21	negative	0.9976611137390136
477	2	Beter	5	2025-01-21	positive	0.6771947741508484
478	2	Boa	4	2025-01-18	negative	0.74105304479599
479	2	በጣም የሚያስጠላ አፕ በጣም የወረደ ዜሮ ነው የምሰጠው ዘሮ It's not App it's very slow ehhhh. Why don't you upgrade the app???? It's always zero	1	2025-01-18	negative	0.9979276657104492
480	2	Aadan Axmed Barkhadle	5	2025-01-17	positive	0.612751841545105
481	2	😡😡😡🤬🤬🤬	1	2025-01-16	negative	0.6970566511154175
482	2	Horrible customer service and app crashes Horrible!!	1	2025-01-15	negative	0.9997913241386414
483	2	I love it	5	2025-01-14	positive	0.9998799562454224
484	2	It keeps asking me to turn off developer mode even when dev mode is off. Couldn't use it.	1	2025-01-13	negative	0.9985793828964232
485	2	Good🙏	5	2025-01-12	negative	0.6970566511154175
486	2	Like to much	5	2025-01-11	positive	0.9997984766960144
487	2	Perfect	5	2025-01-09	positive	0.9998517036437988
488	2	The best of best	5	2025-01-09	positive	0.9998393058776855
489	2	I was using this app for long time it amazing user friendly UI but the i can't found for get pin button in the app	3	2025-01-07	negative	0.9016597867012024
490	2	Great 👍	5	2025-01-04	positive	0.9997692704200744
491	2	Fast and suitable for the customers.	5	2025-01-04	positive	0.9997920393943788
492	2	Good app and helpful	5	2025-01-03	positive	0.9998565912246704
493	2	I will give only one star, because it faced with multiple of problems. 1. The app is not as fast as the other banks App, for e.g like CBE 2. The App asks repeatedly to switch off developer options, even if it is switched off. 3. Bank of Abyssinia's services are interesting, but they ignored the issues on the App service. 4. Most customers gave a complain on the App, but no one accept their complain to fix the issue. 5. Lastly, I will not recommend the App unless the issue has been solved ASAP!!	1	2025-01-03	negative	0.9978498220443726
494	2	By assessing this you can tell Abyssinia bank has no idea what mobile banking is ?	1	2025-01-02	negative	0.9992759823799132
495	2	It doesn't work at all.	2	2025-01-02	negative	0.9997771382331848
496	2	this app is not available	1	2025-01-02	negative	0.9997593760490416
497	2	Wow what amazing	5	2024-12-30	positive	0.9998555183410645
498	2	love it	5	2024-12-30	positive	0.99987530708313
499	2	በጣም መሻሻል አለበት....... ለ ባንኩ ማይመጥን መተግበርያ ነው ::	2	2024-12-30	negative	0.9733067750930786
500	2	Lemn embi yilal??	5	2024-12-30	negative	0.990697145462036
501	2	It's useless app downgraded.	1	2024-12-29	negative	0.999807059764862
502	2	Why is not letting me access my account. The whole point of this app is for me to gey access to my account without physically being at the bank. I would give it a zero but a one will suffice to get my point accross.	1	2024-12-27	negative	0.7652372717857361
503	2	Nice	5	2024-12-26	positive	0.9998552799224854
504	2	When are you going to get rid of this and have a real app that works? By far the worst mobile banking app.	1	2024-12-24	negative	0.9997933506965636
505	2	አይሰራም ሼም ነው፤	1	2024-12-23	negative	0.8616330027580261
506	2	Not that much bad	3	2024-12-22	positive	0.998815894126892
507	2	Fine	5	2024-12-21	positive	0.9998335838317872
508	2	The dirtiest application ever seen...	1	2024-12-20	negative	0.9954877495765686
509	2	Nic ap	5	2024-12-19	positive	0.9873360991477966
510	2	The forest app ever	1	2024-12-19	positive	0.9840954542160034
511	2	I love BoA more than anyone but they are cursed when it comed to mobile banking. Even though this ine is hetter it still s*cks! It will ask me to turn off developer options other wise it won't work! I use CBE, Awash birr, tekebirr, Dashen bank and others but non of them asked me this, why only BoA? Please improve your mobile banking, be competitive!	1	2024-12-19	negative	0.9967040419578552
512	2	Bank of abissena	1	2024-12-17	positive	0.9480117559432985
513	2	Easy and sooo simple to use it, also its easy to stole someones money using the app	3	2024-12-16	negative	0.9888866543769836
514	2	GOOD	5	2024-12-15	positive	0.999816119670868
515	2	The worst banking app ever. Never works!	1	2024-12-14	negative	0.999800741672516
516	2	Poorly functioning app	3	2024-12-13	negative	0.999775230884552
517	2	Very nice	5	2024-12-13	positive	0.9998563528060912
518	2	Your system is the worst you should do better😡😡😡😡😡😡	2	2024-12-11	negative	0.999800741672516
519	2	It has been a while since you guys started giving the mobile app service but still couldn't get it to work. I'm sure you know that it doesn't work already but not sure if you're lazy or incompetent to fix it. You are losing business because of this. Complacency will have consequences.	1	2024-12-10	negative	0.9997615218162536
520	2	This is the best app; many features are awesome, but it should work without the need to turn off the developer options. I'm tired of having to constantly switch the developer options off and on. I've been expressing my struggles about this. I have precious settings enabled in the developer options, and to open the App Boa app, I have to turn them off. Please help us, Abyssinia Bank. I hope you can provide an update soon.	4	2024-12-08	positive	0.9543284177780152
521	2	I’m giving this app one star because there are no options below that. My experience has been incredibly frustrating due to the extremely long loading times, and the app even closes automatically at times. People choose mobile banking for its convenience, but this app is far too time-consuming, making it the worst I’ve used. I hope improvements are made to enhance the user experience.	1	2024-12-07	negative	0.9997000694274902
522	2	Very unprofessional and mischievous bank in my opinion. I have had several occasions but recently I used Abyssinia Card to withdraw money and it was deducted from my account but despite reporting several times they said they are processing it but I learned yesterday that since it has been 3 months the bank has decided to include it in their income. How absurd. If you can avoid this bank.	1	2024-12-06	negative	0.9941067695617676
523	2	It doesn't work on my 2 devices A05 and A34 😡	1	2024-12-02	negative	0.9996792078018188
524	2	It's better to say I don't use boa rather than pulling your phone out and opening this app	1	2024-12-01	negative	0.9981752634048462
525	2	My attention is very important because it will be the most difficult time for me	5	2024-11-30	positive	0.9926175475120544
526	2	I have a worst experience while using this mobile application through out the year. Most of the time it fails to "Login" or automatically closed the app. And also it takes so much loading time (5 minutes +) trying to access the internal services. Sometimes also while transferring within and to other bank also fails. So, BOA please fix your app.	1	2024-11-29	negative	0.999800145626068
527	2	I don't know why but your apps start out great then all of a sudden don't work🤷‍♀️	1	2024-11-28	positive	0.8064306974411011
528	2	This application is losing major factions on a daily basis. I can count how many times I have used this app; it is completely useless and disappointing if I am not going to use it in times of need then I don't see the point.	1	2024-11-28	negative	0.99979966878891
529	2	exellent digital transaction of money	5	2024-11-27	negative	0.994447946548462
530	2	The latest update has stopped android 9 phones not to open this App. Never work properly since i started using it.	1	2024-11-26	negative	0.999749720096588
531	2	Great	5	2024-11-25	positive	0.9998630285263062
532	2	👏👏👏	5	2024-11-24	negative	0.6970566511154175
533	2	Money	5	2024-11-24	positive	0.9659326076507568
534	2	It needs more improvment	2	2024-11-24	negative	0.998616099357605
535	2	Hey Google	5	2024-11-21	positive	0.9950044751167296
536	2	ab	3	2024-11-20	positive	0.9603193998336792
537	2	Ademtahir	5	2024-11-20	positive	0.9930111765861512
538	2	✌️✌️	5	2024-11-20	negative	0.6970566511154175
539	2	Please this app on my android phone	3	2024-11-20	positive	0.6488662958145142
540	2	GOAT 🐐 🐐	5	2024-11-19	negative	0.9337347149848938
541	2	Your app doesn't match your bank, the app is disaster, super slow. Please learn something from tele birr app.	1	2024-11-19	negative	0.9994460940361024
542	2	Fast and reliable	5	2024-11-18	positive	0.9998595714569092
543	2	The worst app update ever. Why would you include the "developer option off" thing here? Why do you care? It is my phone my money, right? That is the reason why I switched to other banks. So either turn it off or everyone will discontinue their business one by one.	1	2024-11-17	negative	0.9998020529747008
544	2	One of the poorest mobile banking system	1	2024-11-13	negative	0.999756634235382
545	2	❤❤❤❤❤❤	5	2024-11-12	negative	0.6970566511154175
546	2	Oene	5	2024-11-12	positive	0.8278858661651611
547	2	i find it interesting specially in reciept downloading	1	2024-11-12	positive	0.9981314539909364
548	2	it good	5	2024-11-12	positive	0.9998427629470824
549	2	This app crashes everytime, please fix it	1	2024-11-12	negative	0.9996472597122192
550	2	አንድ star ራሱ ይበዛበታል። i dont recomend to use this app also the bank	1	2024-11-12	negative	0.9964038133621216
551	2	I need a support the app is not working	5	2024-11-12	negative	0.9998034834861756
552	2	Bast bank of ethiopia	5	2024-11-12	positive	0.9978061318397522
553	2	very slow app. አቢሲኒያን ከሚያክል ባንክ የማይጠበቅ software app. ከቻላችሁ ሙሉ ለሙሉ እንደገና አሰሩት።በጣም ይመራያል ያሳፍራል።ለapp የወጣው ወጭ በሙስና የተበላ ነው የሚመስለው።	1	2024-11-12	negative	0.9990527033805848
554	2	thank you for your social services like, vertual banking, non touch ATM, Cadrless and withdrwal with out passbook...	5	2024-11-12	positive	0.9878897070884703
555	2	The worst App i have never seen like this before	1	2024-11-12	negative	0.999774158000946
556	2	Wweeeer	4	2024-11-12	negative	0.8910733461380005
557	2	Infinx	5	2024-11-12	negative	0.9042560458183287
558	2	Great service	5	2024-11-12	positive	0.9998434782028198
559	2	This app is not available on all android versions and some times it is not functional.	1	2024-11-08	negative	0.9997187256813048
560	2	senayt Mesfin	4	2024-11-08	positive	0.8874823451042175
561	2	Bad app vety bad.	1	2024-11-07	negative	0.9998058676719666
562	2	Abessnya Banke	5	2024-11-05	negative	0.9873653054237366
563	2	The most useless app, I never expected such an irrelevant app from BOA. big shame!	1	2024-11-04	negative	0.9997209906578064
564	2	Okay	5	2024-11-03	positive	0.9997709393501282
565	2	Professional on banking app	5	2024-11-01	positive	0.9616296291351318
566	2	Has some nice interface but always freezes or slow to load .App developers please fix this issue.	3	2024-10-27	negative	0.993607759475708
567	2	አይሰራም አስተካክሉት	5	2024-10-26	negative	0.7850591540336609
568	2	Please try another because this app doesn't feet the need of this generation	1	2024-10-25	negative	0.9962698221206664
569	2	Fast transfer	5	2024-10-24	positive	0.9989985823631288
570	2	What's up I can't log in, what's wrong	5	2024-10-22	negative	0.9989662170410156
571	2	Amrumehamed	1	2024-10-21	positive	0.6924042701721191
572	2	Nice to meet you my proud bank in Ethiopia.. I'm a member of this bank, i need to solve my problem of international receiving money for me from my online digital working service's over the world please? I'm working a lot of international money.But i can't get direct in Ethiopia because of don't knowing the legal ways of getting money in Ethiopia please can I get and direct deposit with BoA please 🙏🙏🙏?	5	2024-10-18	positive	0.9683735966682434
573	2	ደደገነሐ	5	2024-10-15	negative	0.6970566511154175
574	2	Terrible Bank Experience It’s unbelievable that with all the modern technology, this bank still struggles with even basic transactions. The app constantly crashes, services are limited, and every time I try to transfer money or load Telebirr, there’s a huge delay. I have to wait 5 days for failed transactions to be refunded! Even USSD is unreliable. They’ve put me in embarrassing situations countless times, and customer care never fixes anything. I’ve switched banks, and you should too!	1	2024-10-14	negative	0.9995194673538208
575	2	A painfully slow banking app service. Please don't make it your choice!	1	2024-10-13	negative	0.999660849571228
576	2	Good App	4	2024-10-12	positive	0.9998493194580078
577	2	Best app to me	5	2024-10-11	positive	0.997821807861328
578	2	BOA	5	2024-10-11	negative	0.74105304479599
579	2	Abdulkadir	5	2024-10-11	positive	0.981449544429779
580	2	Bad	1	2024-10-10	negative	0.999782383441925
581	2	If it is possible I would gove0 star	1	2024-10-08	negative	0.9928192496299744
582	2	Nise mobile bankig	4	2024-10-05	negative	0.9858755469322203
583	2	Overall good app but performance needs some improvement also sometimes when using instant other bank transfers it refuses causing to be repeated several times to transfer	4	2024-10-04	negative	0.953279197216034
584	2	Ok	5	2024-10-04	positive	0.9997851252555848
585	2	Just make it work please🤣 this is embarrassing for a bank of your size	1	2024-10-04	negative	0.999284327030182
586	2	Update to the simplest way it requires the developer option on and off why this is	5	2024-10-04	negative	0.998016357421875
587	2	Stop telling me what to do with my phone, BOA. Why does your newly updated app keep asking me to disable the developer options? I’m not slowing down my phone just to use your God damn app. 🤮🤮🤮🤮	1	2024-10-04	negative	0.9964292645454408
588	2	I'm living out of country how may I download and use mobile banking? It asks me the Ethiopia phone number and I can't receive text to confirm because I'm out side the country. So please lete know if I can use while I'm outside the country. Thanks	1	2024-10-04	negative	0.6597367525100708
589	2	Worest app	1	2024-10-03	negative	0.7789779305458069
590	2	The worest app ever	1	2024-10-03	positive	0.9535900950431824
591	2	አሪፍ ነው በርቱልን	5	2024-10-03	negative	0.8337253928184509
592	2	Wwwerrr	5	2024-10-02	negative	0.8502517938613892
593	2	ጀማል ውቀቱ	5	2024-09-30	negative	0.7850591540336609
594	2	Great For Financial company	5	2024-09-30	positive	0.9998703002929688
595	2	Very easy to use	5	2024-09-30	positive	0.999142289161682
596	2	The App's crash always.. Error.....	3	2024-09-27	negative	0.9996880292892456
597	2	This app is incredibly frustrating to use. It’s filled with issues that make it difficult to navigate and complete tasks efficiently. I’ve never encountered such a poorly designed banking application before. It needs significant improvements to enhance user experience. It deserves a vey low rating.	1	2024-09-26	negative	0.998582124710083
598	2	Great UI and seamless UX. I love it!!	5	2024-09-25	positive	0.9998557567596436
599	2	That's too good application but try to add more alternatives and futures or possibilitys for your customers	3	2024-09-25	negative	0.9941336512565612
600	2	It's easy used to operate program and secured 👍👍	4	2024-09-25	negative	0.9652976989746094
601	2	I bought a mobile card on this app but I didn't receive it and it took my money and I didn't get my money back.	1	2024-09-21	negative	0.9994741082191468
602	2	Amazing	5	2024-09-19	positive	0.999875545501709
603	2	Great app with great services	5	2024-09-19	positive	0.9998226761817932
604	2	Yes active user	5	2024-09-17	positive	0.9983929991722108
605	2	Shameful	1	2024-09-17	negative	0.998016357421875
606	2	The worest app ever made i would not recommende for no one	1	2024-09-16	negative	0.5611279010772705
607	2	Good application	5	2024-09-16	positive	0.999854564666748
608	2	How many hours should I wait after transferring money to telebirr, please do something about the transfer delay issue I need my money when ever.	1	2024-09-15	negative	0.9988893866539
609	2	BOA is unreasonably holding and delaying transactions for more than a day, even transactions within the same bank itself. This is a huge gap that I observed in BOA mobile banking. I didn't experience this kind of challenge while having transactions in other banks' mobile banking platforms. After waiting so long, I called your customer support team and the response they gave me was "it was the system that holds the transaction & will be released on working days". This is not totally fair.	1	2024-09-15	negative	0.9993953704833984
610	2	የእርስዎን ተሞክሮ ይግለጹ (አማራጭ)	5	2024-09-14	negative	0.8698037266731262
611	2	It's not working. It needs a big update. Can't you update the app quickly?	1	2024-09-14	negative	0.999777853488922
612	2	I am Aimohon Joel , It's can be Good for a Better Conversation in Time 🙂	3	2024-09-14	negative	0.9925205707550048
613	2	Better app than most mobile apps, but why do I have to turn off developer option every time I wanna use the app?? It's annoying.	1	2024-09-13	negative	0.999325394630432
614	2	Bes and freindly app	5	2024-09-13	negative	0.9136509895324708
615	2	It doesn't work.	1	2024-09-12	negative	0.9997761845588684
616	2	It say "The request was not successful. please check device connectivity or try again" why? One of the bank manager told me it is because of my phone's android version which is 9.1 It is ridiculous! Disappointing	1	2024-09-11	negative	0.9997968077659608
617	2	How to download or screenshot of payment receipt...what kinda worst app ever 🤮🤮🤢	1	2024-09-11	negative	0.9998114705085754
618	2	Smart technology	5	2024-09-10	positive	0.9998468160629272
619	2	Yegema app tish🪨	1	2024-09-08	negative	0.9501880407333374
620	2	This is not an appropriate app, i don't know how boa develops this app, i don't expect this much crazy and un confortable app form BOA, I'm soory!!!	1	2024-09-07	negative	0.9996864795684814
621	2	Shockingly bad! Even when it decides to work, it's painfully slow and frustrating. Such a shame that it has become a stain on an extraordinary bank	1	2024-09-06	negative	0.9997275471687316
622	2	It crashes frequently. It launches on Android 8.1 but I don't think it actually works on versions less than 10. If so, it shouldn't be available for download by such devices to begin with, like many other finance apps are not. It was so much better three months ago, upgrades should be for the better.	1	2024-09-06	negative	0.999210000038147
623	2	Awesome application. But lately its crashing everytime i opened it.	4	2024-09-05	negative	0.9127689599990844
624	2	እጅም በጣም ደካማ አፕ ነው ሲፈልግ ይከፍታል ሲፈልግ አይከፍትም ከአዋሽ እና ንግድ ባንክ የመሳሰሉ ባንኮች ሲወዳደር ሞባይል ባንኪንግ App እጅግ የሚያበሳጭ ነው ለውጥ ያስፈልጋችኋል	1	2024-09-05	negative	0.9639250636100768
625	2	Fast one	3	2024-09-04	positive	0.9994491934776306
626	2	Nice looking app but a terrible user experience.	1	2024-09-03	negative	0.9958102703094482
627	2	The worest MB app ever!!🙄	1	2024-09-02	negative	0.8734647035598755
628	2	It is ok	5	2024-09-01	positive	0.9998496770858764
629	2	Plz fix the Apps ....screenshot lovation hide from glarey share botten not work😔😔	1	2024-08-30	negative	0.9987314343452454
630	2	Apollo's	1	2024-08-29	positive	0.9974138736724854
631	2	The worst experience ever	1	2024-08-29	negative	0.999792754650116
632	2	Hussenaliumar	5	2024-08-29	negative	0.6654528975486755
633	2	Hi I have problem with this App BOA mobile I don't know what is wrong with this App I did many times download but it's sam doesn't work if sam like that this app way I have to be customer with them how I know my account and checking save The book is no Not enough alone	1	2024-08-28	negative	0.999367892742157
634	2	It is not work for my device	5	2024-08-27	negative	0.9997636675834656
635	2	I'm Sick and tiered of enabling and disabling Developer Option Everytime I use this app. maybe you know it maybe you dont, fix it please it's anoying	1	2024-08-26	negative	0.9990233182907104
636	2	The worst app ever	1	2024-08-26	negative	0.9997934699058532
637	2	Betanya Gebre	3	2024-08-23	positive	0.8911885619163513
638	2	I dont recommand it to any one	1	2024-08-23	negative	0.9855504035949708
639	2	Excellent app	5	2024-08-21	positive	0.9998356103897096
640	2	The application used to work well. But after updates I'm not able to use the forgot password feature, which is blocking me from accessing it as a whole.	1	2024-08-20	negative	0.9988825917243958
641	2	ትርሃስ	5	2024-08-19	negative	0.6970566511154175
642	2	Gio	4	2024-08-19	positive	0.9969680905342102
643	2	App isn't working	1	2024-08-18	negative	0.9995692372322084
644	2	so far good but always it lugs	3	2024-08-17	negative	0.982947051525116
645	2	Don't trust this bank and its service.	1	2024-08-16	negative	0.99963116645813
646	2	I can not open and use the application,please help me!	5	2024-08-15	negative	0.9995014667510986
647	2	Horrible	1	2024-08-14	negative	0.9997841715812684
648	2	Mostly not working 😑	1	2024-08-14	negative	0.9995824694633484
649	2	Awesome 👌	5	2024-08-12	positive	0.9998607635498048
650	2	Despite the enhanced technology you have, the application doesn't work properly, and it asks for the developer option to be turned off, fix that.	3	2024-08-12	negative	0.9997915625572203
651	2	Very poor app b/c highly slow to open the app	1	2024-08-12	negative	0.9998080134391784
652	2	Wedi Tekle .	5	2024-08-11	negative	0.84212726354599
653	2	Bad app📱👎👎👎	1	2024-08-11	negative	0.9997676014900208
654	2	Dura nan fayyadaman ture amma garuu naaf hojjechaa hin jiru maaf?	5	2024-08-11	negative	0.9956488013267516
655	2	Nice appp	5	2024-08-11	positive	0.9997910857200624
656	2	ሰላም አቢሲኒያዎች የሞባይል ባንኪንጋችሁ ተጠቃሚ ነኝ አገልግሎቱን ስላስጀመራችሁለን እናመሰግናለን። ነገር ግን አለፎ አልፎ የነበረው የማስፈንጠሪያው በአግባቡ አለመስራት አልፎ አልፎ ወደመስራት ተቀይሯል ድሮ እንደነበራችሁ እናውቃለን ዘንድሮም ብትኖሩልን እንመርጣለን *ከዘመን አንጉደል*	3	2024-08-10	negative	0.952187716960907
657	2	Gooood app my dear	5	2024-08-10	negative	0.9005936980247498
658	2	Harun tamam galanaa	3	2024-08-09	negative	0.9410595893859864
659	2	A total disaster of an app. Always offline, never works, it's embarassing. I've lost hope and taken my business to a competitor	1	2024-08-08	negative	0.9998038411140442
660	2	Gamebela	1	2024-08-08	positive	0.8994185328483582
661	2	so poor app to use can't start up when open the app	1	2024-08-08	negative	0.999744474887848
662	2	This app takes too long time to be opened. And even it is not working simply as other banks application. Why this app does not give a digital invoice. Even, I am not able to find where the screeshot is kept after transaction. So, please the developer should fix all these.	1	2024-08-07	negative	0.9987001419067384
663	2	Good job	5	2024-08-07	positive	0.999835729598999
664	2	Worst app ever, not user friendly, even doesn't serve basic functionality correctly, takes to much time to login and navigate through the app, we expected more from this bank	1	2024-08-07	negative	0.9998094439506532
665	2	Bad app .	1	2024-08-06	negative	0.9997915625572203
666	2	I mean how could a big financial company like this, be this much irresponsible to release this app? You should be ashamed!	1	2024-08-06	negative	0.9994394183158876
667	2	Review	5	2024-08-06	positive	0.9946893453598022
668	2	Goood	4	2024-08-06	negative	0.9943867921829224
669	2	👎👎👎👎👎👎👎👎👎	1	2024-08-06	negative	0.6970566511154175
670	2	Is it necessary to switch off developer options every time to use mobile banking?🤔🤔😡😡😡	1	2024-08-04	negative	0.99793541431427
671	2	The previous version is better it doesn't work	1	2024-08-04	negative	0.9997755885124208
672	2	I don't know what is wrong with BOA as a bank in general. It's been going backwards since last year or so. The app is a disaster to use in every possible way. Not stable to log in and very slow to perform transactions, couldn't take a screenshot (or can't even find the pictures even using its save screenshot option). Most of the time, it fails to perform transactions and so on. Simply, it's the worst!	1	2024-08-03	negative	0.9998201727867126
673	2	Take some note from CBE mobile banking app, it's the best banking app currently take some note and improve ur app . Sometimes u have to learn from the bests 🙌	1	2024-08-03	positive	0.9958856701850892
674	2	It's a useless app	1	2024-08-02	negative	0.9998058676719666
675	2	It's not working as it was , so much need to improve, it was the best but not anymore	2	2024-08-01	negative	0.9968530535697936
676	2	Poor network	1	2024-08-01	negative	0.9997891783714294
677	2	Not yet completely working this App. i don't know when is it will be working properly! Its Sad!!!	1	2024-07-31	negative	0.9993754029273988
678	2	The app does not open sometimes it says coonection issue which i dont have and after it opens it has bugs while using its not smooth to work with please improve it	1	2024-07-31	negative	0.9953023195266724
679	2	It's not working totally, what a useless app is it,	1	2024-07-31	negative	0.999817192554474
680	2	This app has become the most troubling every day. It doesn't work. I love the bank, and I hate the app	1	2024-07-31	negative	0.9989368319511414
681	2	this is so disappointing app 😞	1	2024-07-31	negative	0.9998024106025696
682	2	አቢስኒያ የሁሉም ምርጫ	5	2024-07-29	negative	0.8337253928184509
683	2	Nays	5	2024-07-28	negative	0.9894010424613952
684	2	The worst app	1	2024-07-28	negative	0.9997969269752502
685	2	it can't even open and only display error messages	1	2024-07-27	negative	0.9993472695350648
686	2	not active	1	2024-07-27	negative	0.999765932559967
687	2	To get good quality	5	2024-07-27	positive	0.999868392944336
688	2	አይሰራም እኮ ምንድን ነው ችግሩ?	1	2024-07-26	negative	0.9647620320320128
689	2	uselss app dont download	1	2024-07-26	negative	0.9977203011512756
690	2	Is this app fake i try it not working it say please try again later, unable to make transactions what is the purpose of this app . If it is not working delete it	1	2024-07-25	negative	0.9997162222862244
691	2	This app didn't work. They have a new version (new app) but still not compatible with my Samsung S8+ , which is v.funny.	1	2024-07-25	negative	0.9991223216056824
692	2	Corrupted and poor app	1	2024-07-24	negative	0.9997439980506896
754	2	This app doesn't work	1	2024-06-30	negative	0.9997921586036682
693	2	When I try to use the application it says 'developer setting should be off' where is the setting to off this play Still doesn't work for me	3	2024-07-24	negative	0.999801218509674
694	2	FIX YOUR Apollo!! You guys where the best 👌	1	2024-07-23	positive	0.999450385570526
695	2	Always slow and doesn't work on weekends if you are in a rush or a merchant this app is not for you	1	2024-07-23	negative	0.9994396567344666
696	2	It's very difficult to use the user, app,ones dawenload the user can't operate well , no one can help me,	1	2024-07-23	negative	0.9997815489768982
697	2	Poor application. It turned off by itself	1	2024-07-23	negative	0.999744474887848
698	2	Allowed	5	2024-07-23	positive	0.9978752136230468
699	2	It usually crashes and the reason it gives is a problem on internet connection although the internet was fine.	1	2024-07-23	negative	0.9991043210029602
700	2	we want international mobile banking	1	2024-07-22	positive	0.958784818649292
701	2	screenshot isn't working, Please modify it	2	2024-07-22	negative	0.9996084570884703
702	2	Naziriet measho 89160437	1	2024-07-22	negative	0.9862651228904724
703	2	Ahmed Mohammed husen	3	2024-07-21	positive	0.9124149680137634
704	2	Is not working both this one and apollo did u make it better pls am gonne stop using this bank because of the mobile banking	1	2024-07-19	negative	0.9996222257614136
705	2	I have experiance	5	2024-07-19	negative	0.8070299029350281
706	2	The App is not working on Android 9.1 at all. It shows an error notification and forcefully closes the app. Must be fixed ASAP.	1	2024-07-19	negative	0.9997739195823668
707	2	Crashes very frequently is not stable overall need improvement such a huge bank needs a better app than the current one	1	2024-07-19	negative	0.999760091304779
708	2	ርይርፍ	3	2024-07-19	negative	0.6970566511154175
709	2	The previous application is much better than this one	1	2024-07-18	positive	0.9991149306297302
710	2	Worst app. It is wise to invest money and you can make it like CBE app. Even the incon has no image. My app has better UI than yours. So, please invest more and hire professional developer companies and improve it.	1	2024-07-18	negative	0.9994294047355652
711	2	mal	5	2024-07-16	negative	0.9996137022972108
712	2	It is not working at all	1	2024-07-16	negative	0.9997811913490297
713	2	The poorest mobile banking survice ever. Only error reports frequently	1	2024-07-16	negative	0.999705970287323
714	2	😞😞😞😞	1	2024-07-16	negative	0.6970566511154175
715	2	😡😡😡😡😡😡😡	1	2024-07-15	negative	0.6970566511154175
716	2	The worst banking app	1	2024-07-15	negative	0.9998050332069396
717	2	The app is constantly crashing and freezing when to send to BOA customers' accounts.	1	2024-07-15	negative	0.9988401532173156
718	2	No work app	5	2024-07-15	negative	0.9968982934951782
719	2	Is ok but stop sundenly	5	2024-07-15	positive	0.9309310913085938
720	2	🤷🤷🤷	3	2024-07-15	negative	0.6970566511154175
721	2	experienced	5	2024-07-14	positive	0.9950610995292664
722	2	Very poor app. Its Always cresh and not compatible	2	2024-07-13	negative	0.999818742275238
723	2	It's not functional at all. It keeps saying "error". Unable to activate.	1	2024-07-13	negative	0.9998112320899964
724	2	I can't believe that Abyssinia develop this kind of trash app it have a lot of issues 👎👎👎	1	2024-07-13	negative	0.998315453529358
725	2	The new app is very good	5	2024-07-13	positive	0.9998589754104614
726	2	It's very good but sometimes isn't work probably	5	2024-07-12	negative	0.9371032118797302
727	2	It doesn't work	1	2024-07-12	negative	0.9997813105583192
728	2	ጭራሽ አይነፋም	1	2024-07-12	negative	0.7850591540336609
729	2	This is the most stupid app I've seen, why would I turn off developer mode just because you can't make your app secure, this clearly indicates the app has very poor implementation and unskilled developers.. There are a lot of people who need developer option for different reasons. Please for the sake of the bank, fix this thing... Even the most secure international banking apps don't require it. Not to mention the lag and crashes	1	2024-07-12	negative	0.9997655749320984
730	2	The worst mobile banking app	1	2024-07-11	negative	0.9997923970222472
731	2	It is not fast	3	2024-07-11	negative	0.99720698595047
732	2	Useless	1	2024-07-11	negative	0.9997991919517516
733	2	The app keeps crashing it stops responding while I'm using it or trying to open the app. Now I have to go to the bank in person to do any banking activities. In short it is the worst mobile banking system in Ethiopia	1	2024-07-11	negative	0.9997914433479308
734	2	ሀየ	5	2024-07-10	negative	0.6970566511154175
735	2	Too late!	1	2024-07-10	negative	0.9988941550254822
736	2	No work	5	2024-07-10	negative	0.999386191368103
737	2	Pretty good for a banking app, it still lacks some things with in the ui and with the speed of the app but overall it's a good application. Thank you 5/5👍🏻	5	2024-07-09	positive	0.9995549321174622
738	2	After update it doesn't work well	2	2024-07-09	negative	0.9996452331542968
739	2	Error occurred try again for 5 days tele birr user not found ለራሴ አዝዤ	1	2024-07-08	negative	0.9983060359954834
740	2	Good but Very slow.	1	2024-07-08	positive	0.9877548813819884
741	2	Very good app	5	2024-07-07	positive	0.9998675584793092
742	2	It is so bad apps ,it doesn't work	1	2024-07-06	negative	0.9998026490211488
743	2	From now on I will never going to use this app,It is a trash app.No one care about this app from bank I will rate them 0/5.	1	2024-07-06	negative	0.9991281628608704
744	2	It usually crashes and unable to process also it request to off the developer options	1	2024-07-05	negative	0.9996892213821412
745	2	Miliyone.	5	2024-07-05	negative	0.9675788879394532
746	2	Workneh girmamo	5	2024-07-05	positive	0.9400009512901306
747	2	🙏🙏🙏	5	2024-07-05	negative	0.6970566511154175
748	2	I can't believe in this day and age, one of the major banks of the country can't seem to understand that having a working mobile payment option is a **MUST** to survive. I have decided to move my accounts to CBE and Awash because of this. Can't be bothered with this useless app.	1	2024-07-04	negative	0.9974097609519958
749	2	Is it even working these days? Please check it.	1	2024-07-04	positive	0.9892704486846924
750	2	The app is essentially unusable, it asks to disable developer mode even when it is already disabled and crashes, sometimes it only works with wifi and sometimes only with data, or it crashes just because.......	1	2024-07-04	negative	0.9995259046554564
751	2	Please make it functional.	5	2024-07-03	positive	0.9997920393943788
752	2	its best app but its don't working in poor connection area so	5	2024-07-03	negative	0.9705930948257446
753	2	Please Recover thank you	5	2024-07-02	positive	0.9997314810752868
755	2	the app used to run fine, but now it takes like forever to even open the main dashboard and sometimes it just crashes on its own. you guys gotta step it up. we need this app to be way faster	1	2024-06-27	negative	0.972609043121338
756	2	the underrated app I've ever seen and ur banking system is Soo Idiocracy	1	2024-06-27	negative	0.9977184534072876
757	2	It demands to disable developer option.	1	2024-06-27	negative	0.9994282126426696
758	2	It's been two months now, I cannot do any transaction using this app. It's really disappointing. I am using bank of Abyssinia currently because it's the nearest bank to my work place. The bank is turning to the worst bank in the country day by day. They always respond to customers that they are updating their system all year long, I think that's what they train their customer service operators to do.	1	2024-06-26	negative	0.999635934829712
759	2	Open Open service	5	2024-06-26	positive	0.9997770190238952
760	2	አፑ በጣም አስቸጋሪ ሆኗል	1	2024-06-25	negative	0.8616330027580261
761	2	Its not working.	1	2024-06-24	negative	0.9997856020927428
762	2	Riddled with crashes, cant use it anymore. Very frustrating!	1	2024-06-20	negative	0.9994331002235411
763	2	Always error occured. The worst app ever	1	2024-06-20	negative	0.9997997879981996
764	2	ከዚህ ትልቅ ባንክ የማይጠበቅ ድንዝዝዝዝ ያለ App.... ዛግግግ ነው ያረገኝ 😡😡😡	1	2024-06-20	negative	0.96113383769989
765	2	Excellent service	5	2024-06-19	positive	0.9998576641082764
766	2	It's not convenient	1	2024-06-17	negative	0.9998067021369934
767	2	meskelu Metku	5	2024-06-17	positive	0.8474319577217102
768	2	Verry nice	5	2024-06-17	positive	0.9997273087501526
769	2	It has become the most unreliable mibile banking app ever.	1	2024-06-16	negative	0.999081015586853
770	2	አኘልኬሽኑ በሁሉም ነገር ጥሩ ነዉ,ነገር ግን Network በጣም ነዉ እሚያስቸገረው	2	2024-06-13	negative	0.946504294872284
771	2	The poorest mobile banking I have seen in the industry. Is not stable to login and post transactions. Is not attractive. Error reports frequently.	5	2024-06-13	negative	0.9998160004615784
772	2	Really Bank	5	2024-06-12	positive	0.9820581078529358
773	2	I like the the bank of Abyssinia is the best first bank of Ethiopia	1	2024-06-11	positive	0.999809205532074
774	2	The app is not good need a few work	3	2024-06-11	negative	0.9997538924217224
775	2	The worst mob app i have ever seen. Slow, uncomfortable and stupid. It is better to learn from the best app (tele birr). The released updates is even worst.	1	2024-06-11	negative	0.9997610449790956
776	2	Unreliable, expensive service. Most of the time, it is not working. Sometimes, it will take more than a day to complete transactions and charges more for this unworthy service. I will not recommend this bank app to anyone.	1	2024-06-10	negative	0.9994435906410216
777	2	You are beutiful	5	2024-06-09	negative	0.8399403095245361
778	2	The best app	5	2024-06-06	positive	0.9998469352722168
779	2	አይሰራም አፑ ለምንድነው	1	2024-06-06	negative	0.8337253928184509
780	2	Awful	1	2024-06-06	negative	0.9997954964637756
781	2	Developer option to be off really	1	2024-06-06	negative	0.9903940558433532
782	2	Good app boa	5	2024-06-06	positive	0.999842882156372
783	2	I'm disappointed with the recent changes to this app. Disabling developer options for functionality seems unnecessary. The previous version offered a more user-friendly experience.	1	2024-06-06	negative	0.9997298121452332
784	2	Worest app, it cannot be downloaded	2	2024-06-05	negative	0.9979676604270936
785	2	😭😭😭😭😭😭😭	1	2024-06-05	negative	0.6970566511154175
786	2	slow only some times the wey it is veary nice app	5	2024-06-05	positive	0.9498576521873474
787	2	ok yes	5	2024-06-04	positive	0.9997628331184388
788	2	It's nice apps	1	2024-06-04	positive	0.999875545501709
789	2	Wow! what a disgrace for BOA. The app barely works. Too slow and always returns error.	1	2024-06-03	negative	0.9997871518135072
790	2	Excited by your service	5	2024-06-02	positive	0.9997963309288024
791	2	Kerfafa new	1	2024-06-01	positive	0.8148759007453918
792	2	ABDU MUDESR	2	2024-06-01	positive	0.7394685745239258
793	2	The worst mobile banking app! It doesn't load (seems like with the perfect WiFi and data connection it still manages to have network issues), when you finally get into the app, it makes it so hard more than it should be to send money.	1	2024-05-31	negative	0.9996273517608644
794	2	It is Good to save time 👌👌	3	2024-05-31	positive	0.9998168349266052
795	2	I'm sorry but what kind of stupid developer thinks the app will be faster if we disable "Developer mode"? I've never seen such degeneracy in my entire life, please get rid of this feature	1	2024-05-30	negative	0.9996848106384276
796	2	What is the purpose or point of not allowing to take a screenshot of the recipe after transferring???	1	2024-05-29	negative	0.9991626739501952
797	2	Ayseram	1	2024-05-28	negative	0.6560923457145691
798	2	Worst banking app ever	1	2024-05-28	negative	0.9997898936271667
799	2	not bad	1	2024-05-26	positive	0.9995881915092468
800	2	I can't use the app unless I turn off developer mode?? What kind of stupid rule is that?? The worst experience for a banking app!!	1	2024-05-26	negative	0.9998013377189636
801	3	መቸሸጠ	5	2025-06-03	negative	0.6970566511154175
802	3	gadaa	5	2025-06-01	negative	0.7211456894874573
803	3	Massive upgrade from the Amole app.	5	2025-05-31	positive	0.9646419882774352
804	3	very good for this app	5	2025-05-31	positive	0.9998138546943665
805	3	top	5	2025-05-31	positive	0.9997069239616394
806	3	this app better than Amole . but the biometric on new update doesn't work	4	2025-05-31	negative	0.999607503414154
807	3	wow to it saff and this app	5	2025-05-30	positive	0.998571276664734
808	3	it too slow	3	2025-05-29	negative	0.9996801614761353
809	3	ዳሽን ባንክ ይለያል	4	2025-05-28	negative	0.8337253928184509
810	3	real life changer	5	2025-05-28	positive	0.9997788071632384
811	3	nice application	5	2025-05-27	positive	0.9998229146003724
812	3	useless app ever loading take long	1	2025-05-27	negative	0.9997350573539734
813	3	Game changer app! Dashen Bank Super App is fast, secure, and easy to use. The three-click payment makes sending money super quick, and the QR code payment is perfect for cashless shopping. I also love the biometric login and easy airtime and bill payments. Everything I need is in one place. Dashen Bank has really raised the bar for digital banking in Ethiopia. Highly recommended!	5	2025-05-26	positive	0.999617338180542
814	3	very useful App	1	2025-05-26	positive	0.9995785355567932
877	3	It is the best application!!!	5	2025-04-22	positive	0.9998468160629272
1100	3	I loved it	5	2025-02-05	positive	0.9998809099197388
815	3	Simple, robust features? Yes, please! But the endless loading screen killed the fun—I couldn’t use it for days. Fix the glitch, and I’ll yeet a higher rating!	2	2025-05-26	negative	0.8351491689682007
816	3	Wawww	5	2025-05-24	negative	0.9418039321899414
817	3	it is good but some times says duplicate transaction why?	5	2025-05-24	negative	0.9836630821228028
818	3	very Nice	5	2025-05-23	positive	0.9998563528060912
819	3	its best	5	2025-05-23	positive	0.9998121857643129
820	3	it is not as good as to the other mobile bank app.	1	2025-05-22	negative	0.999786913394928
821	3	The best of best is now arrived **Empowering Your Financial Freedom** "Experience seamless banking at your fingertips with Dashen Bank. Empowering your financial freedom, anytime, anywhere!" **Innovation Meets Convenience** "Dashen Bank Mobile Banking: Where innovation meets convenience. **Secure and Reliable** "Bank with confidence	5	2025-05-22	positive	0.9996517896652222
822	3	Nothing is changed in the updated version. You have been collecting comments but where is the feed back you improved in this version. superapp is mot functioning today.	4	2025-05-20	negative	0.9939862489700316
823	3	The best app ever in finance sector	5	2025-05-18	positive	0.9998089671134948
824	3	Its good app than other compitators but it confuse when we transfer it needs OTP and PIN most user inter their pin instead of OTP we know the litrecy level of our society so if it is device based i dont know the needs of OTP so please try to fix	3	2025-05-18	negative	0.9983357787132264
825	3	dashen bank or dashen super app?	1	2025-05-17	negative	0.9937525391578674
826	3	wowwwe app	5	2025-05-17	positive	0.9829692244529724
827	3	Transferring to other bank accounts is a hastle and inconvenient .Get used to seeing " please try again "	2	2025-05-17	negative	0.9994332194328308
828	3	always lagging	1	2025-05-16	negative	0.9998013377189636
829	3	Amazing Application...	5	2025-05-16	positive	0.9998786449432372
830	3	Dashen bank app is very good, but sometimes it is not working well	5	2025-05-15	negative	0.9976341724395752
831	3	its my choice	5	2025-05-15	positive	0.9962010979652404
832	3	wow apo	5	2025-05-15	positive	0.99947851896286
833	3	awesome app keep going	5	2025-05-14	positive	0.9998502731323242
834	3	It grows ethiopian digital banking step ahead.All fetures in one,simple fast and convince.	5	2025-05-14	positive	0.9992207288742064
835	3	Game changer	5	2025-05-13	positive	0.988757073879242
836	3	Totally amazing	5	2025-05-13	positive	0.9998782873153688
837	3	super 😎	5	2025-05-13	positive	0.9331682920455932
838	3	what a helpful app!!!!	5	2025-05-13	positive	0.9990901947021484
839	3	To be honest, best banking and lifestyle app in Ethiopia.	5	2025-05-12	positive	0.9997262358665466
840	3	fast	5	2025-05-12	positive	0.9989494681358336
841	3	A must have, seamless, all in one digital platform "DB Superapp"! Keep living your motto "Always one step ahead"	5	2025-05-12	positive	0.9966461062431335
842	3	This App makes digital banking effortless and convenient. User-friendly interface, secure transactions, and excellent features for managing finances efficiently.	4	2025-05-10	positive	0.9991555213928224
843	3	Amazing app super easy to use and best design. loved it.	5	2025-05-09	positive	0.9998630285263062
844	3	its the best ever	5	2025-05-09	positive	0.9998552799224854
845	3	excellent game changer App	5	2025-05-08	positive	0.9998358488082886
846	3	I am highly excited by using this application and it is the most favorable as well as preferrable mobile app.	5	2025-05-03	positive	0.9995176792144777
847	3	it seems me logging out within minutes	1	2025-05-03	negative	0.9982207417488098
848	3	nice app especially GUI and I have got some error when you send within dashen bank the receipter is not get SMS notification	4	2025-05-03	negative	0.985798954963684
849	3	yes i want dashen super open	5	2025-05-02	positive	0.999435007572174
850	3	Best App	5	2025-05-02	positive	0.999686598777771
851	3	faster than this version	5	2025-05-01	positive	0.9991979002952576
852	3	Best UI mobile banking app, props to design team	5	2025-04-30	positive	0.9991565942764282
853	3	bad.	1	2025-04-30	negative	0.9997698664665222
854	3	Dashen bank always one step ahead	5	2025-04-30	positive	0.9996015429496764
855	3	dashen super app is secure band very easy	5	2025-04-29	positive	0.9899651408195496
856	3	It is very fast and secured mobile banking app! I like this app!	5	2025-04-29	positive	0.9995939135551452
857	3	best app I have ever seen	5	2025-04-29	positive	0.9996102452278136
858	3	best of best	5	2025-04-29	positive	0.9997496008872986
859	3	Its slow when i try to see the Recent Transaction and stucked	1	2025-04-28	negative	0.9992387294769288
860	3	wowslnwoooo wowwww amazing !!!!!!!!	5	2025-04-28	positive	0.999722182750702
861	3	wow appl	5	2025-04-28	positive	0.9994691014289856
862	3	why do i have to change a pin number i use my finger print so dummy	1	2025-04-27	negative	0.9994646906852722
863	3	pis	4	2025-04-26	positive	0.7033302783966064
864	3	It is one of the best app ever use it and do it	5	2025-04-26	positive	0.9997931122779846
865	3	It is very slow and it lacks many features to be a super app. High rating is given by their employees, not by the customers.	1	2025-04-25	negative	0.9997708201408386
866	3	Smooth and secure experience transfers, bill payments, and tracking expenses are all effortless. The intuitive design makes banking on the go.	5	2025-04-24	positive	0.9996446371078492
867	3	Very easy and Fast.	5	2025-04-24	positive	0.9995487332344056
868	3	Incomparably user-friendly and fast app for mobile banking.	5	2025-04-24	negative	0.9392756819725036
869	3	there is nothing super about this app, repeatedly failed transaction and wastes customer valuable time. if you have to do system upgrade do it at a time when there is less traffic demand. your Technical difficulty should not be reflected on customer.	2	2025-04-24	negative	0.9993688464164734
870	3	execellent	5	2025-04-24	negative	0.9866806864738464
871	3	This super app is a total game-changer—fast, reliable, and packed with everything I need in one place. It’s seamless and super convenient. Love it!"	5	2025-04-23	positive	0.9998038411140442
872	3	All in One ✍️secure ✍️reliable ✍️convenient. Digital banking game changer!!	5	2025-04-23	negative	0.7598538994789124
873	3	it is incredible product.	5	2025-04-23	positive	0.9998867511749268
874	3	I'm really impressed with this app! It’s user-friendly, runs smoothly, and has all the features I need. Makes my tasks so much easier and saves me a lot of time. Highly recommended!	5	2025-04-23	positive	0.9997783303260804
875	3	It's an amazing app, experience it!!	5	2025-04-23	positive	0.9998760223388672
876	3	This is the best banking app ever. I recommend everyone to use it.	5	2025-04-23	positive	0.9997599720954896
878	3	Exceptional digital experience, SupperApp will bring new paradigm shift in the banking business. Bravo Dashen keep it up!!!!	5	2025-04-22	positive	0.9998323917388916
879	3	its features are so dynamic	5	2025-04-22	positive	0.999643087387085
880	3	fast &Friendly user Application.	5	2025-04-22	positive	0.9993237257003784
881	3	Fast, Reliable and User Friendly. Keep it Up	5	2025-04-22	positive	0.9997664093971252
882	3	#dashen super app is easy to use, secure & fast transaction😍	5	2025-04-22	positive	0.9874821901321412
883	3	i love this app esp 3 click that make e-commerce easier and convinient.	5	2025-04-22	positive	0.9995126724243164
884	3	Dashen Super App contains extended selections for customers and can be easily accessible and also friendly to use.	5	2025-04-22	positive	0.9990369081497192
885	3	Great for everyday banking and payments on the go	5	2025-04-22	positive	0.9998255372047424
886	3	"Dashen Super App'' is impressive with its focus on simplicity, speed, and quality. The user interface is clean and easy to understand. Transactions process quickly, and the overall quality of the app is top-notch. A must-have for Dashen Bank customers. ዳሸን ባንክ አንድ እርምጃ ቀዳሚ።	5	2025-04-22	positive	0.9997794032096864
887	3	making transactions has never been easier. the new update is just amazing	5	2025-04-22	positive	0.9998310804367064
888	3	The app has various usefull functions, which make easy the payment system. Also, it will connect with sellers having reasonable prices.	5	2025-04-22	positive	0.9850903749465942
889	3	The app has great user interface with comprehensive payments and E-commerce platforms. And also it includes unique features such as chat Banking and budget.	5	2025-04-22	positive	0.999284565448761
890	3	betam mirt Ena betam le atikakem kelel Yale Ena michu application nw	5	2025-04-22	negative	0.9886249303817748
891	3	Convenient!	5	2025-04-22	positive	0.9936902523040771
892	3	It is an amazing application that meets the needs of customers.	5	2025-04-22	positive	0.999864935874939
893	3	Effecting payment via the app has created convenience to the recipients in easily confirming the payments received!	5	2025-04-22	positive	0.9731149673461914
894	3	the best Supper App ever	5	2025-04-22	positive	0.999849796295166
895	3	This is the best app ever, when is it planned to include digital lending and gasification?	5	2025-04-22	positive	0.9990382194519044
896	3	A powerful, local solution that rivals any global app. I love how easy it is to explore services and products.	5	2025-04-22	positive	0.999815046787262
897	3	Dashen bank is my number one choice	5	2025-04-22	positive	0.9996331930160522
898	3	Assefa Genetu = Dashen superup is the latest and inclussive .I am happy with this super up.	5	2025-04-22	positive	0.9994714856147766
899	3	The App is incredibly user-friendly and brings multiple services into one place. It's fast, intuitive, and makes daily tasks super convenient. A true all-in-one solution!	5	2025-04-21	positive	0.9991614818572998
900	3	Proudly made in Ethiopia, this innovation delivers more than promised. The marketplace is a major boost for local commerce	5	2025-04-21	positive	0.9998248219490052
901	3	it so fanrastic and user friendly app. Bravo Dashen bank thanks.	5	2025-04-21	positive	0.9990429282188416
902	3	one of the best digital platforms I've used! from smooth transactions to a seamless shopping experience, highly recommended.	5	2025-04-21	positive	0.9997945427894592
903	3	A proudly Ethiopia innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers bnd sellers	5	2025-04-21	positive	0.9997891783714294
904	3	Dashen Super App is a game-changer! It’s fast, user-friendly, and packed with features that make everyday banking and transactions super convenient. I love how everything I need from mobile banking to utility payments is all in one place. The interface is clean, and everything works smoothly. Definitely one of the best apps out there. Highly recommended!	5	2025-04-21	positive	0.9998010993003844
905	3	Easy to use and has many options. It is the best financial app I have ever used.	5	2025-04-21	positive	0.9997546076774596
906	3	Highly impressed! Dash Bank really nailed it with this app. Secure, reliable, and packed with features I use daily	5	2025-04-21	positive	0.9998537302017212
907	3	One of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experience, Highly recommended	5	2025-04-21	positive	0.9997860789299012
908	3	This app has everything I was looking for, dashen is becoming a grandmaster.	5	2025-04-21	positive	0.9995651841163636
909	3	Very convenient	5	2025-04-21	positive	0.9988445043563844
910	3	The user experience is seamless, and everything just works perfectly right out of the box. I can’t believe how much time and effort it saves me every day.	5	2025-04-21	positive	0.9997797608375548
911	3	wawwwww what nice super app !!keep it up dashen bank !!	5	2025-04-21	positive	0.9991359114646912
912	3	Dashen SuperApp the ultimate all-in-one solution! From banking and shopping to bill payments, everything you need is right at your fingertips. Life just got a whole lot easier!	5	2025-04-21	positive	0.9991750121116638
913	3	It is,really super because of its unique offerings to individuals and businesses.It is a secure UX first app intended to cater comprehensive digital meeds.I am also happy to know that Dashen is considering to make the app more inclusive by lowering the mobile version requirements .	5	2025-04-21	positive	0.9995538592338562
914	3	the very easy, secured, fast and multifunctional dashen supper application I ever seen. dashen really one steps ahead!!!	5	2025-04-21	positive	0.99827241897583
915	3	One app for everything! I can shop, manage my bank account , and do so much more . Truly a super app	5	2025-04-21	positive	0.9994187355041504
916	3	one of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experie	5	2025-04-21	positive	0.9995588660240172
917	3	Dashen Bank super App is the most suitable, reliable, and fast digital banking system.	5	2025-04-21	positive	0.9992392063140868
918	3	Excellent app.	5	2025-04-21	positive	0.99984610080719
919	3	This is what we call banking app. As professional I want banking app as simple as this and an app rich of features that align with my lifestyle.	5	2025-04-21	positive	0.9991500377655028
920	3	thanks again	5	2025-04-21	positive	0.9998217225074768
921	3	Super Easy To Use and Fast Transaction.	5	2025-04-21	positive	0.996877908706665
922	3	I have an incredible experience with Dashen super app, what an amazing platform is it?. keep pioneering in technological advancement 👏👏👏	5	2025-04-21	positive	0.999527096748352
962	3	All-in-one convenience, From managing accounts to paying bills and shopping online and the chat banking is game changer, this app does it all seamlessly.	5	2025-04-21	positive	0.9981800317764282
963	3	I appreciate that Dashen Bank takes lifestyle services into account.	5	2025-04-21	positive	0.9980393052101136
923	3	i can't recommend the Dashen Super App enough! This app is truly a game changer for anyone looking for a seamless and efficient way to manage their daily life. It combines multiple essential services into one easy-to-use platform, saving time and simplifying tasks The user interface is modern, intuitive, and super responsive, making navigation a breeze. Whether it's banking, payment services, or accessing lifestyle features, everything is just a few clicks away!!	5	2025-04-21	positive	0.9953939914703368
924	3	The app is incredibly handy for managing multiple financial tasks, from bill payments to managing budgets. It’s saved me a lot of time and made banking way more convenient. Definitely worth checking out!	5	2025-04-21	positive	0.9982413053512572
925	3	what an App	5	2025-04-21	positive	0.9938238859176636
926	3	The new e-commerce feature is incredibly amazing and user friendly.	5	2025-04-21	positive	0.9998598098754884
927	3	dashen bank supper app is the most easy to use and have high speed,quality and I like features like chat,budget,fuel payment, and security for my opinion this product is techonolgy edge,this international standard thanks for product oweners (dashen bank)	3	2025-04-21	positive	0.9974797368049622
928	3	The Dashen supperapp is a revolutionary advancement in digital banking, combining exceptional usability, an intuitive interface and a seamless user experience. among its standout features are the integration of QR codes, account statement, transaction advise, chat, transaction authentication for limit thresholds, budgeting and different app in a single dashboard. Truly ahead of the curve ..... keep up the excellent work 🤝👏	5	2025-04-21	positive	0.9997472167015076
929	3	A proudly Ethiopian innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers and sellers. Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants!	5	2025-04-21	positive	0.9998795986175536
930	3	Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants.	5	2025-04-21	positive	0.9998557567596436
931	3	Dashen Bank Super App is fast, reliable, and super easy to use. All my banking needs are handled smoothly in one place. Clean design and seamless experience – highly recommended!	5	2025-04-21	positive	0.9997962117195128
932	3	Db sup app is A platform or an application that can grasp more satisfactions through fastest mode of operation which means for budget planning, to use QR code(scan, pay, go) chat with staff, acc to acc other bank ft, merchant payment, and easly. I addition to i satisfied and i invite everyone to use those platform!!.	5	2025-04-21	positive	0.8947901129722595
933	3	the chat banking and unique and only app that alow money request!!	5	2025-04-21	negative	0.9822685718536376
934	3	Better and inclusive app!	5	2025-04-21	positive	0.999285876750946
935	3	Amazing Application	5	2025-04-21	positive	0.9998698234558104
936	3	It keep my time to pay my bills and I generate my satment easily	5	2025-04-21	positive	0.996675968170166
937	3	It's an amazing app that is up-to-date with the times, wow wow	5	2025-04-21	positive	0.999868392944336
938	3	A game-changing Ethiopian innovation—where shopping meets opportunity. The marketplace feature connects buyers and sellers like never before.	5	2025-04-21	positive	0.9993858337402344
939	3	Dashen Super App isn’t just an app — it’s an experience. Effortless, powerful, and built for the future	5	2025-04-21	positive	0.9997283816337584
940	3	This Is An Amazing App with Uniqe Quality,Easy And Fast Mobile Banking App.	5	2025-04-21	positive	0.9997382760047911
941	3	Dashen SuperApp is a lifesaver! Banking, shopping, and bills in one super easy app. The new e-commerce feature is awesome and supports local merchants. Fast, secure, and proudly Ethiopian.Download it now—you won’t regret it!	5	2025-04-21	positive	0.9996484518051147
942	3	Dashen SuperApp blends finance, shopping, and daily services effortlessly. The new e-commerce feature is smooth and supports local merchants—proud to back an Ethiopian-made solution!	5	2025-04-21	positive	0.9998247027397156
943	3	A solid step forward by Dashen Bank. The SuperApp combines essential banking features with lifestyle services, making everything accessible in one place. The interface is smooth, and transactions are quick and reliable. It’s clear a lot of thought went into the design and functionality. Great job!	5	2025-04-21	positive	0.9998260140419006
944	3	Dashen bank super app is the crucial and convenient app in Ethiopia. there is no other app to compare with Dashen bank super app	5	2025-04-21	positive	0.9817668795585632
945	3	All-in-one finance & e-commerce super app! Pay, save, shop seamlessly. Fast, secure. #BankAndShop	5	2025-04-21	positive	0.9943593144416808
946	3	it's a hestorical app. in the bank industry.	5	2025-04-21	negative	0.9915915727615356
947	3	A game changer in Ethiopian digital banking fast, secure, and packed with services. Everything you need, all in one powerful app. A true leap toward financial convenience and innovation!	4	2025-04-21	positive	0.9996839761734008
948	3	easy &,simple to use	5	2025-04-21	positive	0.9968307614326476
949	3	Banking, but make it smart. Local solutions, all in one place. Smooth, fast, and actually saving time. Feels like the future. Love it!	5	2025-04-21	positive	0.999881148338318
950	3	All in one, that is it 👌	5	2025-04-21	positive	0.8945449590682983
951	3	, Dashen Bank Supper App is multipurpose, convenient, very attractive and Make life easier	5	2025-04-21	positive	0.9995104074478148
952	3	very easy and flexible app.	5	2025-04-21	positive	0.9997106194496156
953	3	I choose Dashen Bank Super Up since, it is easy to use & it has attractive features !	5	2025-04-21	positive	0.9998281002044678
954	3	dashen super app is simple faster and reliable.	5	2025-04-21	positive	0.999518632888794
955	3	Dashen Bank Super App is a game-changer! The user-friendly design, wide range of services, and smooth performance make it incredibly convenient for everyday banking. It’s fast, secure, and truly reflects the bank’s commitment to digital excellence. Highly recommended!	5	2025-04-21	positive	0.999748170375824
956	3	The app keeps getting better with every update! Smooth performance, great UI, and top-notch security. Thank you for making banking so convenient!"	5	2025-04-21	positive	0.9995062351226808
957	3	this app is the most simply to use and secure safe i love it to use for any bank transaction	5	2025-04-21	positive	0.9964408278465272
958	3	After i download the app recently had a smooth expriance, its user friendly, fast, and everything works as expected. keep up the good work.	5	2025-04-21	positive	0.9997468590736388
959	3	An app with High performance and advanced features!	5	2025-04-21	positive	0.9995831847190856
960	3	It is a very user friendly, attractive user interface, full of useful features. I really encourage everyone to give it a try.	5	2025-04-21	positive	0.9997954964637756
961	3	Good actually , but it have to WORK when developer option is on 🙏	5	2025-04-21	negative	0.9746389389038086
964	3	keep it up!	5	2025-04-21	positive	0.9998477697372437
965	3	amazing app really i loved it .that's why we say dashen bank is one stap ahead. It's the best mobile application that should be on every phone.	5	2025-04-21	positive	0.9998038411140442
966	3	very comfortable app keep it	5	2025-04-21	positive	0.999691367149353
967	3	it has clear detail information about the application so it helps customer how to use the app. and it is very easy to use and also app is secure.	5	2025-04-21	positive	0.999531626701355
968	3	I have been using the Dashen Supper app mobile banking app , and overall, I appreciate its features.However,I’ve noticed that when I turn on the developer options on my device, the app stops functioning properly. It would be great if you could look into this issue, as I often need to access developer settings for other applications . Thank you for your attention to this matter!	5	2025-04-21	negative	0.9068740606307985
969	3	easiness to use with fast response time	5	2025-04-21	negative	0.964725911617279
970	3	The new mobile banking application is a major upgrade! It’s incredibly user-friendly, with a clean and modern design that makes navigation simple and intuitive. I really appreciate how fast it loads and how smooth the overall experience is. All essential services like balance checks, transfers, and bill payments are eas y to find and use. The added security features give me peace of mind, and the app runs reliably without crashes or glitches. It’s clear a lot of thought went into the user experi	5	2025-04-21	positive	0.9992745518684388
971	3	As an Internal Customer, Dashen Bank SuperApp has greatly simplified my online banking experience. It's easy to use, allowing me to quickly check balances, transfer money and pay Bills. The app's advanced security features are highly secure, ensuring my data is well protected. The Three click, Chat Banking and IPS features have also given me a smarter experience. In deed Dashen Bank is always steping ahead!	5	2025-04-21	positive	0.9990044236183168
972	3	A truly impressive app — user-friendly and a game-changer in Ethiopian banking. The Dashen Super App stands out as one of the most innovative and convenient digital banking solutions in Ethiopia’s financial history. Smooth navigation, seamless features, and a wide range of services all in one place. Well done!	5	2025-04-21	positive	0.9998193383216858
973	3	dashen bank super up has very fast and convenience and also it has contain more things on one app .I am very interesting to use dashen bank super up	5	2025-04-21	positive	0.9974090456962584
974	3	The Dashen Bank Super App has truly elevated my mobile banking experience. It's fast, user-friendly, and packed with all the essential features. The interface is clean and intuitive, making navigation easy even for first-time users. I also appreciate the added security features that give me peace of mind while banking on the go. Dashen Bank has done an amazing job with this app—it’s reliable, efficient, and always improving. Highly recommended for anyone looking for seamless digital banking!	5	2025-04-21	positive	0.9998351335525512
975	3	A fantastic product!! keep the good work.	5	2025-04-21	positive	0.9998842477798462
976	3	I am very impressed with the Dashen super app. It is user-friendly and operates efficiently. The budget and chatbot features are impressive, and all items can be purchased with just three clicks.	5	2025-04-21	positive	0.9998030066490172
977	3	The Dashen Super App offers a quick and user-friendly experience, bringing together a variety of services, like budgeting, payments, airtime recharges, and more, all in one convenient platform. Its sleek design and intuitive navigation ensure effortless transactions. It's evident that Dashen Bank has carefully crafted the app to make everyday financial activities easier. A great choice for anyone aiming to streamline their digital routines!	5	2025-04-21	positive	0.999062716960907
978	3	Dashen supper App is the most useful app for our customers	5	2025-04-21	positive	0.9988586902618408
979	3	it is the most amazing mobile app	5	2025-04-21	positive	0.9998717308044434
980	3	A Good and fast supper app thanks for dashen bank	5	2025-04-21	positive	0.999788463115692
981	3	Dear Users of the Dashen Bank Super App,I have been using the Dashen Bank Super App for a while now, and I must say—it’s truly a game-changer! The app is incredibly fast and reliable; I’ve never encountered any delays with my transactions. One feature I absolutely love is Chat Banking. It makes everyday tasks like checking my balance or transferring money as simple as sending a quick message. Also, the budgeting tool has been a huge help in tracking my spending and giving me a clearer	5	2025-04-21	positive	0.9993189573287964
982	3	Too best	1	2025-04-21	positive	0.8775476813316345
983	3	Dashen Bank Super Up,use the app and makes your easy,fast,convinent.	5	2025-04-21	positive	0.9985912442207336
984	3	To join digital world use supper app and make your life easy	5	2025-04-21	positive	0.987091064453125
985	3	best mobile banking application	5	2025-04-21	positive	0.9996380805969238
986	3	This banking superapp is incredibly well designed. The design and appearance of the app and the overall experience I have when using the app is fantastic. The app is packed with features from banking to e-commerce all in one place.It even has a budget setting option which is super useful for managing my money. Everything runs smoothly and I love how convenient it has made my daily life. Huge Kudos to Dashen Bank. You are truly living up to the motto ''Always one step ahead." Keep it up!	5	2025-04-21	positive	0.9998156428337096
987	3	I was really amazed by the idea of an e-commerce service on a banking app. This is what it means to be one step ahead. Please include all kinds of products in there as soon as possible.	5	2025-04-21	positive	0.9981945157051086
988	3	this is what we expect to get service Dashen Bank always like his slogan	5	2025-04-21	negative	0.883536159992218
989	3	Dashen SupApp is the most contemporary application, offering a great experience by enabling users to perform multiple tasks through a single platform—such as chatting with friends, transferring money, paying bills, and more. It is the first app of its kind in the Ethiopian banking industry, making it a remarkable opportunity for entrepreneurs working in app-based sales and software marketing. Good job, Dashen Bank!	5	2025-04-21	positive	0.9997934699058532
990	3	Dashen Super App gives me an amazing convenience and makes life easy.	5	2025-04-21	positive	0.999823272228241
991	3	excellent mobile banking app	5	2025-04-21	positive	0.9998179078102112
992	3	Wow! like his name Super App...	5	2025-04-21	positive	0.9985873699188232
993	3	Dashen supper app is the most special. ይምቾቱ ይለያያል!!!!	5	2025-04-21	positive	0.9926958084106444
994	3	convenient and fast	5	2025-04-21	positive	0.9996170997619628
995	3	Best- in-class app.	5	2025-04-21	positive	0.999584972858429
996	3	I really like this amazing application and Dashen Supper app that has made my life easier.	5	2025-04-21	positive	0.9997171759605408
997	3	Superb	5	2025-04-21	positive	0.9998656511306764
998	3	amazing features, faster and easy to use	5	2025-04-21	positive	0.9998817443847656
1097	3	Good app, bad security	3	2025-02-06	positive	0.989300549030304
999	3	The Dashen Super App offers a modern, user-friendly experience that leverages the latest technological advancements to deliver a seamless e-commerce platform	5	2025-04-21	positive	0.999481737613678
1000	3	Best App!	5	2025-04-21	positive	0.9997498393058776
1001	3	I love it. one of the best mobile banking app in the banking industry	5	2025-04-21	positive	0.999868392944336
1002	3	I love this app	5	2025-04-21	positive	0.9998608827590942
1003	3	no working for me hulum information asgebiche continue or accept yemilew button ayeseram my phone is Samsung A51	1	2025-04-21	negative	0.9980541467666626
1004	3	waw no idea the best app.	5	2025-04-19	negative	0.9923464059829712
1005	3	fast best app	5	2025-04-19	positive	0.999737560749054
1006	3	Nice App	5	2025-04-18	positive	0.9998061060905457
1007	3	nice app ever	5	2025-04-17	positive	0.9998384714126588
1008	3	very disappointing app. Closes frequently and unstable in function	2	2025-04-17	negative	0.9997677206993104
1009	3	Feature-rich? Absolutely. But the speed? Painfully slow. Seriously, is it communicating with a server on Mars or something?	5	2025-04-16	negative	0.9992289543151855
1010	3	nic app	5	2025-04-16	positive	0.9797857403755188
1011	3	The Dashen Super App delivers a remarkably fast, highly secure, and exceptionally user-friendly experience, establishing it as a leading application in its category.keep it up and stay ahead Dashen Bank.	5	2025-04-14	positive	0.99978905916214
1012	3	So far so good! their in person customer service is amazing 👏	5	2025-04-14	positive	0.9998642206192015
1013	3	The app is very backward and doesn't always work. If it works three hours out of 24 hours it's great!😥	1	2025-04-14	negative	0.9958034157752992
1014	3	ምርጫዬ ነው	5	2025-04-13	negative	0.7850591540336609
1015	3	It's bad for the connection and too many days are it that not working	1	2025-04-12	negative	0.9996840953826904
1016	3	it's samart	5	2025-04-10	positive	0.9992457628250122
1017	3	The app is not working properly, I have been using it.	1	2025-04-10	negative	0.999715268611908
1018	3	I had a disappointing experience with Dashen Bank's Super Up service. The app is very slow and takes forever to load during transactions, which is incredibly frustrating. Additionally, it doesn't generate receipts for any transactions, making it difficult to keep track of my expenses. I also reached out to customer support, but the response time was longer than expected. Overall, I was hoping for a better experience, but I find the service lacking and in need of improvement.	2	2025-04-09	negative	0.9996039271354676
1019	3	slow cumbersome	3	2025-04-08	negative	0.9997989535331726
1020	3	Is really 💀	2	2025-04-08	positive	0.9858712553977966
1021	3	It's slow to send OTP. it's not reliable. It crushed many times. It needs improvement in many ways	1	2025-04-07	negative	0.9997294545173644
1022	3	This is the worst mobile banking experience I’ve ever had. It doesn’t work when you need it, and it randomly updates itself without warning. You can’t make transactions whenever you want. It’s a nightmare for anyone who relies on this as their main banking option, especially those with a lot of money in their account. I’m lucky I’m not one of them, but still, it’s infuriating not being able to access your money when you need it."l	1	2025-04-07	negative	0.9996976852416992
1023	3	I have experienced on using the app of Banks in Ethiopia, this Dashen sup is like old version of the applications for using. I gave 3 star for it's very low speed while login and processing	3	2025-04-07	negative	0.9981010556221008
1024	3	proud by dashen bank	5	2025-04-06	positive	0.9998666048049928
1025	3	This app is not working unless you turn off developer mode on your phone. So it takes your rights to just use it.	2	2025-04-04	negative	0.9994447827339172
1026	3	real super up	5	2025-04-04	positive	0.9998282194137572
1027	3	it's very disappointing fix it as soon as possible not expected from dashin bank fix it	1	2025-04-04	negative	0.99936181306839
1028	3	why dashen bank workers hidden my ATM Card 🏧?it's a big problem to me	5	2025-04-04	negative	0.999297022819519
1029	3	tanku	5	2025-04-04	negative	0.91596519947052
1030	3	goood	5	2025-04-02	negative	0.9943867921829224
1031	3	why does it ask me for both pin and opt even the opt is touch let alone both	2	2025-04-02	negative	0.9958769083023072
1032	3	it is best app easy to use	5	2025-04-01	positive	0.9864110350608826
1033	3	It is very easy to use and powerful application.	3	2025-04-01	positive	0.9997655749320984
1034	3	this apps have a good feature but but some features like developer mode turn off irritate user	3	2025-04-01	negative	0.997230589389801
1035	3	This is not only a mobile banking app, it is beyond that. We will access our account easily, we are able to get many information easily here. i.e. exchage rate. We are able to chat with others, we are able to budget, we are able to transfer to other bank and within Dashen. we are able to access many accounts in a single app, we are able to pay bills in QR scan, we are able to make payments and order delivery items here in a single app. #Always one step ahead.	5	2025-03-31	positive	0.9897825717926024
1036	3	wallahi very fantastic Bank	5	2025-03-31	positive	0.999818742275238
1037	3	Waw, It's amazing app. thank you Dashen Bank.	5	2025-03-31	positive	0.99986732006073
1038	3	I’ve been using the Dashen Bank Super App for a while now, and it’s been a game-changer. The app is super fast and reliable—I’ve never had an issue with transactions being delayed. One of my favorite features is the chat banking, which makes it so easy to do things like check my balance or transfer money just by typing a quick message. The budgeting tool is also really useful. It helps me keep track of my spending and gives me a clear picture of where	5	2025-03-28	positive	0.9992021918296814
1039	3	Very good app that like it too. B/c it is very fast and easy to use.	5	2025-03-26	positive	0.9998027682304382
1040	3	best experiences	5	2025-03-26	positive	0.9992781281471252
1041	3	too slow to use.	1	2025-03-26	negative	0.9997276663780212
1042	3	the worst app in the market only good ui	1	2025-03-22	negative	0.9997721314430236
1043	3	nic	5	2025-03-22	positive	0.9977141618728638
1044	3	በጣም ቅልል ያለ አፕ በርቱልን ለአጠቃቀም ምቹ	5	2025-03-22	negative	0.9200406670570374
1045	3	thanks for all digital transaction	5	2025-03-21	positive	0.9994550347328186
1046	3	This app is not supporting smart phones that have old android version and so it is none inclusive. At the same time the amole lite is not working properly and once you reached to maximum otp trail mistakes due to network or other errors like stacks , you will be tied up to make Transactions. Ohh... tired!!!!!	1	2025-03-20	negative	0.9997400641441344
1047	3	it's Be Come Busy &not working good	1	2025-03-20	negative	0.999382257461548
1098	3	On Transaction page only show sent Transaction. Try to include received transaction.	4	2025-02-06	negative	0.9956958293914796
1099	3	Wonderful Application 😍	5	2025-02-05	positive	0.9998589754104614
1048	3	I wanted to share some concerns about your Supper App. It appears to be experiencing reliability issues and isn’t performing as expected. I hope this can be addressed soon to improve the user experience. One star 🌟 for now.	1	2025-03-19	negative	0.9980534315109252
1049	3	best ever digital banking sector essay for understanding ,smart and convince for using	5	2025-03-19	positive	0.9997392296791076
1050	3	good and latest	5	2025-03-18	positive	0.9998561143875122
1051	3	The best App of all	5	2025-03-17	positive	0.9998633861541748
1052	3	Worst app ever	1	2025-03-15	negative	0.9997803568840028
1053	3	This app is the most unreliable mobile banking application I have ever used for transaction, it is very late, non-responsive and full of bugs. Its is very disappointing. It is just inconvinient, and not user friendly and compatabke at all !!!!!!	1	2025-03-14	negative	0.9997894167900084
1054	3	Naiycapp	5	2025-03-14	positive	0.8075171709060669
1055	3	The app is good but it has no USSD option	4	2025-03-13	negative	0.9952346682548524
1056	3	Hey great	5	2025-03-12	positive	0.999745786190033
1057	3	I have used many mobile banking and also tellebir and mpesa nothing come close to this app. Well done Dashen indeed one step a head. A lot of cool features that amole hasn't the receipt and the account statement is superb for me. I hope you add more integrated small apps to.	5	2025-03-12	positive	0.9984980821609496
1058	3	The app is good but it ask update every week so tiring	2	2025-03-11	negative	0.9951795339584352
1059	3	It good and easy to use	5	2025-03-11	positive	0.9998750686645508
1060	3	በጣም አሪፍ መተግበሪያ ነው ። አመሠግናለሁ ።	5	2025-03-10	negative	0.9200406670570374
1061	3	Greately improved since it was released! I really like the budget and expense tegistration feature. For ATM or POS withdrawals, it is not possible to account these expenses, even if it is visible on the transactions window. If that can be worked on, it will be improve so much!!	5	2025-03-10	positive	0.9655697345733644
1062	3	Wow Excellent app	5	2025-03-08	positive	0.9998443126678468
1063	3	Nice app but i experience some issues with others banks transfer it keeps saying account is not exist most of the time.	4	2025-03-08	negative	0.9983522891998292
1064	3	Add the option to send money to any telebirr account like amole does.	3	2025-03-08	negative	0.995681881904602
1065	3	It's best	5	2025-03-08	positive	0.999842643737793
1066	3	no one dashen yichlal	5	2025-03-07	negative	0.9842472076416016
1067	3	In short ! I'm so proud of this app developers for their highest professional of developing. Thanks	5	2025-03-06	positive	0.9998522996902466
1068	3	The speed is too slow. Need some improvements.	2	2025-03-06	negative	0.9997935891151428
1069	3	Fantastic app	5	2025-03-01	positive	0.999858856201172
1070	3	I wish dark mode feature is add as an option but it's good app	5	2025-02-27	positive	0.9998013377189636
1071	3	Super Up is the ultimate digital banking app, living up to its name with speed, efficiency, and innovation. Designed for a seamless experience, it offers lightning-fast transactions, top-tier security, and effortless financial management. With Super Up, banking has never been this smooth, smart, and super!	5	2025-02-26	positive	0.9995073080062866
1072	3	The Dashen Super App is a game-changer in digital banking, offering a seamless and convenient experience. With its user-friendly interface, fast transactions, and a wide range of financial services, it simplifies banking for customers. Features like bill payments, fund transfers, mobile top-ups, and loan applications make it an all-in-one solution. Plus, its security measures ensure safe and reliable Experiance effortless banking	5	2025-02-26	positive	0.9977291226387024
1073	3	ከጰነጨየጠ	2	2025-02-26	negative	0.6970566511154175
1074	3	It has good feature. But, it is Very Slow! difficult to pay or receive. The Speed should be improved, else I didn't recommend.	2	2025-02-24	negative	0.9960646033287048
1075	3	አፕልኬሽኑ አሪፍ ሆኖ ሳለ ቴሌብር ወደራስ ብቻ ለምን ሆነ እንደ ድሮው ለሰውም መላክ ቢቻል	4	2025-02-22	negative	0.9528433680534364
1076	3	No good	1	2025-02-22	negative	0.9996987581253052
1077	3	Wow amazing app	5	2025-02-21	positive	0.9998513460159302
1078	3	best platform... Please avoid otp	5	2025-02-21	positive	0.922895610332489
1079	3	Super smart app.	5	2025-02-18	positive	0.9997984766960144
1080	3	best 👍👍	5	2025-02-16	positive	0.9997019171714784
1081	3	I don't know what happens but the application is not send verification pass code you should fix that	1	2025-02-16	negative	0.9973721504211426
1082	3	This app doesn't work on my phone my phone is Samsung Galaxy s7 android version 9 All other financial apps work like telebirr CBE M_pesa...	1	2025-02-14	negative	0.9974337220191956
1083	3	Dashen Super app is secure, very easy to use and has more services uniquely like budgeting, chat, IPS...	5	2025-02-14	positive	0.9937819838523864
1084	3	Amazing and user friendly supper app and looking forward the additional features	5	2025-02-14	positive	0.9998486042022704
1085	3	it's amazing app i have seen ever	5	2025-02-13	positive	0.9998574256896972
1086	3	One star deducted for not to able to transfer to telebirr.	4	2025-02-13	negative	0.9903808236122132
1087	3	ጥሩ ነው ግን በደንብ ሊሸሻል ይገባል	4	2025-02-13	negative	0.904695212841034
1088	3	ፍጥነቱ በጣም አሪፍ ነው! እና ቀለል ያለ ነው ! ነገር ግን ተጨማሪ ወደ ቴሌብር ኤጀንት መላኪያ አፕ ቢካተትበት ጥሩ ነው::	4	2025-02-12	negative	0.9328107237815856
1089	3	Keep up the good work and pleas add water and electric utility payment	5	2025-02-12	positive	0.9986761212348938
1090	3	The app missed some important features 1. It does't show recent transactions 2. Transfer to Telebirr limited to own telebirr 3. The statement does't show running balance	2	2025-02-11	negative	0.9995891451835632
1091	3	Simple, Fast and Easy ⭐⭐⭐🎉	4	2025-02-10	positive	0.9996811151504515
1092	3	የሚገርም aplication ነው, ነገር ግን ብር ትራንስፈር ሲደረግ ያለ ፒን መሆኑ risk አለው ሁሉ ጊዜ የ ትራንስፈር መደምደሚያ ፒን መሆን አለበት!!!!!!!!!!!!:: አሱ ቢስተካከል 5 star አስከዛው ግን 4 ሰጥቻለው::	4	2025-02-09	negative	0.8565719723701477
1093	3	Baankii daashin baankii hudna galeessa galatoomaa isinii woliin jirra Godina jimmaa magaalaa Aggaaroo irraa Muaz Abamecha Abamilki	5	2025-02-07	negative	0.9961472749710084
1094	3	#Dashen Super App; Super easy to use, secure, and fast transaction. Love it!	5	2025-02-07	positive	0.99981027841568
1095	3	I tried the new Dash Bank Super App today, and it's amazingly easy and fun.I recommend you download and use it. You really like it	5	2025-02-06	positive	0.9998507499694824
1096	3	Gud app kegza ga mezmn endze new aind ermjh kedme nachu hlam	5	2025-02-06	negative	0.985221803188324
1101	3	አሁን ገና አንድ እርምጃ ቀደማችው	5	2025-02-04	negative	0.8832131028175354
1102	3	I am so thankful for having this best app Dashen one step ahead	5	2025-02-04	positive	0.999471127986908
1103	3	Not good this app	1	2025-02-04	negative	0.9997790455818176
1104	3	Excellent app ever but it needs improvement on speed and transaction lists	1	2025-02-03	negative	0.990936815738678
1105	3	It does not work functional ,	1	2025-02-02	negative	0.9997901320457458
1106	3	all of dashen bank customers use the application it is good to use	5	2025-02-01	positive	0.9958037734031676
1107	3	Gret experience	5	2025-02-01	negative	0.7600314617156982
1108	3	All good we need more	3	2025-01-31	positive	0.9996538162231444
1109	3	Dashen super app is easy to use, fast and robust	5	2025-01-31	positive	0.9997517466545104
1110	3	it was amazing app.....thank you dashen bank....	5	2025-01-30	positive	0.9998608827590942
1111	3	Dashen bank super app for easy life.	5	2025-01-30	positive	0.7723070979118347
1112	3	Excellent UI/UX and beyond Banking services👍👍	5	2025-01-30	positive	0.9995208978652954
1113	3	Send to oher bank የሚለዉ ዉስጥ ገብተን ወደ addisinternational bank ለመላክ አይሰራም ሁለተኛ ደግሞ ወደ cbe birr ለመላክ account number ይጠይቃል ሞባይል ነበር ነዉ መጠየቅ ያለበት ይመስለኛል	2	2025-01-29	negative	0.9945861101150512
1114	3	Just Wow	5	2025-01-29	positive	0.999775230884552
1115	3	mobile banking to the next level	5	2025-01-28	positive	0.9409878849983216
1116	3	The first 3 star review is me	3	2025-01-25	positive	0.9967767596244812
1117	3	Is not working	1	2025-01-25	negative	0.9997809529304504
1118	3	Fast, reliable and user friendly. Amazing chatting features. Keep it up! Always one step ahead!	5	2025-01-24	positive	0.9998725652694702
1119	3	V good ❗️	5	2025-01-24	positive	0.9993855953216552
1120	3	This app is literally the best thing ever The chat banking is so easy just text and it’s done Super smooth, fast, and honestly a life saverIf you haven’t downloaded it yet you’re missing out big time	5	2025-01-23	positive	0.9862456321716307
1121	3	I only see white page	2	2025-01-23	negative	0.9910238981246948
1122	3	Excellent banking app for all your needs! Who needs a physical branch when you can use Dashen Bank Super App Instead! I've never had an issue with anything that Dashen Bank Super App haven't handled swiftly and resolved to my satisfaction and above I don't often write reviews but this is an app/bank that I would highly recommended to everyone 💯 👌👍	5	2025-01-22	positive	0.9994206428527832
1123	3	Amizing Application 😍	5	2025-01-22	negative	0.9905142784118652
1124	3	Fastest and easy to use	5	2025-01-22	positive	0.9997114539146424
1125	3	ስም ብቻ 😏	2	2025-01-21	negative	0.8337253928184509
1126	3	Exellent app with exellent banking system and exellent bank ever	5	2025-01-21	negative	0.9579959511756896
1127	3	Amazing app to use as usual! But why option of transferring to Telebirr and M pesa which was available on Amole app is omitted?? Dasheen is my favourite keep it up.	4	2025-01-20	positive	0.9711758494377136
1128	3	Needs some improvement	5	2025-01-20	negative	0.998008668422699
1129	3	Amazing super app	5	2025-01-19	positive	0.9998658895492554
1130	3	I hope it will be better than amole	5	2025-01-18	positive	0.9969701766967772
1131	3	Wly Super App ilove it ❤️ 😍 💖 💕	5	2025-01-18	negative	0.9463616013526917
1132	3	Dashen yichalal. Ewnetem one step a head	5	2025-01-17	negative	0.983262538909912
1133	3	It has a Good performance but need more upgrade for more performance like when we login account not be fast balance show other thing looking good. Carry on. Thanks so much for Greatest service	4	2025-01-17	positive	0.9967933297157288
1134	3	It is a very wonderful work that has saved its time. That is why it is "Always one step ahead!"	5	2025-01-17	positive	0.99988055229187
1135	3	“Life-changing!” I can’t imagine going back to traditional banking after using this app. It’s so convenient.	5	2025-01-17	positive	0.9968047142028807
1136	3	Pro max	5	2025-01-17	positive	0.9984601736068726
1137	3	The most good app and easy	5	2025-01-16	positive	0.9998631477355956
1138	3	Excellent and user friendly App. Excellence is what makes you always one step ahead. Dashen Bank, Always One Step Ahead !!	5	2025-01-16	positive	0.9998682737350464
1139	3	Proud to be dashen family . Shout out to the serial entrepreneur 👏	5	2025-01-16	positive	0.9998549222946168
1140	3	First ATM in East africa ⭐️⭐️⭐️⭐️⭐️	5	2025-01-16	positive	0.9874703288078308
1141	3	Best app.	5	2025-01-16	positive	0.999774158000946
1142	3	Better Move to catch the competition up👍	5	2025-01-16	positive	0.9914566874504088
1143	3	Great job my home, my bank.	5	2025-01-16	positive	0.9998712539672852
1144	3	Always one step ahead! What a masterpiece.	5	2025-01-16	positive	0.9998708963394164
1145	3	Great App Well done Dashen Bank	5	2025-01-15	positive	0.9997735619544984
1146	3	Great!	5	2025-01-15	positive	0.9998692274093628
1147	3	I love it but it has bugs during confirmation of password! So, please make it functional	5	2025-01-15	positive	0.9805046916007996
1148	3	Always one step forward	5	2025-01-15	positive	0.999639630317688
1149	3	It's great! But it will be advanced if you include a caption that allow customers to transfer to Telebirr account. Dashen Bank, "ኩሉ ግዜ፡ ሓደ ስጕሚ ቀዳሚ።" (Always one step ahead!)	4	2025-01-15	positive	0.9995723366737366
1150	3	Small size with vast features and functionalities.	5	2025-01-15	positive	0.9981461763381958
1151	3	Amazing app 👏 👌 Dashen bank one step a head	5	2025-01-15	positive	0.9995114803314208
1152	3	It has a great application features from the beginning. I'm glad to use it even I haven't used it yet because I haven't activated my account yet. But it's simple, comprehensive, full of information, and fast. በርቱ ዳሸኖች: The super app has impressed me more than I expected.	5	2025-01-15	positive	0.999612033367157
1153	3	Dashen Bank Always One Step Ahead!	5	2025-01-15	positive	0.9996882677078248
1154	3	U can't create account	1	2025-01-15	negative	0.9984429478645324
1155	3	Really super app... so seamless and with a nice user interface .. we are proud of you dashen bank ...	5	2025-01-15	positive	0.9998613595962524
1156	3	We will see it	2	2025-01-15	positive	0.9998630285263062
1157	3	Always one step a head!	5	2025-01-15	positive	0.9981322884559632
1158	3	A lightweight,catchy and smooth app	5	2025-01-15	positive	0.998709201812744
1159	3	Very impressive interface with best security feature and user friendly app.	5	2025-01-15	positive	0.9997988343238832
1160	3	It is so far so good it has a unique features than telebirr good job Dashen	5	2025-01-15	positive	0.9998282194137572
1161	3	Yea , it's a good idea to make it with the bank name, it will help for the bank easily to find the application, and customers can easily downloed and use the product. I wish all the best for Dashen bank initiative.	5	2025-01-15	positive	0.7550334930419922
1162	3	This is My Bank!	5	2025-01-15	positive	0.9968095421791076
1163	3	Truly, db => AlwaysOneStepAhead !!	5	2025-01-14	negative	0.9989049434661864
1164	3	ALWAYS ONE STEP AHEAD	5	2025-01-14	positive	0.9997699856758118
1165	3	Well developed	5	2025-01-14	positive	0.9998576641082764
1166	3	oh nice!!! i wish it's very nice app	5	2025-01-14	positive	0.9996349811553956
1167	3	Really the app looks like amazing. I can't wait to activate in the morning.	5	2025-01-14	positive	0.9997010827064514
1168	3	Applause 👏 Dashen Bank. One of the best super app inorder to pay easily and securely. One step a head.	5	2025-01-14	positive	0.9996860027313232
1169	3	Wow Dashen Super App 🚀🚀	5	2025-01-14	positive	0.9978638291358948
1170	3	All in One	5	2025-01-14	positive	0.9988051652908324
1171	3	The best Banking app I have ever seen	5	2025-01-14	positive	0.9997634291648864
1172	3	It looks good and simple to use	5	2025-01-14	positive	0.9998189806938172
1173	3	App That makes Difference!	5	2025-01-14	positive	0.9998338222503662
1174	3	Faster and userfriendly	5	2025-01-14	positive	0.9199283123016356
1175	3	Waw Great and innovated,user friendly, always one step ahead	5	2025-01-13	positive	0.999778687953949
1176	3	It's Best waww 🙏	5	2025-01-13	positive	0.999744474887848
1177	3	Always one step ahead	5	2025-01-13	positive	0.9997699856758118
1178	3	Like Me, I Hope It Works Better Than Before.	5	2025-01-11	positive	0.99872225522995
\.


--
-- Name: banks_bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banks_bank_id_seq', 3, true);


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 1178, true);


--
-- Name: banks banks_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_name_key UNIQUE (name);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (bank_id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- Name: reviews reviews_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.banks(bank_id);


--
-- PostgreSQL database dump complete
--

