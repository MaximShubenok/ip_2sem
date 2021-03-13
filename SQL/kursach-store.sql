-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 23 2021 г., 19:48
-- Версия сервера: 5.7.24
-- Версия PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kursach-store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) COLLATE utf8_bin NOT NULL,
  `password` varchar(222) COLLATE utf8_bin NOT NULL,
  `email` varchar(222) COLLATE utf8_bin NOT NULL,
  `code` varchar(222) COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 07:36:18'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) COLLATE utf8_bin NOT NULL,
  `image` mediumtext COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`rs_id`, `title`, `image`, `date`) VALUES
(76, 'Camry 3.5', '603527e6ced20.jpg', '2021-02-23 16:05:58'),
(77, 'Skoda Fabia', '6035285d735ba.jpg', '2021-02-23 16:07:57'),
(78, 'Renaul Logon', '60352867b0e39.jpg', '2021-02-23 16:08:07'),
(79, 'Porsche Cayenne', '603528bba2bb0.jpg', '2021-02-23 16:09:31'),
(80, 'Mercedes Benz', '603528c6c54f6.jpg', '2021-02-23 16:09:42'),
(82, 'Lexus LC', '60352ae1b079e.jpg', '2021-02-23 16:18:41');

-- --------------------------------------------------------

--
-- Структура таблицы `details`
--

CREATE TABLE `details` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) COLLATE utf8_bin NOT NULL,
  `slogan` varchar(222) COLLATE utf8_bin NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `amount` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(222) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `details`
--

INSERT INTO `details` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `amount`, `img`) VALUES
(35, 76, 'Деталь 1', 'Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь ', '250000.00', '150', '60353edfac1da.jpg'),
(36, 76, 'Деталь 2', 'Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь ', '13200.00', '156', '60353ef21693e.jpg'),
(37, 76, 'Деталь 3', 'Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь ', '1560.00', '12345', '60353f28bcc97.jpg'),
(38, 76, 'Деталь 6', 'ыДеталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь Деталь ', '123214.00', '21321', '60353f9795da0.jpg'),
(39, 77, 'Деталь ', 'Деталь Деталь Деталь Деталь Деталь Деталь ', '331.00', '3131', '6035404c23898.jpg'),
(40, 78, 'Деталь ', 'Деталь Деталь Деталь Деталь ', '3213.00', '321321', '6035405f06d9f.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL,
  `remark` longtext COLLATE utf8_bin NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) COLLATE utf8_bin NOT NULL,
  `f_name` varchar(222) COLLATE utf8_bin NOT NULL,
  `l_name` varchar(222) COLLATE utf8_bin NOT NULL,
  `email` varchar(222) COLLATE utf8_bin NOT NULL,
  `phone` varchar(222) COLLATE utf8_bin NOT NULL,
  `password` varchar(222) COLLATE utf8_bin NOT NULL,
  `address` mediumtext COLLATE utf8_bin NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) COLLATE utf8_bin NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Индексы таблицы `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`rs_id`);

--
-- Индексы таблицы `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`d_id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Индексы таблицы `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT для таблицы `details`
--
ALTER TABLE `details`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
