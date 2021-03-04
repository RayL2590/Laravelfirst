-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 mars 2021 à 18:13
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravelposts`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 9, 18, NULL, NULL, NULL),
(4, 9, 15, NULL, NULL, NULL),
(10, 9, 6, '2021-02-28 13:52:13', '2021-02-28 13:52:13', NULL),
(14, 9, 29, '2021-02-28 15:47:39', '2021-02-28 15:47:39', NULL),
(16, 11, 26, '2021-02-28 16:57:47', '2021-02-28 16:57:47', NULL),
(17, 11, 46, '2021-02-28 16:58:05', '2021-02-28 16:58:05', NULL),
(19, 9, 27, '2021-02-28 16:58:59', '2021-02-28 16:58:59', NULL),
(21, 10, 46, '2021-02-28 17:00:02', '2021-02-28 17:00:02', NULL),
(22, 9, 46, '2021-02-28 17:01:12', '2021-02-28 18:06:54', '2021-02-28 18:06:54'),
(23, 9, 26, '2021-02-28 17:01:16', '2021-02-28 18:07:04', '2021-02-28 18:07:04'),
(24, 9, 46, '2021-02-28 18:06:56', '2021-02-28 18:06:56', NULL),
(25, 9, 26, '2021-02-28 18:07:06', '2021-02-28 18:07:08', '2021-02-28 18:07:08'),
(26, 9, 26, '2021-02-28 18:07:09', '2021-02-28 18:07:09', NULL),
(27, 9, 28, '2021-02-28 18:07:17', '2021-02-28 18:07:31', '2021-02-28 18:07:31'),
(28, 9, 28, '2021-02-28 18:07:34', '2021-02-28 18:07:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_28_074923_add_username_to_users_table', 2),
(5, '2021_02_28_101142_create_posts_table', 3),
(6, '2021_02_28_135115_create_likes_table', 4),
(7, '2021_02_28_185821_add_soft_deletes_to_likes_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(6, 9, 'Dolor at ut officia cupiditate quia a doloribus pariatur aut velit quos necessitatibus iste magni et quia blanditiis accusamus voluptatibus aliquid ab eum quasi vel velit.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(7, 9, 'Nam facilis eligendi ut quis rerum exercitationem non unde numquam fugit alias laudantium voluptas et dolorum fuga voluptas architecto officia ipsa autem ut et laboriosam nihil exercitationem ducimus.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(8, 9, 'Incidunt omnis voluptas eaque deserunt et debitis doloribus ullam et assumenda nihil harum quis recusandae totam explicabo omnis iusto sit.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(9, 9, 'Illo in dolorem illo et aut rerum aut consequatur nulla necessitatibus eveniet blanditiis veritatis quaerat autem dolores delectus placeat maiores maxime facilis nisi saepe.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(10, 9, 'Ad mollitia est consectetur assumenda minus doloribus itaque consequuntur est ut aut eveniet sit aut laudantium occaecati dolores omnis neque veritatis minus omnis.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(11, 9, 'Nam aut sed libero accusantium repudiandae optio voluptas et illo incidunt aut minus voluptas sit atque voluptatem et soluta odit iure ea reprehenderit culpa omnis reprehenderit.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(12, 9, 'Ex ut voluptatem expedita non rerum rerum a laboriosam assumenda ullam accusantium corporis nisi voluptatem.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(13, 9, 'Rem dolores ut et repudiandae itaque omnis earum eligendi et cumque enim ab rerum nemo ut necessitatibus.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(14, 9, 'Doloribus qui molestias omnis corporis iure autem quos voluptatum et eius nihil ex quod earum accusamus.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(15, 9, 'Dignissimos inventore commodi optio saepe unde quisquam recusandae beatae qui repellendus sit ipsum quo dolore expedita omnis ut aut eum voluptas autem.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(16, 9, 'Nam fugiat sint quia et illo ut nisi ratione voluptatum et exercitationem quidem iste ea ut quisquam ut expedita quia et.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(17, 9, 'Fugit fugiat omnis sint vitae totam ad aliquid animi quia omnis quia laborum qui est non qui modi ut est optio officia nostrum necessitatibus.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(18, 9, 'Ad aut non praesentium ratione fugit provident voluptatum neque culpa ea enim cupiditate quae eos voluptas quas exercitationem aliquam reiciendis debitis non sit ut.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(19, 9, 'Nemo assumenda eum natus ipsa impedit sint mollitia esse sint veritatis dolores voluptates necessitatibus ipsa quia sit.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(20, 9, 'Inventore recusandae ea reprehenderit officia consequatur sit praesentium quas dolore porro perspiciatis reprehenderit.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(22, 9, 'Numquam nihil non at laudantium non maiores repudiandae sit vel dolor in sint quia corporis possimus animi inventore porro atque deserunt fugit ut libero totam qui aliquid.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(23, 9, 'Molestiae reprehenderit deserunt autem omnis est iste alias et aliquid cupiditate saepe nulla dolor libero.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(24, 9, 'Voluptatem et veritatis modi dolor eaque modi id et rem quam illum dolorem error facilis enim.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(25, 9, 'Consequatur et voluptatem nesciunt alias iste occaecati non et alias at rerum ipsam natus autem.', '2021-02-28 12:16:01', '2021-02-28 12:16:01'),
(26, 10, 'Impedit recusandae culpa praesentium et architecto beatae vel voluptatem nulla cupiditate et ipsam omnis pariatur tempora quam dicta ipsa suscipit deleniti perferendis.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(27, 10, 'Minima quam explicabo cum rerum repudiandae beatae ab at adipisci rem eius et ea minus quos minus et aut numquam quos.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(28, 10, 'Voluptatem eaque aspernatur amet dolores reprehenderit exercitationem reprehenderit ut fugiat sit ratione esse sequi assumenda facere doloribus dicta deleniti quia aut consequatur ut vero illo dolor aliquam quaerat.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(29, 10, 'Id dolor quia dolorem est sunt ipsam facilis suscipit deleniti id illum amet ut illum accusamus in deserunt illum quod eos et aut asperiores ut eos.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(30, 10, 'In nihil voluptatem et consequatur molestiae velit minus voluptatum voluptatem qui ullam occaecati libero rerum voluptatibus repudiandae hic.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(31, 10, 'Recusandae recusandae necessitatibus sed nam dolor unde laborum omnis iure delectus a et fuga magni aliquid architecto.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(32, 10, 'Modi distinctio et facilis cum officia in aut dolorum molestiae laborum cupiditate aut in voluptatem.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(33, 10, 'Accusamus aut aut voluptatem est enim minus aut velit assumenda cumque nemo incidunt.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(34, 10, 'Repellendus illum voluptas tempore quo tenetur quisquam quia consequatur placeat reiciendis ullam corrupti.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(35, 10, 'Saepe natus doloremque sed itaque quas soluta vel eveniet eveniet repellendus quod sit quo praesentium ratione fuga iure eius nemo accusamus quos possimus dicta corrupti exercitationem.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(36, 10, 'Maiores sequi ipsum voluptas atque recusandae aliquid et voluptate voluptatem dolorem possimus ut reprehenderit qui dicta aut excepturi non est cupiditate a aspernatur nobis ex nihil doloribus suscipit.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(37, 10, 'Consectetur perferendis mollitia quam quibusdam unde nobis aut eveniet cupiditate aliquid quibusdam rerum sit.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(38, 10, 'Cum enim aperiam reprehenderit possimus consequatur voluptate saepe animi incidunt quaerat occaecati et perferendis totam.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(39, 10, 'Rem dolore et rerum unde ut nihil quis quas et quia repellat sint pariatur unde fugit quasi voluptate provident nulla sapiente vitae placeat odit.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(40, 10, 'Qui est tenetur et at autem delectus officiis nihil omnis id nihil voluptas nam pariatur laudantium omnis aut distinctio doloribus quae eum sint veniam numquam.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(41, 10, 'Recusandae unde iusto placeat voluptas magni ab odio vero reiciendis soluta aliquam culpa non et blanditiis earum delectus totam deserunt qui qui eum omnis.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(42, 10, 'Quaerat ut eos quo qui qui quisquam libero consequatur dolorum in ipsum corrupti repellendus quo totam voluptate aut consequuntur eum commodi perferendis ex.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(43, 10, 'Esse inventore incidunt voluptas id suscipit itaque laboriosam ab laboriosam illo quis qui aperiam hic ut voluptate magni iusto dignissimos minima ut voluptatem ut quia.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(44, 10, 'Molestias fugit nemo nam soluta aperiam id sapiente consequatur sed non cum minus velit aliquid doloribus tenetur doloremque laboriosam laboriosam soluta deserunt eaque voluptatibus similique dolor officia similique.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(45, 10, 'Ea ea autem fugiat vel aperiam laborum architecto esse et vero assumenda impedit ut.', '2021-02-28 12:17:07', '2021-02-28 12:17:07'),
(46, 11, 'test', '2021-02-28 16:58:01', '2021-02-28 16:58:01');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`) VALUES
(9, 'Martin Matin', 'osef@gmail.fr', NULL, '$2y$10$xHof92u.QcXdn4qA6CkO6uKVCnx/HWTVjdRaB5ASGaQunK5qVPUhO', NULL, '2021-02-28 08:04:46', '2021-02-28 08:04:46', 'Martin'),
(10, 'Hugo Petrovic', 'osef@outlook.com', NULL, '$2y$10$zlkpRRhTVRx9cx3uOwskretwRsHZ5b5yvaKAelwT8AluBUNKjp.oC', 'hG7Y1u9zTid3lMpHfqygnrTDoB2qeWylTf2bX5800PnaRx1vhA5bk2zKxpM9', '2021-02-28 08:05:21', '2021-02-28 08:05:21', 'Steve'),
(11, 'Salomon Kalou', 'osef@outlook.uk', NULL, '$2y$10$afw7H8RCUl5TYcca1jozmehLlTo/9ibLntsFgibyOJPbcTGjnbB12', NULL, '2021-02-28 16:49:52', '2021-02-28 16:49:52', 'Martinho');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
