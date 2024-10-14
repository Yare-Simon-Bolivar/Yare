-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-10-2024 a las 12:09:27
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

DROP TABLE IF EXISTS `contactos`;
CREATE TABLE IF NOT EXISTS `contactos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `email`, `mensaje`, `fecha`) VALUES
(1, 'jose', 'josedrow@hotmail.com', 'Hola como se ve todo,\r\n\r\nEl salto de linea, y que tal se ve todo bien?', '2024-10-10 19:49:40'),
(2, 'daniel', 'daniel28@gmail.com', 'mensaje dos para revisión de espacio y acentos', '2024-10-10 20:14:47'),
(3, 'Pedro Hernandez', 'pedroh@gmail.com', 'comprar un carro\r\n\r\n2000$ es su valor', '2024-10-10 21:12:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `tipo` enum('proximos','actuales','anteriores') NOT NULL,
  `fecha_subida` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ubicacion` varchar(100) NOT NULL,
  `descripcion` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `tipo`, `fecha_subida`, `ubicacion`, `descripcion`) VALUES
(1, 'playa', '', '2024-09-25 15:16:48', 'guaira', ''),
(2, 'toros', '', '2024-09-25 16:05:43', 'toros', ''),
(3, 'dia del padre', '', '2024-09-25 16:09:08', 'plaza', ''),
(4, 'dia del padre', '', '2024-09-25 16:14:07', 'plaza', ''),
(5, 'dia del padre', '', '2024-09-25 16:43:36', 'plaza', ''),
(6, 'dia del padre', '', '2024-09-25 16:56:02', 'plaza', 'es un evento muy bonito'),
(7, 'dia de la mdre', '', '2024-09-25 16:56:40', 'san antonio', 'honor a las madres'),
(8, 'parque', '', '2024-09-25 17:42:30', 'yare', 'disfrute familiar'),
(9, 'dia del niño', '', '2024-09-25 18:11:31', 'municipio simon bolivar', 'es un evento familiar'),
(10, 'se puede', 'proximos', '2024-10-11 17:42:19', 'caracas', 'vamos'),
(11, 'mantequilla', 'actuales', '2024-10-11 17:44:15', 'por eso es esencial', 'mani caraota'),
(12, 'prueba final', 'anteriores', '2024-10-11 18:02:05', 'llanos', 'veamos como se ven los saltos de linea d  c'),
(13, 'Eladio', 'proximos', '2024-10-11 18:11:24', 'ocumare', 'hola como estas hace tiempo no se de ti y se que no somos nah pero me hacías feliz solo te pienso cu'),
(14, 'Jay wheler', 'actuales', '2024-10-11 18:17:41', 'concierto en la plaza', 'Háblame de ti, ¿cómo tú estás? Quisiera verte\r\nEn una foto te vi y me dieron ganas de comerte\r\nSé qu'),
(15, 'Myke towers', 'proximos', '2024-10-11 18:20:25', 'concierto en el estadio', 'Háblame de ti, ¿cómo tú estás? Quisiera verte\r\nEn una foto te vi y me dieron ganas de comerte\r\nSé que al igual que yo, en el amor no has tenido suerte\r\nPero me matan las ganas de verte\r\nLa curiosidad me mata y no aguanto\r\nYa te quiero tener, sólo dime cuándo\r\nEs que tú y yo muy bien sabemos\r\nQue es diferente cuando nos comemos (yeah)\r\nEy, yo\r\nElla es curiosa, una nena estudiosa (yeah)\r\nA la\' otra\' ella las tiene furiosa\'\r\nLa bañera a ella la pone espumosa\r\nYo le juego y se la dejo jugosa\r\nPosa, yo la retrato y le pongo las esposa\'\r\nMarihuana de flore\', ella no quiere rosa\'\r\nSi no se lo hago en la cabaña, en la carroza\r\nTe ves hermosa\r\nA mí me dio con verte pero de frente\r\nYo sé que ere\' diferente, ya chequeé su expediente\r\nY no tiene antecedente\', qué bien te ve\'\r\nTu mirada no miente, llama si estás caliente\r\nY yo sigo aquí, tú siempre pasas por mi mente\r\nHablarte no me atreví, sé que conmigo no pueden verte\r\nSe dice por ahí que lo que no mata te hace má\' fuerte\r\nSi vuelvo a nacer, yo volvería a conocerte\r\nLa curiosidad me mata y no aguanto\r\nYa te quiero tener, solo dime cuándo\r\nEs que tú y yo muy bien sabemos\r\nQue es diferente cuando nos comemos (yeah)\r\nDaría lo que fuera por verte de nuevo (de nuevo)\r\nTranquila, nadie tiene que enterarse\r\nY no quiero envolverme, pero contigo me atrevo (me atrevo)\r\nHace tiempo tengo ganas de tocarte\r\nY es que tu arrebato me tiene loco\r\nY cuando veo tu foto me desenfoco\r\nDicen que es de loco\' lo de nosotro\'\r\nY no saben lo que pasa cuando te toco (yeah)\r\nY quiero repetir\r\nEncima de mí quiero volverte a sentir\r\nContigo la pasé cabrón, no te voy a mentir\r\nLa curiosidad me mata y no aguanto\r\nYa te quiero tener, solo dime cuándo (oye)\r\nEs que tú y yo muy bien sabemo\'\r\nQue es diferente cuando nos comemo\' (eh)\r\nYeah-yeah-yeah\r\nYeah-yeah\r\nLa Voz Favorita, baby\r\nJay Wheeler, Jay Wheeler\r\nMyke Towers\r\nDímelo, Siru\r\nJexciel, Jexciel\r\nLelo, Jazzy\r\nYeh\r\nFlow Music\r\nDynamic Records\r\nOh-oh, oh\r\nOh-oh, uh-oh\r\nYeah-yeah'),
(16, 'justin quiles', 'proximos', '2024-10-11 18:25:20', 'concierto en el estadio', 'Mami, tú dime si esta noche puedo estar contigo\r\nYo quiero besarte y decirte cositas al oído\r\nMami, tú dime si esta noche puedo estar contigo\r\n(Que yo, que yo quiero devorarte entera ma\')\r\nYo quiero besarte y decirte cositas al oído\r\n(Que alguien como tú, por ahí, no hay)\r\n\r\nY cuando tú te pones así\r\nDiciéndome que te haga el amor\r\nCuando tú te pones así\r\nMe dan ganas de comerte entera\r\n\r\n\r\nContigo yo estoy amaneciendo\r\nDiciéndote que contigo me enciendo, me gustas tú\r\nTambién cuando lo hacemos me gusta, me gusta\r\nContigo yo estoy amaneciendo\r\nDiciéndote que contigo me enciendo, me gustas tú\r\nTambién cuando lo hacemos me gusta, me gusta\r\n\r\n\r\n\r\nTú eres, tú eres, tú eres bella\r\nTu figura, tu hermosura, tu ternura combinan a la perfección\r\nComo ella no hay ninguna que lo hace\r\nElla se mueve, me complace, ella es mi ambición\r\n\r\n\r\n\r\n\r\nTan rico que lo haces pa\' mí\r\nMi vida, tú eres un peligro\r\nTu manera de hacérmelo así\r\nSe ha convertido en mi delirio\r\nTan rico que lo haces pa\' mí\r\nMi vida, tú eres un peligro\r\nTu manera de hacérmelo así\r\nSe ha convertido en mi delirio\r\n\r\n\r\n\r\n\r\n\r\nContigo yo estoy amaneciendo\r\nDiciéndote que contigo me enciendo, me gustas tú\r\nTambién cuando lo hacemos me gusta, me gusta\r\nContigo yo estoy amaneciendo\r\nDiciéndote que contigo me enciendo, me gustas tú\r\nTambién cuando lo hacemos me gusta, me gusta\r\nMi amor platónico aunque suene irónico\r\nTú tienes las cualidades que me vuelven loquito a mí\r\nTe juro que tu madre te hizo pa\' mí, pa\' mí\r\nMi amor erótico cuando estamos en la cama\r\nTú me aruñas y me llamas gritando mi nombre\r\nTe juro que eso a mí me enciende\r\nTú eres la unica que me entiende\r\nMami, tú dime si esta noche puedo estar contigo\r\nYo quiero besarte y decirte cositas al oído\r\nMami, tú dime si esta noche puedo estar contigo\r\n(Que yo quiero devorarte entera, ma\')\r\nYo quiero besarte y decirte cositas al oído\r\n(Que alguien como tú, por ahí no hay)\r\nY cuando tú te pones así\r\nDiciéndome que te haga el amor\r\nCuando tú te pones así\r\nMe dan ganas de comerte entera\r\nContigo yo estoy amaneciendo\r\nDiciéndote que contigo me enciendo, me gustas tú\r\nTambién cuando lo hacemos me gusta, me gusta\r\nContigo yo estoy amaneciendo\r\nDiciéndote que contigo me enciendo, me gustas tú\r\nTambién cuando lo hacemos me gusta, me gusta'),
(17, 'lenny tavares', 'proximos', '2024-10-11 18:31:32', 'campo de futbol', 'No es cafecito, pero yo sé que te late\r\nAy, qué rico e’\r\nQue ella es muy bellaquita pa’ que te rescate\r\nMi corazón fuera tuyo si tuviera’\r\nLo nuestro tiene que ser grande porque el chiquito no se lo dan a cualquiera (dime, Sech)\r\n\r\nY cuando encima se me monta (Ice)\r\nFuma y se pone tonta\r\nQue me encanta su culo si me ronca\r\nQue las que tengo no le llegan y me roncan\r\n\r\nUh-uh-uh-uh\r\nSi lo hago con otra, pero pienso en ti\r\nEso me pasa desde que no estás\r\nTú tienes algo que me hace sentir (bellaco)\r\nUh-uh-uh-uh\r\nOtra de rodilla, yo te veo a ti\r\nEso me pasa desde que no estás\r\nTú tienes algo que me hace sentir\r\n\r\nY cuando encima se me monta (Ice)\r\nFuma y se pone tonta\r\nQue me encanta su culo si me ronca\r\nQue las que tengo no le llegan y me roncan\r\n\r\nYo te extraño cuando tú no estás\r\nA ti no hay que enseñarte nada, ‘tás bien adiestrá’\r\nYo te paso la lengüita por la espalda sudá’\r\nMientras sigo trabajando por la zona rural\r\nYo sé que tú\r\nQuieres que mis hijos naden en tu vientre\r\nQue yo sea caballeroso pa’ que tú te sientes\r\nY que en la cama te dé vuelta, que sea todo un sensei\r\n\r\n¿Cómo así que nuestra historia termina?\r\nNos ganó la rutina y ya no estas aquí\r\nAquí no terminó el viaje y menos si no hay vuelta hacia ti\r\nYo sé que soy la dueña de tu fantasy\r\nYo sé que ese bicho solo ride with me\r\nPapito, no me diga’ que no, soy tu fuego, soy tu calor\r\nY a vece’ (shh)\r\nPensando en ti el deseo aparece’\r\nSí o sí te dedico una to’ los mese’\r\nMe mata cuando me miras, cicatrices de por vida, no, oh\r\n\r\nUh-uh-uh-uh\r\nSi lo hago con otra, pero pienso en ti\r\nEso me pasa desde que no estás\r\nTú tienes algo que me hace sentir (bellaco)\r\nUh-uh-uh-uh\r\nSi terminó, ¿por qué ‘toy pensando en ti? (Ti, ah)\r\nEso me pasa desde que no estás (uh-uh, ah)\r\nTú tienes algo que me hace sentir (-ir, -ir)\r\n\r\nObliga’o tú tiene’ algo (ah)\r\nEs que mientra’ más putita, más le salgo\r\nCuando quiera yo me robo ese Wells Fargo\r\nPeligrosa como la Baldo\r\nBellaca, pero fina, Monte carlo\r\nOh-oh-oh (dale)\r\nCuando vo’a sacarlo grita no, oh (ya tú sabe’)\r\nQuizá tú tenga’ pales pero yo, soy tu sucio sin filtro\r\nSexo oral desde el intro\r\n\r\nNo cerramo’ el ciclo por lo sexual\r\nIgual que tú, tampoco dejo de pensar\r\nSiempre me controlas cuando estás arriba\r\nNo me deja otra alternativa\r\nA veces hay que mentir pa’ no perder el polvo\r\nEs que se traga to’, nunca quiere un sorbo\r\nYo me quitaría, pero no la estorbo\r\n\r\nMe persigno y voy pa’ dentro\r\nSiempre son más rico’ los reencuentro’\r\nLa hija ‘e puta vino con talento\r\nSe me trepa encima en contratiempo\r\nLa pussy parece un jacuzzi\r\nRosita está tussi, borrachita esta luci’\r\nTiramos pali, comoquiera está juicy\r\nSe puso celosa, es que este bicho es exclusive\r\n\r\nUh-uh-uh-uh\r\nSi lo hago con otra, pero pienso en ti\r\nEso me pasa desde que no estás\r\nTú tienes algo que me hace sentir\r\nUh-uh-uh-uh\r\nOtra de rodilla, yo te veo a ti\r\nEso me pasa desde que no estás\r\nTú tienes algo que me hace sentir (bellaco)\r\n\r\nMe persigno y voy pa’ dentro\r\nSiempre son más rico’ los reencuentro’\r\nLa hija ‘e puta vino con talento\r\nSe me trepa encima en contratiempo\r\nLa pussy parece un jacuzzi\r\nRosita está tussi, borrachita esta luci’\r\nTiramos pali, comoquiera está juicy\r\nSe puso celosa, es que este bicho es exclusive\r\n\r\nUh-uh-uh-uh\r\nSi lo hago con otra, pero pienso en ti\r\nEso me pasa desde que no estás\r\nTú tienes algo que me hace sentir\r\nUh-uh-uh-uh\r\nOtra de rodilla, yo te veo a ti\r\nEso me pasa desde que no estás\r\nTú tienes algo que me hace sentir (bellaco)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

DROP TABLE IF EXISTS `fotos`;
CREATE TABLE IF NOT EXISTS `fotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evento` varchar(50) DEFAULT NULL,
  `ruta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `evento`, `ruta`) VALUES
(19, 'actuales', 'uploads/1.webp'),
(20, 'actuales', 'uploads/Picsart_23-05-29_07-48-31-705.png'),
(18, 'proximos', 'uploads/164933-playa_de_botafogo-bota-puesta-playa_de_ipanema-agua-x750.jpg'),
(17, 'proximos', 'uploads/447306120_10233876918331473_330890443295355165_n.jpg'),
(15, 'actuales', 'uploads/435752551_3654834171501340_4992990357347066474_n.png'),
(16, 'anteriores', 'uploads/433009608_3654263788225045_4786487127492821138_n.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

DROP TABLE IF EXISTS `noticias`;
CREATE TABLE IF NOT EXISTS `noticias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `fecha_publicacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen1` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL,
  `resumen` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `contenido`, `fecha_publicacion`, `imagen`, `imagen1`, `imagen2`, `resumen`) VALUES
