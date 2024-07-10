-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-07-07 16:35:26
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `php_quiz`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `created_at`, `username`, `email`, `password`, `role`) VALUES
(1, '2024-06-23 13:08:24', 'バカチンガー', 'bakachin@gmail.com', '$2y$10$AypUInPI3BlStM0EUMt6C.muWorJZrjGOW7wu31DJJMxGfBDj0dX6', 1),
(2, '2024-06-23 13:08:24', 'バカチン花子', 'bakachin1@gmail.com', '$2y$10$5o/MWllcPBRCzyvyHd2bNeGBwhWY2uNQZFNaNGWvh5SY9LJ.hi0my', 1),
(3, '2024-06-23 13:23:38', 'バカチン太郎', 'bakachin2@gmail.com', '$2y$10$d0Nt9jbDITx728sZNxKgZO3DLvPZtl6tENXRktanmMi43RLnqZwLW', 1),
(4, '2024-06-23 13:45:40', 'バカチン一平', 'bakachin3@gmail.com', '$2y$10$yiL3wVpUyq.vw/ue4TJNTevSnub.Rv2cqo9QgjI7WjAcHt25RrFKq', 1),
(5, '2024-06-30 11:56:57', 'バカチンガー', 'bakachin10@gmail.com', '$2y$10$kjxOlRccIE7ufJEDmJNpiuDM0R0vzJg2SWymwF9zSYE51xIXOBpI.', 1),
(6, '2024-06-30 12:35:43', 'バカチンガー', 'bakachin6@gmail.com', '$2y$10$p7Z5qyE3ZpEdMIaN84bHg.I6WxcD22aul1kvgKNJUMgNKBmkJd1GS', 1),
(7, '2024-06-30 12:50:33', 'バカチンガー', 'bakachin7@gmail.com', '$2y$10$aT2cisateANiO9EDkvD/ReN1pp/lsu3vrsVPUvCfkyY/u/JIBTVmm', 1),
(8, '2024-06-30 13:35:03', 'バカチンガー三郎', 'bakachin9@gmail.com', '$2y$10$dv1C3zzFSVfvnYV4dIotvugW8sjDSZG9DMYw45Yr7ExUxWw/7wG06', 1),
(9, '2024-07-07 13:42:08', 'バカチン五郎', 'bakachin11@gmail.com', '$2y$10$aFmOvcbzBPGJn3YUHHSUpuZVFkoe7V13tdjk8aMHfsJAYUsvvYe/i', 1),
(10, '2024-07-07 13:42:57', 'admin', 'admin@gmail.com', '$2y$10$8HRUmH5wMENVQ5ElSiN7rOyVoTf3aY4cKfsq2lpMm7HUoKDyB0DO.', 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
