-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 18 2025 г., 09:28
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `home`
--

-- --------------------------------------------------------

--
-- Структура таблицы `idro`
--

CREATE TABLE `idro` (
  `id` int(11) NOT NULL,
  `id_polzov` int(11) NOT NULL,
  `id_ustro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `polzov`
--

CREATE TABLE `polzov` (
  `id-pozolov` int(11) NOT NULL,
  `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parol` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prav` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `prav`
--

CREATE TABLE `prav` (
  `id_prav` int(11) NOT NULL,
  `prav` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `prav`
--

INSERT INTO `prav` (`id_prav`, `prav`) VALUES
(1, 'standart'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `ustro`
--

CREATE TABLE `ustro` (
  `id-ustro` int(11) NOT NULL,
  `komnat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Индексы таблицы `polzov`
--
ALTER TABLE `polzov`
  ADD PRIMARY KEY (`id-pozolov`),
  ADD KEY `prav` (`prav`);

--
-- Индексы таблицы `prav`
--
ALTER TABLE `prav`
  ADD PRIMARY KEY (`id_prav`);

--
-- Индексы таблицы `ustro`
--
ALTER TABLE `ustro`
  ADD PRIMARY KEY (`id-ustro`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `idro`
--
ALTER TABLE `idro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `polzov`
--
ALTER TABLE `polzov`
  MODIFY `id-pozolov` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `prav`
--
ALTER TABLE `prav`
  MODIFY `id_prav` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `ustro`
--
ALTER TABLE `ustro`
  MODIFY `id-ustro` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `idro`
--
ALTER TABLE `idro`
  ADD CONSTRAINT `idro_ibfk_1` FOREIGN KEY (`id_polzov`) REFERENCES `polzov` (`id-pozolov`),
  ADD CONSTRAINT `idro_ibfk_2` FOREIGN KEY (`id_ustro`) REFERENCES `ustro` (`id-ustro`);

--
-- Ограничения внешнего ключа таблицы `polzov`
--
ALTER TABLE `polzov`
  ADD CONSTRAINT `polzov_ibfk_1` FOREIGN KEY (`prav`) REFERENCES `prav` (`id_prav`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
