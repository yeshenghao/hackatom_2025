--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
-- SET transaction_timeout = 0;
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
1	¿Cuál es la distancia mínima recomendada entre el pecho y el panel de instrumentos para el pasajero delantero?	Safety
5	¿Cuál de las siguientes acciones está recomendada cuando el vehículo está en movimiento?	Safety
6	¿Cuál es la principal función de los cinturones de seguridad durante la marcha?	Safety
7	¿Qué color se enciende en el indicador de cinturón de seguridad cuando no está abrochado?	Safety
10	¿Qué indica una luz verde en el indicador de estado del cinturón de seguridad en el cuadro de instrumentos?	Safety
11	¿Cuándo se debe desabrochar el cinturón de seguridad?	Safety
12	¿Qué acción NO debe realizarse al abrochar el cinturón de seguridad?	Safety
13	¿Dónde debe situarse correctamente la parte de hombro del cinturón de seguridad?	Safety
14	¿Dónde debe situarse la parte abdominal (lap) del cinturón de seguridad?	Safety
15	¿Cómo debe colocarse el cinturón de seguridad en mujeres embarazadas?	Safety
16	¿Qué debe hacerse con el cinturón de seguridad para eliminar holguras antes de conducir?	Safety
17	¿Cómo se debe ajustar la altura del cinturón de seguridad en los asientos delanteros?	Safety
19	¿Cuál es la función del retractor automático del cinturón de seguridad?	Safety
20	¿Qué acción NO debe realizarse con el regulador de altura del cinturón de seguridad?	Safety
21	¿Cuál es la función del limitador de fuerza del cinturón de seguridad?	Safety
22	¿Qué debe hacerse con los pretensores de cinturón que se han disparado tras un accidente?	Safety
23	¿Qué acción realiza el sistema PreCrash al iniciar cada viaje?	Safety
24	¿Cuál de estas acciones puede realizar el sistema PreCrash en situaciones de riesgo inminente?	Safety
25	¿En qué situación el sistema PreCrash NO está disponible o tiene disponibilidad limitada?	Safety
26	Además del pretensado de los cinturones, ¿qué función puede realizar el sistema PreCrash?	Safety
27	¿De qué factores depende principalmente la activación de los airbags?	Safety
28	¿En cuál de estas situaciones los airbags NO se desplegarán necesariamente?	Safety
29	¿Qué factor es clave para la activación del sistema de airbags?	Safety
30	¿Qué debe asegurarse sobre los pedales para un funcionamiento correcto?	Driving
31	¿Por qué se recomienda llevar calzado adecuado al conducir?	Driving
32	¿Qué ocurre cuando se suelta el acelerador en posición D con Eco assist activado?	Driving
33	¿Cuál es el principal efecto de conducir a plena aceleración a altas velocidades?	Driving
34	¿Qué práctica es esencial para mantener la eficiencia y alargar la vida útil del vehículo?	Driving
35	¿Qué riesgo existe al colocar tapetes que obstruyan el área de los pedales?	Driving
36	¿Qué consecuencias tiene una presión de neumáticos demasiado baja?	Driving
37	¿Cómo se puede reducir el consumo de energía eliminando peso innecesario?	Driving
38	¿Qué medida ayuda a mantener la autonomía durante el uso de consumidores de confort?	Driving
39	¿Qué indica la advertencia sobre adaptar la velocidad y la distancia de seguridad?	Driving
40	¿Por qué es importante asegurar correctamente la carga que puede moverse?	Driving
41	¿Qué precaución se debe tomar respecto al transporte de grandes cantidades de líquido en el habitáculo?	Driving
42	¿Qué debe hacerse al conducir con el vehículo cargado?	Driving
43	¿Por qué es peligroso conducir con la tapa trasera abierta?	Driving
44	¿Qué efecto tiene abrir la tapa trasera en el arrastre aerodinámico y la autonomía del vehículo?	Driving
45	¿Qué profundidad máxima de agua se debe evitar al conducir por carreteras inundadas?	Driving
46	¿A qué velocidad se recomienda conducir en zonas inundadas?	Driving
47	¿Qué acción está prohibida al conducir en carreteras inundadas?	Driving
48	¿Qué puede ocurrir con la eficacia de frenado tras atravesar zonas inundadas?	Driving
49	¿Qué se recomienda antes de usar el vehículo en el extranjero?	Driving
50	¿Cuándo está disponible el par máximo del motor eléctrico?	Driving
51	¿Qué sucede al frenar el vehículo en condiciones normales?	Driving
52	¿Qué ocurre cuando la batería de alto voltaje está completamente cargada?	Driving
53	¿En qué condiciones se activa la función de avance lento («slow travel»)?	Driving
54	¿Cómo se desactiva la función de avance lento?	Driving
55	¿Por qué puede ser peligroso el bajo nivel de ruido de un vehículo eléctrico?	Driving
56	¿Qué medida debe adoptarse para evitar movimientos accidentales cuando está en D/B o R?	Driving
57	¿Cómo cambia el efecto de frenado del motor según el estado de carga de la batería?	Driving
58	¿Qué se recomienda antes de iniciar un descenso prolongado y pronunciado?	Driving
59	¿Quién no se hace responsable de daños al vehículo por falta de piezas genuinas?	Driving
60	¿Cómo limita el cable de carga la corriente en países con regulaciones distintas?	Driving
61	¿Qué sucede cuando la palanca está en D y Eco Assist está desactivado?	Driving
62	¿Cómo selecciona Eco Assist el nivel de recuperación de energía?	Driving
63	¿Qué posición del cambio ofrece recuperación intensa al descender o frenar?	Driving
64	¿Qué se recomienda al conducir en pendientes descendentes prolongadas?	Driving
65	¿Por qué puede cancelarse el efecto de frenado del motor eléctrico?	Driving
66	¿Qué precaución se debe tomar al cargar la batería de alto voltaje en altitudes elevadas?	Driving
67	¿Qué indica el testigo que señala "Now only manoeuvring is possible! Charge. Check the manual"?	Driving
68	¿Cuál es la función principal de Eco Assist?	Driving
69	¿Qué indica la lámpara de control «Limited power. Check the manual» cuando se enciende en amarillo?	Driving
70	¿Qué recomienda CUPRA cuando el estado de carga de la batería de alto voltaje es bajo?	Driving
71	¿Cuál es la velocidad máxima a la que solo es posible maniobrar cuando la batería está fría y el sistema ha encendido la lámpara de aviso?	Driving
72	¿Qué práctica recomienda CUPRA antes de partir si la temperatura exterior es muy baja?	Driving
73	¿Cuál es el procedimiento correcto para conectar el sistema de propulsión con la llave vía detección automática?	Driving
74	¿Qué condiciones deben cumplirse para conectar el sistema de propulsión manualmente?	Driving
75	¿Qué ocurre si se abandona el vehículo con la ignición encendida y sin llave presente?	Driving
76	¿Cómo se debe realizar el encendido del sistema de propulsión desde detenido?	Driving
77	¿Por qué el nivel de ruido reducido de un vehículo eléctrico puede ser peligroso?	Driving
78	¿Qué debe asegurarse al dejar el vehículo estacionado?	Driving
79	¿Cuándo se encienden automáticamente las luces de posición tras apagar la ignición y cuánto duran?	Driving
80	¿Por qué solo deben usarse llaves CUPRA originales?	Driving
81	¿Qué es e-Sound en un vehículo eléctrico?	Driving
82	¿Qué precaución tomar si hay nieve o suciedad en la parrilla delantera que limite e-Sound?	Driving
83	¿Cuál es el procedimiento de arranque de emergencia si la llave no es reconocida?	Driving
84	¿Cómo se realiza la desconexión de emergencia del sistema de propulsión?	Driving
85	¿Qué debe hacerse si no se puede conectar el sistema de propulsión por llave no autorizada o fallo?	Driving
86	¿Qué hacer si e-Sound no funciona correctamente?	Driving
87	¿Qué significa la posición B en el selector de marchas?	Driving
88	¿Cómo se cambia entre D y B en el selector de marchas?	Driving
89	¿Cuál es la función del freno de estacionamiento electrónico (P)?	Driving
90	¿Qué riesgo advierte la interfaz sobre una aceleración rápida en modo B?	Driving
91	¿Qué puede suceder si se desconecta el TCS en calzada mojada o sucia?	Driving
92	¿Qué indicador muestra la recuperación de energía automática en el cuadro?	Driving
93	¿Cómo se selecciona manualmente el nivel de recuperación de energía?	Driving
94	¿Qué ocurre si no se selecciona ningún nivel de recuperación tras soltar el acelerador?	Driving
95	¿Qué icono indica recuperación media en la instrumentación?	Driving
96	¿Qué advertencia aparece al activar alta recuperación de energía?	Driving
97	¿Qué debe hacerse si el sistema de propulsión eléctrica se sobrecalienta?	Driving
98	¿Qué indica el testigo amarillo de fallo de recuperación y ABS?	Driving
99	¿Qué ajusta automáticamente la dirección en vehículos con dirección electromecánica?	Driving
100	¿Qué sucede si la dirección asistida no funciona con el sistema de propulsión desconectado?	Driving
101	¿Cómo se bloquea la columna de dirección electrónicamente al dejar el vehículo?	Driving
102	¿Qué recomienda el sistema Steering assist en situaciones críticas?	Driving
112	¿Qué ocurre si el nivel de refrigerante del aire acondicionado es bajo?	Air conditioning
113	¿Para qué sirve el filtro de pólen en el sistema de climatización?	Air conditioning
114	¿Qué indica el testigo de hielo en el climatizador?	Air conditioning
115	¿Cómo se ajusta la temperatura de la zona trasera en un climatizador bizona?	Air conditioning
116	¿Qué recomienda el manual para el mantenimiento del aire acondicionado?	Air conditioning
117	¿Qué función activa el botón AUTO en el climatizador?	Air conditioning
118	¿Cómo activar la recirculación interna del aire en el sistema de climatización?	Air conditioning
119	¿Qué función tiene el botón ECO en el climatizador automático?	Air conditioning
120	¿Cómo desempañar rápidamente el parabrisas con climatizador automático?	Air conditioning
121	¿Qué ocurre si el nivel de refrigerante del aire acondicionado es bajo?	Air conditioning
122	¿Para qué sirve el filtro de pólen en el sistema de climatización?	Air conditioning
123	¿Qué indica el testigo de hielo en el climatizador?	Air conditioning
124	¿Cómo se ajusta la temperatura de la zona trasera en un climatizador bizona?	Air conditioning
125	¿Qué recomienda el manual para el mantenimiento del aire acondicionado?	Air conditioning
126	¿Qué función activa el botón AUTO en el climatizador?	Air conditioning
127	¿Por qué es mejor mantener el habitáculo cerrado para un rendimiento óptimo del aire acondicionado?	Air conditioning
128	¿Qué hace la función de recirculación interna del aire?	Air conditioning
129	¿Cómo reconoce el sistema si hay alguien en el asiento del pasajero delantero?	Air conditioning
130	¿Con qué frecuencia debe cambiarse el filtro de polvo y polen para mantener el rendimiento?	Air conditioning
131	¿Qué recomienda el fabricante para evitar el empañamiento de las ventanas cuando el sistema de refrigeración está apagado?	Air conditioning
132	¿Con qué frecuencia es aconsejable encender el aire acondicionado para lubricar las juntas y prevenir fugas?	Air conditioning
133	¿Por qué no se deben colocar alimentos, medicamentos u objetos sensibles a la temperatura cerca de las salidas de aire?	Air conditioning
152	¿Cuál es el tiempo máximo de prefuncionamiento de los consumidores de confort antes de la hora de salida?	Air conditioning
153	¿Cómo se activa el aire acondicionado del vehículo tras desbloquearlo?	Air conditioning
154	¿Durante cuánto tiempo se climatiza el vehículo tras desbloquearlo con esta función activada?	Air conditioning
155	¿Cómo puedes consultar la próxima vez programada en que se activará el aire acondicionado estacionario?	Air conditioning
156	¿Qué acción proporciona acceso a información detallada sobre la función de aire acondicionado estacionario?	Air conditioning
157	¿Qué debes comprobar respecto a las alfombrillas para evitar obstruir los pedales?	Driving
158	¿Por qué no se deben colocar objetos en el espacio del pie del conductor?	Driving
159	¿Qué tipo de calzado se recomienda llevar al conducir para un buen manejo de los pedales?	Driving
160	¿Qué debes asegurarte sobre el recorrido de los pedales antes de iniciar la marcha?	Driving
161	¿Por qué una presión muy baja en los neumáticos reduce la autonomía del vehículo?	Driving
162	¿Qué debes hacer para reducir el consumo energético antes de arrancar el vehículo?	Driving
163	¿Cómo puedes maximizar el alcance ajustando la climatización según la temperatura exterior?	Driving
164	¿Qué práctica es recomendable al conducir con el vehículo cargado para mantener la seguridad y la eficiencia?	Driving
165	¿Por qué no se debe conducir con la tapa del maletero trasero abierta?	Driving
166	¿Hasta qué altura no debe llegar el agua al conducir por zonas inundadas?	Driving
167	¿Qué se recomienda si el vehículo se detiene en el agua al conducir por zonas inundadas?	Driving
172	¿Qué indica el testigo amarillo de desgaste de las pastillas de freno?	Driving
173	Al detectarse un fallo en el sistema de frenos y encenderse la luz de advertencia roja, ¿qué debe hacer el conductor?	Driving
174	¿Cuál es la función principal del sistema de control de tracción (TCS)?	Driving
175	¿Cuál es la función del freno multi-colisión?	Driving
176	¿En qué consiste la estabilización de remolque (“Trailer stabilisation”)?	Driving
177	¿Qué hace el servo de freno electromecánico (eBKV) con el encendido activado?	Driving
178	¿Qué es el “brake blending” en los sistemas de asistencia de frenado?	Driving
179	¿A qué velocidad máxima puede desconectarse el ESC?	Driving
180	¿Qué sistemas incluye y controla automáticamente el ESC al arrancar el motor?	Driving
181	¿Qué ocurre cuando el ESC está conectado en modo “Sport”?	Driving
182	¿Qué se desactiva automáticamente si se selecciona “Sport” o “ESC OFF”?	Driving
183	¿Qué debe hacer el conductor si el testigo de ABS se enciende en amarillo?	Driving
192	¿Qué funciones ofrece la cámara frontal montada en el parabrisas?	Drive assist sensors and cameras
193	¿Dónde se encuentran ubicados los sensores de radar traseros?	Assistant systems
194	¿Qué funciones de asistencia proporcionan los sensores de radar traseros?	Assistant systems
195	¿Qué situación puede provocar la desactivación automática de los sensores de radar traseros?	Assistant systems
196	¿Qué indica el testigo de Exit Warning no disponible?	Assistant systems
197	¿Qué puede ocurrir con los sensores de radar traseros en caso de colisión, por ejemplo al entrar o salir de un estacionamiento?	Drive assist sensors and cameras
198	¿Qué tipo de pintura debe usarse en el paragolpes trasero para evitar limitaciones en las funciones de asistencia?	Drive assist sensors and cameras
199	¿Qué cámaras conforman el sistema Area View según el equipo del vehículo?	Drive assist sensors and cameras
\.


