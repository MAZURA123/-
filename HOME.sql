-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2024 г., 11:25
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `HOME`
--

-- --------------------------------------------------------

--
-- Структура таблицы `idro`
--

CREATE TABLE `idro` (
  `id` int NOT NULL,
  `id_polzov` int NOT NULL,
  `id_ustro` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `included`
--

CREATE TABLE `included` (
  `id-inclu` int NOT NULL,
  `included` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `included`
--

INSERT INTO `included` (`id-inclu`, `included`) VALUES
(1, 'yes'),
(2, 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `polzov`
--

CREATE TABLE `polzov` (
  `id-pozolov` int NOT NULL,
  `login` text NOT NULL,
  `parol` text NOT NULL,
  `prav` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `polzov`
--

INSERT INTO `polzov` (`id-pozolov`, `login`, `parol`, `prav`) VALUES
(1, 'LOGIN', 'PAROL', 3),
(2, 'ADMIN', 'ADMIN', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `prav`
--

CREATE TABLE `prav` (
  `id_prav` int NOT NULL,
  `prav` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `prav`
--

INSERT INTO `prav` (`id_prav`, `prav`) VALUES
(3, 'standart'),
(4, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `ustro`
--

CREATE TABLE `ustro` (
  `id-ustro` int NOT NULL,
  `komnat` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `opis` text NOT NULL,
  `inclu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `ustro`
--

INSERT INTO `ustro` (`id-ustro`, `komnat`, `name`, `opis`, `inclu`) VALUES
(1, '2', 'LAMP', 'AAAA', 2),
(2, '1', 'LAMP2', 'AAAA', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `idro`
--
ALTER TABLE `idro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_polzov` (`id_polzov`),
  ADD KEY `id_ustro` (`id_ustro`);

--
-- Индексы таблицы `included`
--
ALTER TABLE `included`
  ADD PRIMARY KEY (`id-inclu`);

--
-- Индексы таблицы `polzov`
--
ALTER TABLE `polzov`
  ADD PRIMARY KEY (`id-pozolov`),
  ADD KEY `polzov_ibfk_1` (`prav`);

--
-- Индексы таблицы `prav`
--
ALTER TABLE `prav`
  ADD PRIMARY KEY (`id_prav`);

--
-- Индексы таблицы `ustro`
--
ALTER TABLE `ustro`
  ADD PRIMARY KEY (`id-ustro`),
  ADD KEY `inclu` (`inclu`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `idro`
--
ALTER TABLE `idro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `included`
--
ALTER TABLE `included`
  MODIFY `id-inclu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `polzov`
--
ALTER TABLE `polzov`
  MODIFY `id-pozolov` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `prav`
--
ALTER TABLE `prav`
  MODIFY `id_prav` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `ustro`
--
ALTER TABLE `ustro`
  MODIFY `id-ustro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `idro`
--
ALTER TABLE `idro`
  ADD CONSTRAINT `idro_ibfk_1` FOREIGN KEY (`id_polzov`) REFERENCES `polzov` (`id-pozolov`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idro_ibfk_2` FOREIGN KEY (`id_ustro`) REFERENCES `ustro` (`id-ustro`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `polzov`
--
ALTER TABLE `polzov`
  ADD CONSTRAINT `polzov_ibfk_1` FOREIGN KEY (`prav`) REFERENCES `prav` (`id_prav`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ustro`
--
ALTER TABLE `ustro`
  ADD CONSTRAINT `ustro_ibfk_1` FOREIGN KEY (`inclu`) REFERENCES `included` (`id-inclu`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
