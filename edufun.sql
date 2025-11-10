-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2025 at 11:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Multimedia', 'interactive-multimedia', 'Courses about HCI, UX, and multimedia technologies.', '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(2, 'Software Engineering', 'software-engineering', 'Courses about software design, agile processes, and reengineering.', '2025-11-10 02:32:09', '2025-11-10 02:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_10_091621_create_categories_table', 1),
(5, '2025_11_10_091622_create_writers_table', 1),
(6, '2025_11_10_092047_create_posts_table', 1),
(7, '2025_11_10_092048_create_abouts_table', 1),
(8, '2025_11_10_093028_create_popular_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_posts`
--

CREATE TABLE `popular_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_posts`
--

INSERT INTO `popular_posts` (`id`, `post_id`, `rank`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(2, 9, 2, '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(3, 7, 3, '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(4, 11, 4, '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(5, 5, 5, '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(6, 4, 6, '2025-11-10 02:32:09', '2025-11-10 02:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `body`, `image`, `category_id`, `writer_id`, `created_at`, `updated_at`) VALUES
(1, 'Et unde et in quis.', 'corporis-nisi-perferendis-unde-sed-id', 'Et cupiditate et porro atque deleniti veritatis enim est culpa aut veritatis.', 'Quia earum ipsa magnam odit fugiat eligendi officia. Labore esse non nihil numquam ipsam cum. Et nesciunt et eius pariatur.\n\nDicta asperiores vel est animi. Sed rerum sed eligendi neque. Sit non ipsum asperiores dolores reprehenderit. Asperiores deserunt consequuntur consectetur atque. Neque qui delectus nemo.\n\nVelit voluptatem consequatur non consequuntur assumenda velit quo. Sed id illum qui velit consectetur aliquam saepe perferendis. Ipsa in voluptatem incidunt. Unde non voluptas recusandae nemo nemo.\n\nVeniam et qui aut. Vel dicta pariatur vero similique et. Consequatur nostrum modi error unde eos laborum et.\n\nVel provident distinctio deleniti qui expedita consequatur modi. Quam consequatur sunt ipsam. Dolorum dolor suscipit autem autem itaque rerum ut rerum.', 'https://picsum.photos/800/450?random=100', 1, 3, '2025-07-20 10:11:40', '2025-11-10 02:32:09'),
(2, 'Ea labore reiciendis fugiat accusamus vitae quidem architecto.', 'est-qui-accusantium-et', 'Optio perspiciatis corporis et porro pariatur facere ad aliquid vel eos nemo quia.', 'Consequatur delectus laboriosam molestiae. Neque nihil deleniti aut error culpa molestias qui. Nihil quae voluptatem modi consequatur quisquam. Nostrum perspiciatis vel natus ad ratione.\n\nEa quia similique hic ut voluptatibus facilis deserunt. Iusto eius aut quas commodi nobis. Quidem architecto corrupti velit sapiente optio aut facere. Officiis quod eum necessitatibus atque beatae sit molestiae.\n\nNecessitatibus dolores odio eius blanditiis. Autem architecto perspiciatis aut sunt dolorem eaque. Alias nihil fuga aliquid qui molestiae. Quaerat odit molestiae saepe quod.\n\nSimilique voluptate quis rerum quas architecto aspernatur doloremque. Dolor maiores omnis ea aut. Est ad corrupti velit est. Eos vel molestiae alias necessitatibus.\n\nIpsum aliquam in a. Possimus expedita exercitationem qui quod nemo quis veniam sed.', 'https://picsum.photos/800/450?random=12', 2, 6, '2025-10-14 10:31:44', '2025-11-10 02:32:09'),
(3, 'Repellendus aut expedita nihil minus.', 'dolores-quisquam-ratione-officia', 'Officiis earum qui non quaerat unde nisi dolores.', 'Praesentium id sed a amet facilis. Ut aut velit tenetur fugiat optio. Expedita rerum totam ipsum voluptatem officiis.\n\nId ad qui aut. Qui voluptas delectus enim laborum. Est voluptatem magni illo aut error ipsam consequatur. Dolorum ad voluptatum ut sint error debitis sit eos.\n\nSint assumenda delectus velit sed illum vitae quia est. Enim sunt quaerat sed quia vel quaerat illum tempore. Incidunt beatae dolores soluta architecto.\n\nAut dolore a accusantium. Excepturi molestiae consectetur sit dolores.\n\nSunt accusantium quibusdam voluptas veritatis placeat veritatis delectus quia. Cumque tempora voluptate commodi vero reprehenderit sint hic. Omnis perspiciatis dolor sed libero vel consequatur est.', 'https://picsum.photos/800/450?random=172', 2, 2, '2025-08-26 00:48:26', '2025-11-10 02:32:09'),
(4, 'Eius ipsum non totam.', 'explicabo-aut-aut-ut-consequatur-blanditiis-quam-aspernatur-et', 'Fugiat molestiae doloremque totam illo et voluptatem minus at consectetur ullam perspiciatis molestias et veritatis cupiditate.', 'Minima est sed ut mollitia. Dicta aut iure quas labore blanditiis vitae.\n\nAut iusto quia suscipit unde eveniet. Dolorum cumque sed ipsam ea. Suscipit assumenda veniam molestiae vel porro dignissimos saepe. Qui rerum corporis veniam vitae sint excepturi.\n\nRecusandae enim magnam voluptatum vel natus. Nulla commodi est nobis earum. Consequatur in nulla ipsam. Quod iste eos sed qui ipsum laudantium.\n\nPlaceat aperiam consequuntur voluptas fugiat. Sunt velit maxime debitis reiciendis. Est aut dolores accusantium.\n\nEt expedita omnis mollitia officia quia qui. Aut facere quibusdam sunt. Nihil ut consequuntur sit dolores et. Voluptate quia dignissimos voluptates a nisi error. Inventore nam aut deserunt.', 'https://picsum.photos/800/450?random=94', 1, 1, '2025-10-30 05:27:06', '2025-11-10 02:32:09'),
(5, 'Consequuntur ut consequuntur blanditiis omnis facere ut est.', 'enim-nihil-quisquam-adipisci-aut-ullam-nihil', 'Enim nihil mollitia sint ullam distinctio id qui quibusdam quis amet deleniti nisi sed et eius.', 'Dolore iusto provident esse cupiditate. Sunt cum doloremque blanditiis nisi est eaque laborum. Repellendus ea aliquam totam laboriosam quae consequatur. Aperiam fuga est nam consectetur totam.\n\nExercitationem dolorem cupiditate consequatur sit. Vero voluptas temporibus sunt consequatur inventore. Sed est cumque dolorem fugit qui est. Blanditiis quos in illum incidunt maiores.\n\nQui numquam ratione pariatur tempore rerum. In fugiat aut voluptas. Repellat est suscipit facilis dolorum minus.\n\nError laboriosam modi non earum dolores sapiente fugiat. Asperiores corrupti quis fugiat et quis architecto dolores. In eaque excepturi doloribus.\n\nRepellat ut eligendi et blanditiis. Reiciendis consequatur et adipisci accusamus quod sint cupiditate.', 'https://picsum.photos/800/450?random=82', 1, 1, '2025-07-12 02:54:33', '2025-11-10 02:32:09'),
(6, 'Quasi dolores sit nisi commodi.', 'temporibus-consectetur-explicabo-nostrum-in-dolorem', 'Eum cum modi est quibusdam cumque dolore dolor fugiat pariatur possimus qui.', 'Magni recusandae hic quam velit. Blanditiis ut id est harum sunt iusto et architecto. Omnis ad facilis consectetur ut. Sit consequatur neque voluptate deserunt quis sed.\n\nAutem consequuntur nam sequi. Accusamus deleniti non consequatur et voluptates. Consequatur et perferendis nihil porro. Fugit mollitia nulla ipsa consequatur similique.\n\nVel dolores reiciendis tempora deserunt. Voluptate placeat qui corrupti mollitia quo.\n\nVoluptas laboriosam deserunt libero libero ut voluptate cupiditate laudantium. Ipsum excepturi officiis quia. Sapiente autem tempora aspernatur officia non.\n\nRatione consequatur ab magni minima. Et esse fuga rerum velit quibusdam quas. Repudiandae voluptas maiores molestiae quos laudantium ullam. Saepe voluptatem sapiente odit in nostrum repudiandae soluta.', 'https://picsum.photos/800/450?random=74', 2, 2, '2025-10-06 08:09:31', '2025-11-10 02:32:09'),
(7, 'Excepturi temporibus neque officiis aut non aut.', 'voluptatem-similique-quia-ipsam-ipsam-consequuntur-nulla-illum', 'Beatae suscipit quibusdam molestias enim reprehenderit et in itaque et voluptatem aliquam.', 'Officia odio iusto quia consequuntur quis et. At qui suscipit incidunt facere optio quas beatae. Et aut atque aut et autem nam impedit.\n\nVoluptates ut est vero aliquid eos. Et asperiores et ipsum laborum beatae. Facere rem non sit itaque ullam. Porro quam quis repudiandae amet at molestiae amet.\n\nQuae ut ab facere illum ut. Quidem est dolorem quia voluptas. Quia nihil modi sapiente est quo et. Eius aut dicta quam et.\n\nEveniet recusandae temporibus pariatur repellendus qui asperiores. Voluptatem aut ipsa ut accusamus molestias dolor. Exercitationem ut rerum dicta ut at est accusamus cumque. Aperiam non distinctio quisquam nemo iure laboriosam esse. Nihil maxime reiciendis eum veritatis aut.\n\nVoluptatem ullam dolores quia qui aut doloremque. Necessitatibus et inventore omnis qui cum debitis. Ea fugiat et eos velit quia. Consequuntur et minus magnam enim cupiditate. Dolorem voluptatem quibusdam optio nesciunt et.', 'https://picsum.photos/800/450?random=90', 2, 3, '2025-06-30 02:14:23', '2025-11-10 02:32:09'),
(8, 'Suscipit assumenda voluptatibus natus ipsam quasi et ea.', 'quam-debitis-molestias-voluptates-incidunt-fugiat', 'Minima rerum quaerat itaque et molestiae molestias excepturi sit placeat eos.', 'Illum dolore et assumenda voluptas magnam asperiores voluptatibus. Quis pariatur cum laborum impedit dolores cupiditate accusantium dolorem. Cumque eos esse vel eveniet eum. A quo qui perspiciatis nostrum animi.\n\nIncidunt officiis nesciunt consequatur. Reprehenderit rem vero suscipit. Dolor voluptatem omnis maxime necessitatibus rerum autem quasi.\n\nQuia laboriosam dolores numquam voluptates id sequi. Dolores expedita libero totam. Ducimus nesciunt consequatur quia saepe.\n\nQuae voluptas recusandae iste tempore non. Quam nisi dolor eos explicabo autem. Mollitia et nesciunt alias dolor eum iusto.\n\nAssumenda et et natus quia. Nisi harum officia est impedit.', 'https://picsum.photos/800/450?random=89', 1, 2, '2025-09-26 10:49:52', '2025-11-10 02:32:09'),
(9, 'Dolores dicta sit et assumenda omnis assumenda ut.', 'ipsam-omnis-omnis-corporis-nobis', 'Vel tempore at tempore enim aut voluptas qui quod.', 'Maiores sit consequatur suscipit quam. Quis praesentium quas aut ducimus quod quidem ratione.\n\nVoluptas ratione nemo qui qui soluta. Velit consectetur aperiam reiciendis tempore quibusdam quo reiciendis.\n\nPossimus sed non rem mollitia sunt. Quo amet debitis alias sequi quibusdam rerum ipsa non. Explicabo et molestiae molestiae explicabo facere.\n\nSunt odit ut consequatur. Et labore perferendis molestiae natus nesciunt dolores nihil. Ut dolorem deleniti vel esse. Temporibus autem ut dignissimos sint.\n\nSapiente aliquam dolorum ut. Quaerat sit et qui fuga sit neque aspernatur quia. Assumenda ut explicabo cum dolores quaerat. Mollitia possimus ut pariatur ab et officia.', 'https://picsum.photos/800/450?random=45', 1, 2, '2025-06-16 08:20:18', '2025-11-10 02:32:09'),
(10, 'Voluptatem sint animi nisi dolorem totam alias cupiditate rerum.', 'qui-deleniti-culpa-ea-repellat', 'Vero ullam velit repellat voluptatem architecto expedita eligendi ad harum.', 'Quidem consequatur molestias voluptatem officiis qui dicta ut. Ad error et quia explicabo deserunt. Rem non non aliquam vel cumque officia vel. Voluptas ipsum error laborum earum harum quis voluptate dolorem.\n\nUllam temporibus rem numquam est. Facere consequatur sint sunt beatae. Ipsum maxime velit maxime eius sunt. Est expedita corrupti temporibus quia dicta.\n\nQuibusdam fugiat impedit voluptatem quia deleniti placeat nihil. Hic ab dolore debitis facere suscipit iure ratione. Velit suscipit aut aut inventore placeat.\n\nNatus labore et quia aut itaque error. Debitis excepturi neque corporis ad et. Voluptatem qui voluptas aut similique assumenda amet nesciunt. Consequatur ut nihil ullam.\n\nError aliquid necessitatibus minima dolor. Aut unde expedita totam aliquid qui quasi. Perferendis est dignissimos et. Aut voluptatem temporibus velit deserunt.', 'https://picsum.photos/800/450?random=110', 1, 6, '2025-10-17 09:28:32', '2025-11-10 02:32:09'),
(11, 'Mollitia unde laudantium et aut.', 'pariatur-error-quasi-vel-eum-consequatur-molestias-qui', 'Rerum laboriosam assumenda sequi et assumenda praesentium perferendis quod ipsam.', 'Quo molestias nesciunt qui quia beatae quisquam. Quibusdam architecto repudiandae vel amet. Et voluptates nesciunt ipsa porro nihil nihil. Cumque sint sed sunt voluptatum animi ea inventore ut.\n\nEveniet nisi natus dolor quaerat vitae cumque nihil. Ut dolorem aliquam quis placeat. Ducimus aspernatur ut velit facere dolores deleniti odit. Officia nihil fugiat et eligendi nisi enim autem et.\n\nPraesentium omnis quod architecto. Et facilis nesciunt et voluptatum impedit. Cum nesciunt adipisci ut rerum.\n\nPerspiciatis esse nemo rem officiis similique ipsa. Id repellendus mollitia aliquam. Illum quas harum corporis omnis ab nisi libero. Libero ab ut inventore.\n\nEligendi at fugit ducimus sit consequatur esse. Voluptatibus pariatur in consequatur et excepturi dolores vel nesciunt. Officiis blanditiis perferendis et aspernatur nostrum. Corporis et ut praesentium quibusdam.', 'https://picsum.photos/800/450?random=28', 1, 4, '2025-08-30 07:03:28', '2025-11-10 02:32:09'),
(12, 'Recusandae ab suscipit voluptatem.', 'tempora-quasi-sed-a-voluptate-modi-voluptas', 'Vero consequatur quia quas nulla ut suscipit quasi delectus nisi eligendi ad non nisi dolor quam.', 'Sit ut et eos qui at. Dolorem in aut necessitatibus. Voluptates a quis illo ipsam similique et itaque.\n\nNecessitatibus est quas dolorem perferendis autem. Quaerat molestias asperiores quis voluptatem maiores et sint. Quis explicabo nulla vel voluptatum ex cum. Eaque magnam et atque qui qui provident amet.\n\nQui impedit corrupti amet impedit itaque et expedita. Cumque repellendus accusamus ut deserunt debitis quae modi.\n\nNatus asperiores ex rerum delectus. Aut est quis aut ea excepturi. Nostrum tempore culpa odio rerum. Est modi dignissimos et delectus officiis est minus.\n\nVoluptates quis suscipit quis fuga vel hic nostrum. Non sint sed veniam perferendis expedita nisi. Amet quaerat ex molestias quibusdam. Magni soluta tenetur et dolore qui est.', 'https://picsum.photos/800/450?random=104', 2, 1, '2025-05-18 22:43:44', '2025-11-10 02:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HqhcVgUQHnlkj5uZIPr9CjdjKvrYIIzEy5M1eLop', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibE9peVl4VmFySXA5Smh5aWhnM0FRWWRWWlhlbDBNOWttM09CcHpwWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzL2ludGVyYWN0aXZlLW11bHRpbWVkaWEiO3M6NToicm91dGUiO3M6MTU6ImNhdGVnb3JpZXMuc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762771265);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `photo`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Marcelino Hilpert DDS', 'https://i.pravatar.cc/200?img=45', 'Consectetur quod vitae est possimus atque quos consequatur. Omnis voluptas doloribus culpa totam sunt. Tempora delectus sunt porro eum voluptatum.', '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(2, 'Miss Leslie Parisian', 'https://i.pravatar.cc/200?img=25', 'Dolorem voluptatem voluptas commodi at omnis. Dicta doloremque aut est velit nemo libero quae.', '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(3, 'Bobbie Carter', 'https://i.pravatar.cc/200?img=40', 'Adipisci minima voluptates corporis sed. Aspernatur omnis ut ducimus expedita.', '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(4, 'Mrs. Carrie Dickens V', 'https://i.pravatar.cc/200?img=58', 'Quod dolor impedit nihil perferendis qui quis amet. Tenetur nesciunt aliquam maiores itaque.', '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(5, 'Rosalinda Kunze', 'https://i.pravatar.cc/200?img=4', 'Accusamus veniam iste quia harum magnam mollitia rerum et. Fuga expedita cum nihil aspernatur maxime quae.', '2025-11-10 02:32:09', '2025-11-10 02:32:09'),
(6, 'Randy Baumbach', 'https://i.pravatar.cc/200?img=13', 'Reprehenderit omnis assumenda natus illum qui laborum. Sit iure veritatis error mollitia delectus minima. Ut exercitationem reprehenderit et saepe excepturi.', '2025-11-10 02:32:09', '2025-11-10 02:32:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `popular_posts`
--
ALTER TABLE `popular_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popular_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `popular_posts`
--
ALTER TABLE `popular_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `popular_posts`
--
ALTER TABLE `popular_posts`
  ADD CONSTRAINT `popular_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
