-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: Jun 24, 2025 at 03:34 PM
-- Server version: 5.7.43
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Драма', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(2, 'Комедия', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(3, 'Боевик', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(4, 'Триллер', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(5, 'Фантастика', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(6, 'Ужасы', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(7, 'Романтика', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(8, 'Документальный', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(9, 'Анимация', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(10, 'Криминал', '2025-06-24 07:59:41', '2025-06-24 07:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `category_id`, `name`, `description`, `preview`, `created_at`, `updated_at`) VALUES
(1, 1, 'Зеленая миля', 'Драматический фильм о тюремном охраннике и заключенном с необычными способностями.', 'movies/green_mile.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(2, 2, 'Иван Васильевич меняет профессию', 'Советская комедия о путешествиях во времени и приключениях изобретателя.', 'movies/ivan_vasilievich.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(3, 3, 'Матрица', 'Фантастический боевик о программисте, узнавшем правду о реальности.', 'movies/matrix.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(4, 4, 'Молчание ягнят', 'Психологический триллер о студентке ФБР и серийном убийце Ганнибале Лектере.', 'movies/silence_of_lambs.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(5, 5, 'Бегущий по лезвию', 'Научно-фантастический фильм о охотнике на репликантов в футуристическом мире.', 'movies/blade_runner.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(6, 6, 'Сияние', 'Фильм ужасов о писателе, который становится смотрителем отеля и сходит с ума.', 'movies/shining.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(7, 7, 'Титаник', 'Романтическая драма о любви на борту обреченного корабля.', 'movies/titanic.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(8, 1, 'Список Шиндлера', 'Историческая драма о немецком промышленнике, спасшем жизни евреев.', 'movies/schindlers_list.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(9, 10, 'Крестный отец', 'Криминальная сага о семье итало-американской мафии.', 'movies/godfather.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(10, 3, 'Терминатор 2', 'Научно-фантастический боевик о киборге из будущего.', 'movies/terminator2.jpg', '2025-06-24 07:59:41', '2025-06-24 07:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `movie_id` int(11) UNSIGNED DEFAULT NULL,
  `review` mediumtext,
  `rating` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `movie_id`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Потрясающий фильм! Стивен Кинг и Фрэнк Дарабонт создали шедевр.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(2, 3, 1, 'Очень трогательная история. Том Хэнкс великолепен в своей роли.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(3, 4, 2, 'Классика советского кино! Смеялся от души.', 4, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(4, 5, 2, 'Леонид Гайдай - гений комедии. Фильм не стареет.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(5, 2, 3, 'Революционный фильм для своего времени. Спецэффекты до сих пор впечатляют.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(6, 3, 4, 'Хопкинс в роли Лектера - это что-то невероятное. Очень атмосферно.', 4, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(7, 4, 5, 'Визуально потрясающий фильм. Ридли Скотт - мастер.', 4, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(8, 5, 6, 'Кубрик создал настоящий кошмар. Джек Николсон великолепен.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(9, 2, 7, 'Красивая, но затянутая история. Спецэффекты корабля впечатляют.', 3, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(10, 3, 8, 'Один из важнейших фильмов в истории кино. Очень тяжелый, но необходимый к просмотру.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(11, 4, 9, 'Классика жанра. Марлон Брандо в лучшей форме.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(12, 5, 10, 'Отличный боевик с философским подтекстом. Арнольд хорош.', 4, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(13, 2, 3, 'Пересматриваю регулярно. Каждый раз нахожу что-то новое.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(14, 3, 9, 'Сага, которая определила жанр. Аль Пачино великолепен.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(15, 4, 1, 'Долго не решался посмотреть из-за хронометража, но не пожалел. Шедевр.', 5, '2025-06-24 07:59:41', '2025-06-24 07:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Администратор', 'admin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(2, 'Иван Петров', 'ivan@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(3, 'Мария Сидорова', 'maria@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(4, 'Алексей Козлов', 'alexey@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2025-06-24 07:59:41', '2025-06-24 07:59:41'),
(5, 'Елена Волкова', 'elena@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '2025-06-24 07:59:41', '2025-06-24 07:59:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
