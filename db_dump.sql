--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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
-- Name: preguntas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preguntas (
    id integer NOT NULL,
    texto text NOT NULL,
    categoria character varying(50)
);


ALTER TABLE public.preguntas OWNER TO postgres;

--
-- Name: preguntas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preguntas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.preguntas_id_seq OWNER TO postgres;

--
-- Name: preguntas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preguntas_id_seq OWNED BY public.preguntas.id;


--
-- Name: respuestas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.respuestas (
    id integer NOT NULL,
    pregunta_id integer NOT NULL,
    texto text NOT NULL,
    es_correcta boolean DEFAULT false NOT NULL
);


ALTER TABLE public.respuestas OWNER TO postgres;

--
-- Name: respuestas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.respuestas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.respuestas_id_seq OWNER TO postgres;

--
-- Name: respuestas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.respuestas_id_seq OWNED BY public.respuestas.id;


--
-- Name: preguntas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas ALTER COLUMN id SET DEFAULT nextval('public.preguntas_id_seq'::regclass);


--
-- Name: respuestas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas ALTER COLUMN id SET DEFAULT nextval('public.respuestas_id_seq'::regclass);


--
-- Data for Name: preguntas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preguntas (id, texto, categoria) FROM stdin;
1	┬┐Cu├íl es la distancia m├¡nima recomendada entre el pecho y el panel de instrumentos para el pasajero delantero?	Safety
2	┬┐Cu├íl es la distancia m├¡nima recomendada entre el pecho y el panel de instrumentos para el pasajero delantero?	Safety
3	┬┐Cu├íl es la distancia m├¡nima recomendada entre el pecho y el panel de instrumentos para el pasajero delantero?	Safety
4	┬┐Cu├íl es la distancia m├¡nima recomendada entre el pecho y el panel de instrumentos para el pasajero delantero?	Safety
5	┬┐Cu├íl de las siguientes acciones est├í recomendada cuando el veh├¡culo est├í en movimiento?	Safety
6	┬┐Cu├íl es la principal funci├│n de los cinturones de seguridad durante la marcha?	Safety
7	┬┐Qu├® color se enciende en el indicador de cintur├│n de seguridad cuando no est├í abrochado?	Safety
8	┬┐Qu├® color se enciende en el indicador de cintur├│n de seguridad cuando no est├í abrochado?	Safety
9	┬┐Qu├® color se enciende en el indicador de cintur├│n de seguridad cuando no est├í abrochado?	Safety
10	┬┐Qu├® indica una luz verde en el indicador de estado del cintur├│n de seguridad en el cuadro de instrumentos?	Safety
11	┬┐Cu├índo se debe desabrochar el cintur├│n de seguridad?	Safety
12	┬┐Qu├® acci├│n NO debe realizarse al abrochar el cintur├│n de seguridad?	Safety
13	┬┐D├│nde debe situarse correctamente la parte de hombro del cintur├│n de seguridad?	Safety
14	┬┐D├│nde debe situarse la parte abdominal (lap) del cintur├│n de seguridad?	Safety
15	┬┐C├│mo debe colocarse el cintur├│n de seguridad en mujeres embarazadas?	Safety
16	┬┐Qu├® debe hacerse con el cintur├│n de seguridad para eliminar holguras antes de conducir?	Safety
17	┬┐C├│mo se debe ajustar la altura del cintur├│n de seguridad en los asientos delanteros?	Safety
18	┬┐C├│mo se debe ajustar la altura del cintur├│n de seguridad en los asientos delanteros?	Safety
19	┬┐Cu├íl es la funci├│n del retractor autom├ítico del cintur├│n de seguridad?	Safety
20	┬┐Qu├® acci├│n NO debe realizarse con el regulador de altura del cintur├│n de seguridad?	Safety
21	┬┐Cu├íl es la funci├│n del limitador de fuerza del cintur├│n de seguridad?	Safety
22	┬┐Qu├® debe hacerse con los pretensores de cintur├│n que se han disparado tras un accidente?	Safety
23	┬┐Qu├® acci├│n realiza el sistema PreCrash al iniciar cada viaje?	Safety
24	┬┐Cu├íl de estas acciones puede realizar el sistema PreCrash en situaciones de riesgo inminente?	Safety
25	┬┐En qu├® situaci├│n el sistema PreCrash NO est├í disponible o tiene disponibilidad limitada?	Safety
26	Adem├ís del pretensado de los cinturones, ┬┐qu├® funci├│n puede realizar el sistema PreCrash?	Safety
27	┬┐De qu├® factores depende principalmente la activaci├│n de los airbags?	Safety
28	┬┐En cu├íl de estas situaciones los airbags NO se desplegar├ín necesariamente?	Safety
29	┬┐Qu├® factor es clave para la activaci├│n del sistema de airbags?	Safety
30	┬┐Qu├® debe asegurarse sobre los pedales para un funcionamiento correcto?	Driving
31	┬┐Por qu├® se recomienda llevar calzado adecuado al conducir?	Driving
32	┬┐Qu├® ocurre cuando se suelta el acelerador en posici├│n D con Eco assist activado?	Driving
33	┬┐Cu├íl es el principal efecto de conducir a plena aceleraci├│n a altas velocidades?	Driving
34	┬┐Qu├® pr├íctica es esencial para mantener la eficiencia y alargar la vida ├║til del veh├¡culo?	Driving
35	┬┐Qu├® riesgo existe al colocar tapetes que obstruyan el ├írea de los pedales?	Driving
36	┬┐Qu├® consecuencias tiene una presi├│n de neum├íticos demasiado baja?	Driving
37	┬┐C├│mo se puede reducir el consumo de energ├¡a eliminando peso innecesario?	Driving
38	┬┐Qu├® medida ayuda a mantener la autonom├¡a durante el uso de consumidores de confort?	Driving
39	┬┐Qu├® indica la advertencia sobre adaptar la velocidad y la distancia de seguridad?	Driving
40	┬┐Por qu├® es importante asegurar correctamente la carga que puede moverse?	Driving
41	┬┐Qu├® precauci├│n se debe tomar respecto al transporte de grandes cantidades de l├¡quido en el habit├ículo?	Driving
42	┬┐Qu├® debe hacerse al conducir con el veh├¡culo cargado?	Driving
43	┬┐Por qu├® es peligroso conducir con la tapa trasera abierta?	Driving
44	┬┐Qu├® efecto tiene abrir la tapa trasera en el arrastre aerodin├ímico y la autonom├¡a del veh├¡culo?	Driving
45	┬┐Qu├® profundidad m├íxima de agua se debe evitar al conducir por carreteras inundadas?	Driving
46	┬┐A qu├® velocidad se recomienda conducir en zonas inundadas?	Driving
47	┬┐Qu├® acci├│n est├í prohibida al conducir en carreteras inundadas?	Driving
48	┬┐Qu├® puede ocurrir con la eficacia de frenado tras atravesar zonas inundadas?	Driving
49	┬┐Qu├® se recomienda antes de usar el veh├¡culo en el extranjero?	Driving
50	┬┐Cu├índo est├í disponible el par m├íximo del motor el├®ctrico?	Driving
51	┬┐Qu├® sucede al frenar el veh├¡culo en condiciones normales?	Driving
52	┬┐Qu├® ocurre cuando la bater├¡a de alto voltaje est├í completamente cargada?	Driving
53	┬┐En qu├® condiciones se activa la funci├│n de avance lento (┬½slow travel┬╗)?	Driving
54	┬┐C├│mo se desactiva la funci├│n de avance lento?	Driving
55	┬┐Por qu├® puede ser peligroso el bajo nivel de ruido de un veh├¡culo el├®ctrico?	Driving
56	┬┐Qu├® medida debe adoptarse para evitar movimientos accidentales cuando est├í en D/B o R?	Driving
57	┬┐C├│mo cambia el efecto de frenado del motor seg├║n el estado de carga de la bater├¡a?	Driving
58	┬┐Qu├® se recomienda antes de iniciar un descenso prolongado y pronunciado?	Driving
59	┬┐Qui├®n no se hace responsable de da├▒os al veh├¡culo por falta de piezas genuinas?	Driving
60	┬┐C├│mo limita el cable de carga la corriente en pa├¡ses con regulaciones distintas?	Driving
61	┬┐Qu├® sucede cuando la palanca est├í en D y Eco Assist est├í desactivado?	Driving
62	┬┐C├│mo selecciona Eco Assist el nivel de recuperaci├│n de energ├¡a?	Driving
63	┬┐Qu├® posici├│n del cambio ofrece recuperaci├│n intensa al descender o frenar?	Driving
64	┬┐Qu├® se recomienda al conducir en pendientes descendentes prolongadas?	Driving
65	┬┐Por qu├® puede cancelarse el efecto de frenado del motor el├®ctrico?	Driving
66	┬┐Qu├® precauci├│n se debe tomar al cargar la bater├¡a de alto voltaje en altitudes elevadas?	Driving
67	┬┐Qu├® indica el testigo que se├▒ala "Now only manoeuvring is possible! Charge. Check the manual"?	Driving
68	┬┐Cu├íl es la funci├│n principal de Eco Assist?	Driving
69	┬┐Qu├® indica la l├ímpara de control ┬½Limited power. Check the manual┬╗ cuando se enciende en amarillo?	Driving
70	┬┐Qu├® recomienda CUPRA cuando el estado de carga de la bater├¡a de alto voltaje es bajo?	Driving
71	┬┐Cu├íl es la velocidad m├íxima a la que solo es posible maniobrar cuando la bater├¡a est├í fr├¡a y el sistema ha encendido la l├ímpara de aviso?	Driving
72	┬┐Qu├® pr├íctica recomienda CUPRA antes de partir si la temperatura exterior es muy baja?	Driving
73	┬┐Cu├íl es el procedimiento correcto para conectar el sistema de propulsi├│n con la llave v├¡a detecci├│n autom├ítica?	Driving
74	┬┐Qu├® condiciones deben cumplirse para conectar el sistema de propulsi├│n manualmente?	Driving
75	┬┐Qu├® ocurre si se abandona el veh├¡culo con la ignici├│n encendida y sin llave presente?	Driving
76	┬┐C├│mo se debe realizar el encendido del sistema de propulsi├│n desde detenido?	Driving
77	┬┐Por qu├® el nivel de ruido reducido de un veh├¡culo el├®ctrico puede ser peligroso?	Driving
78	┬┐Qu├® debe asegurarse al dejar el veh├¡culo estacionado?	Driving
79	┬┐Cu├índo se encienden autom├íticamente las luces de posici├│n tras apagar la ignici├│n y cu├ínto duran?	Driving
80	┬┐Por qu├® solo deben usarse llaves CUPRA originales?	Driving
81	┬┐Qu├® es e-Sound en un veh├¡culo el├®ctrico?	Driving
82	┬┐Qu├® precauci├│n tomar si hay nieve o suciedad en la parrilla delantera que limite e-Sound?	Driving
83	┬┐Cu├íl es el procedimiento de arranque de emergencia si la llave no es reconocida?	Driving
84	┬┐C├│mo se realiza la desconexi├│n de emergencia del sistema de propulsi├│n?	Driving
85	┬┐Qu├® debe hacerse si no se puede conectar el sistema de propulsi├│n por llave no autorizada o fallo?	Driving
86	┬┐Qu├® hacer si e-Sound no funciona correctamente?	Driving
87	┬┐Qu├® significa la posici├│n B en el selector de marchas?	Driving
88	┬┐C├│mo se cambia entre D y B en el selector de marchas?	Driving
89	┬┐Cu├íl es la funci├│n del freno de estacionamiento electr├│nico (P)?	Driving
90	┬┐Qu├® riesgo advierte la interfaz sobre una aceleraci├│n r├ípida en modo B?	Driving
91	┬┐Qu├® puede suceder si se desconecta el TCS en calzada mojada o sucia?	Driving
92	┬┐Qu├® indicador muestra la recuperaci├│n de energ├¡a autom├ítica en el cuadro?	Driving
93	┬┐C├│mo se selecciona manualmente el nivel de recuperaci├│n de energ├¡a?	Driving
94	┬┐Qu├® ocurre si no se selecciona ning├║n nivel de recuperaci├│n tras soltar el acelerador?	Driving
95	┬┐Qu├® icono indica recuperaci├│n media en la instrumentaci├│n?	Driving
96	┬┐Qu├® advertencia aparece al activar alta recuperaci├│n de energ├¡a?	Driving
97	┬┐Qu├® debe hacerse si el sistema de propulsi├│n el├®ctrica se sobrecalienta?	Driving
98	┬┐Qu├® indica el testigo amarillo de fallo de recuperaci├│n y ABS?	Driving
99	┬┐Qu├® ajusta autom├íticamente la direcci├│n en veh├¡culos con direcci├│n electromec├ínica?	Driving
100	┬┐Qu├® sucede si la direcci├│n asistida no funciona con el sistema de propulsi├│n desconectado?	Driving
101	┬┐C├│mo se bloquea la columna de direcci├│n electr├│nicamente al dejar el veh├¡culo?	Driving
102	┬┐Qu├® recomienda el sistema Steering assist en situaciones cr├¡ticas?	Driving
103	┬┐Qu├® indica una l├ímpara de advertencia de defecto de direcci├│n encendida o parpadeando?	Driving
104	┬┐Para qu├® sirven los perfiles de conducci├│n en el veh├¡culo?	Driving
105	┬┐C├│mo se accede al men├║ de selecci├│n de perfil de conducci├│n desde la pantalla principal?	Driving
106	┬┐Qu├® bot├│n del volante activa directamente el perfil CUPRA?	Driving
107	┬┐C├│mo se muestra m├ís informaci├│n del perfil de conducci├│n seleccionado?	Driving
108	┬┐Por qu├® no se debe ajustar el perfil de conducci├│n mientras se conduce?	Driving
109	┬┐C├│mo activar la recirculaci├│n interna del aire en el sistema de climatizaci├│n?	Air conditioning
110	┬┐Qu├® funci├│n tiene el bot├│n ECO en el climatizador autom├ítico?	Air conditioning
111	┬┐C├│mo desempa├▒ar r├ípidamente el parabrisas con climatizador autom├ítico?	Air conditioning
112	┬┐Qu├® ocurre si el nivel de refrigerante del aire acondicionado es bajo?	Air conditioning
113	┬┐Para qu├® sirve el filtro de p├│len en el sistema de climatizaci├│n?	Air conditioning
114	┬┐Qu├® indica el testigo de hielo en el climatizador?	Air conditioning
115	┬┐C├│mo se ajusta la temperatura de la zona trasera en un climatizador bizona?	Air conditioning
116	┬┐Qu├® recomienda el manual para el mantenimiento del aire acondicionado?	Air conditioning
117	┬┐Qu├® funci├│n activa el bot├│n AUTO en el climatizador?	Air conditioning
118	┬┐C├│mo activar la recirculaci├│n interna del aire en el sistema de climatizaci├│n?	Air conditioning
119	┬┐Qu├® funci├│n tiene el bot├│n ECO en el climatizador autom├ítico?	Air conditioning
120	┬┐C├│mo desempa├▒ar r├ípidamente el parabrisas con climatizador autom├ítico?	Air conditioning
121	┬┐Qu├® ocurre si el nivel de refrigerante del aire acondicionado es bajo?	Air conditioning
122	┬┐Para qu├® sirve el filtro de p├│len en el sistema de climatizaci├│n?	Air conditioning
123	┬┐Qu├® indica el testigo de hielo en el climatizador?	Air conditioning
124	┬┐C├│mo se ajusta la temperatura de la zona trasera en un climatizador bizona?	Air conditioning
125	┬┐Qu├® recomienda el manual para el mantenimiento del aire acondicionado?	Air conditioning
126	┬┐Qu├® funci├│n activa el bot├│n AUTO en el climatizador?	Air conditioning
127	┬┐Por qu├® es mejor mantener el habit├ículo cerrado para un rendimiento ├│ptimo del aire acondicionado?	Air conditioning
128	┬┐Qu├® hace la funci├│n de recirculaci├│n interna del aire?	Air conditioning
129	┬┐C├│mo reconoce el sistema si hay alguien en el asiento del pasajero delantero?	Air conditioning
130	┬┐Con qu├® frecuencia debe cambiarse el filtro de polvo y polen para mantener el rendimiento?	Air conditioning
131	┬┐Qu├® recomienda el fabricante para evitar el empa├▒amiento de las ventanas cuando el sistema de refrigeraci├│n est├í apagado?	Air conditioning
132	┬┐Con qu├® frecuencia es aconsejable encender el aire acondicionado para lubricar las juntas y prevenir fugas?	Air conditioning
133	┬┐Por qu├® no se deben colocar alimentos, medicamentos u objetos sensibles a la temperatura cerca de las salidas de aire?	Air conditioning
150	┬┐C├│mo se programa la hora de salida para el aire acondicionado estacionario?	Air conditioning
151	┬┐Qu├® consumidores de confort el├®ctrico pueden activarse junto con el aire acondicionado estacionario?	Air conditioning
152	┬┐Cu├íl es el tiempo m├íximo de prefuncionamiento de los consumidores de confort antes de la hora de salida?	Air conditioning
153	┬┐C├│mo se activa el aire acondicionado del veh├¡culo tras desbloquearlo?	Air conditioning
154	┬┐Durante cu├ínto tiempo se climatiza el veh├¡culo tras desbloquearlo con esta funci├│n activada?	Air conditioning
155	┬┐C├│mo puedes consultar la pr├│xima vez programada en que se activar├í el aire acondicionado estacionario?	Air conditioning
156	┬┐Qu├® acci├│n proporciona acceso a informaci├│n detallada sobre la funci├│n de aire acondicionado estacionario?	Air conditioning
157	┬┐Qu├® debes comprobar respecto a las alfombrillas para evitar obstruir los pedales?	Driving
158	┬┐Por qu├® no se deben colocar objetos en el espacio del pie del conductor?	Driving
159	┬┐Qu├® tipo de calzado se recomienda llevar al conducir para un buen manejo de los pedales?	Driving
160	┬┐Qu├® debes asegurarte sobre el recorrido de los pedales antes de iniciar la marcha?	Driving
161	┬┐Por qu├® una presi├│n muy baja en los neum├íticos reduce la autonom├¡a del veh├¡culo?	Driving
162	┬┐Qu├® debes hacer para reducir el consumo energ├®tico antes de arrancar el veh├¡culo?	Driving
163	┬┐C├│mo puedes maximizar el alcance ajustando la climatizaci├│n seg├║n la temperatura exterior?	Driving
164	┬┐Qu├® pr├íctica es recomendable al conducir con el veh├¡culo cargado para mantener la seguridad y la eficiencia?	Driving
165	┬┐Por qu├® no se debe conducir con la tapa del maletero trasero abierta?	Driving
166	┬┐Hasta qu├® altura no debe llegar el agua al conducir por zonas inundadas?	Driving
167	┬┐Qu├® se recomienda si el veh├¡culo se detiene en el agua al conducir por zonas inundadas?	Driving
168	┬┐Qu├® deben hacer los usuarios antes de usar el veh├¡culo en el extranjero?	Driving
171	┬┐C├│mo se debe comprobar regularmente el grosor de las pastillas de freno delanteras?	Driving
172	┬┐Qu├® indica el testigo amarillo de desgaste de las pastillas de freno?	Driving
173	Al detectarse un fallo en el sistema de frenos y encenderse la luz de advertencia roja, ┬┐qu├® debe hacer el conductor?	Driving
174	┬┐Cu├íl es la funci├│n principal del sistema de control de tracci├│n (TCS)?	Driving
175	┬┐Cu├íl es la funci├│n del freno multi-colisi├│n?	Driving
176	┬┐En qu├® consiste la estabilizaci├│n de remolque (ÔÇ£Trailer stabilisationÔÇØ)?	Driving
177	┬┐Qu├® hace el servo de freno electromec├ínico (eBKV) con el encendido activado?	Driving
178	┬┐Qu├® es el ÔÇ£brake blendingÔÇØ en los sistemas de asistencia de frenado?	Driving
179	┬┐A qu├® velocidad m├íxima puede desconectarse el ESC?	Driving
180	┬┐Qu├® sistemas incluye y controla autom├íticamente el ESC al arrancar el motor?	Driving
181	┬┐Qu├® ocurre cuando el ESC est├í conectado en modo ÔÇ£SportÔÇØ?	Driving
182	┬┐Qu├® se desactiva autom├íticamente si se selecciona ÔÇ£SportÔÇØ o ÔÇ£ESC OFFÔÇØ?	Driving
183	┬┐Qu├® debe hacer el conductor si el testigo de ABS se enciende en amarillo?	Driving
184	┬┐Qu├® significa cuando el testigo de ESC o TCS parpadea en amarillo?	Driving
185	Si tras apagar y volver a encender la ignici├│n la luz de fallo del ESC sigue encendida, ┬┐qu├® se debe hacer a continuaci├│n?	Driving
186	┬┐Por qu├® puede o├¡rse ruido procedente de los sistemas de asistencia de frenado?	Driving
189	┬┐Qu├® mensaje mostrar├í el cuadro de instrumentos cuando el sensor frontal se desactive?	Drive assist sensors and cameras
190	┬┐Qu├® situaciones pueden provocar la desactivaci├│n autom├ítica del sensor frontal?	Drive assist sensors and cameras
191	┬┐Qu├® influencias ambientales pueden impedir la detecci├│n correcta del radar?	Drive assist sensors and cameras
192	┬┐Qu├® funciones ofrece la c├ímara frontal montada en el parabrisas?	Drive assist sensors and cameras
\.