--
-- Data for Name: respuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.respuestas (id, pregunta_id, texto, es_correcta) FROM stdin;
1	1	10cm	f
2	1	15cm	f
3	1	25cm	t
4	1	20cm	f
33	5	El asiento está ocupado y el ocupante lleva abrochado el cinturón	t
34	5	El asiento está ocupado y el ocupante no lleva abrochado el cinturón	f
35	5	El asiento no está ocupado	f
36	5	Que hay un fallo en el cinturón de seguridad	f
37	6	Cuando el vehículo esté completamente detenido	t
38	6	Mientras el vehículo está en movimiento	f
39	6	Antes de iniciar el viaje	f
40	6	Al ajustar el asiento y el reposacabezas	f
41	7	Retorcer el cinturón cuando lo pasas por el cuerpo	t
42	7	Insertar la lengüeta en la hebilla	f
43	7	Ajustar el respaldo en posición vertical	f
44	7	Estirar el cinturón para asegurar que la lengüeta encaje	f
53	10	La cinta diagonal por el centro del pecho y la abdominal lo más baja posible sobre la pelvis	t
54	10	La cinta diagonal detrás de la espalda y la abdominal sobre el abdomen	f
55	10	Ambas cintas cruzando el abdomen por encima de la barriga	f
56	10	Solo la cinta abdominal ajustada bajo las costillas	f
57	11	Tirar del cinturón para eliminar las holguras	t
58	11	Retorcer el cinturón para que quede firme	f
59	11	Colocar el cinturón bajo el asiento para tensarlo	f
60	11	Aflojar el cinturón un poco para mayor comodidad	f
61	12	Presionando el dispositivo de guía y moviéndolo hasta que la cinta quede sobre el centro del hombro	t
62	12	Girando el reposacabezas en sentido horario	f
63	12	Ajustando la altura mientras el vehículo está en movimiento	f
64	12	Retirando el cinturón del lazo y pasándolo por detrás del respaldo	f
69	13	Permite libertad de movimiento en marcha normal y bloquea el cinturón en frenadas bruscas	t
70	13	Ajustar automáticamente la altura del cinturón en el hombro	f
71	13	Tensar el cinturón para eliminar holguras al iniciar el viaje	f
72	13	Relajar el cinturón en curvas y aceleraciones suaves	f
73	14	Ajustar la altura del cinturón mientras el vehículo está en movimiento	t
74	14	Mantener presionado el dispositivo de guía al ajustar la altura	f
75	14	Soltar el dispositivo de guía una vez ajustada la posición	f
76	14	Tirar del cinturón para comprobar que la hebilla está bien enganchada	f
77	15	Reducir la fuerza que el cinturón ejerce sobre el cuerpo durante un accidente	t
78	15	Aumentar la tensión del cinturón automáticamente al frenar	f
79	15	Liberar un polvo fino al activarse el pretensor	f
80	15	Ajustar la altura del cinturón en el hombro según la ocupación	f
81	16	Reemplazarlos de inmediato por piezas nuevas aprobadas	t
82	16	Limpiarlos y volver a instalarlos	f
83	16	Repararlos en un taller no especializado	f
84	16	Reutilizarlos tras comprobar su funcionamiento	f
85	17	Pretensar automáticamente los cinturones de seguridad de conductor y pasajero delantero	t
86	17	Activar el sistema de frenos ABS en ralentí	f
87	17	Desplegar los airbags frontales	f
88	17	Desconectar los tensores de los cinturones traseros	f
93	19	Cuando se conduce en marcha atrás	t
94	19	Cuando el control de estabilidad (ESC) está activado	f
95	19	Cuando la unidad de control de airbags funciona correctamente	f
96	19	Cuando la velocidad es inferior a 30 km/h	f
97	20	Cerrar automáticamente las ventanillas hasta dejar una pequeña ranura	t
98	20	Desplegar el airbag lateral antes de la colisión	f
99	20	Aumentar la sensibilidad del control de tracción	f
100	20	Activar el servofreno de emergencia al pisar suavemente	f
101	21	Del tipo de accidente, el ángulo de impacto y la velocidad del vehículo	t
102	21	Del color del vehículo y las condiciones meteorológicas	f
103	21	Del peso del ocupante y la presión de los neumáticos	f
104	21	Del nivel de combustible y el estado de la batería	f
105	22	Cuando el encendido esté apagado	t
106	22	En una colisión frontal grave	f
107	22	En caso de frenada de emergencia	f
108	22	Cuando el vehículo circule a más de 30 km/h	f
109	23	La trayectoria de deceleración evaluada por la unidad de control	t
110	23	La velocidad del vehículo al colisionar	f
111	23	El ángulo de impacto	f
112	23	Las propiedades del objeto impactado	f
113	24	Que siempre puedan regresar sin atascarse a su posición inicial	t
114	24	Que tengan la altura adecuada para el conductor	f
115	24	Que estén pintados de color rojo para mayor visibilidad	f
116	24	Que estén fabricados en acero inoxidable	f
117	25	Para asegurar un buen control y sensación al pisar los pedales	t
118	25	Porque mejora el consumo de combustible	f
119	25	Para que el pie no se deslice dentro del vehículo	f
120	25	Porque lo exige la normativa de tráfico	f
121	26	El vehículo desacelera y recupera energía para recargar la batería	t
122	26	El coche mantiene la velocidad actual indefinidamente	f
123	26	Se activa el control de estabilidad automáticamente	f
124	26	El motor pasa a modo de potencia máxima	f
125	27	Aumenta la resistencia aerodinámica y reduce la autonomía	t
126	27	Mejora la estabilidad en curvas cerradas	f
127	27	Disminuye el consumo de energía eléctrica	f
128	27	Activa el modo deportivo del vehículo	f
129	28	Realizar un mantenimiento regular según el plan del fabricante	t
130	28	Conducir siempre en modo Eco	f
131	28	Usar siempre tapetes de goma	f
132	28	Evitar conducir bajo lluvia intensa	f
133	29	Pueden interferir con la operación de los pedales y causar accidentes	t
134	29	Reducen la carga de la batería en modo eléctrico	f
135	29	Mejoran la insonorización del habitáculo	f
136	29	Incrementan la estabilidad del vehículo en curva	f
137	30	Aumenta la resistencia a la rodadura y reduce la autonomía del vehículo	t
138	30	Disminuye el desgaste de los neumáticos	f
139	30	Mejora la comodidad de marcha	f
140	30	Reduce el consumo de energía del sistema de alta tensión	f
141	31	Vaciando el compartimento de equipaje de objetos no usados antes de iniciar el viaje	t
142	31	Conduciendo siempre en modo Sport	f
143	31	Aumentando la presión de los neumáticos por encima de lo recomendado	f
144	31	Usando portaequipajes aunque no lleve carga	f
145	32	Ajustar temperaturas interiores altas en verano y bajas en invierno, y ventilar el habitáculo antes de arrancar si hace calor	t
146	32	Usar el climatizador automático al 100% en todo momento	f
147	32	Mantener siempre las ventanillas bajadas	f
148	32	Conducir con el modo de recuperación de energía desactivado	f
149	33	Ajustar siempre la velocidad y la distancia según la visibilidad, el clima, la carretera y el tráfico	t
150	33	Mantener la misma distancia aunque cambien las condiciones meteorológicas	f
151	33	Sólo reducir la velocidad en curvas cerradas	f
152	33	Aumentar la velocidad para despejar pronto la vía	f
153	34	Porque podría desestabilizar el vehículo y aumentar la distancia de frenado	t
154	34	Para reducir el consumo de batería en modo eléctrico	f
155	34	Para mejorar la aerodinámica a alta velocidad	f
156	34	Para aumentar la capacidad de carga máxima	f
157	35	No transportar grandes cantidades de líquido porque podría dañar el sistema eléctrico y la batería de alto voltaje	t
158	35	Mantener siempre los líquidos en el maletero sin asegurar	f
159	35	Transportar líquidos sólo en envases de plástico blando	f
160	35	Usar recipientes transparentes para ver el nivel del líquido	f
161	36	Colocar todo el equipaje de forma segura y evitar frenadas bruscas y maniobras repentinas	t
162	36	Aumentar la presión de los neumáticos a tope	f
163	36	Mantener siempre la caja de cambios en neutro	f
164	36	Desactivar todos los sistemas de asistencia al conductor	f
165	37	Porque los objetos podrían salir despedidos y desestabilizar el vehículo	t
166	37	Porque reduce automáticamente la potencia del motor	f
167	37	Porque activa la señal de emergencia de forma continua	f
168	37	Porque bloquea el sistema de frenos antibloqueo	f
169	38	Aumenta el arrastre aerodinámico y eleva el consumo de energía, reduciendo la autonomía	t
170	38	Disminuye la resistencia al avance y aumenta la autonomía	f
171	38	No tiene ningún efecto sobre la autonomía	f
172	38	Mejora la refrigeración del sistema eléctrico	f
173	39	El agua no debe superar el borde inferior de la carrocería	t
174	39	Puede llegar hasta la cintura del ocupante	f
175	39	No importa la profundidad mientras se conduzca despacio	f
176	39	Solo debe cubrir parcialmente las ruedas traseras	f
177	40	A velocidad de peatón	t
178	40	A velocidad de autopista	f
179	40	A la velocidad máxima permitida en la vía	f
180	40	A la velocidad establecida por el control de crucero	f
181	41	Detener el vehículo en el agua	t
182	41	Reducir la velocidad manteniendo la marcha hacia adelante	f
183	41	Conectar el sistema de tracción en las cuatro ruedas	f
184	41	Activar las luces antiniebla	f
185	42	La eficacia de frenado puede disminuir si los discos o pastillas están húmedos	t
186	42	El sistema antibloqueo se desactiva permanentemente	f
187	42	Aumenta automáticamente la potencia de frenado	f
188	42	Los frenos regenerativos dejan de funcionar indefinidamente	f
189	43	Consultar las regulaciones legales del país de destino antes de viajar	t
190	43	Solo comprobar la fecha de fabricación del vehículo	f
191	43	No hace falta ninguna comprobación si el viaje es corto	f
192	43	Desactivar todas las funciones de asistencia al conductor	f
193	44	Inmediatamente después de pisar el acelerador	t
194	44	Cuando el vehículo supera los 30 km/h	f
195	44	Al activar el modo Sport	f
196	44	Con el freno regenerativo desactivado	f
197	45	Se genera energía eléctrica que se almacena en la batería de alto voltaje	t
198	45	El sistema de propulsión se desconecta automáticamente	f
199	45	Se activa el modo de descenso rápido	f
200	45	Se apaga el motor eléctrico para conservar energía	f
201	46	No se produce recuperación de energía y no hay efecto de frenado del motor	t
202	46	Se incrementa la intensidad de la recuperación de energía	f
203	46	El motor eléctrico pasa a modo de reserva	f
204	46	Se activa el freno de mano automáticamente	f
205	47	Con el sistema de propulsión encendido y la palanca en D/B o R, y sin pisar el acelerador	t
206	47	Solo con la palanca en N y freno de mano desactivado	f
207	47	Al superar 10 km/h en modo Eco	f
208	47	Con el control de crucero adaptativo activo	f
209	48	Moviendo la palanca a N o accionando el freno de estacionamiento electrónico	t
210	48	Pisando simultáneamente acelerador y freno	f
211	48	Desconectando el modo Eco	f
212	48	Abriendo la puerta del conductor	f
213	49	Porque peatones y otros usuarios pueden no oírlo y provocarse accidentes	t
214	49	Porque reduce la autonomía del vehículo	f
215	49	Porque aumenta el desgaste de los frenos	f
216	49	Porque activa la alarma de colisión trasera	f
217	50	Mantener pisado el pedal de freno	t
218	50	Desactivar el sistema de propulsión	f
219	50	Colocar el freno de mano mecánico	f
220	50	Abrir la ventanilla del conductor	f
221	51	A mayor carga de la batería, disminuye la recuperación y puede cancelarse el frenado del motor	t
222	51	A mayor carga de la batería, aumenta el frenado del motor	f
223	51	El efecto de frenado del motor es independiente del estado de carga	f
224	51	El sistema cambia a modo Sport automáticamente	f
225	52	Reducir la velocidad usando el freno del vehículo	t
226	52	Subir la presión de los neumáticos al máximo	f
227	52	Desactivar la recuperación de energía	f
228	52	Conducir en modo Sport	f
229	53	CUPRA no se hace responsable de daños por trabajo insuficiente o falta de piezas genuinas	t
230	53	El concesionario local	f
231	53	El fabricante de las baterías	f
232	53	El taller de reparaciones independiente	f
233	54	La corriente de carga se ajusta al valor más bajo permitido por la infraestructura	t
234	54	Se desactiva la carga rápida independientemente de las regulaciones	f
235	54	El vehículo no puede cargarse hasta estar fuera del país	f
236	54	Solo permite cargar al 50% de la capacidad de la batería	f
237	55	No tiene lugar recuperación de energía	t
238	55	Se activa la recuperación máxima automáticamente	f
239	55	El sistema de recuperación pasa a modo B	f
240	55	Se enciende el testigo de fallo de freno regenerativo	f
241	56	Basándose en datos de navegación y la situación del tráfico	t
242	56	Según la temperatura ambiente	f
243	56	En función del estilo de conducción manual del conductor	f
244	56	Uniendo el consumo de aire acondicionado y el modo Sport	f
245	57	La posición B	t
246	57	La posición N	f
247	57	La posición S	f
248	57	La posición P	f
249	58	Seleccionar B siempre que sea posible y no dejar rodar en N	t
250	58	Dejar rodar en N para ahorrar energía	f
251	58	Subir a D para aumentar la velocidad de descenso	f
252	58	Desactivar Eco Assist para máximo frenado	f
253	59	Porque la batería está completamente cargada y no hay recuperación	t
254	59	Porque la temperatura del motor es demasiado baja	f
255	59	Porque se activa el modo Sport	f
256	59	Porque el vehículo circula a menos de 5 km/h	f
257	60	No cargarla completamente para habilitar la recuperación en el descenso	t
258	60	Usar siempre corriente alterna en lugar de continua	f
259	60	Desconectar el Eco Assist durante la carga	f
260	60	Mantener la palanca en P mientras carga	f
261	61	Que la potencia del sistema está muy limitada y solo queda maniobrar	t
262	61	Que el freno de mano electrónico está bloqueado	f
263	61	Que el climatizador ha fallado	f
264	61	Que el sensor de presión de neumáticos está dañado	f
265	62	Ayudar al conductor a usar de manera eficiente el efecto de frenado del motor eléctrico	t
266	62	Aumentar automáticamente la potencia del motor en modo Sport	f
267	62	Controlar la temperatura interior del vehículo	f
268	62	Desactivar el sistema de recuperación al frenar	f
269	63	Que la potencia del sistema se ha reducido significativamente y puede seguir disminuyendo	t
270	63	Que el frenado regenerativo está al máximo	f
271	63	Que el climatizador funciona con normalidad	f
272	63	Que la batería de 12 V está completamente cargada	f
273	64	Cargar la batería de alto voltaje lo antes posible	t
274	64	Desactivar todos los sistemas de confort para ahorrar energía	f
275	64	Conducir en modo Sport hasta encontrar un cargador	f
276	64	Dejar el vehículo en ralentí hasta que recupere potencia	f
277	65	Hasta 7 km/h	t
278	65	Hasta 15 km/h	f
279	65	Hasta 3 km/h	f
280	65	Solo marcha atrás indefinidamente	f
281	66	Precalentar el vehículo mientras está aparcado para calentar la batería de alto voltaje	t
282	66	Desactivar el sistema de recuperación de energía	f
283	66	Dejar las ventanillas bajadas para evitar condensación	f
284	66	Conducir directamente sin arrancar el motor eléctrico	f
285	67	Entrar al vehículo, pisar el freno y seleccionar D o R; el cuadro indicará READY	t
286	67	Abrir la puerta, cerrar la ventanilla y pisar el embrague	f
287	67	Colocar la palanca en N y esperar dos minutos	f
288	67	Presionar el botón de luces y el freno a la vez	f
289	68	Batería con carga suficiente, sin cable de carga enchufado, temperatura HV en rango y llave válida dentro	t
290	68	Batería con carga baja, cable enchufado y sin llave en el vehículo	f
291	68	Solo con llave extraída y cable de carga conectado	f
292	68	Con el freno de mano desactivado y palanca en P	f
293	69	La ignición se apaga automáticamente tras cierto tiempo y se aplica el freno de estacionamiento electrónico	t
294	69	La batería de 12 V se desconecta inmediatamente	f
295	69	Se activa el modo Sport de forma permanente	f
296	69	El vehículo emite un pitido continuo sin más acciones	f
297	70	Pisando el pedal de freno y pulsando una vez el botón de encendido/arranque	t
298	70	Sin pisar freno, pulsando dos veces rápidamente el botón de encendido	f
299	70	Con la palanca en N y la puerta abierta	f
300	70	Presionando simultáneamente freno y acelerador	f
301	71	Porque otros usuarios de la vía y peatones pueden no oírlo y provocar accidentes	t
302	71	Porque aumenta la autonomía sin control del conductor	f
303	71	Porque daña la batería de bajo voltaje	f
304	71	Porque interfiere con el sistema de navegación	f
305	72	Que esté aplicado el freno de estacionamiento electrónico y todas las puertas, ventanas, tapa trasera y capó frontal estén cerrados y bloqueados	t
306	72	Que el vehículo esté en punto muerto con freno desactivado	f
307	72	Que las ventanillas estén bajadas y la música esté activada	f
308	72	Que solo la puerta del conductor esté cerrada	f
309	73	Cuando los faros de cruce estaban encendidos al apagar la ignición; permanecen hasta bloquear el vehículo o durante unos 15 minutos aproximadamente	t
310	73	Cuando las luces antiniebla estaban encendidas; se apagan al cerrar las puertas	f
311	73	Cuando se desactiva el freno de mano; permanecen indefinidamente	f
312	73	Cuando el vehículo alcanza 10 km/h tras apagar la ignición; duran 5 minutos	f
313	74	Porque solo con ellas se garantiza el correcto funcionamiento del vehículo	t
314	74	Porque las llaves de otros fabricantes no ajustan la cerradura	f
315	74	Porque dañan el sistema de climatización	f
316	74	Porque impiden el ahorro de batería	f
317	75	Un sonido generado electrónicamente para advertir a otros usuarios de la presencia del vehículo	t
318	75	Un altavoz opcional para música en el maletero	f
319	75	Un sistema de aviso acústico para el navegador	f
320	75	Una alarma anti-robo activada a bajas velocidades	f
321	76	Comprobar que la parrilla delantera no esté muy sucia y limpiarla si es necesario; asumir que otros pueden no oír el vehículo	t
322	76	Desactivar e-Sound y confiar en la campana manual	f
323	76	Aumentar el volumen de la radio para generar sonido ambiente	f
324	76	Poner cinta reflectante en la parrilla para advertir a peatones	f
325	77	Colocar la llave en el centro del posavasos central, lo más cerca posible del símbolo, y pisar el freno o pulsar el botón de encendido/arranque	t
326	77	Sacar la llave y volver a insertarla en la cerradura de la puerta	f
327	77	Mantener pulsado el botón del maletero durante 10 segundos	f
328	77	Desconectar y reconectar la batería de 12 V	f
329	78	Detener el vehículo y pulsar el botón de ignición/arranque dos veces rápidamente o mantenerlo pulsado una vez	t
330	78	Sacar la llave del contacto y tirar del freno de mano manual	f
331	78	Desconectar el cable de carga del puerto de recarga	f
332	78	Pisar simultáneamente freno y acelerador durante 5 segundos	f
333	79	Usar una llave autorizada y, si persiste el fallo, buscar asistencia especializada	t
334	79	Cambiar la batería del teléfono móvil conectado al vehículo	f
335	79	Desactivar todos los sistemas de asistencia y reintentar	f
336	79	Ajustar el control de crucero adaptativo al modo Eco	f
337	80	Contactar con un taller especializado, ya que es posible continuar conduciendo	t
338	80	Reiniciar el sistema de infotainment desde el menú de servicio	f
339	80	Forzar e-Sound con el volumen al máximo	f
340	80	Desplegar un altavoz exterior auxiliar	f
341	81	Recuperación intensa de energía de frenado durante la deceleración	t
342	81	Marcha atrás para maniobras en espacio reducido	f
343	81	Posición neutra sin transmisión de movimiento	f
344	81	Modo Sport para aceleraciones rápidas	f
345	82	Girando el selector hacia adelante desde D/B hasta la segunda posición y soltándolo	t
346	82	Presionando un botón en el volante	f
347	82	Manteniendo pulsado el freno de estacionamiento electrónico	f
348	82	Moviendo la palanca a P y luego a B	f
349	83	Bloquear mecánicamente las ruedas cuando el vehículo está detenido	t
350	83	Activar automáticamente la recuperación de energía en pendiente	f
351	83	Desconectar la batería de alto voltaje al aparcar	f
352	83	Mantener la posición B sin mover la palanca	f
353	84	Pérdida de tracción y posible derrape del vehículo en superficies resbaladizas	t
354	84	Desconexión del sistema de recuperación de energía	f
355	84	Fallo permanente del motor eléctrico	f
356	84	Bloqueo del volante	f
357	85	Las ruedas pueden deslizarse y el vehículo perder dirección	t
358	85	Aumenta automáticamente la recuperación de energía	f
359	85	El freno de estacionamiento se aplica solo	f
360	85	Se activa el modo Sport de manera inesperada	f
361	86	Una A junto al icono de recuperación	t
362	86	Un símbolo de freno con ondas azules	f
363	86	Una flecha circular verde	f
364	86	Un triángulo amarillo con exclamación	f
365	87	Pulsando las levas del volante + o – con el modo D seleccionado y ECO asistido desactivado	t
366	87	Girando el selector de marchas de D a N	f
367	87	Manteniendo pisado el freno de estacionamiento electrónico	f
368	87	Presionando el botón de SPORT en el volante	f
369	88	El vehículo avanzará sin efecto de recuperación de energía	t
370	88	Se activa el freno de mano automáticamente	f
371	88	El motor cambia a modo de ahorro máximo	f
372	88	Se enciende el testigo de fallo de recuperación	f
373	89	Icono intermedio de flecha con barra de color medio	t
374	89	Una A completa	f
375	89	Flecha única simple	f
376	89	Triángulo con signo de exclamación	f
377	90	Peligro de pérdida de tracción o derrape en carreteras deslizantes	t
378	90	Bloqueo del freno de estacionamiento electrónico	f
379	90	Desgaste acelerado de los neumáticos	f
380	90	Desconexión del sistema anticollisión	f
381	91	Detener el vehículo inmediatamente, arrancar al aire libre, desconectar el sistema y buscar asistencia	t
382	91	Pisar fuerte el acelerador para forzar la refrigeración	f
383	91	Esperar sentado dentro del vehículo hasta que se enfríe	f
384	91	Continuar conduciendo a baja velocidad sin más acciones	f
385	92	Que hay una avería en el sistema de recuperación y el alcance puede reducirse	t
386	92	Que el ABS está desactivado permanentemente	f
387	92	Que la batería de 12 V está descargada	f
388	92	Que el control de crucero adaptativo está activo	f
389	93	El par de giro de volante y la orientación de las ruedas según la velocidad	t
390	93	La presión de los neumáticos en función de la temperatura	f
391	93	La intensidad de la iluminación ambiente	f
392	93	El nivel de recuperación de energía al frenar	f
393	94	Hace falta aplicar mucha más fuerza para girar el volante	t
394	94	Se bloquea la columna de dirección automáticamente	f
395	94	Activa el freno de estacionamiento electrónico	f
396	94	Reduce la recuperación de energía al frenar	f
397	95	Deteniendo el vehículo, aplicando el freno de estacionamiento y saliendo sin pulsar el botón de arranque	t
398	95	Colocando la palanca en N y cerrando la puerta	f
399	95	Manteniendo pulsado el freno y el acelerador simultáneamente	f
400	95	Girando el volante hasta el tope antes de salir	f
401	96	Realizar un contragiro suave para evitar derrapes	t
402	96	Aumentar la presión de frenado al máximo	f
403	96	Activar el control de crucero adaptativo	f
404	96	Desconectar la eletrónica del vehículo	f
405	97	Falla en la dirección electromecánica o bloqueo de columna que requiere asistencia	t
406	97	Nivel de batería de 12 V bajo	f
407	97	El freno de estacionamiento no está aplicado	f
408	97	Se ha activado el modo Sport	f
409	98	Para adaptar sistema de suspensión, dirección, propulsión y climatización al estilo de conducción	t
410	98	Para ajustar únicamente el volumen del sistema de sonido	f
411	98	Para cambiar el tamaño de las ruedas electrónicamente	f
412	98	Para desactivar las luces diurnas	f
413	99	Entrando a “Drive Profile” en el menú principal	t
414	99	Pulsando el botón de luces largas en el volante	f
415	99	Manteniendo pulsado el pedal de freno durante 10 s	f
416	99	Girando el selector de marchas a P	f
417	100	El botón con el logotipo CUPRA en el volante multifunción	t
418	100	El botón de volumen +	f
419	100	El botón de llamada telefónica	f
420	100	El botón de control de crucero adaptativo	f
421	101	Presionando “Information” en el sistema de infoentretenimiento	t
422	101	Manteniendo pulsado el botón START/STOP	f
423	101	Girando el volante completamente a la izquierda	f
424	101	Colocando la palanca en posición N	f
425	102	Porque distrae la atención y puede causar accidentes	t
426	102	Porque desactiva el ABS automáticamente	f
427	102	Porque apaga las luces de freno	f
428	102	Porque bloquea el sistema de infoentretenimiento	f
517	112	Dejar el sistema de refrigeración encendido pulsando el botón A/C	t
518	112	Abrir las ventanillas ligeramente durante la marcha	f
519	112	Aumentar la velocidad del ventilador manualmente	f
520	112	Activar el modo ECO del climatizador	f
521	113	Al menos una vez al mes	t
522	113	Sólo cuando baja la temperatura por debajo de 0 °C	f
523	113	Cada vez que se cambian los neumáticos	f
524	113	Sólo si se enciende el testigo de avería	f
525	114	Porque el calor o frío del aire puede dañarlos o volverlos inadecuados para su uso	t
526	114	Porque pueden obstruir el filtro de polen	f
527	114	Porque reduce el caudal de aire en las plazas traseras	f
528	114	Porque desactiva el modo automático del climatizador	f
529	115	Tocando los números de temperatura en la Clima bar o usando las zonas táctiles 1 y 2	t
530	115	Girando el mando de volumen del sistema de infoentretenimiento	f
531	115	Manteniendo pulsado el botón AUTO durante 5 s	f
532	115	Con el freno de estacionamiento accionado	f
533	116	Elimina hielo y condensación del parabrisas deshumidificando el aire y poniendo el ventilador al máximo	t
534	116	Activa la recirculación interna del aire	f
535	116	Enciende la luneta térmica trasera automáticamente	f
536	116	Reduce la temperatura a 16 °C de manera continua	f
537	117	Pulsar y mantener el botón deseado, seleccionar la opción en la lista desplegable y cerrar el cuadro	t
538	117	Mantener pulsado el botón AUTO y A/C simultáneamente	f
539	117	Presionar dos veces la zona táctil 1	f
540	117	Girarlo en sentido horario hasta que parpadee	f
541	118	Que esté activado el servicio de personalización CUPRA CONNECT	t
542	118	Que la temperatura exterior sea inferior a 5 °C	f
543	118	Que el climatizador esté en modo ECO	f
544	118	Que el freno de estacionamiento esté puesto	f
545	119	Al activar el botón Automatic heating bajo la imagen del asiento correspondiente	t
546	119	Al seleccionar el modo SPORT en el climatizador	f
547	119	Al abrir y cerrar dos veces la puerta del conductor	f
548	119	Al desconectar la batería de 12 V	f
549	120	Que acaba de comenzar el proceso de aprendizaje de hábitos de uso	t
550	120	Que el sistema no detecta ocupantes en los asientos	f
551	120	Que el nivel de calor está al mínimo	f
552	120	Que la función de recirculación está activa	f
553	121	Tocando el símbolo de ventilación de asiento en la Climabar	t
554	121	Manteniendo pulsado el botón AUTO durante 5 s	f
555	121	Girando la zona táctil de temperatura hacia la izquierda	f
556	121	Presionando el freno de mano electrónico	f
557	122	La ventilación del asiento se apaga automáticamente y el icono se pone gris tras unos 2 segundos	t
558	122	La ventilación permanece encendida hasta apagar manualmente el sistema	f
559	122	La temperatura del asiento sube al nivel máximo	f
560	122	Se desactiva el aire acondicionado del habitáculo	f
561	123	El icono de ventilación en la pantalla del vehículo se vuelve gris	t
562	123	Aparece un mensaje emergente diciendo “Ventilación off”	f
563	123	Se enciende un piloto amarillo en el climatizador	f
564	123	Suena un aviso acústico breve	f
565	124	A bajas temperaturas exteriores	t
566	124	Cuando llueve	f
567	124	En modo SPORT seleccionado	f
568	124	Al superar 80 km/h	f
569	125	A altas temperaturas exteriores	t
570	125	Cuando el vehículo está parado	f
571	125	Al cerrar todas las puertas	f
572	125	Cuando la recirculación está activa	f
573	126	De la batería de alto voltaje del vehículo o de una toma de corriente externa	t
574	126	Del sistema de frenos regenerativos	f
575	126	Del alternador del motor	f
576	126	Del circuito de iluminación interior	f
577	127	Desempañar y dejar libre de hielo y nieve el parabrisas (si la capa es fina)	t
578	127	Calentar el compartimento del motor para mejorar el arranque	f
579	127	Secar el techo solar automáticamente	f
580	127	Aumentar la carga de la batería de 12 V	f
581	128	Que la batería de alto voltaje esté suficientemente cargada	t
582	128	Que el alternador esté en funcionamiento	f
583	128	Que el climatizador esté en modo SPORT	f
584	128	Que se hayan abierto las ventanillas previamente	f
585	129	Apagar la ignición y pulsar “Immediate on” en el menú de salida del infotainment	t
586	129	Mantener pulsado el botón A/C durante 10 s	f
587	129	Conectar el vehículo a la toma de carga	f
588	129	Abrir y cerrar dos veces la puerta del conductor	f
589	130	Aproximadamente 30 minutos	t
590	130	Aproximadamente 10 minutos	f
591	130	Una hora	f
592	130	Aproximadamente 15 minutos	f
593	131	Abrir el menú Stationary air conditioning, pulsar Departure, fijar la hora y activar la casilla	t
594	131	Mantener pulsado el botón A/C durante 5 segundos	f
595	131	Conectar el cable de carga antes de arrancar el vehículo	f
596	131	Seleccionar el modo SPORT en el climatizador	f
597	132	Calefacción de asientos, volante y luneta trasera	t
598	132	Ventilación de asientos y enfriamiento de portaobjetos	f
599	132	Iluminación ambiental y sistema de audio	f
600	132	Apertura eléctrica de maletero y cristales	f
601	133	Aproximadamente 10 minutos	t
602	133	Aproximadamente 30 minutos	f
603	133	Cinco minutos	f
604	133	Veinte minutos	f
677	152	Visualmente a través de los orificios de las llantas o desde el vano inferior del vehículo	t
678	152	Midiendo la presión del líquido de frenos	f
679	152	Con un imán en la superficie de la pastilla	f
680	152	Enviando una señal al sistema de diagnóstico	f
681	153	Que las pastillas delanteras están desgastadas	t
682	153	Que el líquido de frenos está bajo de nivel	f
683	153	Que hay un fallo en el ABS	f
684	153	Que el freno de mano está activado	f
685	154	Detener la marcha e informar a un taller especializado para inspección	t
686	154	Seguir conduciendo hasta el destino	f
687	154	Reiniciar el sistema eléctrico del vehículo	f
688	154	Aumentar la presión sobre el pedal de freno	f
689	155	Reducir la fuerza de conducción en ruedas que patinan y adaptarla a las condiciones de la vía	t
690	155	Evitar el bloqueo de las ruedas durante el frenado	f
691	155	Aumentar la presión de frenado en emergencias	f
692	155	Distribuir electrónicamente la fuerza de frenado entre ejes	f
693	156	Activar automáticamente el frenado si el control de airbag detecta una colisión y el conductor no acelera	t
694	156	Aumentar la presión de frenado durante una colisión múltiple	f
695	156	Desactivar el ABS en caso de impacto lateral	f
696	156	Activar las luces de emergencia tras una colisión	f
697	157	El ESC frena el vehículo tractor para reducir el “snaking” del remolque dentro de los límites del sistema	t
698	157	El ABS ajusta la presión de frenado en el remolque únicamente en curvas	f
699	157	El TCS desactiva el control de tracción al llevar remolque	f
700	157	El EDS bloquea las ruedas traseras del remolque para mayor estabilidad	f
701	158	Suplementa la fuerza del conductor aumentando la presión ejercida al pisar el pedal de freno	t
702	158	Reduce la presión de frenado para favorecer la recuperación de energía	f
703	158	Desactiva el sistema de freno de estacionamiento al arrancar	f
704	158	Controla electrónicamente la distribución de frenado entre ejes	f
705	159	La aplicación regulada que combina el efecto de recuperación de energía del motor eléctrico y el frenado mecánico	t
706	159	La distribución electrónica de fuerza de frenado entre ejes	f
707	159	El aumento automático de presión en frenadas de emergencia	f
708	159	La desactivación momentánea del ABS para mejorar adherencia	f
709	160	10 km/h	t
710	160	20 km/h	f
711	160	30 km/h	f
712	160	Sólo en parado	f
713	161	ABS, EDS y TCS	t
714	161	Sólo ABS y TCS	f
715	161	Sólo EDS y ESC	f
716	161	Control de crucero adaptativo	f
717	162	La estabilización se limita para una conducción más deportiva	t
718	162	Se mejora la recuperación de energía en frenadas	f
719	162	El ABS se desactiva completamente	f
720	162	El control de tracción se desconecta	f
721	163	El control de crucero	t
722	163	El freno electrónico de estacionamiento	f
723	163	El asistente de carril	f
724	163	La recuperación de energía de frenado	f
725	164	Contactar a un taller especializado para revisar el sistema de frenos	t
726	164	Continuar conduciendo con normalidad	f
727	164	Aumentar la presión sobre el pedal de freno	f
728	164	Resetear el ABS desde el menú de infoentretenimiento	f
729	165	Que el ESC o el TCS están regulando la frenada	t
730	165	Que hay un fallo en el ABS	f
731	165	Que el sistema está desconectado	f
732	165	Que el freno de estacionamiento está activado	f
733	166	Acudir a un taller especializado para una inspección del sistema	t
734	166	Aumentar la velocidad a más de 20 km/h para recalibrar el ESC	f
735	166	Conducir exclusivamente en modo “Sport” hasta que se apague	f
736	166	Desconectar y volver a conectar la batería del vehículo	f
737	167	Porque los sistemas de asistencia están interviniendo y regulando la frenada	t
738	167	Porque hay un fallo mecánico en los discos de freno	f
739	167	Por neumáticos excesivamente desgastados	f
740	167	Por baja carga de la batería del vehículo	f
749	172	“Driver assist now limited. Front sensors without visibility” acompañado de una señal acústica	t
750	172	“Radar sensor failure. Please service immediately”	f
751	172	“Front camera unavailable” sin señal acústica	f
752	172	“Adaptive Cruise Control desactivado” con alerta visual roja	f
753	173	Que el sensor quede permanentemente cubierto por suciedad, nieve o hielo	t
754	173	Que el vehículo circule a más de 160 m de distancia de cualquier objeto	f
755	173	Que el parabrisas esté demasiado limpio	f
756	173	Que el motor alcance su temperatura óptima de funcionamiento	f
757	174	Lluvia, niebla, nieve, barro, polvo o insectos en la zona del sensor	t
758	174	Solo lluvia intensa	f
759	174	Altas temperaturas del motor	f
760	174	Uso de luces antiniebla delanteras	f
761	175	Lane Assist, Travel Assist y Emergency Assist	t
762	175	Solo Lane Assist y Parking Assist	f
763	175	Adaptive Cruise Control y Front Assist	f
764	175	Blind Spot Monitoring y Traffic Sign Recognition	f
765	176	En la parte izquierda y derecha del paragolpes trasero, invisibles desde el exterior	t
766	176	En la parrilla delantera del vehículo	f
767	176	En el techo, cerca de la antena	f
768	176	Dentro del panel de instrumentos	f
769	177	Side Assist, Rear Cross Traffic Alert y Exit Warning	t
770	177	Front Assist y Adaptive Cruise Control	f
771	177	Lane Assist y Travel Assist	f
772	177	Emergency Assist y Road Sign Recognition	f
773	178	Que uno de los sensores esté permanentemente cubierto, por ejemplo, por una capa de nieve o hielo	t
774	178	Que el vehículo supere los 160 km/h	f
775	178	Que el conductor desactive manualmente las cámaras	f
776	178	Que no haya tráfico a más de 100 m de distancia	f
777	179	Que la función Exit Warning no está disponible debido a la desactivación del radar trasero	t
778	179	Que las puertas traseras están abiertas	f
779	179	Que el sensor de lluvia está sucio	f
780	179	Que el asistente de aparcamiento está activo	f
781	180	Pueden dañarse o desplazarse, reduciendo o anulando su funcionamiento	t
782	180	Se limpian automáticamente con el movimiento del vehículo	f
783	180	Emiten un pitido continuo hasta que se rebasen los 10 km/h	f
784	180	Se desactivan permanentemente hasta el próximo arranque	f
785	181	Solo pintura autorizada por CUPRA	t
786	181	Cualquier pintura en spray de alta resistencia	f
787	181	Pintura automotriz estándar de cualquier marca	f
788	181	Pintura en polvo aplicada en talleres genéricos	f
789	182	Top View Camera y Rear View Camera	t
790	182	Front Assist Camera y Lane Assist Camera	f
791	182	Side Assist Camera y Exit Warning Camera	f
792	182	Adaptive Cruise Control Camera y Road Sign Recognition Camera	f
793	183	Sistema de estacionamiento automático y Park Assist Plus	t
794	183	Control de crucero adaptativo y Front Assist	f
795	183	Monitorización de punto ciego y Exit Warning	f
796	183	Reconocimiento de señales de tráfico y Lane Assist	f
817	192	Pulsando el botón ON/OFF y seleccionando la casilla "Speed limiter" en el menú Assist, luego OK	t
818	192	Manteniendo pulsado el botón SET durante 3 segundos	f
819	192	Deslizando el selector de marchas a posición D/B	f
820	192	Pulsando el botón RES con el vehículo detenido	f
821	193	Que el limitador está activado pero la regulación no está en funcionamiento	t
822	193	Que el limitador está desactivado	f
823	193	Que la velocidad guardada ha sido superada	f
824	193	Que se ha producido un fallo en el sistema	f
825	194	Pulsando + o – para cambiar 1 km/h y deslizando sobre + o – para cambiar 10 km/h	t
826	194	Solo con el pedal del acelerador, superando la velocidad límite	f
827	194	Con el botón RES para aumentar y SET para disminuir	f
828	194	Mediante el menú de infoentretenimiento del vehículo	f
829	195	Pulsando el botón de cancelación ( )	t
830	195	Manteniendo pulsado el botón SET	f
831	195	Deslizando el selector de marchas a posición N	f
832	195	Presionando el botón RES	f
833	196	En la pantalla dinámica de señales viales del sistema de infoentretenimiento y en los datos de navegación	t
834	196	En los sensores de lluvia y de luminosidad del parabrisas	f
835	196	En la cámara de visión trasera del vehículo	f
836	196	En el sistema de control de crucero adaptativo (ACC)	f
837	197	Señales que muestran indirectamente restricción de velocidad, como carteles de entrada a poblado (solo reconocidas vía datos de navegación)	t
838	197	Señales de velocidad máxima expresas con números claros	f
839	197	Señales de stop o ceda el paso	f
840	197	Señales de obras en la calzada	f
841	198	Porque el GPS no proporciona datos de posición suficientemente precisos fuera de la ruta calculada	t
842	198	Porque el sistema de frenos ABS interviene	f
843	198	Porque el motor entra en modo ahorro de combustible	f
844	198	Porque el climatizador ajusta la velocidad para reducir consumo eléctrico	f
845	199	Mantener siempre actualizados los datos de navegación y tener en cuenta los límites de velocidad incluidos	t
846	199	Desactivar el sistema de asistencia de carril	f
847	199	Usar únicamente la cámara frontal para el reconocimiento de señales	f
848	199	Recalibrar el limitador cada 100 km	f
\.


--
-- Name: preguntas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preguntas_id_seq', 224, true);


--
-- Name: respuestas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.respuestas_id_seq', 892, true);


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

