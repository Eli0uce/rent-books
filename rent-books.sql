-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 18 juin 2023 à 06:29
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rent-books`
--

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `kind` enum('roman','fantasy','bd','manga','poesie','theatre','autres') NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `kind`, `description`, `image`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Eragon', 'Christopher Paolini', 'fantasy', 'Eragon, un jeune fermier adolescent habite en bordure du petit village de Carvahall. Ce dernier se situe en Alagaësia plus précisément dans la vallée de Palancar, au nord-ouest de l\'Empire. Alors qu\'il chasse sur la Crête, une chaîne de montagnes réputée maléfique après que le roi Galbatorix y a perdu la moitié de son armée, il découvre dans une clairière une mystérieuse pierre bleue parcourue de veines blanches. Cette pierre se révèle être un œuf duquel ne tarde pas à émerger une dragonne bleue. Eragon, modeste paysan, devient alors le premier représentant des légendaires Dragonniers disparus depuis plus de cent ans.', 'https://i.ibb.co/qdDfxMZ/Christopher-Paolini-Eragon-1.jpg', 5, NULL, NULL),
(2, 'L\'ainé', 'Christopher Paolini', 'fantasy', 'Au début du deuxième tome, les Vardens viennent de remporter la victoire sur les Urgals au cœur de Farthen Dûr. Eragon souffre d\'une blessure, infligée par Durza, qui l\'empêche de fournir de trop gros efforts sans subir de grandes souffrances.', 'https://i.ibb.co/0F224ZN/410i-ALN8-LFL-AC-UF1000-1000-QL80.jpg', 4, NULL, NULL),
(3, 'Brisingr', 'Christopher Paolini', 'fantasy', 'Malgré une victoire très difficile sur l\'Empire dans les Plaines Brûlantes, les Vardens doivent poursuivre leur résistance contre le tyran Galbatorix et ses armées. Plus que jamais déterminé à délivrer Katrina, Roran, accompagné d\'Eragon, encore sous le coup des terribles révélations de Murtagh, (au service de Galbatorix) se dirige vers Dras-Leona, au cœur même du repaire des Ra\'zacs, en Helgrind, où ils trouvent deux Ra\'zacs et deux Lethbrakas. Avec certaines difficultés, Eragon et Roran réussissent à tuer tous les Ra\'zacs et délivrent Katrina.', 'https://i.ibb.co/wCpNvJb/9791035400910.jpg', 6, NULL, NULL),
(4, 'L\'héritage', 'Christopher Paolini', 'fantasy', 'Il y a peu encore, Eragon n\'était qu\'un simple garçon de ferme, et Saphira, son dragon, une étrange pierre bleue ramassée dans la forêt... Depuis, le sort de plusieurs peuples repose sur leurs épaules. De longs mois d\'entraînement et de combats, s\'ils ont permis des victoires et ranimé l\'espoir, ont aussi provoqué des pertes cruelles. Or, l\'ultime bataille contre Galbatorix reste à mener. Certes, Eragon et Saphira ne sont pas seuls, ils ont des alliés : les Vardens conduits par Nasuada, Arya et les elfes, le roi Orik et ses nains, Garzhvog et ses redoutables Urgals. Le peuple des chats-garous s\'est même joint à eux avec son roi, Grimrr Demi-Patte. Pourtant, si le jeune Dragonnier et sa puissante compagne aux écailles bleues ne trouvent pas en eux-mêmes la force d\'abattre le tyran, personne n\'y réussira. Ils n\'auront pas de seconde chance.', 'https://i.ibb.co/NN8p54C/81-Qk1-KAq0k-L-AC-UF1000-1000-QL80.jpg', 2, NULL, NULL),
(5, 'Les Fleurs du mal', 'Charles Baudelaire', 'poesie', 'Les Fleurs du mal est un recueil de poèmes de Charles Baudelaire, reprenant la quasi-totalité de sa production en vers de 1840 jusqu\'à sa mort, survenue fin août 1867.\n\nPublié le 21 juin 1857, le recueil scandalise aussitôt la société française. Son auteur subit un procès retentissant. Le jugement le condamne à une forte amende, réduite sur intervention de l\'Impératrice ; il entraîne la censure de six pièces jugées immorales.', 'https://i.ibb.co/H4PNzqy/61a-YXe-VRj-ZL-AC-UF1000-1000-QL80.jpg', 11, NULL, NULL),
(6, 'Naruto - Tome 1', 'Masashi Kishimoto', 'manga', 'Naruto est un garçon un peu spécial. Il est toujours tout seul et son caractère fougueux ne l\'aide pas vraiment à se faire apprécier dans son village. Malgré cela, il garde au fond de lui une ambition: celle de devenir un maître Hokage, la plus haute distinction dans l\'ordre des ninjas, et ainsi obtenir la reconnaissance de ses pairs.', 'https://i.ibb.co/Zzn3vb0/naruto-1-kana-large.jpg', 7, NULL, NULL),
(7, 'Tintin en Amérique', 'Hergé', 'bd', 'Après avoir démantelé un trafic de diamants organisé par Al Capone dans l\'album Tintin au Congo, Tintin arrive à Chicago. Son arrivée est attendue de pied ferme par les gangsters, qui l\'enlèvent dès sa descente du train2. Il s\'évade néanmoins puis perd la piste des bandits dans un accident de voiture3. À sa sortie d\'hôpital, Al Capone le kidnappe à son tour mais Milou intervient et Tintin peut capturer toute la troupe4. Malgré cet exploit, la police ne le croit pas et Al Capone s\'échappe5. Un chef rival, Bobby Smiles, décide alors de recruter Tintin pour qu\'il élimine Al Capone6. Devant son refus, Smiles tente de le tuer à deux reprises, sans succès7, et est ensuite forcé de s\'enfuir après l\'arrestation de sa bande8.', 'https://i.ibb.co/186ybF6/couverture-tintin-en-amerique.jpg', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_31_110411_create_books_table', 1),
(7, '2023_06_17_030357_update_users_table', 1),
(8, '2023_05_31_054906_create_permission_tables', 2),
(9, '2023_06_18_005217_create_user_books_table', 3),
(10, '2023_06_18_035421_add_two_factor_columns_to_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('elias.dupin-gilet@codewave.nc', '$2y$10$Pgk/0rH0PrW6YmaK3OPtOuxCa8dF/Wn7qGIsWsfivhLPMJzfZqPv.', '2023-06-17 17:26:18');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_book', 'web', '2023-06-17 13:44:33', '2023-06-17 13:44:33'),
(2, 'view_any_book', 'web', '2023-06-17 13:44:33', '2023-06-17 13:44:33'),
(3, 'create_book', 'web', '2023-06-17 13:44:33', '2023-06-17 13:44:33'),
(4, 'update_book', 'web', '2023-06-17 13:44:33', '2023-06-17 13:44:33'),
(5, 'restore_book', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(6, 'restore_any_book', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(7, 'replicate_book', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(8, 'reorder_book', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(9, 'delete_book', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(10, 'delete_any_book', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(11, 'force_delete_book', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(12, 'force_delete_any_book', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(13, 'view_role', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(14, 'view_any_role', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(15, 'create_role', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(16, 'update_role', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(17, 'delete_role', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(18, 'delete_any_role', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(19, 'view_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(20, 'view_any_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(21, 'create_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(22, 'update_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(23, 'restore_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(24, 'restore_any_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(25, 'replicate_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(26, 'reorder_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(27, 'delete_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(28, 'delete_any_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(29, 'force_delete_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35'),
(30, 'force_delete_any_user', 'web', '2023-06-17 13:44:35', '2023-06-17 13:44:35');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2023-06-17 13:44:34', '2023-06-17 13:44:34'),
(2, 'filament_user', 'web', '2023-06-17 13:44:36', '2023-06-17 13:44:36');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rented_books` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `birthday`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `rented_books`) VALUES
(1, 'Elias', NULL, 'elias.dupin-gilet@codewave.nc', NULL, NULL, '$2y$10$hI2YOugASR2adwyjAMB5EuxT8x3ypRH4BE4pPYQutjrkCHW1ZkZgi', NULL, NULL, NULL, '1sRILudz2oOh7F5zKb2flk4YCOd5D8DoK197x2VatsN2uqyXB9dwcCoXoOEB', '2023-06-17 13:43:45', '2023-06-17 15:32:39', NULL),
(2, 'Test', NULL, 'test@test.test', NULL, NULL, '$2y$10$w2tAySBa.wpOvZRUaz6aMurUnqlM0fmmRZ0v4IPecISM0GWBGx22G', NULL, NULL, NULL, 'Cbk5sBNMgU0IW5yRhrQTzch80dSYvF4QmKaKLIGp8bHgGnwJFgP4IaFsqRb5', '2023-06-17 16:58:25', '2023-06-17 16:58:25', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_books`
--

CREATE TABLE `user_books` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_books`
--

INSERT INTO `user_books` (`user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rented_books_foreign` (`rented_books`);

--
-- Index pour la table `user_books`
--
ALTER TABLE `user_books`
  ADD KEY `user_books_user_id_foreign` (`user_id`),
  ADD KEY `user_books_book_id_foreign` (`book_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rented_books_foreign` FOREIGN KEY (`rented_books`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_books`
--
ALTER TABLE `user_books`
  ADD CONSTRAINT `user_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