--
-- Data for Name: respuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.respuestas (id, pregunta_id, texto, es_correcta) FROM stdin;
1	1	10cm	f
2	1	15cm	f
3	1	25cm	t
4	1	20cm	f
5	1	10cm	f
6	1	15cm	f
7	1	25cm	t
8	1	20cm	f
9	1	10cm	f
10	1	15cm	f
11	1	25cm	t
12	1	20cm	f
13	2	Colocar los pies fuera de la ventanilla	f
14	2	 Mantener los pies en el reposapi├®s	t
15	2	Poner los pies en el respaldo del asiento	f
16	2	20cm	f
17	3	Evitar movimientos incontrolados que pueden causar lesiones graves	t
18	3	Aumentar la velocidad de despliegue del airbag	f
19	3	Suavizar los frenazos bruscos	f
20	3	Permitir viajar en el maletero	f
21	4	Verde	f
22	4	Azul	f
23	4	Amarillo	f
24	4	Rojo	t
25	4	Verde	f
26	4	Azul	f
27	4	Amarillo	f
28	4	Rojo	t
29	4	Verde	f
30	4	Azul	f
31	4	Amarillo	f
32	4	Rojo	t
33	5	El asiento est├í ocupado y el ocupante lleva abrochado el cintur├│n	t
34	5	El asiento est├í ocupado y el ocupante no lleva abrochado el cintur├│n	f
35	5	El asiento no est├í ocupado	f
36	5	Que hay un fallo en el cintur├│n de seguridad	f
37	6	Cuando el veh├¡culo est├® completamente detenido	t
38	6	Mientras el veh├¡culo est├í en movimiento	f
39	6	Antes de iniciar el viaje	f
40	6	Al ajustar el asiento y el reposacabezas	f
41	7	Retorcer el cintur├│n cuando lo pasas por el cuerpo	t
42	7	Insertar la leng├╝eta en la hebilla	f
43	7	Ajustar el respaldo en posici├│n vertical	f
44	7	Estirar el cintur├│n para asegurar que la leng├╝eta encaje	f
45	8	En el centro del hombro	t
46	8	Sobre el cuello	f
47	8	Debajo del brazo	f
48	8	Detr├ís del hombro	f
49	9	Sobre la pelvis, nunca sobre el est├│mago	t
50	9	Sobre el abdomen, debajo de las costillas	f
51	9	Solo en el hombro, sin cruzar el torso	f
52	9	Debajo de la cintura, sobre la cadera	f
53	10	La cinta diagonal por el centro del pecho y la abdominal lo m├ís baja posible sobre la pelvis	t
54	10	La cinta diagonal detr├ís de la espalda y la abdominal sobre el abdomen	f
55	10	Ambas cintas cruzando el abdomen por encima de la barriga	f
56	10	Solo la cinta abdominal ajustada bajo las costillas	f
57	11	Tirar del cintur├│n para eliminar las holguras	t
58	11	Retorcer el cintur├│n para que quede firme	f
59	11	Colocar el cintur├│n bajo el asiento para tensarlo	f
60	11	Aflojar el cintur├│n un poco para mayor comodidad	f
61	12	Presionando el dispositivo de gu├¡a y movi├®ndolo hasta que la cinta quede sobre el centro del hombro	t
62	12	Girando el reposacabezas en sentido horario	f
63	12	Ajustando la altura mientras el veh├¡culo est├í en movimiento	f
64	12	Retirando el cintur├│n del lazo y pas├índolo por detr├ís del respaldo	f
65	12	Presionando el dispositivo de gu├¡a y movi├®ndolo hasta que la cinta quede sobre el centro del hombro	t
66	12	Girando el reposacabezas en sentido horario	f
67	12	Ajustando la altura mientras el veh├¡culo est├í en movimiento	f
68	12	Retirando el cintur├│n del lazo y pas├índolo por detr├ís del respaldo	f
69	13	Permite libertad de movimiento en marcha normal y bloquea el cintur├│n en frenadas bruscas	t
70	13	Ajustar autom├íticamente la altura del cintur├│n en el hombro	f
71	13	Tensar el cintur├│n para eliminar holguras al iniciar el viaje	f
72	13	Relajar el cintur├│n en curvas y aceleraciones suaves	f
73	14	Ajustar la altura del cintur├│n mientras el veh├¡culo est├í en movimiento	t
74	14	Mantener presionado el dispositivo de gu├¡a al ajustar la altura	f
75	14	Soltar el dispositivo de gu├¡a una vez ajustada la posici├│n	f
76	14	Tirar del cintur├│n para comprobar que la hebilla est├í bien enganchada	f
77	15	Reducir la fuerza que el cintur├│n ejerce sobre el cuerpo durante un accidente	t
78	15	Aumentar la tensi├│n del cintur├│n autom├íticamente al frenar	f
79	15	Liberar un polvo fino al activarse el pretensor	f
80	15	Ajustar la altura del cintur├│n en el hombro seg├║n la ocupaci├│n	f
81	16	Reemplazarlos de inmediato por piezas nuevas aprobadas	t
82	16	Limpiarlos y volver a instalarlos	f
83	16	Repararlos en un taller no especializado	f
84	16	Reutilizarlos tras comprobar su funcionamiento	f
85	17	Pretensar autom├íticamente los cinturones de seguridad de conductor y pasajero delantero	t
86	17	Activar el sistema de frenos ABS en ralent├¡	f
87	17	Desplegar los airbags frontales	f
88	17	Desconectar los tensores de los cinturones traseros	f
89	18	Pretensar autom├íticamente los cinturones y cerrar las ventanillas hasta dejar una peque├▒a ranura	t
90	18	Desplegar los airbags laterales antes de la colisi├│n	f
91	18	Activar el servofreno de emergencia al pisar el freno suavemente	f
92	18	Aumentar la velocidad para minimizar el tiempo de exposici├│n al peligro	f
93	19	Cuando se conduce en marcha atr├ís	t
94	19	Cuando el control de estabilidad (ESC) est├í activado	f
95	19	Cuando la unidad de control de airbags funciona correctamente	f
96	19	Cuando la velocidad es inferior a 30 km/h	f
97	20	Cerrar autom├íticamente las ventanillas hasta dejar una peque├▒a ranura	t
98	20	Desplegar el airbag lateral antes de la colisi├│n	f
99	20	Aumentar la sensibilidad del control de tracci├│n	f
100	20	Activar el servofreno de emergencia al pisar suavemente	f
101	21	Del tipo de accidente, el ├íngulo de impacto y la velocidad del veh├¡culo	t
102	21	Del color del veh├¡culo y las condiciones meteorol├│gicas	f
103	21	Del peso del ocupante y la presi├│n de los neum├íticos	f
104	21	Del nivel de combustible y el estado de la bater├¡a	f
105	22	Cuando el encendido est├® apagado	t
106	22	En una colisi├│n frontal grave	f
107	22	En caso de frenada de emergencia	f
108	22	Cuando el veh├¡culo circule a m├ís de 30 km/h	f
109	23	La trayectoria de deceleraci├│n evaluada por la unidad de control	t
110	23	La velocidad del veh├¡culo al colisionar	f
111	23	El ├íngulo de impacto	f
112	23	Las propiedades del objeto impactado	f
113	24	Que siempre puedan regresar sin atascarse a su posici├│n inicial	t
114	24	Que tengan la altura adecuada para el conductor	f
115	24	Que est├®n pintados de color rojo para mayor visibilidad	f
116	24	Que est├®n fabricados en acero inoxidable	f
117	25	Para asegurar un buen control y sensaci├│n al pisar los pedales	t
118	25	Porque mejora el consumo de combustible	f
119	25	Para que el pie no se deslice dentro del veh├¡culo	f
120	25	Porque lo exige la normativa de tr├ífico	f
121	26	El veh├¡culo desacelera y recupera energ├¡a para recargar la bater├¡a	t
122	26	El coche mantiene la velocidad actual indefinidamente	f
123	26	Se activa el control de estabilidad autom├íticamente	f
124	26	El motor pasa a modo de potencia m├íxima	f
125	27	Aumenta la resistencia aerodin├ímica y reduce la autonom├¡a	t
126	27	Mejora la estabilidad en curvas cerradas	f
127	27	Disminuye el consumo de energ├¡a el├®ctrica	f
128	27	Activa el modo deportivo del veh├¡culo	f
129	28	Realizar un mantenimiento regular seg├║n el plan del fabricante	t
130	28	Conducir siempre en modo Eco	f
131	28	Usar siempre tapetes de goma	f
132	28	Evitar conducir bajo lluvia intensa	f
133	29	Pueden interferir con la operaci├│n de los pedales y causar accidentes	t
134	29	Reducen la carga de la bater├¡a en modo el├®ctrico	f
135	29	Mejoran la insonorizaci├│n del habit├ículo	f
136	29	Incrementan la estabilidad del veh├¡culo en curva	f
137	30	Aumenta la resistencia a la rodadura y reduce la autonom├¡a del veh├¡culo	t
138	30	Disminuye el desgaste de los neum├íticos	f
139	30	Mejora la comodidad de marcha	f
140	30	Reduce el consumo de energ├¡a del sistema de alta tensi├│n	f
141	31	Vaciando el compartimento de equipaje de objetos no usados antes de iniciar el viaje	t
142	31	Conduciendo siempre en modo Sport	f
143	31	Aumentando la presi├│n de los neum├íticos por encima de lo recomendado	f
144	31	Usando portaequipajes aunque no lleve carga	f
145	32	Ajustar temperaturas interiores altas en verano y bajas en invierno, y ventilar el habit├ículo antes de arrancar si hace calor	t
146	32	Usar el climatizador autom├ítico al 100% en todo momento	f
147	32	Mantener siempre las ventanillas bajadas	f
148	32	Conducir con el modo de recuperaci├│n de energ├¡a desactivado	f
149	33	Ajustar siempre la velocidad y la distancia seg├║n la visibilidad, el clima, la carretera y el tr├ífico	t
150	33	Mantener la misma distancia aunque cambien las condiciones meteorol├│gicas	f
151	33	S├│lo reducir la velocidad en curvas cerradas	f
152	33	Aumentar la velocidad para despejar pronto la v├¡a	f
153	34	Porque podr├¡a desestabilizar el veh├¡culo y aumentar la distancia de frenado	t
154	34	Para reducir el consumo de bater├¡a en modo el├®ctrico	f
155	34	Para mejorar la aerodin├ímica a alta velocidad	f
156	34	Para aumentar la capacidad de carga m├íxima	f
157	35	No transportar grandes cantidades de l├¡quido porque podr├¡a da├▒ar el sistema el├®ctrico y la bater├¡a de alto voltaje	t
158	35	Mantener siempre los l├¡quidos en el maletero sin asegurar	f
159	35	Transportar l├¡quidos s├│lo en envases de pl├ístico blando	f
160	35	Usar recipientes transparentes para ver el nivel del l├¡quido	f
161	36	Colocar todo el equipaje de forma segura y evitar frenadas bruscas y maniobras repentinas	t
162	36	Aumentar la presi├│n de los neum├íticos a tope	f
163	36	Mantener siempre la caja de cambios en neutro	f
164	36	Desactivar todos los sistemas de asistencia al conductor	f
165	37	Porque los objetos podr├¡an salir despedidos y desestabilizar el veh├¡culo	t
166	37	Porque reduce autom├íticamente la potencia del motor	f
167	37	Porque activa la se├▒al de emergencia de forma continua	f
168	37	Porque bloquea el sistema de frenos antibloqueo	f
169	38	Aumenta el arrastre aerodin├ímico y eleva el consumo de energ├¡a, reduciendo la autonom├¡a	t
170	38	Disminuye la resistencia al avance y aumenta la autonom├¡a	f
171	38	No tiene ning├║n efecto sobre la autonom├¡a	f
172	38	Mejora la refrigeraci├│n del sistema el├®ctrico	f
173	39	El agua no debe superar el borde inferior de la carrocer├¡a	t
174	39	Puede llegar hasta la cintura del ocupante	f
175	39	No importa la profundidad mientras se conduzca despacio	f
176	39	Solo debe cubrir parcialmente las ruedas traseras	f
177	40	A velocidad de peat├│n	t
178	40	A velocidad de autopista	f
179	40	A la velocidad m├íxima permitida en la v├¡a	f
180	40	A la velocidad establecida por el control de crucero	f
181	41	Detener el veh├¡culo en el agua	t
182	41	Reducir la velocidad manteniendo la marcha hacia adelante	f
183	41	Conectar el sistema de tracci├│n en las cuatro ruedas	f
184	41	Activar las luces antiniebla	f
185	42	La eficacia de frenado puede disminuir si los discos o pastillas est├ín h├║medos	t
186	42	El sistema antibloqueo se desactiva permanentemente	f
187	42	Aumenta autom├íticamente la potencia de frenado	f
188	42	Los frenos regenerativos dejan de funcionar indefinidamente	f
189	43	Consultar las regulaciones legales del pa├¡s de destino antes de viajar	t
190	43	Solo comprobar la fecha de fabricaci├│n del veh├¡culo	f
191	43	No hace falta ninguna comprobaci├│n si el viaje es corto	f
192	43	Desactivar todas las funciones de asistencia al conductor	f
193	44	Inmediatamente despu├®s de pisar el acelerador	t
194	44	Cuando el veh├¡culo supera los 30 km/h	f
195	44	Al activar el modo Sport	f
196	44	Con el freno regenerativo desactivado	f
197	45	Se genera energ├¡a el├®ctrica que se almacena en la bater├¡a de alto voltaje	t
198	45	El sistema de propulsi├│n se desconecta autom├íticamente	f
199	45	Se activa el modo de descenso r├ípido	f
200	45	Se apaga el motor el├®ctrico para conservar energ├¡a	f
201	46	No se produce recuperaci├│n de energ├¡a y no hay efecto de frenado del motor	t
202	46	Se incrementa la intensidad de la recuperaci├│n de energ├¡a	f
203	46	El motor el├®ctrico pasa a modo de reserva	f
204	46	Se activa el freno de mano autom├íticamente	f
205	47	Con el sistema de propulsi├│n encendido y la palanca en D/B o R, y sin pisar el acelerador	t
206	47	Solo con la palanca en N y freno de mano desactivado	f
207	47	Al superar 10 km/h en modo Eco	f
208	47	Con el control de crucero adaptativo activo	f
209	48	Moviendo la palanca a N o accionando el freno de estacionamiento electr├│nico	t
210	48	Pisando simult├íneamente acelerador y freno	f
211	48	Desconectando el modo Eco	f
212	48	Abriendo la puerta del conductor	f
213	49	Porque peatones y otros usuarios pueden no o├¡rlo y provocarse accidentes	t
214	49	Porque reduce la autonom├¡a del veh├¡culo	f
215	49	Porque aumenta el desgaste de los frenos	f
216	49	Porque activa la alarma de colisi├│n trasera	f
217	50	Mantener pisado el pedal de freno	t
218	50	Desactivar el sistema de propulsi├│n	f
219	50	Colocar el freno de mano mec├ínico	f
220	50	Abrir la ventanilla del conductor	f
221	51	A mayor carga de la bater├¡a, disminuye la recuperaci├│n y puede cancelarse el frenado del motor	t
222	51	A mayor carga de la bater├¡a, aumenta el frenado del motor	f
223	51	El efecto de frenado del motor es independiente del estado de carga	f
224	51	El sistema cambia a modo Sport autom├íticamente	f
225	52	Reducir la velocidad usando el freno del veh├¡culo	t
226	52	Subir la presi├│n de los neum├íticos al m├íximo	f
227	52	Desactivar la recuperaci├│n de energ├¡a	f
228	52	Conducir en modo Sport	f
229	53	CUPRA no se hace responsable de da├▒os por trabajo insuficiente o falta de piezas genuinas	t
230	53	El concesionario local	f
231	53	El fabricante de las bater├¡as	f
232	53	El taller de reparaciones independiente	f
233	54	La corriente de carga se ajusta al valor m├ís bajo permitido por la infraestructura	t
234	54	Se desactiva la carga r├ípida independientemente de las regulaciones	f
235	54	El veh├¡culo no puede cargarse hasta estar fuera del pa├¡s	f
236	54	Solo permite cargar al 50% de la capacidad de la bater├¡a	f
237	55	No tiene lugar recuperaci├│n de energ├¡a	t
238	55	Se activa la recuperaci├│n m├íxima autom├íticamente	f
239	55	El sistema de recuperaci├│n pasa a modo B	f
240	55	Se enciende el testigo de fallo de freno regenerativo	f
241	56	Bas├índose en datos de navegaci├│n y la situaci├│n del tr├ífico	t
242	56	Seg├║n la temperatura ambiente	f
243	56	En funci├│n del estilo de conducci├│n manual del conductor	f
244	56	Uniendo el consumo de aire acondicionado y el modo Sport	f
245	57	La posici├│n B	t
246	57	La posici├│n N	f
247	57	La posici├│n S	f
248	57	La posici├│n P	f
249	58	Seleccionar B siempre que sea posible y no dejar rodar en N	t
250	58	Dejar rodar en N para ahorrar energ├¡a	f
251	58	Subir a D para aumentar la velocidad de descenso	f
252	58	Desactivar Eco Assist para m├íximo frenado	f
253	59	Porque la bater├¡a est├í completamente cargada y no hay recuperaci├│n	t
254	59	Porque la temperatura del motor es demasiado baja	f
255	59	Porque se activa el modo Sport	f
256	59	Porque el veh├¡culo circula a menos de 5 km/h	f
257	60	No cargarla completamente para habilitar la recuperaci├│n en el descenso	t
258	60	Usar siempre corriente alterna en lugar de continua	f
259	60	Desconectar el Eco Assist durante la carga	f
260	60	Mantener la palanca en P mientras carga	f
261	61	Que la potencia del sistema est├í muy limitada y solo queda maniobrar	t
262	61	Que el freno de mano electr├│nico est├í bloqueado	f
263	61	Que el climatizador ha fallado	f
264	61	Que el sensor de presi├│n de neum├íticos est├í da├▒ado	f
265	62	Ayudar al conductor a usar de manera eficiente el efecto de frenado del motor el├®ctrico	t
266	62	Aumentar autom├íticamente la potencia del motor en modo Sport	f
267	62	Controlar la temperatura interior del veh├¡culo	f
268	62	Desactivar el sistema de recuperaci├│n al frenar	f
269	63	Que la potencia del sistema se ha reducido significativamente y puede seguir disminuyendo	t
270	63	Que el frenado regenerativo est├í al m├íximo	f
271	63	Que el climatizador funciona con normalidad	f
272	63	Que la bater├¡a de 12 V est├í completamente cargada	f
273	64	Cargar la bater├¡a de alto voltaje lo antes posible	t
274	64	Desactivar todos los sistemas de confort para ahorrar energ├¡a	f
275	64	Conducir en modo Sport hasta encontrar un cargador	f
276	64	Dejar el veh├¡culo en ralent├¡ hasta que recupere potencia	f
277	65	Hasta 7 km/h	t
278	65	Hasta 15 km/h	f
279	65	Hasta 3 km/h	f
280	65	Solo marcha atr├ís indefinidamente	f
281	66	Precalentar el veh├¡culo mientras est├í aparcado para calentar la bater├¡a de alto voltaje	t
282	66	Desactivar el sistema de recuperaci├│n de energ├¡a	f
283	66	Dejar las ventanillas bajadas para evitar condensaci├│n	f
284	66	Conducir directamente sin arrancar el motor el├®ctrico	f
285	67	Entrar al veh├¡culo, pisar el freno y seleccionar D o R; el cuadro indicar├í READY	t
286	67	Abrir la puerta, cerrar la ventanilla y pisar el embrague	f
287	67	Colocar la palanca en N y esperar dos minutos	f
288	67	Presionar el bot├│n de luces y el freno a la vez	f
289	68	Bater├¡a con carga suficiente, sin cable de carga enchufado, temperatura HV en rango y llave v├ílida dentro	t
290	68	Bater├¡a con carga baja, cable enchufado y sin llave en el veh├¡culo	f
291	68	Solo con llave extra├¡da y cable de carga conectado	f
292	68	Con el freno de mano desactivado y palanca en P	f
293	69	La ignici├│n se apaga autom├íticamente tras cierto tiempo y se aplica el freno de estacionamiento electr├│nico	t
294	69	La bater├¡a de 12 V se desconecta inmediatamente	f
295	69	Se activa el modo Sport de forma permanente	f
296	69	El veh├¡culo emite un pitido continuo sin m├ís acciones	f
297	70	Pisando el pedal de freno y pulsando una vez el bot├│n de encendido/arranque	t
298	70	Sin pisar freno, pulsando dos veces r├ípidamente el bot├│n de encendido	f
299	70	Con la palanca en N y la puerta abierta	f
300	70	Presionando simult├íneamente freno y acelerador	f
301	71	Porque otros usuarios de la v├¡a y peatones pueden no o├¡rlo y provocar accidentes	t
302	71	Porque aumenta la autonom├¡a sin control del conductor	f
303	71	Porque da├▒a la bater├¡a de bajo voltaje	f
304	71	Porque interfiere con el sistema de navegaci├│n	f
305	72	Que est├® aplicado el freno de estacionamiento electr├│nico y todas las puertas, ventanas, tapa trasera y cap├│ frontal est├®n cerrados y bloqueados	t
306	72	Que el veh├¡culo est├® en punto muerto con freno desactivado	f
307	72	Que las ventanillas est├®n bajadas y la m├║sica est├® activada	f
308	72	Que solo la puerta del conductor est├® cerrada	f
309	73	Cuando los faros de cruce estaban encendidos al apagar la ignici├│n; permanecen hasta bloquear el veh├¡culo o durante unos 15 minutos aproximadamente	t
310	73	Cuando las luces antiniebla estaban encendidas; se apagan al cerrar las puertas	f
311	73	Cuando se desactiva el freno de mano; permanecen indefinidamente	f
312	73	Cuando el veh├¡culo alcanza 10 km/h tras apagar la ignici├│n; duran 5 minutos	f
313	74	Porque solo con ellas se garantiza el correcto funcionamiento del veh├¡culo	t
314	74	Porque las llaves de otros fabricantes no ajustan la cerradura	f
315	74	Porque da├▒an el sistema de climatizaci├│n	f
316	74	Porque impiden el ahorro de bater├¡a	f
317	75	Un sonido generado electr├│nicamente para advertir a otros usuarios de la presencia del veh├¡culo	t
318	75	Un altavoz opcional para m├║sica en el maletero	f
319	75	Un sistema de aviso ac├║stico para el navegador	f
320	75	Una alarma anti-robo activada a bajas velocidades	f
321	76	Comprobar que la parrilla delantera no est├® muy sucia y limpiarla si es necesario; asumir que otros pueden no o├¡r el veh├¡culo	t
322	76	Desactivar e-Sound y confiar en la campana manual	f
323	76	Aumentar el volumen de la radio para generar sonido ambiente	f
324	76	Poner cinta reflectante en la parrilla para advertir a peatones	f
325	77	Colocar la llave en el centro del posavasos central, lo m├ís cerca posible del s├¡mbolo, y pisar el freno o pulsar el bot├│n de encendido/arranque	t
326	77	Sacar la llave y volver a insertarla en la cerradura de la puerta	f
327	77	Mantener pulsado el bot├│n del maletero durante 10 segundos	f
328	77	Desconectar y reconectar la bater├¡a de 12 V	f
329	78	Detener el veh├¡culo y pulsar el bot├│n de ignici├│n/arranque dos veces r├ípidamente o mantenerlo pulsado una vez	t
330	78	Sacar la llave del contacto y tirar del freno de mano manual	f
331	78	Desconectar el cable de carga del puerto de recarga	f
332	78	Pisar simult├íneamente freno y acelerador durante 5 segundos	f
333	79	Usar una llave autorizada y, si persiste el fallo, buscar asistencia especializada	t
334	79	Cambiar la bater├¡a del tel├®fono m├│vil conectado al veh├¡culo	f
335	79	Desactivar todos los sistemas de asistencia y reintentar	f
336	79	Ajustar el control de crucero adaptativo al modo Eco	f
337	80	Contactar con un taller especializado, ya que es posible continuar conduciendo	t
338	80	Reiniciar el sistema de infotainment desde el men├║ de servicio	f
339	80	Forzar e-Sound con el volumen al m├íximo	f
340	80	Desplegar un altavoz exterior auxiliar	f
341	81	Recuperaci├│n intensa de energ├¡a de frenado durante la deceleraci├│n	t
342	81	Marcha atr├ís para maniobras en espacio reducido	f
343	81	Posici├│n neutra sin transmisi├│n de movimiento	f
344	81	Modo Sport para aceleraciones r├ípidas	f
345	82	Girando el selector hacia adelante desde D/B hasta la segunda posici├│n y solt├índolo	t
346	82	Presionando un bot├│n en el volante	f
347	82	Manteniendo pulsado el freno de estacionamiento electr├│nico	f
348	82	Moviendo la palanca a P y luego a B	f
349	83	Bloquear mec├ínicamente las ruedas cuando el veh├¡culo est├í detenido	t
350	83	Activar autom├íticamente la recuperaci├│n de energ├¡a en pendiente	f
351	83	Desconectar la bater├¡a de alto voltaje al aparcar	f
352	83	Mantener la posici├│n B sin mover la palanca	f
353	84	P├®rdida de tracci├│n y posible derrape del veh├¡culo en superficies resbaladizas	t
354	84	Desconexi├│n del sistema de recuperaci├│n de energ├¡a	f
355	84	Fallo permanente del motor el├®ctrico	f
356	84	Bloqueo del volante	f
357	85	Las ruedas pueden deslizarse y el veh├¡culo perder direcci├│n	t
358	85	Aumenta autom├íticamente la recuperaci├│n de energ├¡a	f
359	85	El freno de estacionamiento se aplica solo	f
360	85	Se activa el modo Sport de manera inesperada	f
361	86	Una A junto al icono de recuperaci├│n	t
362	86	Un s├¡mbolo de freno con ondas azules	f
363	86	Una flecha circular verde	f
364	86	Un tri├íngulo amarillo con exclamaci├│n	f
365	87	Pulsando las levas del volante + o ÔÇô con el modo D seleccionado y ECO asistido desactivado	t
366	87	Girando el selector de marchas de D a N	f
367	87	Manteniendo pisado el freno de estacionamiento electr├│nico	f
368	87	Presionando el bot├│n de SPORT en el volante	f
369	88	El veh├¡culo avanzar├í sin efecto de recuperaci├│n de energ├¡a	t
370	88	Se activa el freno de mano autom├íticamente	f
371	88	El motor cambia a modo de ahorro m├íximo	f
372	88	Se enciende el testigo de fallo de recuperaci├│n	f
373	89	Icono intermedio de flecha con barra de color medio	t
374	89	Una A completa	f
375	89	Flecha ├║nica simple	f
376	89	Tri├íngulo con signo de exclamaci├│n	f
377	90	Peligro de p├®rdida de tracci├│n o derrape en carreteras deslizantes	t
378	90	Bloqueo del freno de estacionamiento electr├│nico	f
379	90	Desgaste acelerado de los neum├íticos	f
380	90	Desconexi├│n del sistema anticollisi├│n	f
381	91	Detener el veh├¡culo inmediatamente, arrancar al aire libre, desconectar el sistema y buscar asistencia	t
382	91	Pisar fuerte el acelerador para forzar la refrigeraci├│n	f
383	91	Esperar sentado dentro del veh├¡culo hasta que se enfr├¡e	f
384	91	Continuar conduciendo a baja velocidad sin m├ís acciones	f
385	92	Que hay una aver├¡a en el sistema de recuperaci├│n y el alcance puede reducirse	t
386	92	Que el ABS est├í desactivado permanentemente	f
387	92	Que la bater├¡a de 12 V est├í descargada	f
388	92	Que el control de crucero adaptativo est├í activo	f
389	93	El par de giro de volante y la orientaci├│n de las ruedas seg├║n la velocidad	t
390	93	La presi├│n de los neum├íticos en funci├│n de la temperatura	f
391	93	La intensidad de la iluminaci├│n ambiente	f
392	93	El nivel de recuperaci├│n de energ├¡a al frenar	f
393	94	Hace falta aplicar mucha m├ís fuerza para girar el volante	t
394	94	Se bloquea la columna de direcci├│n autom├íticamente	f
395	94	Activa el freno de estacionamiento electr├│nico	f
396	94	Reduce la recuperaci├│n de energ├¡a al frenar	f
397	95	Deteniendo el veh├¡culo, aplicando el freno de estacionamiento y saliendo sin pulsar el bot├│n de arranque	t
398	95	Colocando la palanca en N y cerrando la puerta	f
399	95	Manteniendo pulsado el freno y el acelerador simult├íneamente	f
400	95	Girando el volante hasta el tope antes de salir	f
401	96	Realizar un contragiro suave para evitar derrapes	t
402	96	Aumentar la presi├│n de frenado al m├íximo	f
403	96	Activar el control de crucero adaptativo	f
404	96	Desconectar la eletr├│nica del veh├¡culo	f
405	97	Falla en la direcci├│n electromec├ínica o bloqueo de columna que requiere asistencia	t
406	97	Nivel de bater├¡a de 12 V bajo	f
407	97	El freno de estacionamiento no est├í aplicado	f
408	97	Se ha activado el modo Sport	f
409	98	Para adaptar sistema de suspensi├│n, direcci├│n, propulsi├│n y climatizaci├│n al estilo de conducci├│n	t
410	98	Para ajustar ├║nicamente el volumen del sistema de sonido	f
411	98	Para cambiar el tama├▒o de las ruedas electr├│nicamente	f
412	98	Para desactivar las luces diurnas	f
413	99	Entrando a ÔÇ£Drive ProfileÔÇØ en el men├║ principal	t
414	99	Pulsando el bot├│n de luces largas en el volante	f
415	99	Manteniendo pulsado el pedal de freno durante 10 s	f
416	99	Girando el selector de marchas a P	f
417	100	El bot├│n con el logotipo CUPRA en el volante multifunci├│n	t
418	100	El bot├│n de volumen +	f
419	100	El bot├│n de llamada telef├│nica	f
420	100	El bot├│n de control de crucero adaptativo	f
421	101	Presionando ÔÇ£InformationÔÇØ en el sistema de infoentretenimiento	t
422	101	Manteniendo pulsado el bot├│n START/STOP	f
423	101	Girando el volante completamente a la izquierda	f
424	101	Colocando la palanca en posici├│n N	f
425	102	Porque distrae la atenci├│n y puede causar accidentes	t
426	102	Porque desactiva el ABS autom├íticamente	f
427	102	Porque apaga las luces de freno	f
428	102	Porque bloquea el sistema de infoentretenimiento	f
429	103	Pulsar el bot├│n de recirculaci├│n interna	t
430	103	Abrir las ventanillas ligeramente	f
431	103	Conducir a m├ís de 50 km/h	f
432	103	Mantener pisado el freno de mano	f
433	104	Optimiza el consumo reduciendo la potencia del compresor	t
434	104	Aumenta la potencia del ventilador al m├íximo	f
435	104	Desactiva completamente el aire acondicionado	f
436	104	Activa el sistema de mantenimiento de carril	f
437	105	Seleccionar el modo ÔÇ£desempa├▒adoÔÇØ y ajustar temperatura/ventilaci├│n	t
438	105	Activar la recirculaci├│n interna	f
439	105	Desactivar el aire acondicionado	f
440	105	Presionar el bot├│n SPORT	f
441	106	Disminuye la eficacia de enfriamiento y aumenta el consumo	t
442	106	El motor se apaga autom├íticamente	f
443	106	Se activa el modo Sport	f
444	106	Se enciende el testigo de aceite	f
445	107	Retener part├¡culas de polvo, polen y contaminantes	t
446	107	Mejorar la potencia del compresor de aire	f
447	107	Reducir el ruido de rodadura	f
448	107	Lubricar el sistema de ventilaci├│n	f
449	108	Riesgo de formaci├│n de hielo en el parabrisas o sensores	t
450	108	Sobrecalentamiento del motor	f
451	108	Fallo del freno de estacionamiento	f
452	108	Nivel bajo de bater├¡a de 12 V	f
453	109	Mediante el control del panel trasero o reposabrazos	t
454	109	Girando la rueda de volumen del sistema de infoentretenimiento	f
455	109	Presionando el bot├│n ECO	f
456	109	Manteniendo pulsado el freno de mano electr├│nico	f
457	110	Revisar y recargar gas refrigerante cada dos a├▒os	t
458	110	Cambiar el aceite del motor cada 5 000 km	f
459	110	Limpiar el radiador del motor anualmente	f
460	110	Ajustar la presi├│n de los neum├íticos regularmente	f
461	111	El sistema ajusta autom├íticamente temperatura, caudal y distribuci├│n del aire	t
462	111	Activa el modo Sport del veh├¡culo	f
463	111	Bloquea todas las puertas del coche	f
464	111	Desactiva el sistema de climatizaci├│n	f
465	103	Pulsar el bot├│n de recirculaci├│n interna	t
466	103	Abrir las ventanillas ligeramente	f
467	103	Conducir a m├ís de 50 km/h	f
468	103	Mantener pisado el freno de mano	f
469	104	Optimiza el consumo reduciendo la potencia del compresor	t
470	104	Aumenta la potencia del ventilador al m├íximo	f
471	104	Desactiva completamente el aire acondicionado	f
472	104	Activa el sistema de mantenimiento de carril	f
473	105	Seleccionar el modo ÔÇ£desempa├▒adoÔÇØ y ajustar temperatura/ventilaci├│n	t
474	105	Activar la recirculaci├│n interna	f
475	105	Desactivar el aire acondicionado	f
476	105	Presionar el bot├│n SPORT	f
477	106	Disminuye la eficacia de enfriamiento y aumenta el consumo	t
478	106	El motor se apaga autom├íticamente	f
479	106	Se activa el modo Sport	f
480	106	Se enciende el testigo de aceite	f
481	107	Retener part├¡culas de polvo, polen y contaminantes	t
482	107	Mejorar la potencia del compresor de aire	f
483	107	Reducir el ruido de rodadura	f
484	107	Lubricar el sistema de ventilaci├│n	f
485	108	Riesgo de formaci├│n de hielo en el parabrisas o sensores	t
486	108	Sobrecalentamiento del motor	f
487	108	Fallo del freno de estacionamiento	f
488	108	Nivel bajo de bater├¡a de 12 V	f
489	109	Mediante el control del panel trasero o reposabrazos	t
490	109	Girando la rueda de volumen del sistema de infoentretenimiento	f
491	109	Presionando el bot├│n ECO	f
492	109	Manteniendo pulsado el freno de mano electr├│nico	f
493	110	Revisar y recargar gas refrigerante cada dos a├▒os	t
494	110	Cambiar el aceite del motor cada 5 000 km	f
495	110	Limpiar el radiador del motor anualmente	f
496	110	Ajustar la presi├│n de los neum├íticos regularmente	f
497	111	El sistema ajusta autom├íticamente temperatura, caudal y distribuci├│n del aire	t
498	111	Activa el modo Sport del veh├¡culo	f
499	111	Bloquea todas las puertas del coche	f
500	111	Desactiva el sistema de climatizaci├│n	f
501	103	Porque evita la entrada de aire caliente y acelera el proceso de enfriamiento	t
502	103	Porque reduce la potencia del ventilador	f
503	103	Porque desconecta la recirculaci├│n interna autom├íticamente	f
504	103	Porque sube la temperatura interior	f
505	104	Impide la entrada de aire exterior para evitar olores y polvo	t
506	104	Aumenta la velocidad del compresor	f
507	104	Activa el modo Sport autom├íticamente	f
508	104	Cierra las ventanillas electr├│nicamente	f
509	105	Detecta la ocupaci├│n y muestra ÔÇ£ECOÔÇØ en la temperatura de esa zona	t
510	105	Enciende un piloto amarillo en el climatizador	f
511	105	Desactiva la recirculaci├│n interna	f
512	105	Reduce la potencia del compresor	f
513	106	Seg├║n el programa de mantenimiento, como m├¡nimo cada a├▒o	t
514	106	Cada 20 000 km de forma obligatoria	f
515	106	Nunca, es de por vida	f
516	106	S├│lo si se usa recirculaci├│n continuamente	f
517	112	Dejar el sistema de refrigeraci├│n encendido pulsando el bot├│n A/C	t
518	112	Abrir las ventanillas ligeramente durante la marcha	f
519	112	Aumentar la velocidad del ventilador manualmente	f
520	112	Activar el modo ECO del climatizador	f
521	113	Al menos una vez al mes	t
522	113	S├│lo cuando baja la temperatura por debajo de 0 ┬░C	f
523	113	Cada vez que se cambian los neum├íticos	f
524	113	S├│lo si se enciende el testigo de aver├¡a	f
525	114	Porque el calor o fr├¡o del aire puede da├▒arlos o volverlos inadecuados para su uso	t
526	114	Porque pueden obstruir el filtro de polen	f
527	114	Porque reduce el caudal de aire en las plazas traseras	f
528	114	Porque desactiva el modo autom├ítico del climatizador	f
529	115	Tocando los n├║meros de temperatura en la Clima bar o usando las zonas t├íctiles 1 y 2	t
530	115	Girando el mando de volumen del sistema de infoentretenimiento	f
531	115	Manteniendo pulsado el bot├│n AUTO durante 5 s	f
532	115	Con el freno de estacionamiento accionado	f
533	116	Elimina hielo y condensaci├│n del parabrisas deshumidificando el aire y poniendo el ventilador al m├íximo	t
534	116	Activa la recirculaci├│n interna del aire	f
535	116	Enciende la luneta t├®rmica trasera autom├íticamente	f
536	116	Reduce la temperatura a 16 ┬░C de manera continua	f
537	117	Pulsar y mantener el bot├│n deseado, seleccionar la opci├│n en la lista desplegable y cerrar el cuadro	t
538	117	Mantener pulsado el bot├│n AUTO y A/C simult├íneamente	f
539	117	Presionar dos veces la zona t├íctil 1	f
540	117	Girarlo en sentido horario hasta que parpadee	f
541	118	Que est├® activado el servicio de personalizaci├│n CUPRA CONNECT	t
542	118	Que la temperatura exterior sea inferior a 5 ┬░C	f
543	118	Que el climatizador est├® en modo ECO	f
544	118	Que el freno de estacionamiento est├® puesto	f
545	119	Al activar el bot├│n Automatic heating bajo la imagen del asiento correspondiente	t
546	119	Al seleccionar el modo SPORT en el climatizador	f
547	119	Al abrir y cerrar dos veces la puerta del conductor	f
548	119	Al desconectar la bater├¡a de 12 V	f
549	120	Que acaba de comenzar el proceso de aprendizaje de h├íbitos de uso	t
550	120	Que el sistema no detecta ocupantes en los asientos	f
551	120	Que el nivel de calor est├í al m├¡nimo	f
552	120	Que la funci├│n de recirculaci├│n est├í activa	f
553	121	Tocando el s├¡mbolo de ventilaci├│n de asiento en la Climabar	t
554	121	Manteniendo pulsado el bot├│n AUTO durante 5 s	f
555	121	Girando la zona t├íctil de temperatura hacia la izquierda	f
556	121	Presionando el freno de mano electr├│nico	f
557	122	La ventilaci├│n del asiento se apaga autom├íticamente y el icono se pone gris tras unos 2 segundos	t
558	122	La ventilaci├│n permanece encendida hasta apagar manualmente el sistema	f
559	122	La temperatura del asiento sube al nivel m├íximo	f
560	122	Se desactiva el aire acondicionado del habit├ículo	f
561	123	El icono de ventilaci├│n en la pantalla del veh├¡culo se vuelve gris	t
562	123	Aparece un mensaje emergente diciendo ÔÇ£Ventilaci├│n offÔÇØ	f
563	123	Se enciende un piloto amarillo en el climatizador	f
564	123	Suena un aviso ac├║stico breve	f
565	124	A bajas temperaturas exteriores	t
566	124	Cuando llueve	f
567	124	En modo SPORT seleccionado	f
568	124	Al superar 80 km/h	f
569	125	A altas temperaturas exteriores	t
570	125	Cuando el veh├¡culo est├í parado	f
571	125	Al cerrar todas las puertas	f
572	125	Cuando la recirculaci├│n est├í activa	f
573	126	De la bater├¡a de alto voltaje del veh├¡culo o de una toma de corriente externa	t
574	126	Del sistema de frenos regenerativos	f
575	126	Del alternador del motor	f
576	126	Del circuito de iluminaci├│n interior	f
577	127	Desempa├▒ar y dejar libre de hielo y nieve el parabrisas (si la capa es fina)	t
578	127	Calentar el compartimento del motor para mejorar el arranque	f
579	127	Secar el techo solar autom├íticamente	f
580	127	Aumentar la carga de la bater├¡a de 12 V	f
581	128	Que la bater├¡a de alto voltaje est├® suficientemente cargada	t
582	128	Que el alternador est├® en funcionamiento	f
583	128	Que el climatizador est├® en modo SPORT	f
584	128	Que se hayan abierto las ventanillas previamente	f
585	129	Apagar la ignici├│n y pulsar ÔÇ£Immediate onÔÇØ en el men├║ de salida del infotainment	t
586	129	Mantener pulsado el bot├│n A/C durante 10 s	f
587	129	Conectar el veh├¡culo a la toma de carga	f
588	129	Abrir y cerrar dos veces la puerta del conductor	f
589	130	Aproximadamente 30 minutos	t
590	130	Aproximadamente 10 minutos	f
591	130	Una hora	f
592	130	Aproximadamente 15 minutos	f
593	131	Abrir el men├║ Stationary air conditioning, pulsar Departure, fijar la hora y activar la casilla	t
594	131	Mantener pulsado el bot├│n A/C durante 5 segundos	f
595	131	Conectar el cable de carga antes de arrancar el veh├¡culo	f
596	131	Seleccionar el modo SPORT en el climatizador	f
597	132	Calefacci├│n de asientos, volante y luneta trasera	t
598	132	Ventilaci├│n de asientos y enfriamiento de portaobjetos	f
599	132	Iluminaci├│n ambiental y sistema de audio	f
600	132	Apertura el├®ctrica de maletero y cristales	f
601	133	Aproximadamente 10 minutos	t
602	133	Aproximadamente 30 minutos	f
603	133	Cinco minutos	f
604	133	Veinte minutos	f
677	152	Visualmente a trav├®s de los orificios de las llantas o desde el vano inferior del veh├¡culo	t
678	152	Midiendo la presi├│n del l├¡quido de frenos	f
679	152	Con un im├ín en la superficie de la pastilla	f
680	152	Enviando una se├▒al al sistema de diagn├│stico	f
681	153	Que las pastillas delanteras est├ín desgastadas	t
682	153	Que el l├¡quido de frenos est├í bajo de nivel	f
683	153	Que hay un fallo en el ABS	f
684	153	Que el freno de mano est├í activado	f
685	154	Detener la marcha e informar a un taller especializado para inspecci├│n	t
686	154	Seguir conduciendo hasta el destino	f
687	154	Reiniciar el sistema el├®ctrico del veh├¡culo	f
688	154	Aumentar la presi├│n sobre el pedal de freno	f
689	155	Reducir la fuerza de conducci├│n en ruedas que patinan y adaptarla a las condiciones de la v├¡a	t
690	155	Evitar el bloqueo de las ruedas durante el frenado	f
691	155	Aumentar la presi├│n de frenado en emergencias	f
692	155	Distribuir electr├│nicamente la fuerza de frenado entre ejes	f
693	156	Activar autom├íticamente el frenado si el control de airbag detecta una colisi├│n y el conductor no acelera	t
694	156	Aumentar la presi├│n de frenado durante una colisi├│n m├║ltiple	f
695	156	Desactivar el ABS en caso de impacto lateral	f
696	156	Activar las luces de emergencia tras una colisi├│n	f
697	157	El ESC frena el veh├¡culo tractor para reducir el ÔÇ£snakingÔÇØ del remolque dentro de los l├¡mites del sistema	t
698	157	El ABS ajusta la presi├│n de frenado en el remolque ├║nicamente en curvas	f
699	157	El TCS desactiva el control de tracci├│n al llevar remolque	f
700	157	El EDS bloquea las ruedas traseras del remolque para mayor estabilidad	f
701	158	Suplementa la fuerza del conductor aumentando la presi├│n ejercida al pisar el pedal de freno	t
702	158	Reduce la presi├│n de frenado para favorecer la recuperaci├│n de energ├¡a	f
703	158	Desactiva el sistema de freno de estacionamiento al arrancar	f
704	158	Controla electr├│nicamente la distribuci├│n de frenado entre ejes	f
705	159	La aplicaci├│n regulada que combina el efecto de recuperaci├│n de energ├¡a del motor el├®ctrico y el frenado mec├ínico	t
706	159	La distribuci├│n electr├│nica de fuerza de frenado entre ejes	f
707	159	El aumento autom├ítico de presi├│n en frenadas de emergencia	f
708	159	La desactivaci├│n moment├ínea del ABS para mejorar adherencia	f
709	160	10 km/h	t
710	160	20 km/h	f
711	160	30 km/h	f
712	160	S├│lo en parado	f
713	161	ABS, EDS y TCS	t
714	161	S├│lo ABS y TCS	f
715	161	S├│lo EDS y ESC	f
716	161	Control de crucero adaptativo	f
717	162	La estabilizaci├│n se limita para una conducci├│n m├ís deportiva	t
718	162	Se mejora la recuperaci├│n de energ├¡a en frenadas	f
719	162	El ABS se desactiva completamente	f
720	162	El control de tracci├│n se desconecta	f
721	163	El control de crucero	t
722	163	El freno electr├│nico de estacionamiento	f
723	163	El asistente de carril	f
724	163	La recuperaci├│n de energ├¡a de frenado	f
725	164	Contactar a un taller especializado para revisar el sistema de frenos	t
726	164	Continuar conduciendo con normalidad	f
727	164	Aumentar la presi├│n sobre el pedal de freno	f
728	164	Resetear el ABS desde el men├║ de infoentretenimiento	f
729	165	Que el ESC o el TCS est├ín regulando la frenada	t
730	165	Que hay un fallo en el ABS	f
731	165	Que el sistema est├í desconectado	f
732	165	Que el freno de estacionamiento est├í activado	f
733	166	Acudir a un taller especializado para una inspecci├│n del sistema	t
734	166	Aumentar la velocidad a m├ís de 20 km/h para recalibrar el ESC	f
735	166	Conducir exclusivamente en modo ÔÇ£SportÔÇØ hasta que se apague	f
736	166	Desconectar y volver a conectar la bater├¡a del veh├¡culo	f
737	167	Porque los sistemas de asistencia est├ín interviniendo y regulando la frenada	t
738	167	Porque hay un fallo mec├ínico en los discos de freno	f
739	167	Por neum├íticos excesivamente desgastados	f
740	167	Por baja carga de la bater├¡a del veh├¡culo	f
749	172	ÔÇ£Driver assist now limited. Front sensors without visibilityÔÇØ acompa├▒ado de una se├▒al ac├║stica	t
750	172	ÔÇ£Radar sensor failure. Please service immediatelyÔÇØ	f
751	172	ÔÇ£Front camera unavailableÔÇØ sin se├▒al ac├║stica	f
752	172	ÔÇ£Adaptive Cruise Control desactivadoÔÇØ con alerta visual roja	f
753	173	Que el sensor quede permanentemente cubierto por suciedad, nieve o hielo	t
754	173	Que el veh├¡culo circule a m├ís de 160 m de distancia de cualquier objeto	f
755	173	Que el parabrisas est├® demasiado limpio	f
756	173	Que el motor alcance su temperatura ├│ptima de funcionamiento	f
757	174	Lluvia, niebla, nieve, barro, polvo o insectos en la zona del sensor	t
758	174	Solo lluvia intensa	f
759	174	Altas temperaturas del motor	f
760	174	Uso de luces antiniebla delanteras	f
761	175	Lane Assist, Travel Assist y Emergency Assist	t
762	175	Solo Lane Assist y Parking Assist	f
763	175	Adaptive Cruise Control y Front Assist	f
764	175	Blind Spot Monitoring y Traffic Sign Recognition	f
\.


--
-- Name: preguntas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preguntas_id_seq', 192, true);


--
-- Name: respuestas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.respuestas_id_seq', 764, true);


--
-- Name: preguntas preguntas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_pkey PRIMARY KEY (id);


--
-- Name: respuestas respuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_pkey PRIMARY KEY (id);


--
-- Name: respuestas respuestas_pregunta_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_pregunta_id_fkey FOREIGN KEY (pregunta_id) REFERENCES public.preguntas(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