(1, 'la caraota que baila', 'esta es una historia basanda en la vida falsa', '2024-10-05 04:40:45', NULL, NULL, NULL, NULL),
(2, 'prueba 2', 'y aqui ponemos de mis mejores momentos tiempos intentando que todo fluya', '2024-10-05 18:08:08', 'uploads/435752551_3654834171501340_4992990357347066474_n.png', NULL, NULL, NULL),
(3, 'prueba 3', 'caraotas y vegetales me encantan con cochino frito y arroz', '2024-10-05 18:30:28', NULL, 'uploads/433009608_3654263788225045_4786487127492821138_n.jpg', 'uploads/460761122_122139266660320660_9082608992833905726_n.jpg', NULL),
(4, 'prueba 4', 'yare es mi hermoso pueblo', '2024-10-05 18:32:30', NULL, 'uploads/fin-728120985-large.jpg', 'uploads/R (1).jpeg', NULL),
(5, 'El espíritu navideño llegó a espacios públicos del país', 'Llegó octubre y con él la Navidad a muchos rincones de Venezuela, donde variadas figuras alusivas a la época más bonita del año están adornando los espacios públicos, que desde el día uno de este mes reciben a quienes acuden a disfrutar de las hermosas vistas que les regalan.\r\n\r\nPinos gigantescos, enormes bolas navideñas y túneles de luces de colores son los principales focos de atracción en las plazas, bulevares, paseos y otras áreas para el sano esparcimiento en las que copos de nieve, estrellas, regalos, globos aerostáticos y muchos más se suman a la invitación del Gobierno Nacional para que grandes y chicos comiencen a celebrar desde ya las fiestas navideñas.\r\n\r\nÚltimas Noticias realizó un recorrido por diversos sitios de Caracas y el que actualmente posee mayores ornamentos es el Paseo Los Próceres, ubicado en la parroquia El Valle del municipio Libertador.\r\n\r\nQuienes acudan a las instalaciones pueden iniciar el trayecto desde la plaza Los Símbolos, decorada con un imponente árbol y un globo aerostático que se roba la atención de los más pequeños del hogar.\r\n\r\nContinuando la caminata hacia Los Próceres, las personas estarán acompañadas por los múltiples árboles naturales, cargados de luces, estrellas y copos de nieve que, a la altura del Instituto de Previsión Social de la Fuerza Armada Nacional Bolivariana, darán paso a un arco con forma de regalo, el cual las invitará a cruzar hacia los espacios donde un túnel de bombillitos amarillos estará a la espera para recibirlos con un enorme Feliz Navidad, un gran pino rojo y una torre de regalos, que son los puntos focales del lugar.\r\n\r\nLuz Barrera, habitante de Boleíta, municipio Sucre del estado Miranda, se encontraba con su esposo e hijas por las inmediaciones del histórico paseo y al percatarse de las decoraciones decidió adentrarse al sitio para fotografiarse junto a sus familiares. “Estábamos de paso y nos llamó la atención los adornos porque están muy bonitos”, resaltó.\r\n\r\nLa plaza Bolívar del centro de la ciudad capital no se quedó atrás en el embellecimiento de sus espacios, donde, al igual que en Los Próceres, un inmenso árbol y un Feliz Navidad acogen a los visitantes y transeúntes.\r\n\r\nSiguiendo la ruta de las esquinas de Gradillas a San Jacinto, una serie de adornos, dispuestos en los postes de luz, acompañan a los peatones hasta la plaza El Venezolano, donde un túnel iniciado y terminado por una bola navideña los insta a recorrer su interior. “Está super linda para venir a tomarse fotos en familia y pasarla chévere”, comentó la barinesa Glendis Aponte, quien aprovechó su estadía en Caracas para visitar el lugar del centro histórico en compañía de sus parientes.\r\n\r\nOtros usuarios manifestaron que, pese a que este 2024 la Navidad llegó con mucha anticipación, el inicio del último trimestre del año siempre es propicio para escuchar gaitas e inclusive comenzar a adornar los hogares. “Ya yo debería estar adornando mi casa”, señaló Silvia Azuaje, habitante del sector Manicomio, en la parroquia La Pastora, quien se hallaba, junto a su esposo e hijo, disfrutando del monumental pino, cubierto por un techo de luces amarillas en la plaza O’Leary de El Silencio.', '2024-10-06 00:02:35', NULL, 'uploads/nav-4.jpg', 'uploads/R (3).jpeg', 'Llegó octubre y con él la Navidad a muchos rincones de Venezuela, donde variadas figuras alusivas a la época más bonita del año están adornando los espacios públicos, que desde el día uno de este mes reciben a quienes acuden a disfrutar de las hermosas vistas que les regalan.'),
(6, 'El Papa urge al mundo a detener \"la espiral de venganza\" en Oriente Medio', 'En la víspera del aniversario del ataque de Hamás a Israel que desató el conflicto en la región, el papa Francisco urgió este domingo a detener “la espiral de venganza” en Oriente Medio y pidió respetar la soberanía de los países.\r\n\r\n“Mañana se cumplirá un año del ataque terrorista contra la población en Israel, a la que renuevo mi cercanía. No olvidemos que aún hay muchos rehenes en Gaza, para los que pido la liberación inmediata”, dijo el Pontífice.\r\n\r\nFrancisco entonces pidió “un alto el fuego inmediato en todos los frentes”, también en el Líbano, recientemente invadido por Israel en su guerra con las milicias de Hizbulá.\r\n\r\nTras el rezo del Ángelus desde la ventana del Palacio Apostólico, Francisco lamentó que, desde ese día, Oriente Medio “ha caído en un sufrimiento cada vez más grave con operaciones militares destructivas que continúan golpeando” a los palestinos.\r\n\r\n“Esta población esta sufriendo mucho en Gaza y en los demás territorios, se trata mayormente de civiles inocentes, gente que debe recibir ayudas humanitaria”, apuntó.\r\n\r\n“Recemos por los libaneses, especialmente por los habitantes del sur, obligados a dejar sus aldeas”, animó ante los fieles que le escuchaban desde la Plaza de San Pedro.\r\n\r\nFrancisco hizo un llamado a la comunidad internacional para que “se detenga la espiral de la venganza y que no se repitan” ataques como los llevados a cabo por Irán contra Israel, porque “pueden precipitar a esa región en una guerra aún mayor”.\r\n\r\n“Todas las naciones tienen derecho a existir con paz y seguridad y sus territorios no deben ser atacados ni invadidos. La soberanía debe ser respetada y garantizada por el diálogo y la paz y no por el odio ni la guerra”, sostuvo.\r\n\r\n\r\n\r\n\r\nfirma', '2024-10-06 19:39:59', NULL, 'uploads/papa-francisco-anuncia-jornada-de-oracion-y-ayuno-el-7-de-octubre-para-abogar-por-la-paz-159600.jpg', '', '“Recemos por los libaneses, especialmente por los habitantes del sur, obligados a dejar sus aldeas”, dijo el Pontífice');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `edad`, `email`, `username`, `password_hash`) VALUES
(1, 'lilibeth', 'Rodriguez', 20, 'lilirodriguez@gmail.com', 'lili', '$2y$10$IwR6fN4cF3sxFEUNnR3.kOTCj8HCR0aNr8z8dU4T6Fx5FuU/YWkGC'),
(2, 'jose', 'gonzales', 38, 'josegonzales@gmail.com', 'jose', '$2y$10$ESjkxaeUTvjc4t5c0ofZ5ukQAQddE2AFDqO/q9GEnZJUcitRnrdgy'),
(3, 'daniel', 'rodriguez', 42, 'daniel@gmail.com', 'daniel', '$2y$10$9pNWrG24TFwIlWKhBKyVZ.d2LReMMFYsalTCbwNUXFcgTOdi7rzha');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
