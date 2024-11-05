-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2024 a las 22:28:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `titulo`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Assetto Corsa Competizione', 'Diseñado para los entusiastas de las carreras profesionales, Assetto Corsa Competizione se enfoca en la precisión y el realismo. Con licencia oficial de la serie GT World Challenge, este simulador incluye una física de manejo de avanzada y condiciones climáticas dinámicas que afectan la experiencia de carrera.\r\n', 99.99, 'uploads/Assetto Corsa Competizione.jpg'),
(2, 'CarX Drift Racing Online', 'Especializado en carreras de drift, este juego ofrece una variedad de pistas técnicas y opciones de personalización para los amantes del derrape. Su modo multijugador permite competir en línea en pistas exclusivas para drift.\r\n', 14.99, 'uploads/Carx-Drift-Racing-Online.jpg'),
(3, 'Dirt Rally 2.0', 'Este juego de rally es conocido por su precisión y física realista, desafiando a los jugadores con circuitos complicados y condiciones climáticas impredecibles. Dirt Rally 2.0 se enfoca en la simulación pura, haciendo que el desgaste de las llantas, la aerodinámica y los terrenos difíciles sean elementos cruciales para una experiencia de rally auténtica.', 19.99, 'uploads/Dirt_Rally_2.0.jpg'),
(4, 'F1 23', 'Basado en el campeonato oficial de Fórmula 1, este juego permite a los jugadores competir en pistas reales con pilotos y equipos de la temporada actual. Incluye modos de carrera, multijugador y personalización de coches. Codemasters ha mejorado el modo historia \"Braking Point\", que permite a los jugadores experimentar la vida de un piloto de F1.', 59.99, 'uploads/f1 23.jpg'),
(5, 'F1 24', 'es la entrega oficial de la temporada de Fórmula 1 de 2024. El juego mejora la simulación de manejo con el nuevo sistema de \"Dynamic Handling,\" desarrollado en colaboración con pilotos profesionales. Ofrece un modo carrera completamente renovado donde los jugadores pueden competir como los pilotos actuales o crear su propio personaje y ascender desde la F2 a la F1. También incluye un \"Challenge Career\" con eventos especiales y desafíos episódicos para la comunidad. Hay opciones de personalización avanzadas y gráficos optimizados para la nueva generación.', 79.99, 'uploads/F1 24.jpeg'),
(6, 'Forza Horizon 5', 'Ambientado en un vasto mundo abierto de México, Forza Horizon 5 combina una exploración inmersiva con competiciones de alta velocidad. Ofrece una gran variedad de paisajes, desde selvas hasta desiertos y ciudades, con cambios climáticos y eventos dinámicos. Su estilo arcade permite experimentar distintas modalidades de carreras, y su editor de eventos permite a los jugadores crear desafíos personalizados.\r\n', 59.99, 'uploads/Forza Horizon 5.jpeg'),
(7, 'Gran turismo 7', 'lleva la simulación de carreras a un nivel superior. Con más de 400 autos y pistas icónicas, el juego presenta un modo carrera tradicional, desafíos de misiones, y el modo GT Café donde se coleccionan y personalizan vehículos. Destaca por su realismo y atención al detalle en la física de manejo, junto con un enfoque en la historia de los autos.\r\n', 59.99, 'uploads/Gran Turismo 7.jpg'),
(8, 'Hot Wheels Unleashed', 'Inspirado en los juguetes Hot Wheels, este juego arcade permite construir pistas personalizadas y competir en ambientes estilizados, como cocinas y garajes. Incluye una variedad de coches coleccionables y modos de carrera entretenidos.\r\n', 39.99, 'uploads/Hot Wheels Unleashed.jpeg'),
(9, 'Midnight Club', 'Los Angeles, permite a los jugadores recorrer una versión virtual de Los Ángeles, compitiendo a altas velocidades y eludiendo a la policía. Las entregas de la serie han sido aclamadas por sus gráficos, banda sonora, y la sensación de velocidad, pero lamentablemente, no se han lanzado nuevos títulos de Midnight Club en los últimos años, ya que Rockstar ha centrado sus esfuerzos en otras franquicias.\r\n', 14.99, 'uploads/Midnight Club.png'),
(10, 'MotoGP 22', 'Este simulador de motociclismo basado en el campeonato MotoGP incluye los circuitos y pilotos oficiales de la temporada. Ofrece un modo carrera en el que los jugadores pueden ascender desde categorías inferiores hasta la MotoGP.\r\n', 49.99, 'uploads/MotoGP 22.jpg'),
(11, 'Need for Speed Unbound', 'Esta entrega de Need for Speed fusiona gráficos de estilo cómic con la intensidad de las carreras urbanas. NFS Unbound incluye una narrativa urbana, personalización de autos, y eventos de carreras callejeras, así como una atmósfera de adrenalina que mantiene la esencia de la franquicia.\r\n', 50.00, 'uploads/Need_for_Speed_Unbound.png'),
(12, 'Project Cars 3', 'Este juego ofrece un equilibrio entre simulación y arcade, con una amplia selección de autos y modos de personalización. Project Cars 3 es más accesible que sus predecesores y se centra en una experiencia de juego más dinámica y menos técnica.\r\n', 49.99, 'uploads/Project Cars 3.jpg'),
(13, 'Redout 2', 'Inspirado en clásicos como F-Zero, este juego de carreras futuristas en pistas antigravedad ofrece velocidades vertiginosas y circuitos de ciencia ficción. Es ideal para quienes buscan una experiencia de carreras poco convencional.\r\n', 24.99, 'uploads/Redout 2.jpeg'),
(14, 'The Crew 2', 'Con un enfoque de mundo abierto que abarca todo Estados Unidos, The Crew 2 permite a los jugadores explorar paisajes variados mientras participan en carreras en tierra, agua y aire. Su estructura permite competir en distintas modalidades y entornos, y ofrece un alto nivel de personalización de vehículos y opciones multijugador.\r\n', 49.99, 'uploads/The_Crew_2.jpg'),
(15, 'WRC 10', 'Basado en el Campeonato Mundial de Rally, WRC 10 ofrece una experiencia de simulación con una variedad de autos clásicos y ubicaciones icónicas. Incluye un modo carrera en el que los jugadores pueden gestionar su equipo y mejorar sus vehículos.', 49.99, 'uploads/WRC_10.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peleas`
--

CREATE TABLE `peleas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peleas`
--

INSERT INTO `peleas` (`id`, `titulo`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Dragon Ball: Sparking! ZERO', 'Inspirado en la serie clásica de Dragon Ball Z: Budokai Tenkaichi, este juego recupera la esencia de las épicas batallas con un plantel extenso de luchadores y gráficos mejorados. La jugabilidad mantiene un ritmo frenético, permitiendo a los jugadores experimentar los movimientos especiales de sus personajes favoritos.', 59.99, 0x75706c6f6164732f766572746963616c20447261676f6e2042616c6c20537061726b696e67205a45524f2e6a7067),
(2, 'Guilty Gear Strive', 'Este título basado en el popular anime incluye a personajes de Hunter x Hunter con técnicas visualmente espectaculares. La jugabilidad se centra en combates en equipo y una experiencia de lucha estratégica, presentando una versión simplificada de ataques especiales para una experiencia dinámica.', 39.99, 0x75706c6f6164732f766572746963616c204775696c74792047656172205374726976652e6a706567),
(3, 'Hunter x Hunter: Nen x Impact', 'Este título basado en el popular anime incluye a personajes de Hunter x Hunter con técnicas visualmente espectaculares. La jugabilidad se centra en combates en equipo y una experiencia de lucha estratégica, presentando una versión simplificada de ataques especiales para una experiencia dinámica.', 39.99, 0x75706c6f6164732f766572746963616c2048756e74657220782048756e746572204e656e207820496d706163742e6a706567),
(4, 'Injustice 2', 'Desarrollado por los creadores de Mortal Kombat, Injustice 2 combina a héroes y villanos de DC Comics en intensas peleas. Su historia sigue un conflicto apocalíptico en un mundo alterno de DC, donde las elecciones de los jugadores afectan el final. Ofrece un sistema de personalización de personajes y contenido para un jugador.', 49.99, 0x75706c6f6164732f766572746963616c20496e6a75737469636520322e6a706567),
(5, 'King of Fighters XV', 'Esta entrega mejora la accesibilidad con un sistema de combos automáticos y nuevos personajes. La jugabilidad tradicional en equipo de tres personajes regresa, con un estilo gráfico renovado y una historia épica de lucha entre equipos. Ideal para fanáticos de los juegos de pelea tácticos.', 59.99, 0x75706c6f6164732f766572746963616c204b696e67206f662046696768746572732058562e6a7067),
(6, 'Marvel vs. Capcom: Infinite', 'Enfrenta a personajes de Marvel y Capcom con un sistema de batalla por equipos y el uso de las Gemas del Infinito para mejorar habilidades. Con un modo historia cinematográfico, permite a los jugadores personalizar estrategias y estilos de combate para cada personaje.', 29.99, 0x75706c6f6164732f766572746963616c204d617276656c20767320436170636f6d20496e66696e6974652e6a706567),
(7, 'Mortal Kombat 1', 'Con un enfoque renovado y una nueva línea de tiempo, Mortal Kombat 1 ofrece una historia alternativa en el universo Mortal Kombat. Presenta un estilo visual ultrarrealista y el sistema de asistencia \"Kameo Fighters\", donde personajes secundarios pueden ayudar en los combos. Este título también añade mejoras en las animaciones y fatalities impactantes, lo que lo convierte en una experiencia visceral y brutal.', 69.99, 0x75706c6f6164732f766572746963616c204d6f7274616c204b6f6d62617420312e6a7067),
(8, 'Street Fighter 6', 'Con una estética mejorada y un sistema de combate optimizado, Street Fighter 6 destaca por su accesibilidad y profundidad estratégica. Su modo \"World Tour\" permite a los jugadores recorrer Metro City en busca de misiones y rivales, convirtiéndose en un RPG de exploración único en la serie. Los gráficos, inspirados en un estilo callejero moderno, se combinan con movimientos icónicos y nuevos luchadores, logrando un equilibrio entre lo familiar y lo novedoso.', 59.99, 0x75706c6f6164732f5374726565742046696768746572203620766572746963616c2e6a706567),
(9, 'Tekken 8', 'Continuando con la legendaria historia de la familia Mishima, Tekken 8 añade mejoras gráficas y una jugabilidad de alta velocidad. El modo de historia DLC, con personajes icónicos como Heihachi, cuenta con efectos visuales intensos y mecánicas de \"Heat\" que potencian los ataques. Este juego también ofrece modos online optimizados para la competencia, lo que hace que sea ideal tanto para novatos como para veteranos de la saga.', 69.99, 0x75706c6f6164732f766572746963616c2054656b6b656e20382e6a706567),
(10, 'Under Night In-Birth II Sys', 'Con gráficos de estilo anime y una jugabilidad técnica, este título introduce nuevos personajes y escenarios. Combina elementos sobrenaturales con peleas cuerpo a cuerpo, en donde cada personaje tiene habilidades únicas y profundas mecánicas de combate.', 49.99, 0x75706c6f6164732f766572746963616c20556e646572204e6967687420496e2d4269727468204949205379732e6a706567),
(11, 'BlazBlue: Cross Tag Battle', 'Con personajes de varias franquicias de Arc System Works, este título de lucha por equipos se centra en la cooperación de personajes y ataques combinados. Con un sistema de control accesible y opciones de combate en línea, es perfecto para quienes disfrutan de las peleas rápidas y estratégicas.', 19.99, 0x75706c6f6164732f766572746963616c20426c617a426c75652043726f73732054616720426174746c652e6a7067),
(12, 'Dead or Alive 6', 'Este título de peleas 3D destaca por sus animaciones fluidas y un sistema de combate dinámico que permite a los jugadores aprovechar el entorno en cada pelea. Incluye un modo historia cinematográfico y personajes detallados, haciendo de este juego una experiencia visualmente atractiva y técnica.', 59.99, 0x75706c6f6164732f64656164206f7220616c69766520362e6a7067),
(13, 'Power Rangers: Battle for the Grid', 'Este título permite a los jugadores controlar a varios Rangers y villanos en combates por equipos, con movimientos especiales y ataques icónicos. El juego ofrece un sistema de combate simple pero profundo, y es ideal para fanáticos de los juegos de lucha y del universo Power Rangers.', 19.99, 0x75706c6f6164732f766572746963616c20506f7765722052616e6765727320426174746c6520666f722074686520477269642e6a7067),
(14, 'Samurai Shodown', 'Con un enfoque en la precisión y el combate táctico, Samurai Shodown revive la clásica serie de juegos de lucha en 2D. Los jugadores deben medir cada movimiento cuidadosamente, lo que le da un estilo único en comparación con otros juegos de combate de ritmo rápido.', 39.99, 0x75706c6f6164732f53616d757261692053686f646f776e2e6a7067),
(15, 'SoulCalibur VI', 'Este juego combina el combate en 3D con el uso de armas, como espadas y lanzas, y ofrece un sistema de combate profundo y visualmente espectacular. La historia explora eventos del pasado y permite personalizar personajes en detalle, ideal para quienes buscan una experiencia de lucha única y táctica.', 29.99, 0x75706c6f6164732f766572746963616c20536f756c43616c696275722056492e6a706567);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pendientes`
--

CREATE TABLE `pendientes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pendientes`
--

INSERT INTO `pendientes` (`id`, `titulo`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'the legend of zelda', 'es de un tipo llamado link el cual nace destinado como el heroe del tiempo, para salvar al reino continuas veces', 100.00, 'uploads/stiven.jpg'),
(2, 'the legend of zelda', 'es de un tipo llamado link el cual nace destinado como el heroe del tiempo, para salvar al reino continuas veces', 100.00, 'uploads/stiven.jpg'),
(3, 'legend of zelda', 'es un juego muy bueno', 0.00, 'uploads/dino.jpg'),
(4, 'el mejor juego de todos', 'no hay nada mejor que este juego', 0.00, 'uploads/jugueteria.gif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rpg`
--

CREATE TABLE `rpg` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rpg`
--

INSERT INTO `rpg` (`id`, `titulo`, `descripcion`, `precio`, `imagen`) VALUES
(2, 'Baldurs Gate 3', 'Este juego de rol de Larian Studios sigue ganando popularidad por su profunda narrativa y jugabilidad basada en D&D. Cada decisión impacta el desarrollo del juego, ofreciendo una gran rejugabilidad', 59.99, 0x75706c6f6164732f766572746963616c2042616c6475725f73204761746520332e6a706567),
(3, 'Cyberpunk 2077: Phantom Liberty', 'Esta expansión de Cyberpunk 2077 sigue ampliando su universo futurista con una nueva narrativa, mejoras de rendimiento y contenido adicional. Los jugadores pueden explorar aún más la ciudad de Night City y enfrentarse a nuevos desafíos en un entorno visualmente impresionante', 29.99, 0x75706c6f6164732f766572746963616c20437962657270756e6b2032303737205068616e746f6d204c6962657274792e6a7067),
(4, 'Dark Souls III', 'Conocido por su dificultad elevada y mecánicas de combate desafiantes, Dark Souls III es un RPG de acción con una narrativa profunda en un mundo oscuro y decadente. Este juego es ideal para quienes buscan un reto y una historia cargada de misterio y exploración en cada rincón', 39.99, 0x75706c6f6164732f766572746963616c204461726b20536f756c73204949492e6a7067),
(5, 'Elden Ring', 'Este aclamado juego de FromSoftware y George R.R. Martin ofrece un vasto mundo de fantasía oscura lleno de secretos, peligros y una historia rica. La jugabilidad se basa en la exploración y combate en un mundo abierto, donde los jugadores deben encontrar su camino a través de desafíos y criaturas temibles. La mezcla de libertad de exploración y la narrativa única lo hacen ideal para los amantes de los RPG de acción', 59.99, 0x75706c6f6164732f766572746963616c20456c64656e2052696e672e6a706567),
(6, 'Final Fantasy XVI', 'Esta entrega sigue la historia de Clive Rosfield en un mundo de fantasía. Combina narrativa épica con mecánicas de combate intensas y visuales espectaculares', 69.99, 0x75706c6f6164732f766572746963616c2046696e616c2046616e74617379205856492e6a706567),
(7, 'Hogwarts Legacy', 'Vive la magia del universo de Harry Potter en un RPG de mundo abierto donde los jugadores pueden explorar el castillo de Hogwarts, aprender hechizos y combatir criaturas. Los jugadores pueden personalizar a su personaje y tomar decisiones que afectan el desarrollo de la historia, haciendo de este juego una experiencia mágica y personalizada​\r\n', 59.99, 0x75706c6f6164732f766572746963616c20486f677761727473204c65676163792e6a7067),
(8, 'Like a Dragon: Infinite Wealth', 'Con un estilo único, esta entrega de la serie Yakuza sigue al carismático Ichiban Kasuga, quien lucha por mejorar su vida mientras explora las complejidades del crimen y la redención', 59.99, 0x75706c6f6164732f766572746963616c204c696b65206120447261676f6e20496e66696e697465205765616c74682e6a706567),
(9, 'Persona 3 Reload', 'Un remake fiel del clásico de Atlus, que ofrece una experiencia renovada con gráficos y mecánicas modernizadas. Juegas como un estudiante en la lucha contra criaturas en la misteriosa \"Dark Hour\"', 59.99, 0x75706c6f6164732f766572746963616c20506572736f6e6120332052656c6f61642e6a706567),
(10, 'Starfield', 'En este RPG espacial de Bethesda, los jugadores exploran sistemas estelares y realizan misiones mientras desvelan los misterios del universo. Con la libertad de personalizar naves y personajes, Starfield ofrece una experiencia de exploración rica y detallada en el vasto cosmos', 59.99, 0x75706c6f6164732f766572746963616c20537461726669656c642e6a706567),
(11, 'Assassins Creed Mirage', 'Esta entrega de Assassins Creed te traslada a la histórica ciudad de Bagdad, ofreciendo una narrativa y mecánicas de combate inspiradas en los primeros juegos de la franquicia, pero con elementos RPG que te permiten personalizar tus habilidades y decidir cómo abordar las misiones. La combinación de sigilo y acción crea una experiencia completa', 49.99, 0x75706c6f6164732f766572746963616c20417373617373696e5f73204372656564204d69726167652e6a706567),
(12, 'Diablo IV', 'Un RPG de acción de Blizzard que te sumerge en el oscuro mundo de Sanctuary. Con nuevas mecánicas y una narrativa mejorada, ofrece una experiencia completa para los amantes del hack-and-slash', 69.99, 0x75706c6f6164732f446961626c6f2049562e6a706567),
(13, 'Enshrouded', 'Un juego de supervivencia y construcción en un mundo oscuro. Puedes crear bases y explorar mazmorras en busca de recursos y secretos, en un ambiente de alta tensión', 29.99, 0x75706c6f6164732f456e7368726f756465642e6a7067),
(14, 'Octopath Traveler II', 'Una continuación del RPG retro en gráficos HD-2D de Square Enix. Sigue la historia de ocho personajes en sus aventuras únicas', 29.99, 0x75706c6f6164732f4f63746f706174682054726176656c65722049492e6a706567),
(15, 'Pathfinder: Wrath of the Righteous', 'Basado en el sistema de Pathfinder, ofrece una compleja trama con opciones que afectan el mundo y el final del juego. Ideal para amantes de los juegos de rol tácticos', 59.99, 0x75706c6f6164732f5061746866696e646520205772617468206f6620746865205269676874656f75732e6a7067),
(16, 'The Elder Scrolls V: Skyrim Anniversary Edition', 'Aún después de más de una década, esta edición especial de Skyrim agrega mejoras gráficas y contenido extra, manteniéndolo relevante', 69.99, 0x75706c6f6164732f54686520456c646572205363726f6c6c73205620536b7972696d20416e6e69766572736172792045646974696f6e2e6a7067);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shooters`
--

CREATE TABLE `shooters` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shooters`
--

INSERT INTO `shooters` (`id`, `titulo`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'apex legends', 'Descripción: Un juego de battle royale que combina elementos de shooters en primera persona con personajes únicos, conocidos como \"Leyendas\". Cada leyenda tiene habilidades especiales, y los jugadores deben trabajar en equipo para sobrevivir en un mapa en constante cambio.', 0.00, 0x75706c6f6164732f766572746963616c2061706578206c6567656e732e6a706567),
(2, 'Battlefield 2042', 'Descripción: Ambientado en un futuro cercano, este juego destaca por sus grandes batallas multijugador en mapas expansivos y dinámicos. Introduce nuevos modos, como \"Portal\", donde los jugadores pueden crear sus propios escenarios y reglas, así como eventos climáticos que afectan el juego.\r\n', 59.99, 0x75706c6f6164732f766572746963616c20426174746c656669656c6420323034322e6a706567),
(3, 'Borderlands 3', 'Descripción: Shooter en primera persona que combina elementos de rol y humor en un mundo lleno de loot. Los jugadores asumen el papel de \"Buscadores de la Cámara\" y enfrentan enemigos en misiones variadas, con un estilo artístico cel-shading que lo hace visualmente único.', 59.99, 0x75706c6f6164732f426f726465726c616e647320332e6a706567),
(4, 'Call of Duty: Modern Warfare II', 'Este juego es un reinicio de la popular serie de Call of Duty, presentando una campaña intensa y un multijugador robusto. Los jugadores asumen el papel de varios soldados en diferentes escenarios de combate moderno.', 69.99, 0x75706c6f6164732f766572746963616c2063616c6c206f6620647574792e6a7067),
(5, 'Counter-Strike: Global Offensive ', 'Un juego de disparos en primera persona basado en equipos donde los jugadores se dividen en terroristas y contraterroristas. Es conocido por su competitividad y tiene una escena de esports muy activa.', 0.00, 0x75706c6f6164732f766572746963616c20436f756e74657220537472696b6520476c6f62616c204f6666656e736976652e6a706567),
(6, ' Doom eternal', 'La secuela del aclamado Doom (2016), ofrece un combate frenético contra hordas de demonios. Con un enfoque en el movimiento ágil y la variedad de armas, los jugadores deben demostrar su habilidad para sobrevivir en escenarios vibrantes y caóticos. También incluye un modo multijugador llamado Battlemode.', 59.99, 0x75706c6f6164732f766572746963616c2e6a706567),
(7, 'Escape from Tarkov', 'Shooter de supervivencia en primera persona que combina elementos de rol y tácticas de combate. Ambientado en una ciudad ficticia, los jugadores deben completar misiones, gestionar recursos y sobrevivir a otros jugadores y enemigos controlados por la IA.', 44.99, 0x75706c6f6164732f4573636170652066726f6d205461726b6f762e6a7067),
(8, 'Far Cry 6', 'Este juego de disparos en mundo abierto tiene lugar en la isla ficticia de Yara, inspirada en Cuba. Los jugadores luchan contra un dictador en una narrativa rica, con misiones variadas y un enfoque en la exploración. Puedes personalizar armas y vehículos para adaptarte a diferentes estilos de juego.', 59.99, 0x75706c6f6164732f766572746963616c204661722043727920362e706e67),
(9, 'Halo Infinite', 'La última entrega de la serie Halo ofrece una experiencia tanto en la campaña como en el multijugador. Los jugadores siguen al Jefe Maestro en una narrativa rica, mientras que el modo multijugador presenta mapas nuevos y mecánicas clásicas, con una mayor personalización.', 59.99, 0x75706c6f6164732f766572746963616c2048616c6f20496e66696e6974652e6a706567),
(10, 'Metro Exodus', 'Shooter de supervivencia en un mundo post-apocalíptico, basado en la serie de novelas de Dmitry Glukhovsky. Los jugadores deben explorar un vasto entorno y enfrentarse a enemigos tanto humanos como mutantes, mientras desarrollan una narrativa profunda a lo largo de la historia.', 39.99, 0x75706c6f6164732f766572746963616c2e6a706567),
(11, 'overwatch 2', 'Shooter por equipos con héroes únicos y habilidades especiales. El juego se centra en la cooperación entre los jugadores y presenta diferentes modos de juego, incluidos nuevos modos PvE, que desarrollan la historia del universo de Overwatch.', 0.00, 0x75706c6f6164732f766572746963616c204f766572776174636820322e706e67),
(12, 'Rage 2', 'Shooter en primera persona ambientado en un mundo abierto post-apocalíptico. Los jugadores deben enfrentarse a diversas facciones y explorar un paisaje vibrante, utilizando habilidades especiales y un arsenal variado para derrotar enemigos en un combate frenético.', 29.99, 0x75706c6f6164732f766572746963616c205261676520322e6a706567),
(13, 'Rainbow Six Siege', 'Un juego táctico de disparos en primera persona que enfatiza el trabajo en equipo y la estrategia. Los jugadores pueden elegir entre diferentes operadores, cada uno con habilidades únicas.', 39.99, 0x75706c6f6164732f766572746963616c2e6a7067),
(14, 'Sniper Elite 5', 'Shooter táctico que se centra en la simulación de francotiradores durante la Segunda Guerra Mundial. Los jugadores deben completar misiones utilizando sigilo y estrategia, con un sistema de balística que agrega realismo al disparo.', 49.99, 0x75706c6f6164732f766572746963616c20536e6970657220456c69746520352e6a706567),
(15, 'valorant', 'Shooter táctico en primera persona que combina habilidades únicas de personajes con mecánicas de disparo precisas. Los equipos de cinco luchan para cumplir objetivos, como plantar o desactivar una bomba, ofreciendo una experiencia estratégica que requiere trabajo en equipo.', 0.00, 0x75706c6f6164732f766572746963616c2056616c6f72616e742e6a706567);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peleas`
--
ALTER TABLE `peleas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pendientes`
--
ALTER TABLE `pendientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rpg`
--
ALTER TABLE `rpg`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shooters`
--
ALTER TABLE `shooters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `peleas`
--
ALTER TABLE `peleas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pendientes`
--
ALTER TABLE `pendientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rpg`
--
ALTER TABLE `rpg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `shooters`
--
ALTER TABLE `shooters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
