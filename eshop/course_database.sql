-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2021 at 06:37 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kutuphan_kutuphanah`
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
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `questionId` bigint(20) UNSIGNED NOT NULL,
  `instructorId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persone_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cityId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acount_number` int(11) DEFAULT NULL,
  `bank_sub_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `userId`, `iban`, `persone_name`, `countryId`, `cityId`, `bank_name`, `acount_number`, `bank_sub_name`, `swift_code`, `created_at`, `updated_at`) VALUES
(12, 13, 'beb12345667777', 'hamadaaaooo', 'cairoooo', 'cairoooo', 'cairoooo', 367658698, 'naserrroo', '111234567777', '2021-08-12 12:13:30', '2021-08-15 05:51:38'),
(13, 14, '423423', 'vever', '207', NULL, 'ergtg', 434234, 'rtgtr', '4234', '2021-08-12 12:40:58', '2021-10-19 13:55:35'),
(17, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 11:41:40', '2021-09-01 11:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `languageId` int(11) DEFAULT NULL,
  `countryId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licensing_authority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `License_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `userId`, `categoryId`, `subCategoryId`, `languageId`, `countryId`, `name`, `price`, `date`, `pages`, `licensing_authority`, `isbn_num`, `license_number`, `License_year`, `description`, `photo`, `file`, `status`, `meta_key`, `slug`, `created_at`, `updated_at`) VALUES
(1, 14, 2, 2, NULL, 2, 'booke name', 88.00, '2021-08-11', '77', 'lmlk', 'iuhin', 'kjnkj', '2002', 'iuuhi', '1629005734.jpeg', '1629005734.jpeg', 0, 'iuhihn', '56789', '2021-08-15 03:35:34', '2021-08-15 03:35:34'),
(2, 14, 2, 2, NULL, 2, 'booke name', 88.00, '2021-08-11', '77', 'lmlk', 'iuhin', 'kjnkj', '2002', 'iuuhi', '1629005734.jpeg', '1629005734.jpeg', 0, 'iuhihn', '56789', '2021-08-15 03:35:34', '2021-08-15 03:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `bookId`, `userId`, `number`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 13, NULL, 0, '2021-08-15 08:37:27', '2021-08-15 08:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `top` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `icon`, `image`, `slug`, `status`, `top`, `created_at`, `updated_at`) VALUES
(1, 'front End', 'cwfrw', 'fwfr', 'style1', 1, 0, NULL, NULL),
(2, 'back End', 'cwfrw', 'fwfr', 'style1', 1, 0, NULL, NULL),
(3, 'mobile development', 'cwfrw', 'fwfr', 'style1', 1, 0, NULL, NULL),
(4, 'E-Marketing', 'cwfrw', 'fwfr', 'style1', 1, 0, NULL, NULL),
(5, 'It & Soft ware', 'cwfrw', 'fwfr', 'style1', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `chapter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chapter_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `courseId`, `chapter_name`, `chapter_number`, `status`, `created_at`, `updated_at`) VALUES
(8, 20, 'العنوان للتجربة رقم1', '1', 0, '2021-10-17 20:06:42', '2021-10-17 20:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `subCategoryId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `top` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `categoryId`, `subCategoryId`, `title`, `icon`, `slug`, `status`, `top`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'style3', 'vsvsf', 'vsfvfs', 0, 0, NULL, NULL),
(2, 1, 1, 'style3', 'vsvsf', 'vsfvfs', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `countryId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ar` text COLLATE utf8mb4_unicode_ci,
  `address_en` text COLLATE utf8mb4_unicode_ci,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `privacy_ar` text COLLATE utf8mb4_unicode_ci,
  `privacy_en` text COLLATE utf8mb4_unicode_ci,
  `terms_ar` text COLLATE utf8mb4_unicode_ci,
  `agreements_ar` text COLLATE utf8mb4_unicode_ci,
  `agreements_en` text COLLATE utf8mb4_unicode_ci,
  `terms_en` text COLLATE utf8mb4_unicode_ci,
  `return_ar` text COLLATE utf8mb4_unicode_ci,
  `return_en` text COLLATE utf8mb4_unicode_ci,
  `version` double DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `logo`, `title_ar`, `title_en`, `phone`, `email`, `address_ar`, `address_en`, `longitude`, `latitude`, `description_ar`, `description_en`, `privacy_ar`, `privacy_en`, `terms_ar`, `agreements_ar`, `agreements_en`, `terms_en`, `return_ar`, `return_en`, `version`, `favicon`, `created_at`, `updated_at`) VALUES
(1, '1634246817.png', 'vevre', 'vrev', '05366128397', 'vrwuhi@wfhur.com', 'brwtbrw', 'brtbr', '6356', '635635', '<h1 style=\"text-align: center;\">منصة عالم التميز</h1>\r\n\r\n<p>&nbsp;</p>', '<h6>&nbsp;</h6>\r\n\r\n<p>&nbsp;</p>', '<h1 style=\"text-align:right\">سياسة الخصوصية</h1>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">سياسة الخصوصية هذه توفر طريقة جمع البيانات الخاصة بك بالطريقة المستخدمة من قبل كوتبانه. ننصح بقرأة سياسة الخصوصية بعناية. عن طريق الدخول إلى الخدمات التي تقدمها kutuphanah.com انك توافق على جمع و استخدام البيانات الخاصة بك عن طريق kutuphanah.com و بعض مقدمي الخدمة طرف ثالث بالطريقة المنصوص عليها في سياسة الخصوصية هذه. إذا كنت لا توافق على سياسة الخصوصية هذه، يرجى عدم استخدام هذا الموقع kutuphanah.com من خلال قبول سياسة الخصوصية أثناء التسجيل، يجب أن توافق صراحة على استخدامنا و الكشف عن المعلومات الشخصية الخاصة بك وفقاً لسياسة الخصوصية هذه. يتم تضمينها في سياسة الخصوصية هذه و تخضع لشروط اتفاقية المستخدم.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:right\">حماية الخصوصية الخاصة بك مع كوتبانه</h2>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">تقدم كوتبانه العلامات التجارية الرائدة عالميًا وتجهز مجموعة منتجات شاملة تتضمن الكتب الرقمية. نريدك أن تشعر بالراحة عند استخدام موقعنا و تشعر بالأمان عند مشاركتك المعلومات الخاصة بك معنا، و بالتالي نحن فخورون للغاية بالتزامنا لحماية خصوصيتك. يرجى مواصلة قرأة السياسة التالية لفهم كيف يتم التعامل مع المعلومات الشخصية الخاصة بك كما تمكنك من الإستفادة الكاملة من موقعنا.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:right\">ضمان الخصوصية الخاصة بك مع كوتبانه</h2>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<p style=\"text-align:right\">كوتبانه تلتزم بعدم بيع أو تأجير معلوماتك الشخصية لأي طرف ثالث (بإستثناء ماهو منصوص عليه في سياسة الخصوصية هذه) دون موافقتك. نحن و / أو المخولين مزودي الخدمة طرف ثالث المخولين لإستخدام المعلومات الشخصية التي قدمتها لنوفر لك الخدمات التي نقدمها.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:right\">الطرف الثالث &ndash; مزودي الخدمة</h2>\r\n\r\n<h2 style=\"text-align:right\">نحن نوظف شركات أخرى و أفراد لأداء المهام نيابة عنا. ومن الأمثلة على ذلك مباشرة الطلبات، إرسال البريد الإلكتروني،تحليل البيانات،تقديم المساعدة والتسويق، تقديم نتائج البحث، تجهيز مدفوعات بطاقات الائتمان. لديهم إمكانية الوصول إلى المعلومات الشخصية اللازمة لأداء وظائفهم، ولكن لاتستخدم لأغراض أخرى.</h2>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:right\">المعلومات التي يمكن جمعها منك</h2>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<p style=\"text-align:right\">كوتبانه تقوم يجمع المعلومات التي قدمت من خلالكم في سجل جنباً إلى جنب مع المعلومات التي عرفناها عنك من خلال زيارة موقعنا و استخدامك لخدماتنا. نحن أيضاً نقوم بجمع المعلومات عن المعاملات التي تقوم بها بما في ذلك تفاصيل بطاقات الدفع المستخدمة. قد نقوم بجمع معلومات إضافية فيما يتعلق بمشاركتكم في أي عروض أو المسابقات التي نوفرها و المعلومات التي تقدمها تعطينا تغذية لإستكمال الملف الشخصي الخاص بك. نحن نراقب أيضاً أنماط حركة المرور للعملاء و استخدام الموقع، و التي تمكننا من تحسين الخدمة التي نقدمها. و سوف نقوم بجمع المعلومات الضرورية فقط وذات الصلة لنا لنقدم لك الخدمات المتاحة على الموقع.</p>\r\n\r\n<p style=\"text-align:right\">قد نقوم بجمع المعلومات الشخصية التالية عنك مثل:</p>\r\n\r\n<ol>\r\n	<li style=\"text-align:right\">الإسم بما في ذلك الإسم الأول وإسم العائلة</li>\r\n	<li style=\"text-align:right\">قم الهاتف الجوال وتفاصيل الإتصال</li>\r\n	<li style=\"text-align:right\">الملف الشخصي الديموغرافي ( مثل العمر، العنوان)</li>\r\n	<li style=\"text-align:right\">البريد الالكتروني</li>\r\n	<li style=\"text-align:right\">بيانات البنك الخاص بك</li>\r\n</ol>\r\n\r\n<p style=\"text-align:right\">يمكنك إنهاء حسابك في أي وقت. ومع ذلك قد تبقى معلوماتك المخزنة في الأرشيف على خدماتنا حتى بعد الحذف أو إنهاء حسابك.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h5 style=\"text-align:right\">تفاصيل بطاقة الائتمان</h5>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">نحن لا تبقي أي تفاصيل بطاقة الائتمان في قاعدة البيانات المتوفرة لدينا أو السيرفر. من المهم بالنسبة لك الحماية ضد وصول غير المصرح لهم إلى كلمة المرور الخاصة بك أو الكمبيوتر الخاص بك. تأكد من تسجيل الخروج عند الانتهاء من استخدام جهاز كمبيوتر مشترك.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h5 style=\"text-align:right\">استخداماتنا لمعلوماتك</h5>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\">جميع المعلومات المتاحة على الموقع والي تشمل على الكتب الرقمية المنشورة وجاهزة للبيع، مع إمكانية البحث عن كتاب معين أو موضوع معين</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:right\">متى يتم الإفصاح عن المعلومات الخاصة بك</h2>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<p style=\"text-align:right\">لن نستخدم معلوماتك الشخصية لأي غرض آخر سوى إتمام الصفقة معك. نحن لا نؤجر أو نبيع المعلومات الشخصية الخاصة بك، ولن نكشف عن أي معلومات شخصية إلى أي طرف ثالث إلا إذا:</p>\r\n\r\n<ol>\r\n	<li style=\"text-align:right\">أن يكون لدينا إذن منك</li>\r\n	<li style=\"text-align:right\">لتوفير المنتجات والخدمات التي طلبتها</li>\r\n	<li style=\"text-align:right\">للمساعدة في تحقيق ومنع إتخاذ إجراءات تتعلق بأنشطة غير مشروعة وغير قانونية، والمشتبه بهم بالاحتيال، خطراً على سلامة أو أمن أي شخص، انتهاكات شروط استخدام كوتبانه أو للدفاع ضد المطالبات القانونية.</li>\r\n	<li style=\"text-align:right\">ظروف خاصة مثل الامتثال لأوامر الإستدعاء، أوامر المحكمة، طلبات / أمر من السلطة القانونية أو وكالات إنفاذ القانون التي تتطلب مثل هذا الكشف</li>\r\n</ol>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:right\">ماهي الخيارات المتاحة لك بخصوص جمع و استخدام و توزيع المعلومات الخاصة بك؟</h2>\r\n\r\n<h2 style=\"text-align:right\">&nbsp;</h2>\r\n\r\n<p style=\"text-align:right\">تزويد المعلومات الشخصية طوعية تماماً. و ليس مطلوب التسجيل معنا من أجل تصفع موقعنا. و مع ذلك نحن نقدم فقط بعض الخدمات للزوار الغير مسجلين .يمكنك تغيير الإهتمامات الخاصة بك في أي وقت، ووضع في أو خاج التسويق/ الترويج/النشرات الإخبارية. تحتفظ كوتبانه لنفسها بحق أن ترسل لك بعض الاتصالات و الخدمات ذات الصلة، و التي تعتبر جزء من حساب كوتبانه الخاص بك مع سهولة إلغاء الإشتراك. تستطيع القيام بتحديث المعلومات الخاصة بك و تغيير إعدادات حسابك في أي وقت.</p>\r\n\r\n<p style=\"text-align:right\">بناء على طلبك، سنقوم بإزالة / منع معلوماتك الشخصية من قاعدة بياناتنا، و بالتالي إلغاء التسجيل. و مع ذلك قد تبقى معلوماتك المخزنة في الأرشيف على خدماتنا حتى بعد الحذف أو إنهاء حسابك.</p>\r\n\r\n<p style=\"text-align:right\">إذا كنا نخطط لإستخدام معلوماتك الشخصية لأية أغراض تجارية، سنقوم بإعلامك في الوقت في الوقت الذي نقوم بجمع هذه المعلومات و نسمح لك لإختيار عدم المشاركة بمعلوماتك التي تستخدم لهذه الأغراض.</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>', '<div>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h6>Why do we use it?</h6>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<h6>Where does it come from?</h6>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>', '<p dir=\"rtl\"><span style=\"font-size:16px\">منصة&nbsp;عالم التميز هي منصة خاصه&nbsp;بتطوير منظومة العمل الانساني الى&nbsp;تنظيم وتنسيق وتوثيق جميع اعمال المؤسسة والاحتفاظ بجميع المعلومات الثمينة والافكار والإستفادة من التجارب والخبرات المختلفة من الاعضاء المشتركين بالمنصة وأيضا متابعة عملية سريان الاعمال بالمجالات المختلفة داخل المنصة واخر التطورات وتسلسل االعمال بها ومشاركة الافكار الناجحة سواء من المؤسسات المختلفة او من المتخصصين والمستشارين بالمجالات المطلوبة وتدوينها.</span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:18px\"><strong>فيديو شرح مبسط عن منصة عالم التميز:-</strong></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:18px\"><strong>https://youtu.be/Qf0ct5bc7KE</strong></span></p>\r\n\r\n<p dir=\"rtl\"><strong><span style=\"font-size:18px\">وتتكون المنصة من عدة اقسام وهي:-</span></strong></p>\r\n\r\n<p dir=\"rtl\"><strong><span style=\"font-size:16px\">1.قسم الدورات التدريبیة:</span></strong></p>\r\n\r\n<p dir=\"rtl\">وهو القسم الخاص بالدورات التدريبية التي تقوم بها المؤسسة واالعالن عنها عن طريق االشعارات او االيميالت المرسلة لجميع المشتركين بالمنصة وامكانية االستعالم و الحجز واالشتراك.</p>\r\n\r\n<p dir=\"rtl\"><strong><span style=\"font-size:16px\">2.قسم الاستشارات الخیرية:</span></strong></p>\r\n\r\n<p dir=\"rtl\">وهو القسم الخاص باالستشارات المباشرة وسيكون به الصفحات الخاصة بالمتخصصين والمستشارين بالمجاالت المختلفة بحيث يمكن فتح طلب كدراسة جدوى او غيره استشارة وكتابة الموضوع والرد عليه من خالل المستشار المتخصص ويكون االستشارات عامة او متخصصة ومدفوعة لو كانت متابعة من االستشاري بشكل مباشر .</p>\r\n\r\n<p dir=\"rtl\"><strong><span style=\"font-size:16px\">3.قسم التقییم المؤسسي:</span></strong></p>\r\n\r\n<p dir=\"rtl\">وهو قسم التقييم الذاتي وسيتم من خالله عمل استبيانات استنتاجية لتقييم المؤسسات وأدائها مع امكانية انشاء هذه االستبيانات من خالل المتخصصين والمحاضرين والمدربين ف المجاالت المختلفة.</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:16px\"><strong>4 .قسم الابحاث والكتب:</strong></span></p>\r\n\r\n<p dir=\"rtl\">وھو القسم الخاص برفع الكتب والابحاث المختلفة يمكن رفعھا من خلال الاعضاء وسیكون بداخله متجر للكتب المدفوعة.</p>\r\n\r\n<p dir=\"rtl\"><strong><span style=\"font-size:16px\">5.قسم العلاقات والاعلام :</span></strong></p>\r\n\r\n<p dir=\"rtl\">وسیتم تخزين جمیع الصور او الفیديوھات الخاصة باللقاءات او الاجتماعات او المحاضرات المتعلقة بالمجالات المختلفة المتعلقة بالعمل الانساني وسیتم انشاء داخله قسم للدورات المسجلة والمدفوعة.</p>\r\n\r\n<p dir=\"rtl\"><strong><span style=\"font-size:16px\">6.قسم الإجتماعات والتواصل:</span></strong></p>\r\n\r\n<p dir=\"rtl\">وسيتم من خالل هذا القسم امكانية انشاء لقاءات حية مباشرة واجتماعات صوت وصورة بين االعضاء والمتخصصين مع امكانية اختيار االعضاء المتاح لهم فقط المشاركة في هذه االجتماعات.</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:16px\"><strong>7.قسم المقالات والنشرات:</strong></span></p>\r\n\r\n<p dir=\"rtl\">وسيتم من خالل هذا القسم نشر المقاالت من االعضاء المتخصصين والمتاح لهم نشر المقاالت ف المجاالت المختلفة والتطورات في التخصصات المختلفة او المعلومات الجديد.</p>\r\n\r\n<p dir=\"rtl\"><strong>8.قسم الاسئلة الشائعة:</strong></p>\r\n\r\n<p dir=\"rtl\">وسيتم في هذا القسم تخزين اكثر االسئلة شيوعا مع االجابات المختلفة ويمكن لالعضاء والمستخدمين اضافة الردود المفيدة على االسئلة الموجودةلالستفادة من الخبرات ووجهات النظر المختلفة.</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-size:16px\"><strong>9.قسم المقترحات والافكار:</strong></span></p>\r\n\r\n<p dir=\"rtl\">ومن خالل هذا القسم يمكن ابداء فكرة او مقترح خاص بمشروع معين او مهمة معينة مع امكانية متابعة االمر وتحديث حالة المقترح واخر تطور وصل إليه سواء كان مشروع او مقترح مع امكانية االستفادة من االعضاء المتخصصين والمستشارين المشتركين بالمنصة.</p>', '<p dir=\"RTL\"><strong>اتفاقية المؤلف مع المنصة</strong></p>  <p dir=\"RTL\">يرجى قراءة ما يلي بعناية، &nbsp;شروط الخدمة هذه ، هي اتفاقية ملزمة (&quot;الاتفاقية&quot;) بينك أنت كمؤلف وبين (&quot;المنصة&quot;) وهي منصة لبيع الكتب الالكترونية في كافة دول العالم ذاتية الخدمة بإسم تجاري (كوتبانه) التابعة الى شركة:</p>  <p dir=\"RTL\"><span dir=\"LTR\">THE ADVANCED STYLE FOR TRAININIG EGITIM VE REHBERLIK HIZ.LTD.STI.</span></p>  <p dir=\"RTL\">العنوان:&nbsp; تركيا- مدينة اسطنبول</p>  <p>&nbsp;&nbsp;&nbsp; Şişli -İstanbul /T&uuml;rkiye,&nbsp;&nbsp;&nbsp; Ergenekon mah. Halaskargazi cad. Kemahlı apt. No:53 ,&nbsp; D:10</p>  <p dir=\"RTL\">&nbsp;</p>  <p dir=\"RTL\">قد ترد كلمة (أنت أو المؤلف أو الناشر) لتعبر عن نفس الشخص الذي قام يإنشاء محتوى حصري خاص به ويكون على شكل كتاب رقمي بصيغة <span dir=\"LTR\">PDF</span> ويشار اليه هنا بكلمة (العمل)، &nbsp;ويريد أن يكون هو بنفسه الناشر لعمله والبائع لعمله من خلال المنصة.</p>  <p dir=\"RTL\">أنت تعتبر المؤلف والناشر لعملك وبالتالي أنت تمتلك حقوق ومسئولية التأليف والنشر وحقوق الملكية الفكرية بالكامل، المنصة ليست دار نشر وانما منصة لبيع الكتب الرقمية فقط، أي أن المنصة هي الوسيط بين البائع وهو أنت المؤلف والناشر لعملك وبين المشتري وهو الشخص الذي يقوم بدفع مبلغ مقابل الحصول على العمل المنشور على المنصة، بحيث يحصل المشتري على الكتاب الرقمي ويستطيع تحميل الكتاب على جهازه الخاص.</p>  <p dir=\"RTL\">المنصة تحصل على عمولة البيع البالغة 40% من المبيعات، والمؤلف يحصل على 60% من المبيعات الخاصة بعمله، وذلك ضمن هذة الاتفاقية غير الحصرية بمعنى أنك تستطيع أن تنشر عملك بمواقع اخرى بحيث لا يقل سعر الكتاب بالمواقع الاخرى عن السعر الذي تحدده أنت في المنصة، وتقوم المنصة بتحويل المبلغ الخاص بالمؤلف مرة كل شهر بحيث لا يقل المبلغ المستحق عن 100 دولار امريكي، واذا كان المبلغ المستحق أقل من 100 دولار يتم رصد المبلغ الى الموعد القادم للتحويل، وباعتبار ان جميع الكتب معروضه للبيع بعملة الدولار الامريكي فان المؤلف يقبل باستلام المبلغ على حسابه بالبنك&nbsp; سواء بنفس العملة او بعمله اخرى وبسعر الصرف الذي يحدده البنك، وكما يقبل المؤلف أي خصومات يخصمها البنك أو الضرائب الحكومية المفروضه على المبلغ ان وجدت.</p>  <p dir=\"RTL\">&nbsp;أنت بنفسك تستطيع أن تقوم بنشر عملك على المنصة واتاحته للبيع حول العالم، وأنت مسئول عن جميع البيانات التي تقوم بادخالها على المنصة، وأيضا تتيح لك المنصة أن تنشر العمل أو تزيل العمل أو تعدل على العمل بأي وقت تشاء.</p>  <p dir=\"RTL\">يتعهد المؤلف أن المنصة ليست الناشر لصاحب حقوق التأليف والنشر وانما فقط لتسويق وبيع الكتب الرقمية، وأن صاحب العمل هو الناشر لعمله الخاص والذي يجب أن يكون مرخص ومسجل لدى الجهات الحكومية المختصة وبالتالي يكون المؤلف مسئولا بالكامل عن نشر العمل الحصري الخاص به ومسئول عن محتوى العمل بالكامل. وأنك تتعهد وتؤكد أنه لا يوجد جانب من عملك ينتهك &nbsp;حقوق شخص أو جهة أو كيان آخر. في دورك كمؤلف و ناشر، فأنت تدرك أنك ناشر لعملك، وبالتالي أنت مسؤول عن كتابة وتحرير وتنسيق وتصميم غلاف كتابك، وعن تحميل كتابك إلى المنصة ، وإدارة البيانات الوصفية لكتابك.</p>  <p dir=\"RTL\">يمنح المؤلف بموجبه ويتنازل إلى المنصة الحق غير الحصري في بيع عمله في جميع أنحاء العالم (حقوق البيع والتوزيع الرقمي)، &nbsp;ويتحمل المؤلف أية مسئولية تتعلق بحقوق الملكية الفكرية العائدة لقيام المنصة بتوزيع الكتاب الكترونياً، ويلتزم المؤلف بالتعويض عن كل ضرر يلحق بالمنصة من جراء قيام طرف ثالث بالمطالبة بأي مبالغ أو أضرار تتعلق بحق المنصة في بيع العمل الكترونياً حول العالم، ويكون بالتالي المؤلف ملتزماً بالتعويض عن كل ضرر يلحق بالمنصة من جراء قيام أي طرف ثالث بالمطالبة بأية مبالغ أو أضرار تتعلق بمضمون العمل. يتحمل المؤلف مسئولية ترخيص الكتاب &nbsp;من الجهات الحكومية المختصة ولا يجوز له أن ينشر أي عمل غير مرخص على المنصة، واذا قام بنشر عمل غير مرخص يتحمل المؤلف كافة المسئولية القانونية جراء ذلك. وتقع على عاتق المؤلف مسؤولية وضع إشعار حقوق الطبع والنشر على صفحة حقوق الطبع والنشر أو أي مكان بارز آخر في العمل الذي يقوم بنشره على المنصة.</p>  <p dir=\"RTL\">تتيح المنصة للمؤلف امكانية مراقبة ومتابعة الكتب التي تباع عن طريق المنصة أول بأول وكما تتيح أيضا امكانية التحكم بالعمل المنشور من حيث الغاء العمل أو تغيير الاصدار مع امكانية تغيير بيانات الكتاب كالغلاف والمقدمة والسعر بحيث لا يقل سعر الكتاب عن 2 دولار امريكي ولا يزيد عن 9 دولار امريكي، ويحق للمؤلف أن ينشر عمله أو يزيله بأي وقت يشاء دون الالتزام بمدة معينة.</p>  <p dir=\"RTL\">المنصة غير مسئولة عن الكتاب الذي تم بيعه للمشتري من حيث اعادة بيعه أو نشره بمواقع أخرى، فالكتاب الرقمي يمكن تداوله بسهولة بين الاشخاص وهذا خارج عن نطاق وسيطرة ومسئولية المنصة. واذا قام المشتري بنشر الكتاب الخاص بالمؤلف بمواقع اخرى فيستطيع المؤلف أن يضع المسئولية على المشتري مباشرة دون الرجوع الى المنصة.</p>  <p dir=\"RTL\">تتعهد المنصة بالمحافظه على سرية المعلومات والبيانات المعطاه له بما في ذلك نصوص الكتاب بالكامل ولا يحق للمنصة استخدام العمل في غير محل الاتفاقية، كما لا يحق للمنصة اجراء أية تغييرات على محتوى العمل.</p>  <p dir=\"RTL\">يحق للمنصة ازالة أي عمل من المنصة اذا كان العمل يخالف القانون من حيث المحتوى أو اذا كان العمل قديم ولا يوجد عليه طلب حسب تقدير المنصة، وكما يحق للمنصة ازالة أو تعليق كتاب عن البيع على المنصة اذا كان العمل يخالف أية شروط وارده ضمن هذه الشروط، أو يخالف أي جهة ثالثة من ناحية قانونية.</p>  <p dir=\"RTL\">اذا تم اكتشاف أن العمل أو جزء منه ليس حق للمؤلف ، فيحق للمنصة بمطالبة المؤلف &nbsp;بجميع المبالغ التي حصل عليها من هذا العمل، وحجز جميع المبالغ المعلقة والتي لم يتم تحويلها بعد، وازالة العمل من الموقع،&nbsp; وبتحميل كافة المسئولية القانونية الى المؤلف.</p>  <p dir=\"RTL\">&nbsp;</p>  <p dir=\"RTL\">يحق للمنصة التغيير على هذه الشروط (الاتفاقية) بأي وقت، وبحيث تكون هذه الشروط (الاتفاقية) متاحة دائماً للمؤلف على المنصة ببوابة المؤلف، وسوف يتم وضع تاريخ أخر تعديل بنهاية الاتفاقية حتى يستطيع المؤلف أن يتابع التعديلات المحتملة على هذه الاتفاقية، ويحق للمؤلف أن يقوم بالغاء نشر جميع أعماله من المنصة اذا لم تناسبه الشروط الجديدة، واذا استمر المؤلف بالنشر فهذا يعني انه موافق على الاستمرار بالشروط الجديدة. سوف نعمل جاهدين بأن لا نغير بالشروط الا اذا اضطررنا بذلك فقط.</p>  <p dir=\"RTL\">كل نزاع ينشأ حول تفسير هذه الشروط أو تنفيذ هذه الشروط يكون من اختصاص محاكم دولة تركيا، ويكون القانون التركي هو القانون الذي يحكم هذه الشروط ( الاتفاقية ) وذلك لان مقر ترخيص المنصة في تركيا.</p>  <p dir=\"RTL\">&nbsp;</p>  <p dir=\"RTL\">&nbsp;تاريخ اخر تعديل: 4/7/2021</p>  <p dir=\"RTL\">&nbsp;</p>', '<p>vever</p>', NULL, '<h1 style=\"text-align:center\">سياسة الإرجاع</h1>\r\n\r\n<p style=\"text-align:right\">اذا كان هناك خطأ في طلبك كأن يكون عنوان الكتاب الذي اشتريته مختلف عن المحتوى ، وفي هذه الحالة نطلب منك أن تتواصل معنا وأن تقدم طلب استرداد للمبلغ أو طلب استبدال بكتاب اخر.</p>\r\n\r\n<p style=\"text-align:right\">لتقديم طلب استرداد أو إرجاع لطلب تم تقديمه من خلال كوتبانه، ستحتاج إلى الاتصال بـ كوتبانه عبر البريد الإلكتروني على kutubane@yahoo.com أو عبر الهاتف على 00905443807388 أو عن طريق خدمة البلاغات.</p>\r\n\r\n<p style=\"text-align:right\">يتم قبول طلبات الاسترداد أو الإرجاع أو الاستبدال حتى 30 يومًا من تاريخ تقديم الطلب مع كوتبانه. قد تمنح كوتبانه تمديدات لهذه الفترة لبعض الحالات الخاصة وفقًا لتقديرها.</p>\r\n\r\n<p style=\"text-align:right\">إذا تم منح طلب الاسترداد بواسطة كوتبانه ، فسيتم رد المدفوعات على النحو التالي:</p>\r\n\r\n<ol>\r\n	<li style=\"text-align:right\">سيتم رد مدفوعات بطاقات الائتمان / الخصم في غضون يوم الى ثلاثة أيام عمل؛</li>\r\n	<li style=\"text-align:right\">سيتم رد مدفوعات PayPal في غضون يوم الى ثلاثة أيام عمل ؛</li>\r\n	<li style=\"text-align:right\">سيتم رد أموالك ذا كانت تزيد عن 30 دولار عن طرق الدفع الأخرى ما بين خمسة (5) إلى سبعة (7) أيام.</li>\r\n</ol>\r\n\r\n<h1 style=\"text-align:right\">سياسة التوصيل</h1>\r\n\r\n<p style=\"text-align:right\">عند استلام طلبك ، سيُطلب منك إما بدء التنزيل على الفور أو ستتلقى بريدًا إلكترونيًا منا يحتوي على إرشادات لإكمال التنزيل. إذا طُلب منك بدء التنزيل على الفور، فإن إكمال التنزيل سيعني تسليمك للعنصر (العناصر) الذي اشتريته</p>\r\n\r\n<p style=\"text-align:right\">في حالة عدم قدرتك على تنزيل العنصر (العناصر) التي تشتريها أو لم تستلم بريدًا إلكترونيًا منا يحتوي على إرشادات لإكمال التنزيل ، يجب عليك الاتصال بنا في غضون 5 أيام من تاريخ طلبك. إذا لم تتصل بنا في غضون 5 أيام من تاريخ طلبك ، فسيتم اعتبار العنصر (العناصر) الذي اشتريته مستلمًا وتم تنزيله وتسليمه إليك.</p>', '<h2 style=\"text-align:center\"><strong>Return Policy</strong></h2>\r\n\r\n<p>If there is an error in your order, such as the title of the book you purchased is different from the content, and in this case we ask you to contact us and submit a request for a refund or a replacement request with another book.</p>\r\n\r\n<p>To submit a refund or return request for an order placed through Kotban, you will need to contact Kotubane via email at kutubane@yahoo.com, by phone at 00905443807388, or via the reporting service.</p>\r\n\r\n<p>Refund, return or exchange requests are accepted up to 30 days from the date of placing the order with Quetpane. Quebec may grant extensions to this period for some special cases at its discretion.</p>\r\n\r\n<p>If the refund request is granted by Cotpan, then the payments will be refunded as follows:</p>\r\n\r\n<p>Credit/debit card payments will be refunded within one to three business days;<br />\r\nPayPal payments will be refunded within one to three business days;<br />\r\nYour money over $30 for other payment methods will be refunded within five (5) to seven (7) days.<br />\r\nDelivery Policy<br />\r\nUpon receipt of your order, you will either be asked to start the download immediately or you will receive an email from us with instructions to complete the download. If you are prompted to start the download immediately, completing the download will mean that you will be delivered the item(s) you purchased</p>\r\n\r\n<p>In the event that you are unable to download the item(s) you purchase or have not received an email from us with instructions to complete the download, you must contact us within 5 days of your order. If you do not contact us within 5 days of your order date, the item(s) you purchased will be considered received, downloaded, and delivered to you.</p>', 1, '1634246817.png', NULL, '2021-10-19 20:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `nicename`, `name`, `iso3`, `numcode`, `phonecode`, `created_at`, `updated_at`) VALUES
(14, 'AF', 'AFGHANISTAN', '{\"ar\":\"أفغانستان\",\"en\":\"Afghanistan\"}', 'AFG', '4', '93', NULL, NULL),
(15, 'AL', 'ALBANIA', '{\"ar\":\"ألبانيا\",\"en\":\"Albania\"}', 'ALB', '8', '355', NULL, NULL),
(16, 'DZ', 'ALGERIA', '{\"ar\":\"الجزائر\",\"en\":\"Algeria\"}', 'DZA', '12', '213', NULL, NULL),
(17, 'AS', 'AMERICAN SAMOA', '{\"ar\":\"ساموا-الأمريكي\",\"en\":\"American Samoa\"}', 'ASM', '16', '1684', NULL, NULL),
(18, 'AD', 'ANDORRA', '{\"ar\":\"أندورا\",\"en\":\"Andorra\"}', 'AND', '20', '376', NULL, NULL),
(19, 'AO', 'ANGOLA', '{\"ar\":\"أنغولا\",\"en\":\"Angola\"}', 'AGO', '24', '244', NULL, NULL),
(20, 'AI', 'ANGUILLA', '{\"ar\":\"أنغويلا\",\"en\":\"Anguilla\"}', 'AIA', '660', '1264', NULL, NULL),
(21, 'AQ', 'ANTARCTICA', '{\"ar\":\"أنتاركتيكا\",\"en\":\"Antarctica\"}', NULL, NULL, '0', NULL, NULL),
(22, 'AG', 'ANTIGUA AND BARBUDA', '{\"ar\":\"أنتيغوا وبربودا\",\"en\":\"Antigua and Barbuda\"}', 'ATG', '28', '1268', NULL, NULL),
(23, 'AR', 'ARGENTINA', '{\"ar\":\"الأرجنتين\",\"en\":\"Argentina\"}', 'ARG', '32', '54', NULL, NULL),
(24, 'AM', 'ARMENIA', '{\"ar\":\"أرمينيا\",\"en\":\"Armenia\"}', 'ARM', '51', '374', NULL, NULL),
(25, 'AW', 'ARUBA', '{\"ar\":\"أروبه\",\"en\":\"Aruba\"}', 'ABW', '533', '297', NULL, NULL),
(26, 'AU', 'AUSTRALIA', '{\"ar\":\"أستراليا\",\"en\":\"Australia\"}', 'AUS', '36', '61', NULL, NULL),
(27, 'AT', 'AUSTRIA', '{\"ar\":\"أستراليا\",\"en\":\"Austria\"}', 'AUT', '40', '43', NULL, NULL),
(28, 'AZ', 'AZERBAIJAN', '{\"ar\":\"أذربيجان\",\"en\":\"Azerbaijan\"}', 'AZE', '31', '994', NULL, NULL),
(29, 'BS', 'BAHAMAS', '{\"ar\":\"الباهاماس\",\"en\":\"Bahamas\"}', 'BHS', '44', '1242', NULL, NULL),
(30, 'BH', 'BAHRAIN', '{\"ar\":\"البحرين\",\"en\":\"Bahrain\"}', 'BHR', '48', '973', NULL, NULL),
(31, 'BD', 'BANGLADESH', '{\"ar\":\"بنغلاديش\",\"en\":\"Bangladesh\"}', 'BGD', '50', '880', NULL, NULL),
(32, 'BB', 'BARBADOS', '{\"ar\":\"بربادوس\",\"en\":\"Barbados\"}', 'BRB', '52', '1246', NULL, NULL),
(33, 'BY', 'BELARUS', '{\"ar\":\"روسيا البيضاء\",\"en\":\"Belarus\"}', 'BLR', '112', '375', NULL, NULL),
(34, 'BE', 'BELGIUM', '{\"ar\":\"بلجيكا\",\"en\":\"Belgium\"}', 'BEL', '56', '32', NULL, NULL),
(35, 'BZ', 'BELIZE', '{\"ar\":\"بيليز\",\"en\":\"Belize\"}', 'BLZ', '84', '501', NULL, NULL),
(36, 'BJ', 'BENIN', '{\"ar\":\"بنين\",\"en\":\"Benin\"}', 'BEN', '204', '229', NULL, NULL),
(37, 'BM', 'BERMUDA', '{\"ar\":\"جزر برمودا\",\"en\":\"Bermuda\"}', 'BMU', '60', '1441', NULL, NULL),
(38, 'BT', 'BHUTAN', '{\"ar\":\"بوتان\",\"en\":\"Bhutan\"}', 'BTN', '64', '975', NULL, NULL),
(39, 'BO', 'BOLIVIA', '{\"ar\":\"بوليفيا\",\"en\":\"Bolivia\"}', 'BOL', '68', '591', NULL, NULL),
(40, 'BA', 'BOSNIA AND HERZEGOVINA', '{\"ar\":\"البوسنة و الهرسك\",\"en\":\"Bosnia and Herzegovina\"}', 'BIH', '70', '387', NULL, NULL),
(41, 'BW', 'BOTSWANA', '{\"ar\":\"بوتسوانا\",\"en\":\"Botswana\"}', 'BWA', '72', '267', NULL, NULL),
(42, 'BV', 'BOUVET ISLAND', '{\"ar\":\"بوتسوانا\",\"en\":\"Bouvet Island\"}', NULL, NULL, '0', NULL, NULL),
(43, 'BR', 'BRAZIL', '{\"ar\":\"البرازيل\",\"en\":\"Brazil\"}', 'BRA', '76', '55', NULL, NULL),
(44, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', '{\"ar\":\"إقليم المحيط الهندي البريطاني\",\"en\":\"British Indian Ocean Territory\"}', NULL, NULL, '246', NULL, NULL),
(45, 'BN', 'BRUNEI DARUSSALAM', '{\"ar\":\"بروني\",\"en\":\"Brunei Darussalam\"}', 'BRN', '96', '673', NULL, NULL),
(46, 'BG', 'BULGARIA', '{\"ar\":\"بلغاريا\",\"en\":\"Bulgaria\"}', 'BGR', '100', '359', NULL, NULL),
(47, 'BF', 'BURKINA FASO', '{\"ar\":\"وركينا فاسو\",\"en\":\"Burkina Faso\"}', 'BFA', '854', '226', NULL, NULL),
(48, 'BI', 'BURUNDI', '{\"ar\":\"بوروندي\",\"en\":\"Burundi\"}', 'BDI', '108', '257', NULL, NULL),
(49, 'KH', 'CAMBODIA', '{\"ar\":\"كمبوديا\",\"en\":\"Cambodia\"}', 'KHM', '116', '855', NULL, NULL),
(50, 'CM', 'CAMEROON', '{\"ar\":\"كاميرون\",\"en\":\"Cameroon\"}', 'CMR', '120', '237', NULL, NULL),
(51, 'CA', 'CANADA', '{\"ar\":\"كندا\",\"en\":\"Canada\"}', 'CAN', '124', '1', NULL, NULL),
(52, 'CV', 'CAPE VERDE', '{\"ar\":\"الرأس الأخضر\",\"en\":\"Cape Verde\"}', 'CPV', '132', '238', NULL, NULL),
(53, 'KY', 'CAYMAN ISLANDS', '{\"ar\":\"جزر كايمان\",\"en\":\"Cayman Islands\"}', 'CYM', '136', '1345', NULL, NULL),
(54, 'CF', 'CENTRAL AFRICAN REPUBLIC', '{\"ar\":\"جمهورية أفريقيا الوسطى\",\"en\":\"Central African Republic\"}', 'CAF', '140', '236', NULL, NULL),
(55, 'TD', 'CHAD', '{\"ar\":\"تشاد\",\"en\":\"Chad\"}', 'TCD', '148', '235', NULL, NULL),
(56, 'CL', 'CHILE', '{\"ar\":\"شيلي\",\"en\":\"Chile\"}', 'CHL', '152', '56', NULL, NULL),
(57, 'CN', 'CHINA', '{\"ar\":\"الصين\",\"en\":\"China\"}', 'CHN', '156', '86', NULL, NULL),
(58, 'CX', '', '{\"ar\":\"جزيرة عيد الميلاد\",\"en\":\"CHRISTMAS ISLAND\"}', NULL, NULL, '61', NULL, NULL),
(59, 'CC', 'COCOS (KEELING) ISLANDS', '{\"ar\":\"جزر كوكوس\",\"en\":\"Cocos (Keeling) Islands\"}', NULL, NULL, '672', NULL, NULL),
(60, 'CO', 'COLOMBIA', '{\"ar\":\"كولومبيا\",\"en\":\"Colombia\"}', 'COL', '170', '57', NULL, NULL),
(61, 'KM', 'COMOROS', '{\"ar\":\"جزر القمر\",\"en\":\"Comoros\"}', 'COM', '174', '269', NULL, NULL),
(62, 'CG', 'CONGO', '{\"ar\":\"الكونغو\",\"en\":\"Congo\"}', 'COG', '178', '242', NULL, NULL),
(63, 'CK', 'COOK ISLANDS', '{\"ar\":\"جزر كوك\",\"en\":\"Cook Islands\"}', 'COK', '184', '682', NULL, NULL),
(64, 'CR', 'COSTA RICA', '{\"ar\":\"كوستاريكا\",\"en\":\"Costa Rica\"}', 'CRI', '188', '506', NULL, NULL),
(65, 'HR', 'CROATIA', '{\"ar\":\"كرواتيا\",\"en\":\"Croatia\"}', 'HRV', '191', '385', NULL, NULL),
(66, 'CU', 'CUBA', '{\"ar\":\"كوبا\",\"en\":\"Cuba\"}', 'CUB', '192', '53', NULL, NULL),
(67, 'CY', 'CYPRUS', '{\"ar\":\"قبرص\",\"en\":\"Cyprus\"}', 'CYP', '196', '357', NULL, NULL),
(68, 'CZ', 'CZECH REPUBLIC', '{\"ar\":\"الجمهورية التشيكية\",\"en\":\"Czech Republic\"}', 'CZE', '203', '420', NULL, NULL),
(69, 'DK', 'DENMARK', '{\"ar\":\"الدانمارك\",\"en\":\"Denmark\"}', 'DNK', '208', '45', NULL, NULL),
(70, 'DJ', 'DJIBOUTI', '{\"ar\":\"جيبوتي\",\"en\":\"Djibouti\"}', 'DJI', '262', '253', NULL, NULL),
(71, 'DM', 'DOMINICA', '{\"ar\":\"دومينيكا\",\"en\":\"Dominica\"}', 'DMA', '212', '1767', NULL, NULL),
(72, 'DO', 'DOMINICAN REPUBLIC', '{\"ar\":\"لجمهورية الدومينيكية\",\"en\":\"Dominican Republic\"}', 'DOM', '214', '1809', NULL, NULL),
(73, 'EC', 'ECUADOR', '{\"ar\":\"إكوادور\",\"en\":\"Ecuador\"}', 'ECU', '218', '593', NULL, NULL),
(74, 'EG', 'EGYPT', '{\"ar\":\"مصر\",\"en\":\"Egypt\"}', 'EGY', '818', '20', NULL, NULL),
(75, 'SV', 'EL SALVADOR', '{\"ar\":\"إلسلفادور\",\"en\":\"El Salvador\"}', 'SLV', '222', '503', NULL, NULL),
(76, 'GQ', 'EQUATORIAL GUINEA', '{\"ar\":\"غينيا الاستوائي\",\"en\":\"Equatorial Guinea\"}', 'GNQ', '226', '240', NULL, NULL),
(77, 'ER', 'ERITREA', '{\"ar\":\"إريتريا\",\"en\":\"Eritrea\"}', 'ERI', '232', '291', NULL, NULL),
(78, 'EE', 'ESTONIA', '{\"ar\":\"استونيا\",\"en\":\"Estonia\"}', 'EST', '233', '372', NULL, NULL),
(79, 'ET', 'ETHIOPIA', '{\"ar\":\"أثيوبيا\",\"en\":\"Ethiopia\"}', 'ETH', '231', '251', NULL, NULL),
(80, 'FK', 'FALKLAND ISLANDS (MALVINAS)', '{\"ar\":\"جزر فوكلاند\",\"en\":\"Falkland Islands (Malvinas)\"}', 'FLK', '238', '500', NULL, NULL),
(81, 'FO', 'FAROE ISLANDS', '{\"ar\":\"جزر فارو\",\"en\":\"Faroe Islands\"}', 'FRO', '234', '298', NULL, NULL),
(82, 'FJ', 'FIJI', '{\"ar\":\"فيجي\",\"en\":\"Fiji\"}', 'FJI', '242', '679', NULL, NULL),
(83, 'FI', 'FINLAND', '{\"ar\":\"فنلندا\",\"en\":\"Finland\"}', 'FIN', '246', '358', NULL, NULL),
(84, 'GF', 'FRENCH GUIANA', '{\"ar\":\"غويانا الفرنسية\",\"en\":\"French Guiana\"}', 'GUF', '254', '594', NULL, NULL),
(85, 'PF', 'FRENCH POLYNESIA', '{\"ar\":\"بولينيزيا الفرنسية\",\"en\":\"French Polynesia\"}', 'PYF', '258', '689', NULL, NULL),
(86, 'GA', 'GABON', '{\"ar\":\"الغابون\",\"en\":\"Gabon\"}', 'GAB', '266', '241', NULL, NULL),
(87, 'GM', 'GAMBIA', '{\"ar\":\"غامبيا\",\"en\":\"Gambia\"}', 'GMB', '270', '220', NULL, NULL),
(88, 'GE', 'GEORGIA', '{\"ar\":\"جيورجيا\",\"en\":\"Georgia\"}', 'GEO', '268', '995', NULL, NULL),
(89, 'DE', 'GERMANY', '{\"ar\":\"ألمانيا\",\"en\":\"Germany\"}', 'DEU', '276', '49', NULL, NULL),
(90, 'GH', 'GHANA', '{\"ar\":\"غانا\",\"en\":\"Ghana\"}', 'GHA', '288', '233', NULL, NULL),
(91, 'GI', 'GIBRALTAR', '{\"ar\":\"جبل طارق\",\"en\":\"Gibraltar\"}', 'GIB', '292', '350', NULL, NULL),
(92, 'GR', 'GREECE', '{\"ar\":\"اليونان\",\"en\":\"Greece\"}', 'GRC', '300', '30', NULL, NULL),
(93, 'GL', 'GREENLAND', '{\"ar\":\"جرينلاند\",\"en\":\"Greenland\"}', 'GRL', '304', '299', NULL, NULL),
(94, 'GD', 'GRENADA', '{\"ar\":\"غرينادا\",\"en\":\"Grenada\"}', 'GRD', '308', '1473', NULL, NULL),
(95, 'GP', 'GUADELOUPE', '{\"ar\":\"جزر جوادلوب\",\"en\":\"Guadeloupe\"}', 'GLP', '312', '590', NULL, NULL),
(96, 'GU', 'GUAM', '{\"ar\":\"جوام\",\"en\":\"Guam\"}', 'GUM', '316', '1671', NULL, NULL),
(97, 'GT', 'GUATEMALA', '{\"ar\":\"غواتيمال\",\"en\":\"Guatemala\"}', 'GTM', '320', '502', NULL, NULL),
(98, 'GN', 'GUINEA', '{\"ar\":\"غينيا\",\"en\":\"Guinea\"}', 'GIN', '324', '224', NULL, NULL),
(99, 'GW', 'GUINEA-BISSAU', '{\"ar\":\"غينيا-بيساو\",\"en\":\"Guinea-Bissau\"}', 'GNB', '624', '245', NULL, NULL),
(100, 'GY', 'GUYANA', '{\"ar\":\"غيانا\",\"en\":\"Guyana\"}', 'GUY', '328', '592', NULL, NULL),
(101, 'HT', 'HAITI', '{\"ar\":\"هايتي\",\"en\":\"Haiti\"}', 'HTI', '332', '509', NULL, NULL),
(102, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', '{\"ar\":\"جزيرة هيرد وجزر ماكدونالد\",\"en\":\"Heard Island and Mcdonald Islands\"}', NULL, NULL, '0', NULL, NULL),
(103, 'HN', 'HONDURAS', '{\"ar\":\"هندوراس\",\"en\":\"Honduras\"}', 'HND', '340', '504', NULL, NULL),
(104, 'HK', 'HONG KONG', '{\"ar\":\"هونغ كونغ\",\"en\":\"Hong Kong\"}', 'HKG', '344', '852', NULL, NULL),
(105, 'HU', 'HUNGARY', '{\"ar\":\"المجر\",\"en\":\"Hungary\"}', 'HUN', '348', '36', NULL, NULL),
(106, 'IS', 'ICELAND', '{\"ar\":\"آيسلندا\",\"en\":\"Iceland\"}', 'ISL', '352', '354', NULL, NULL),
(107, 'IN', 'INDIA', '{\"ar\":\"الهند\",\"en\":\"India\"}', 'IND', '356', '91', NULL, NULL),
(108, 'ID', 'INDONESIA', '{\"ar\":\"أندونيسيا\",\"en\":\"Indonesia\"}', 'IDN', '360', '62', NULL, NULL),
(109, 'IQ', 'IRAQ', '{\"ar\":\"العراق\",\"en\":\"Iraq\"}', 'IRQ', '368', '964', NULL, NULL),
(110, 'IE', 'IRELAND', '{\"ar\":\"إيرلندا\",\"en\":\"Ireland\"}', 'IRL', '372', '353', NULL, NULL),
(111, 'IT', 'ITALY', '{\"ar\":\"إيطاليا\",\"en\":\"Italy\"}', 'ITA', '380', '39', NULL, NULL),
(112, 'JM', 'JAMAICA', '{\"ar\":\"جمايكا\",\"en\":\"Jamaica\"}', 'JAM', '388', '1876', NULL, NULL),
(113, 'JP', 'JAPAN', '{\"ar\":\"اليابان\",\"en\":\"Japan\"}', 'JPN', '392', '81', NULL, NULL),
(114, 'JO', 'JORDAN', '{\"ar\":\"الأردن\",\"en\":\"Jordan\"}', 'JOR', '400', '962', NULL, NULL),
(115, 'KZ', 'KAZAKHSTAN', '{\"ar\":\"كازاخستان\",\"en\":\"Kazakhstan\"}', 'KAZ', '398', '7', NULL, NULL),
(116, 'KE', 'KENYA', '{\"ar\":\"كينيا\",\"en\":\"Kenya\"}', 'KEN', '404', '254', NULL, NULL),
(117, 'KI', 'KIRIBATI', '{\"ar\":\"كيريباتي\",\"en\":\"Kiribati\"}', 'KIR', '296', '686', NULL, NULL),
(118, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', '{\"ar\":\"كوريا الشمالية\",\"en\":\"Korea(North Korea)\"}', 'PRK', '408', '850', NULL, NULL),
(119, 'KR', 'KOREA, REPUBLIC OF', '{\"ar\":\"كوريا الجنوبية\",\"en\":\"Korea(South Korea)\"}', 'KOR', '410', '82', NULL, NULL),
(120, 'KW', 'KUWAIT', '{\"ar\":\"الكويت\",\"en\":\"Kuwait\"}', 'KWT', '414', '965', NULL, NULL),
(121, 'KG', 'KYRGYZSTAN', '{\"ar\":\"قيرغيزستان\",\"en\":\"Kyrgyzstan\"}', 'KGZ', '417', '996', NULL, NULL),
(122, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', '{\"ar\":\"جمهورية أفريقيا الوسطى\",\"en\":\"Republic\"}', 'LAO', '418', '856', NULL, NULL),
(123, 'LV', 'LATVIA', '{\"ar\":\"لاتفيا\",\"en\":\"Latvia\"}', 'LVA', '428', '371', NULL, NULL),
(124, 'LB', 'LEBANON', '{\"ar\":\"لبنان\",\"en\":\"Lebanon\"}', 'LBN', '422', '961', NULL, NULL),
(125, 'LS', 'LESOTHO', '{\"ar\":\"ليسوتو\",\"en\":\"Lesotho\"}', 'LSO', '426', '266', NULL, NULL),
(126, 'LR', 'LIBERIA', '{\"ar\":\"ليبيريا\",\"en\":\"Liberia\"}', 'LBR', '430', '231', NULL, NULL),
(127, 'LY', 'LIBYAN ARAB JAMAHIRIYA', '{\"ar\":\"ليبيا\",\"en\":\"Libyan\"}', 'LBY', '434', '218', NULL, NULL),
(128, 'LI', 'LIECHTENSTEIN', '{\"ar\":\"ليختنشتين\",\"en\":\"Liechtenstein\"}', 'LIE', '438', '423', NULL, NULL),
(129, 'LT', 'LITHUANIA', '{\"ar\":\"لتوانيا\",\"en\":\"Lithuania\"}', 'LTU', '440', '370', NULL, NULL),
(130, 'LU', 'LUXEMBOURG', '{\"ar\":\"لوكسمبورغ\",\"en\":\"Luxembourg\"}', 'LUX', '442', '352', NULL, NULL),
(131, 'MO', 'MACAO', '{\"ar\":\"ماكاو\",\"en\":\"Macao\"}', 'MAC', '446', '853', NULL, NULL),
(132, 'MG', 'MADAGASCAR', '{\"ar\":\"مدغشقر\",\"en\":\"Madagascar\"}', 'MDG', '450', '261', NULL, NULL),
(133, 'MW', 'MALAWI', '{\"ar\":\"مالاوي\",\"en\":\"Malawi\"}', 'MWI', '454', '265', NULL, NULL),
(134, 'MY', 'MALAYSIA', '{\"ar\":\"ماليزيا\",\"en\":\"Malaysia\"}', 'MYS', '458', '60', NULL, NULL),
(135, 'MV', 'MALDIVES', '{\"ar\":\"المالديف\",\"en\":\"Maldives\"}', 'MDV', '462', '960', NULL, NULL),
(136, 'ML', 'MALI', '{\"ar\":\"مالي\",\"en\":\"Mali\"}', 'MLI', '466', '223', NULL, NULL),
(137, 'MT', 'MALTA', '{\"ar\":\"مالطا\",\"en\":\"Malta\"}', 'MLT', '470', '356', NULL, NULL),
(138, 'MH', 'MARSHALL ISLANDS', '{\"ar\":\"جزر مارشال\",\"en\":\"Marshall Islands\"}', 'MHL', '584', '692', NULL, NULL),
(139, 'MQ', 'MARTINIQUE', '{\"ar\":\"مارتينيك\",\"en\":\"Martinique\"}', 'MTQ', '474', '596', NULL, NULL),
(140, 'MR', 'MAURITANIA', '{\"ar\":\"موريتانيا\",\"en\":\"Mauritania\"}', 'MRT', '478', '222', NULL, NULL),
(141, 'MU', 'MAURITIUS', '{\"ar\":\"موريتانيا\",\"en\":\"Mauritius\"}', 'MUS', '480', '230', NULL, NULL),
(142, 'YT', 'MAYOTTE', '{\"ar\":\"مايوت\",\"en\":\"Mayotte\"}', NULL, NULL, '269', NULL, NULL),
(143, 'MX', 'MEXICO', '{\"ar\":\"المكسيك\",\"en\":\"Mexico\"}', 'MEX', '484', '52', NULL, NULL),
(144, 'FM', 'MICRONESIA, FEDERATED STATES OF', '{\"ar\":\"مايكرونيزيا\",\"en\":\"Micronesia\"}', 'FSM', '583', '691', NULL, NULL),
(145, 'MD', 'MOLDOVA, REPUBLIC OF', '{\"ar\":\"مولدافيا\",\"en\":\"Moldova\"}', 'MDA', '498', '373', NULL, NULL),
(146, 'MC', 'MONACO', '{\"ar\":\"موناكو\",\"en\":\"Monaco\"}', 'MCO', '492', '377', NULL, NULL),
(147, 'MN', 'MONGOLIA', '{\"ar\":\"منغوليا\",\"en\":\"Mongolia\"}', 'MNG', '496', '976', NULL, NULL),
(148, 'MS', 'MONTSERRAT', '{\"ar\":\"مونتسيرات\",\"en\":\"Montserrat\"}', 'MSR', '500', '1664', NULL, NULL),
(149, 'MA', 'MOROCCO', '{\"ar\":\"المغرب\",\"en\":\"Morocco\"}', 'MAR', '504', '212', NULL, NULL),
(150, 'MZ', 'MOZAMBIQUE', '{\"ar\":\"موزمبيق\",\"en\":\"Mozambique\"}', 'MOZ', '508', '258', NULL, NULL),
(151, 'MM', 'MYANMAR', '{\"ar\":\"ميانمار\",\"en\":\"Myanmar\"}', 'MMR', '104', '95', NULL, NULL),
(152, 'NA', 'NAMIBIA', '{\"ar\":\"ناميبيا\",\"en\":\"Namibia\"}', 'NAM', '516', '264', NULL, NULL),
(153, 'NR', 'NAURU', '{\"ar\":\"نورو\",\"en\":\"Nauru\"}', 'NRU', '520', '674', NULL, NULL),
(154, 'NP', 'NEPAL', '{\"ar\":\"نيبال\",\"en\":\"Nepal\"}', 'NPL', '524', '977', NULL, NULL),
(155, 'NL', 'NETHERLANDS', '{\"ar\":\"هولندا\",\"en\":\"Netherlands\"}', 'NLD', '528', '31', NULL, NULL),
(156, 'AN', 'NETHERLANDS ANTILLES', '{\"ar\":\"جزر الأنتيل الهولندي\",\"en\":\"Netherlands Antilles\"}', 'ANT', '530', '599', NULL, NULL),
(157, 'NC', 'NEW CALEDONIA', '{\"ar\":\"كاليدونيا الجديدة\",\"en\":\"New Caledonia\"}', 'NCL', '540', '687', NULL, NULL),
(158, 'NZ', 'NEW ZEALAND', '{\"ar\":\"نيوزيلندا\",\"en\":\"New Zealand\"}', 'NZL', '554', '64', NULL, NULL),
(159, 'NI', 'NICARAGUA', '{\"ar\":\"نيكاراجوا\",\"en\":\"Nicaragua\"}', 'NIC', '558', '505', NULL, NULL),
(160, 'NE', 'NIGER', '{\"ar\":\"النيجر\",\"en\":\"Niger\"}', 'NER', '562', '227', NULL, NULL),
(161, 'NG', 'NIGERIA', '{\"ar\":\"نيجيريا\",\"en\":\"Nigeria\"}', 'NGA', '566', '234', NULL, NULL),
(162, 'NU', 'NIUE', '{\"ar\":\"ني\",\"en\":\"Niue\"}', 'NIU', '570', '683', NULL, NULL),
(163, 'NF', 'NORFOLK ISLAND', '{\"ar\":\"جزيرة نورفولك\",\"en\":\"Norfolk Island\"}', 'NFK', '574', '672', NULL, NULL),
(164, 'MP', 'NORTHERN MARIANA ISLANDS', '{\"ar\":\"جزر ماريانا الشمالية\",\"en\":\"Northern Mariana Islands\"}', 'MNP', '580', '1670', NULL, NULL),
(165, 'NO', 'NORWAY', '{\"ar\":\"النرويج\",\"en\":\"Norway\"}', 'NOR', '578', '47', NULL, NULL),
(166, 'OM', 'OMAN', '{\"ar\":\"عمان\",\"en\":\"Oman\"}', 'OMN', '512', '968', NULL, NULL),
(167, 'PK', 'PAKISTAN', '{\"ar\":\"باكستان\",\"en\":\"Pakistan\"}', 'PAK', '586', '92', NULL, NULL),
(168, 'PW', 'PALAU', '{\"ar\":\"بالاو\",\"en\":\"Palau\"}', 'PLW', '585', '680', NULL, NULL),
(169, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', '{\"ar\":\"فلسطين\",\"en\":\"Palestinian \"}', NULL, NULL, '970', NULL, NULL),
(170, 'PA', 'PANAMA', '{\"ar\":\"بنما\",\"en\":\"Panama\"}', 'PAN', '591', '507', NULL, NULL),
(171, 'PG', 'PAPUA NEW GUINEA', '{\"ar\":\"بابوا غينيا الجديدة\",\"en\":\"Papua New Guinea\"}', 'PNG', '598', '675', NULL, NULL),
(172, 'PY', 'PARAGUAY', '{\"ar\":\"باراغواي\",\"en\":\"Paraguay\"}', 'PRY', '600', '595', NULL, NULL),
(173, 'PE', 'PERU', '{\"ar\":\"بيرو\",\"en\":\"Peru\"}', 'PER', '604', '51', NULL, NULL),
(174, 'PH', 'PHILIPPINES', '{\"ar\":\"الفليبين\",\"en\":\"Philippines\"}', 'PHL', '608', '63', NULL, NULL),
(175, 'PN', 'PITCAIRN', '{\"ar\":\"بيتكيرن\",\"en\":\"Pitcairn\"}', 'PCN', '612', '0', NULL, NULL),
(176, 'PL', 'POLAND', '{\"ar\":\"بولندا\",\"en\":\"Poland\"}', 'POL', '616', '48', NULL, NULL),
(177, 'PT', 'PORTUGAL', '{\"ar\":\"البرتغال\",\"en\":\"Portugal\"}', 'PRT', '620', '351', NULL, NULL),
(178, 'PR', 'PUERTO RICO', '{\"ar\":\"بورتو ريكو\",\"en\":\"Puerto Rico\"}', 'PRI', '630', '1787', NULL, NULL),
(179, 'QA', 'QATAR', '{\"ar\":\"مصر\",\"en\":\"Qatar\"}', 'QAT', '634', '974', NULL, NULL),
(180, 'RE', 'REUNION', '{\"ar\":\"ريونيون\",\"en\":\"Reunion\"}', 'REU', '638', '262', NULL, NULL),
(181, 'RO', 'ROMANIA', '{\"ar\":\"رومانيا\",\"en\":\"Romania\"}', 'ROM', '642', '40', NULL, NULL),
(182, 'RU', 'RUSSIAN FEDERATION', '{\"ar\":\"روسيا\",\"en\":\"Russian\"}', 'RUS', '643', '70', NULL, NULL),
(183, 'RW', 'RWANDA', '{\"ar\":\"رواندا\",\"en\":\"Rwanda\"}', 'RWA', '646', '250', NULL, NULL),
(184, 'WS', 'SAMOA', '{\"ar\":\"ساموا-الأمريكي\",\"en\":\"Samoa\"}', 'WSM', '882', '684', NULL, NULL),
(185, 'SA', 'SAUDI ARABIA', '{\"ar\":\" السعودية\",\"en\":\"Saudi Arabia\"}', 'SAU', '682', '966', NULL, NULL),
(186, 'SN', 'SENEGAL', '{\"ar\":\"السنغال\",\"en\":\"Senegal\"}', 'SEN', '686', '221', NULL, NULL),
(187, 'CS', 'SERBIA AND MONTENEGRO', '{\"ar\":\"صربيا\",\"en\":\"Serbia\"}', NULL, NULL, '381', NULL, NULL),
(188, 'SC', 'SEYCHELLES', '{\"ar\":\"سيشيل\",\"en\":\"Seychelles\"}', 'SYC', '690', '248', NULL, NULL),
(189, 'SL', 'SIERRA LEONE', '{\"ar\":\"سيراليون\",\"en\":\"Sierra Leone\"}', 'SLE', '694', '232', NULL, NULL),
(190, 'SG', 'SINGAPORE', '{\"ar\":\"سنغافورة\",\"en\":\"Singapore\"}', 'SGP', '702', '65', NULL, NULL),
(191, 'SK', 'SLOVAKIA', '{\"ar\":\"سلوفاكيا\",\"en\":\"Slovakia\"}', 'SVK', '703', '421', NULL, NULL),
(192, 'SI', 'SLOVENIA', '{\"ar\":\"سلوفينيا\",\"en\":\"Slovenia\"}', 'SVN', '705', '386', NULL, NULL),
(193, 'SO', 'SOMALIA', '{\"ar\":\"الصومال\",\"en\":\"Somalia\"}', 'SOM', '706', '252', NULL, NULL),
(194, 'ZA', 'SOUTH AFRICA', '{\"ar\":\"مصر\",\"en\":\"جنوب أفريقيا\"}', 'ZAF', '710', '27', NULL, NULL),
(195, 'ES', 'SPAIN', '{\"ar\":\"إسبانيا\",\"en\":\"Spain\"}', 'ESP', '724', '34', NULL, NULL),
(196, 'LK', 'SRI LANKA', '{\"ar\":\"سانت هيلانة\",\"en\":\"Sri Lanka\"}', 'LKA', '144', '94', NULL, NULL),
(197, 'SD', 'SUDAN', '{\"ar\":\"السودان\",\"en\":\"Sudan\"}', 'SDN', '736', '249', NULL, NULL),
(198, 'SZ', 'SWAZILAND', '{\"ar\":\"سوازيلند\",\"en\":\"Swaziland\"}', 'SWZ', '748', '268', NULL, NULL),
(199, 'SE', 'SWEDEN', '{\"ar\":\"السويد\",\"en\":\"Sweden\"}', 'SWE', '752', '46', NULL, NULL),
(200, 'CH', 'SWITZERLAND', '{\"ar\":\"سويسرا\",\"en\":\"Switzerland\"}', 'CHE', '756', '41', NULL, NULL),
(201, 'SY', 'SYRIAN ARAB REPUBLIC', '{\"ar\":\"مصر\",\"en\":\"Syrian\"}', 'SYR', '760', '963', NULL, NULL),
(202, 'TW', 'TAIWAN, PROVINCE OF CHINA', '{\"ar\":\"تايوان\",\"en\":\"Taiwan\"}', 'TWN', '158', '886', NULL, NULL),
(203, 'TJ', 'TAJIKISTAN', '{\"ar\":\"طاجيكستان\",\"en\":\"Tajikistan\"}', 'TJK', '762', '992', NULL, NULL),
(204, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', '{\"ar\":\"تنزانيا\",\"en\":\"Tanzania\"}', 'TZA', '834', '255', NULL, NULL),
(205, 'TH', 'THAILAND', '{\"ar\":\"تايلندا\",\"en\":\"Thailand\"}', 'THA', '764', '66', NULL, NULL),
(206, 'TN', 'TUNISIA', '{\"ar\":\"تونس\",\"en\":\"Tunisia\"}', 'TUN', '788', '216', NULL, NULL),
(207, 'TR', 'TURKEY', '{\"ar\":\"تركيا\",\"en\":\"Turkey\"}', 'TUR', '792', '90', NULL, NULL),
(208, 'TM', 'TURKMENISTAN', '{\"ar\":\"تركمانستان\",\"en\":\"Turkmenistan\"}', 'TKM', '795', '7370', NULL, NULL),
(209, 'UG', 'UGANDA', '{\"ar\":\"أوغندا\",\"en\":\"Uganda\"}', 'UGA', '800', '256', NULL, NULL),
(210, 'UA', 'UKRAINE', '{\"ar\":\"أوكرانيا\",\"en\":\"Ukraine\"}', 'UKR', '804', '380', NULL, NULL),
(211, 'AE', 'UNITED ARAB EMIRATES', '{\"ar\":\"الإمارات\",\"en\":\"Emirates\"}', 'ARE', '784', '971', NULL, NULL),
(212, 'GB', 'UNITED KINGDOM', '{\"ar\":\"المملكة المتحدة\",\"en\":\"United Kingdom\"}', 'GBR', '826', '44', NULL, NULL),
(213, 'US', 'UNITED STATES', '{\"ar\":\"الولايات المتحدة\",\"en\":\"United States\"}', 'USA', '840', '1', NULL, NULL),
(214, 'UY', 'URUGUAY', '{\"ar\":\"أورغواي\",\"en\":\"Uruguay\"}', 'URY', '858', '598', NULL, NULL),
(215, 'UZ', 'UZBEKISTAN', '{\"ar\":\"أوزباكستان\",\"en\":\"Uzbekistan\"}', 'UZB', '860', '998', NULL, NULL),
(216, 'VE', 'VENEZUELA', '{\"ar\":\"فنزويلا\",\"en\":\"Venezuela\"}', 'VEN', '862', '58', NULL, NULL),
(217, 'VN', 'VIET NAM', '{\"ar\":\"فيتنام\",\"en\":\"Viet Nam\"}', 'VNM', '704', '84', NULL, NULL),
(218, 'YE', 'YEMEN', '{\"ar\":\"اليمن\",\"en\":\"Yemen\"}', 'YEM', '887', '967', NULL, NULL),
(219, 'ZM', 'ZAMBIA', '{\"ar\":\"زامبيا\",\"en\":\"Zambia\"}', 'ZMB', '894', '260', NULL, NULL),
(220, 'ZW', 'ZIMBABWE', '{\"ar\":\"زمبابوي\",\"en\":\"Zimbabwe\"}', 'ZWE', '716', '263', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `categoryId` int(11) NOT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `childCategoryId` int(11) DEFAULT NULL,
  `languageId` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_detail` text COLLATE utf8mb4_unicode_ci,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `requirement` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `payed` tinyint(1) DEFAULT NULL,
  `rate` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `userId`, `categoryId`, `subCategoryId`, `childCategoryId`, `languageId`, `title`, `level`, `short_detail`, `detail`, `requirement`, `price`, `discount_price`, `date`, `image`, `slug`, `status`, `duration`, `meta_key`, `meta_desc`, `payed`, `rate`, `created_at`, `updated_at`) VALUES
(20, 14, 1, NULL, NULL, NULL, 'دبلوم التميز المؤسسي الإنساني', 'مستوى متقدم', 'وصف قصير', 'وصف طويل للكورس', 'المتطلبات للكورس', '25$', NULL, '2021-10-17', '1634498206.jpg', 'دبلوم-التميز-المؤسسي-الإنساني', 0, 2, NULL, NULL, NULL, NULL, '2021-10-17 19:16:46', '2021-10-17 19:16:46'),
(21, 14, 1, NULL, NULL, NULL, 'ميثاق ومغليير الإغاثة الإنسانية (SPHERE)', 'مستوى متقدم', 'وصف قصير', 'وصف طويل للكورس', 'المتطلبات للكورس', '25$', NULL, '2021-10-17', '1634498304.jpg', 'ميثاق-ومغليير-الإغاثة-الإنسانية-sphere', 0, 2, NULL, NULL, NULL, NULL, '2021-10-17 19:18:24', '2021-10-17 19:18:24'),
(22, 14, 1, NULL, NULL, NULL, 'أخصائي التسويق الإجتماعي (S.M.P)', 'مستوى متقدم', 'وصف قصير', 'وصف طويل للكورس', 'المتطلبات للكورس المتطلبات', '25$', NULL, '2021-10-17', '1634498370.jpg', 'أخصائي-التسويق-الإجتماعي-smp', 0, 2, NULL, NULL, NULL, NULL, '2021-10-17 19:19:30', '2021-10-17 19:19:30'),
(23, 14, 1, NULL, NULL, NULL, 'تدريب المدربين في العمال الإنساني (T.O.T)', 'مستوى متقدم', 'وصف قصير', 'وصف طويل للكورس', 'المتطلبات للكورس المتطلبات', '25$', NULL, '2021-10-17', '1634498445.jpg', 'تدريب-المدربين-في-العمال-الإنساني-tot', 0, 2, NULL, NULL, NULL, NULL, '2021-10-17 19:20:45', '2021-10-17 19:20:45'),
(25, 14, 1, NULL, NULL, NULL, 'التخطيط الإستراتيجي والتنفيذ للمؤسسات الإنسانية', 'مستوى متقدم', 'وصف قصير', 'وصف طويل للكورس', 'المتطلبات للكورس', '25$', NULL, '2021-10-17', '1634498512.jpg', 'التخطيط-الإستراتيجي-والتنفيذ-للمؤسسات-الإنسانية', 0, 2, NULL, NULL, NULL, NULL, '2021-10-17 19:21:52', '2021-10-17 19:21:52'),
(26, 14, 1, NULL, NULL, NULL, 'دبلوم القيادات الإنسانية', 'الفئات المستهدفة : 1- الكوادر الإدارية المراد تأهيلها لقيادة المؤسسات الإنسانية. 2- مدراء الإدارات العليا في المؤسسات الإنسانية. 3- الأكاديميون والباحثون في علوم العمل الإنساني. 4- الجهات المشرفة على أعمال المؤسسات الإنسانية.', 'وصف قصير', 'المساقات التدريبية: ١- قيادة المؤسسات الإنسانية ٢- مهارات التخطيط الاستراتيجي  ٣- إدارة الأزمات والكوارث ٤- إدارة المشاريع الإنسانية ٥- تنمية الموارد المالية ٦- الإعلام والعمل الإنساني ٧- تاريخ العمل الإنساني  ٨- القواعد الشرعية الإنسانية', 'تنمية المهارات المعرفية / تنمية المهارات الذاتية / تنمية المهارات الإنسانية/  تنمية المهارات الفنية', '25$', NULL, '2021-10-19', '1634669681.jpg', 'دبلوم-القيادات-الإنسانية', 0, 12, 'تعلن منصة عالم التميز عن فتح باب التسجيل في برنامج دبلوم القيادات الإنسانية الدفعة الخامسة بالتعاون مع منتدى المؤسسات الإنسانية واعتماد الجامعة الدولية في أمريكا اللاتينية👨‍🎓👩‍🎓\r\n --------------------\r\n\r\n👍 الأهداف التأهيلية للبرنامج 👍\r\n💥 تنمية المهارات المعرفية.\r\n💥 تنمية المهارات الذاتية.\r\n💥 تنمية المهارات الإنسانية.\r\n💥 تنمية المهارات الفنية.\r\n -----------------\r\n\r\nالمساقات التدريبية:\r\n١- قيادة المؤسسات الإنسانية\r\n٢- مهارات التخطيط الاستراتيجي \r\n٣- إدارة الأزمات والكوارث\r\n٤- إدارة المشاريع الإنسانية\r\n٥- تنمية الموارد المالية\r\n٦- الإعلام والعمل الإنساني\r\n٧- تاريخ العمل الإنساني \r\n٨- القواعد الشرعية الإنسانية\r\n\r\nالفئات المستهدفة :\r\n1- الكوادر الإدارية المراد تأهيلها لقيادة المؤسسات الإنسانية.\r\n2- مدراء الإدارات العليا في المؤسسات الإنسانية.\r\n3- الأكاديميون والباحثون في علوم العمل الإنساني.\r\n4- الجهات المشرفة على أعمال المؤسسات الإنسانية.\r\n-----------------------\r\n\r\nملاحظات :\r\n💥 البرنامج online (عن طريق منصة عالم التميز).\r\n💥 المحاضرات يوم السبت والاثنين والأربعاء من الساعة الثامنة مساءاً وحتى العاشرة مساء بتوقيت مكة المكرمة.\r\n💥 شهادات معتمدة من الجامعة الأمريكية للعلوم الإنسانية.', 'تعلن منصة عالم التميز عن فتح باب التسجيل في برنامج دبلوم القيادات الإنسانية الدفعة الخامسة بالتعاون مع منتدى المؤسسات الإنسانية واعتماد الجامعة الدولية في أمريكا اللاتينية👨‍🎓👩‍🎓\r\n --------------------\r\n\r\n👍 الأهداف التأهيلية للبرنامج 👍\r\n💥 تنمية المهارات المعرفية.\r\n💥 تنمية المهارات الذاتية.\r\n💥 تنمية المهارات الإنسانية.\r\n💥 تنمية المهارات الفنية.\r\n -----------------\r\n\r\nالمساقات التدريبية:\r\n١- قيادة المؤسسات الإنسانية\r\n٢- مهارات التخطيط الاستراتيجي \r\n٣- إدارة الأزمات والكوارث\r\n٤- إدارة المشاريع الإنسانية\r\n٥- تنمية الموارد المالية\r\n٦- الإعلام والعمل الإنساني\r\n٧- تاريخ العمل الإنساني \r\n٨- القواعد الشرعية الإنسانية\r\n\r\nالفئات المستهدفة :\r\n1- الكوادر الإدارية المراد تأهيلها لقيادة المؤسسات الإنسانية.\r\n2- مدراء الإدارات العليا في المؤسسات الإنسانية.\r\n3- الأكاديميون والباحثون في علوم العمل الإنساني.\r\n4- الجهات المشرفة على أعمال المؤسسات الإنسانية.\r\n-----------------------\r\n\r\nملاحظات :\r\n💥 البرنامج online (عن طريق منصة عالم التميز).\r\n💥 المحاضرات يوم السبت والاثنين والأربعاء من الساعة الثامنة مساءاً وحتى العاشرة مساء بتوقيت مكة المكرمة.\r\n💥 شهادات معتمدة من الجامعة الأمريكية للعلوم الإنسانية.', NULL, NULL, '2021-10-17 19:22:23', '2021-10-19 18:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `courses_joined`
--

CREATE TABLE `courses_joined` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `liveId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_joined`
--

INSERT INTO `courses_joined` (`id`, `userId`, `courseId`, `liveId`, `created_at`, `updated_at`) VALUES
(20, 43, NULL, 2, '2021-09-17 19:01:02', '2021-09-17 19:01:02'),
(22, 43, NULL, 6, '2021-09-17 19:59:30', '2021-09-17 19:59:30'),
(23, 43, NULL, 7, '2021-09-17 21:08:48', '2021-09-17 21:08:48'),
(25, 60, NULL, 7, '2021-09-19 14:28:51', '2021-09-19 14:28:51'),
(27, 61, NULL, 7, '2021-09-20 09:31:41', '2021-09-20 09:31:41'),
(29, 63, NULL, 7, '2021-09-21 19:39:00', '2021-09-21 19:39:00'),
(32, 67, NULL, 7, '2021-10-15 13:32:52', '2021-10-15 13:32:52'),
(33, 65, NULL, 7, '2021-10-15 13:44:48', '2021-10-15 13:44:48'),
(34, 65, 26, NULL, '2021-10-19 18:40:58', '2021-10-19 18:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `liveId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `userId`, `courseId`, `liveId`, `created_at`, `updated_at`) VALUES
(3, 14, 2, NULL, '2021-08-27 14:31:53', '2021-08-27 14:31:53'),
(4, 14, 5, NULL, '2021-08-27 14:32:09', '2021-08-27 14:32:09'),
(5, 13, 1, NULL, '2021-09-11 10:18:13', '2021-09-11 10:18:13'),
(6, 13, 4, NULL, '2021-09-11 10:19:27', '2021-09-11 10:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `countryId` int(11) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `stateID` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `is_activated` tinyint(4) NOT NULL DEFAULT '0',
  `token` text COLLATE utf8mb4_unicode_ci,
  `device_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `countryId`, `cityId`, `stateID`, `name`, `email`, `password`, `dateOfBirth`, `mobile`, `address`, `photo`, `gender`, `detail`, `rate`, `status`, `type`, `is_activated`, `token`, `device_token`, `created_at`, `updated_at`) VALUES
(13, 14, NULL, NULL, 'student', 'hamadaali889900@gmail.com', '$2y$10$Yd2vpHEfWUzuCNcwNdvKO.Dkgc106I3cTBCHX.flBT9PRsFF0OzPO', '2021-08-10', '34567856789', '4567uuuu', '1629359987.jpeg', 'cytrdyr', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem\r\n', '4', 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzQyNDk1MDksImV4cCI6MTYzNDI1MzEwOSwibmJmIjoxNjM0MjQ5NTA5LCJqdGkiOiI2a0ZMTzBzZWY2bHFsVjhLIiwic3ViIjoxMywicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.4lwknPorUpSeYgcUE1f8JIEXz9Y45-67I_5-iNcWWNU', '324543tgerg', '2021-08-12 12:13:30', '2021-10-19 22:17:48'),
(14, 15, NULL, NULL, 'محمد الزير', 'hamadaali221133@gmail.com', '$2y$10$.8U47pt9yFvW6dJzMH4O3erA5M38WkQ1VG0W5Z5aSyua6Qhx897S.', NULL, '+905366128397', NULL, '1634651690.jpg', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem\r\n                                    Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an\r\n                                    unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n                                    It has survived not only five centuries, but also the leap into electronic\r\n                                    typesetting, remaining essentially unchanged. It was popularised in the 1960s with\r\n                                    the release of Letraset sheets containing Lorem Ipsum passages, and more recently\r\n                                    with desktop publishing software like Aldus PageMaker including versions of Lorem\r\n                                    Ipsum.\r\n', NULL, 1, 'instructor', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzQ0OTQzNjMsImV4cCI6MTYzNDQ5Nzk2MywibmJmIjoxNjM0NDk0MzYzLCJqdGkiOiI3b1d0NmJlRFRRSTA4RXFTIiwic3ViIjoxNCwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.5gQjtb-jokKA8hpjbxIbkWVgpzDeQJBD1IROulrBbaE', '123', '2021-08-12 12:40:58', '2021-10-19 13:54:50'),
(38, 2, NULL, NULL, 'dwfrwf', 'admin2222@admin.com', '$2y$10$KgFyumhFZI2.zlimBzU2VO6qe171nxIKTKx4GMM5zzVqYG4gY.v8q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-01 11:41:40', '2021-09-01 11:41:40'),
(39, NULL, NULL, NULL, 'hamada ali', 'loai@gmail.com', '$2y$10$rbN1FKtwPa/O8tJ8746HQe8rMLGFfsv1aKh39oAAoHyOrrfrpDBau', NULL, NULL, NULL, NULL, 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-04 09:32:57', '2021-09-04 09:32:57'),
(40, NULL, NULL, NULL, 'hamada ali', 'ap.alda12@gmail.com', '$2y$10$twGwtoAMF/r7Y0locUWKnO/w3x2wAYm2sfmsJdg9Wjx3JRTk6szYS', NULL, NULL, NULL, NULL, 'ذكر', NULL, NULL, 1, 'student', 1, NULL, NULL, '2021-09-04 09:33:15', '2021-09-04 09:33:33'),
(41, NULL, NULL, NULL, 'لؤي محمد عرفات', 'arnoor33@gmail.com', '$2y$10$r51R4VmzOxr354vxfRE/quENtFhzF9rtJSufKkzlI.omeVnlOwzRe', NULL, NULL, NULL, NULL, 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzExMTg2NTUsImV4cCI6MTYzMTEyMjI1NSwibmJmIjoxNjMxMTE4NjU1LCJqdGkiOiJveWZoN28yamVydFM4c3ZTIiwic3ViIjo0MSwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.zYH7ptm9b1tUcUXOlDM3fc0ETRzW82cpdQHy1K52scg', '123', '2021-09-04 10:32:59', '2021-09-09 20:32:19'),
(42, NULL, NULL, NULL, 'محمد احمد', 'loaiarafat225@gmail.com', '$2y$10$RrWXp468oWLEzfMcZXCyvenPTeatcxNR3Y45Wnq3rrLUrsnXvMedW', NULL, NULL, NULL, NULL, 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-07 13:18:27', '2021-09-07 13:18:27'),
(43, NULL, NULL, NULL, 'loai', 'loayarafat225@gmail.com', '$2y$10$g3qTTlHF/.YQn9iZ2Hm1zuMJR5fh2itcFRjPnMoIK9saE.3Qvstlu', NULL, NULL, NULL, NULL, 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzQyMTAxMzYsImV4cCI6MTYzNDIxMzczNiwibmJmIjoxNjM0MjEwMTM2LCJqdGkiOiJSOUo0SFluTzE4SU0yRjdCIiwic3ViIjo0MywicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.lDKXEs9zfxvwB1dGoRYk5kWuo-wAjLt1E9VhsrGh2dE', 'ezX0efciT425K8BQu2UJIZ:APA91bF8KVvoQizeZ4fjAv_tXoo1o-u-eVAyYkw85xhlF6VVvwCNPPsbiWQOPSJBkiNOJj4hq0ugfMe_EGm_KfTG_9JnA5UMtVVs8pP_r4exinXw38jnuAY2VL1P19P0IeEyZsEhNYVy', '2021-09-07 13:20:15', '2021-10-14 11:15:36'),
(44, NULL, NULL, NULL, 'text', 'text', '$2y$10$51oQqkV3ovNlpwQP2BkVHu3y3U7Juqs6RPRcwnM.dYQC4vxV.V4H6', NULL, NULL, NULL, NULL, 'أنثى', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-10 22:17:00', '2021-09-10 22:17:00'),
(45, NULL, NULL, NULL, 'John', 'gracegarcia76@icloud.com', '$2y$10$wA9KH2hCddXmQpJ34CI71Og8Yb6r6p.VcCzp/qCbMYgP4R95DT8Uy', NULL, NULL, NULL, NULL, 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-15 14:25:23', '2021-09-15 14:25:23'),
(46, NULL, NULL, NULL, 'John', 'susansouth2000@gmail.com', '$2y$10$a5mts2zNpOSszawbPEsOkuMJq7UTUoeg7SyECobepA5K3dMQPv/Fi', NULL, NULL, NULL, NULL, 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-16 07:42:01', '2021-09-16 07:42:01'),
(47, NULL, NULL, NULL, 'hamada ali', 'zagellshoop221133rrrrr@gmail.com', '$2y$10$W.PYtyVUpR3RKd3eVKgQ/ey1co703DxlIOWIgCFxrhbXFPJeUWj3a', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-18 04:22:16', '2021-09-18 04:22:16'),
(48, NULL, NULL, NULL, 'hamada ali', 'zagellshooprr@gmail.com', '$2y$10$NwLhLHTBiD50e/5WUmkoqO1maWrwuwzE7wG1GPo2OeLA2WeHOMUte', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-18 04:23:04', '2021-09-18 04:23:04'),
(49, NULL, NULL, NULL, 'hamada ali', 'zagellshtttooprr@gmail.com', '$2y$10$MbwD/625Rz5zXgPFEIffCObX6XgOonnzTfbmXxYCUzEclt8Zwo9Nu', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-18 04:23:41', '2021-09-18 04:23:41'),
(50, NULL, NULL, NULL, 'hamada ali', 'zagellshtttooyyyyprr@gmail.com', '$2y$10$AxBx6KgD78yz6hZhUlfO3upgdjajaYARGDSnrGIZbCwhMCQu954.S', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-18 04:24:04', '2021-09-18 04:24:04'),
(55, NULL, NULL, NULL, 'hamada ali', 'zagellshoop221133@gmail.com', '$2y$10$dCDt0w6V4.HEz8j/M5.bDO0d6JbNmW8Duc0Srs/.GkvV5ipcJ1oC2', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 1, NULL, NULL, '2021-09-18 04:42:03', '2021-09-18 04:43:19'),
(56, NULL, NULL, NULL, 'shatha', 'shatha.rjela@gmail.com', '$2y$10$USR4tr45V9Ul130yBXWC0.Q8Jj0p/v1z7xxKytJnp8iornMTMkMvy', NULL, NULL, NULL, 'profile.png', 'أنثى', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzE5NDEzOTAsImV4cCI6MTYzMTk0NDk5MCwibmJmIjoxNjMxOTQxMzkwLCJqdGkiOiI3eWFZREtjVG9RUTZITEhvIiwic3ViIjo1NiwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.IhjzxW3OgU7MzOvWzwQUCyHcyC4cFhXLp09oWYPYh0U', '123', '2021-09-18 04:59:49', '2021-09-18 05:03:10'),
(57, NULL, NULL, NULL, 'loi', 'araft@gmail.com', '$2y$10$/BFrv8p2J6XOzGpRi9I5ZOzOy/5EuIuI6W2p11hr3TM3k.Zg862hC', NULL, NULL, NULL, 'profile.png', 'غير محدد', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-18 05:12:58', '2021-09-18 05:12:58'),
(58, NULL, NULL, NULL, 'loi', 'afaaa@gmail.com', '$2y$10$iEmvQgsTj6n9pCfhvOXDEuE.u6jaJKXNk8LU649/f2p2HKQntvvBu', NULL, NULL, NULL, 'profile.png', NULL, NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-09-18 05:23:02', '2021-09-18 05:23:02'),
(59, NULL, NULL, NULL, 'عماد', 'emadbeltaje@gmail.com', '$2y$10$wRv5riQkVlg4KWJbast/IePCkAslDOgLJiIF2rVcq89m6ZJshPjZi', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzE5ODAwNTIsImV4cCI6MTYzMTk4MzY1MiwibmJmIjoxNjMxOTgwMDUyLCJqdGkiOiJGaGhPZVdJUndCM1lSV0NyIiwic3ViIjo1OSwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.dMM6woPp3C7hamfcZtScxSHRyYSRQ3HgZe-j7H4UsoM', '123', '2021-09-18 15:46:11', '2021-09-18 15:47:32'),
(60, NULL, NULL, NULL, 'خليل الزير', 'ziroglu2020@gmail.com', '$2y$10$gTYU7eMCXVoewyx6Ct9Tcu58DVsaFgBCZ9zt7.l4y.TmYDmYBoOki', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzIwNjE2OTQsImV4cCI6MTYzMjA2NTI5NCwibmJmIjoxNjMyMDYxNjk0LCJqdGkiOiJxb2QyaDc5NlNCejhGRk5HIiwic3ViIjo2MCwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.Hkm6wLjSsPFVoQYn9GKE6m4lyS0KkBM3pQOlYlS-iYo', '123', '2021-09-19 14:23:52', '2021-10-13 23:05:57'),
(61, NULL, NULL, NULL, 'su south', 'eatoneast2000@gmail.com', '$2y$10$eAVsCKd0/nGNQ0/IliIuGOWtOnOlNxrCpChTHQLRQT6sMMPkxLWr2', NULL, NULL, NULL, 'profile.png', NULL, NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzI0MTQzMzUsImV4cCI6MTYzMjQxNzkzNSwibmJmIjoxNjMyNDE0MzM1LCJqdGkiOiJEMm1DSHlFdm5YeGlNbEpuIiwic3ViIjo2MSwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.r2ml6QU1Q649nJPrwB0Xzj5l_iyobkaRF_MXxoeQEdk', '123', '2021-09-20 09:29:28', '2021-09-23 16:25:35'),
(62, NULL, NULL, NULL, 'يحيى الزيداني', 'yahya.ronin@outlook.com', '$2y$10$xKvsNsSqr.P6Fv3OuKrvD.GlVRef3JLBTIFCTFeUeBdJ4NQBx4kWG', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzQ2NTc1MDksImV4cCI6MTYzNDY2MTEwOSwibmJmIjoxNjM0NjU3NTA5LCJqdGkiOiJkeGRXU2FhWU9CeG02VDdjIiwic3ViIjo2MiwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.oSRd31xkdjV3QA1zDCX15FVgvgkWkaE-HsmcaLzA9So', '123', '2021-09-20 14:47:58', '2021-10-19 15:31:49'),
(63, NULL, NULL, NULL, 'wisam', 'wisamimad8@gmail.com', '$2y$10$y3yUd2f4y/IevQsPNWIphOmle53M/Q17bH4UUbzROqJatC7dtbvqW', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzIyNTMxMzAsImV4cCI6MTYzMjI1NjczMCwibmJmIjoxNjMyMjUzMTMwLCJqdGkiOiJ5RU9VaEEycDV2S3lESVFRIiwic3ViIjo2MywicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.eKpoQHp7fZswl2rDcPkXrA6jfbVyLUonYa4hlzBX4pY', '123', '2021-09-21 17:41:23', '2021-09-21 19:38:50'),
(64, NULL, NULL, NULL, 'Mohammad', 'M.m.adayla@gmail.com', '$2y$10$rzFpdig7Q4PdivQIGM3Q1uuHQYz9S6pIYFczB5K9pDdj6My.e.h4.', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzIzMTM0MDAsImV4cCI6MTYzMjMxNzAwMCwibmJmIjoxNjMyMzEzNDAwLCJqdGkiOiJHOGZMZ2NTM29adW1qTmRiIiwic3ViIjo2NCwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.GsxVsDnKWiWZhpImK0LeOR7irEcA4xYhS-IfGJkx2ZE', '123', '2021-09-22 12:22:16', '2021-09-22 12:23:20'),
(65, NULL, NULL, NULL, 'محمد خليل الزير', 'mkmk.2002@hotmail.com', '$2y$10$nX7Vjkj89O/wwpz1GnBl5O0CwrmExhNGkqheCjRe.FftM137VLXVS', '2002-07-12', '00905366128397', NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzQ2Njg0MTYsImV4cCI6MTYzNDY3MjAxNiwibmJmIjoxNjM0NjY4NDE2LCJqdGkiOiJ6Tk1HTE05WVlVcEFCVXRwIiwic3ViIjo2NSwicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.Rqg4g0UVXmRxfKEdRVrVk3AuRakLUrRPpjoQyMLtpe0', '123', '2021-10-14 19:48:31', '2021-10-19 18:33:36'),
(66, NULL, NULL, NULL, 'يحيى الزيداني', 'dev. yahya@alfa-coder.com', '$2y$10$.BT3w1HhP8Cdhd3AIcocp.SLNF4Vy7Aq676R.EMG6gD8Mid72dIM6', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-10-14 21:15:52', '2021-10-14 21:15:52'),
(67, NULL, NULL, NULL, 'يحيى الزيداني', 'dev.yahya@alfa-coder.com', '$2y$10$qMPK3p2Ym3.KyJJeiAUmsu3GURLsnhtggKyooQrCFp671tbZ0gCFi', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wva3V0dXBoYW5haC5jb21cL2NvdXJzZXNcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzQzMDQ2ODMsImV4cCI6MTYzNDMwODI4MywibmJmIjoxNjM0MzA0NjgzLCJqdGkiOiJFdGNqUGxnemJrN1g5UU9jIiwic3ViIjo2NywicHJ2IjoiMWM1YzRiMDFlZGJmYWM1Mzc0ZGQ2Y2NmNzdmZTQ0NjM5MmQwMjc5YiJ9.nlQmEkCplurQ53kNWVGAqsRya5fnpj657Aj7Nj2kXpE', '123', '2021-10-14 21:16:20', '2021-10-15 13:31:23'),
(68, NULL, NULL, NULL, 'Magdy Ahmed Mohamed', 'magdyelwazery7@gmail.com', '$2y$10$YofPr.REqLrKigCKaX6AK.iznTDy0/m8kRTpkam5vXVjNlAd143De', NULL, NULL, NULL, 'profile.png', 'ذكر', NULL, NULL, 1, 'student', 0, NULL, NULL, '2021-10-15 08:53:49', '2021-10-15 08:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languagess`
--

CREATE TABLE `languagess` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `local` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lives`
--

CREATE TABLE `lives` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `short_detail` text,
  `detail` text,
  `price` varchar(20) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `image` text,
  `status` int(11) DEFAULT '0',
  `duration` int(11) DEFAULT NULL,
  `payed` int(11) DEFAULT '0',
  `rate` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lives`
--

INSERT INTO `lives` (`id`, `userId`, `title`, `slug`, `short_detail`, `detail`, `price`, `date`, `time`, `image`, `status`, `duration`, `payed`, `rate`, `created_at`, `updated_at`) VALUES
(10, 14, 'ewwr', 'ewwr', 'vfvd', 'rwgrw', NULL, '2021-10-15', NULL, '1634483260.png', 0, 33, 0, NULL, '2021-10-17 15:07:40', '2021-10-17 15:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_27_054719_create_categories_table', 1),
(5, '2021_05_27_054745_create_sub_categories_table', 1),
(6, '2021_05_27_054758_create_child_categories_table', 1),
(7, '2021_05_27_054810_create_countries_table', 1),
(8, '2021_05_27_054823_create_cities_table', 1),
(9, '2021_05_27_054837_create_states_table', 1),
(10, '2021_05_27_054850_create_languagess_table', 1),
(11, '2021_05_27_054903_create_instructors_table', 1),
(12, '2021_05_27_054916_create_courses_table', 1),
(13, '2021_05_27_054930_create_chapters_table', 1),
(14, '2021_05_27_054942_create_videos_table', 1),
(15, '2021_05_27_054955_create_socials_table', 1),
(16, '2021_05_27_055008_create_students_table', 1),
(17, '2021_05_27_055022_create_wishlists_table', 1),
(18, '2021_05_27_055036_create_carts_table', 1),
(19, '2021_05_27_055050_create_orders_table', 1),
(20, '2021_05_27_055107_create_payments_table', 1),
(21, '2021_05_27_055122_create_quizes_table', 1),
(22, '2021_05_27_055136_create_questions_table', 1),
(23, '2021_05_27_055152_create_topics_table', 1),
(24, '2021_05_27_055226_create_answers_table', 1),
(25, '2021_05_27_055237_create_banks_table', 1),
(26, '2021_05_27_055308_create_reviews_table', 1),
(27, '2021_05_27_055329_create_coupons_table', 1),
(28, '2021_05_27_055400_create_abouts_table', 1),
(29, '2021_05_27_055414_create_contacts_table', 1),
(30, '2021_05_27_055446_create_sliders_table', 1),
(31, '2021_05_27_055552_create_testimonials_table', 1),
(32, '2021_05_27_055606_create_settings_table', 1),
(33, '2021_05_27_055634_create_privacies_table', 1),
(34, '2021_05_27_070852_create_degrees_table', 1),
(35, '2021_05_27_071709_create_certificates_table', 1),
(36, '2021_06_04_082141_create_books_table', 1),
(37, '2021_06_05_112127_create_documents_table', 1),
(38, '2021_06_06_104845_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(4, 'App\\User', 2),
(1, 'App\\User', 3),
(1, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('688132d6-69d2-4852-8372-5b59ba128448', 'App\\Notifications\\UserNewNotification', 'App\\Instructor', 13, '{\"name\":\"admin\",\"message\":\"admin\"}', NULL, '2021-07-12 06:44:38', '2021-07-12 06:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الفواتير', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(2, 'قائمة الفواتير', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(3, 'الفواتير المدفوعة', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(5, 'الفواتير الغير مدفوعة', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(6, 'ارشيف الفواتير', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(7, 'التقارير', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(8, 'تقرير الفواتير', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(9, 'تقرير العملاء', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(10, 'المستخدمين', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(11, 'قائمة المستخدمين', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(12, 'صلاحيات المستخدمين', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(13, 'الاعدادات', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(14, 'المنتجات', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(15, 'الاقسام', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(16, 'اضافة فاتورة', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(17, 'حذف الفاتورة', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(18, 'تصدير EXCEL', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(19, 'تغير حالة الدفع', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(20, 'تعديل الفاتورة', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(21, 'ارشفة الفاتورة', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(22, 'طباعةالفاتورة', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(23, 'اضافة مرفق', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(24, 'حذف المرفق', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(25, 'اضافة مستخدم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(26, 'تعديل مستخدم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(27, 'حذف مستخدم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(28, 'عرض صلاحية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(29, 'اضافة صلاحية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(30, 'تعديل صلاحية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(31, 'حذف صلاحية', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(32, 'اضافة منتج', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(33, 'تعديل منتج', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(34, 'حذف منتج', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(35, 'اضافة قسم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(36, 'تعديل قسم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(37, 'حذف قسم', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06'),
(38, 'الاشعارات', 'web', '2021-07-08 06:35:06', '2021-07-08 06:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE `quizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` int(11) NOT NULL,
  `instructorId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timer` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `courseId` bigint(20) UNSIGNED DEFAULT NULL,
  `liveId` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `userId`, `courseId`, `liveId`, `comment`, `rate`, `date`, `created_at`, `updated_at`) VALUES
(3, 13, NULL, 1, 'جيد', '2.2', NULL, '2021-09-07 17:56:24', '2021-09-07 17:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-01-03 03:43:48', '2021-01-03 03:43:48'),
(2, 'editor', 'web', '2021-07-20 03:56:23', '2021-07-14 03:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 4),
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
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(1, 2),
(2, 2),
(37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `liveId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(22) NOT NULL,
  `time` varchar(22) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` text,
  `meeting_password` varchar(255) DEFAULT NULL,
  `meeting_id` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `liveId`, `title`, `date`, `time`, `duration`, `status`, `url`, `meeting_password`, `meeting_id`, `created_at`, `updated_at`) VALUES
(9, 7, 'ماهية ادارة الموارد البشرية وطبيعة عملها', '2021-09-23', '06:00 PM', '2', 0, 'https://ok.ru/video/1960671972075', '123123', '132123', '2021-09-17 20:58:24', '2021-09-17 20:58:24'),
(10, 7, 'eve', '2021-09-21', '05:47 PM', '3', 0, 'vevr', 'ver', 'vevr', '2021-09-23 14:46:28', '2021-09-23 14:46:28'),
(11, 7, 'vwrvw', '2021-10-03', '12:22', '44', 0, 'vrv', NULL, NULL, '2021-10-17 10:20:21', '2021-10-17 10:20:21'),
(12, 8, 'دبلوم القيادات الانسانية \"الدفعة الخامسة\"', '2021-10-20', '13:00', '2', 0, 'https://youtu.be/RZc0dfOg-Bc', NULL, NULL, '2021-10-17 14:07:59', '2021-10-17 14:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u062a\\u0639\\u0644\\u0645 \\u0641\\u064a \\u0623\\u064a \\u0648\\u0642\\u062a\",\"en\":\"Learn Anytime\"}', '{\"ar\":\"\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f.\",\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\"}', '1628745446.jpeg', NULL, NULL),
(2, '{\"ar\":\"\\u062f\\u0631\\u0648\\u0633 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a\",\"en\":\"Online Courses\"}', '{\"ar\":\"\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f.\",\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\"}', '1628745462.jpeg', NULL, NULL),
(3, '{\"ar\":\"rgr erf\",\"en\":\"rgt rgf re\"}', '{\"ar\":\"rg rgwe\",\"en\":\"rgt er\"}', '1631354027.jpeg', '2021-09-11 09:53:47', '2021-09-11 09:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `face` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `countryId` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `token` text COLLATE utf8mb4_unicode_ci,
  `device_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `top` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categoryId`, `title`, `icon`, `image`, `slug`, `status`, `top`, `created_at`, `updated_at`) VALUES
(1, 1, 'style2', 'wrwf', 'wfwr', 'style2', 1, 0, NULL, NULL),
(2, 2, 'style2', 'wrwf', 'wfwr', 'style2', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `questionId` bigint(20) UNSIGNED NOT NULL,
  `a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>active 1=>expire',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `dateOfBirth`, `mobile`, `address`, `photo`, `type`, `roles_name`, `Status`, `remember_token`, `expire`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$v8B8idYHemGAR9EflO7MhebBTSKNWhvmQuqpxrQm0lCUFrRRIcm2m', NULL, '023454', 'القاهره', '', 'admin', '[\"owner\"]', 'مفعل', NULL, 1, '2021-01-03 03:43:48', '2021-06-29 05:10:02'),
(2, 'hamada', 'hamada@hamada.com', '$2y$10$bOrXfCIhO5mCFWHeNoPNKuPHfpNxduJn4QDKGuZsnj72RPzSOTZK2', NULL, NULL, NULL, NULL, 'admin', '[\"employee\"]', 'مفعل', NULL, 1, '2021-01-03 07:02:34', '2021-06-29 05:10:02'),
(3, 'Diaa', 'diaa@gmail.com', '$2y$10$Yc7zKvx/Tf9Cc1jb3qhxre9V9KUOV3ntaWRq3J140n8zA.fSpmzeu', '2021-04-18', '0568645742', 'hail', '', 'admin', '[\"Admin\"]', 'مفعل', NULL, 1, '2021-04-17 19:30:44', '2021-06-29 05:10:02'),
(4, 'khalid', 'khalid@gmail.com', '$2y$10$cMTJJhsHX/NiuB/XH5wI8OaGjCi1dOXP0pnMXbU4EvAz8czIt.Yqq', NULL, '0568645742', 'alazeezia', '', 'admin', '[\"Admin\"]', 'مفعل', NULL, 1, '2021-07-01 06:33:56', '2021-07-01 06:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE `user_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_activations`
--

INSERT INTO `user_activations` (`id`, `id_user`, `token`, `created_at`) VALUES
(35, 30, 'S2ryMimijUMi1VlwB1vQjs56nMEOgo', '2021-06-17 11:34:57'),
(36, 31, 'KQkxFltPbRrNbswfBfCBx6uyHPGutd', '2021-06-17 15:28:01'),
(37, 2, 'cYtZgVtXv43ZegiTuQSMipIiTsWJKW', '2021-06-19 06:41:59'),
(38, 3, 'bdmfkDqSkxP9trimfrkmqxVBoVicld', '2021-07-10 06:31:55'),
(39, 4, '0S9cqTRhCeokupDZ4zW6Za21rQPUAS', '2021-07-10 06:34:13'),
(40, 5, 'nPxOXSzkW6NExQpq6wKAFhbOSKHQgh', '2021-07-10 08:58:55'),
(41, 6, 'WbOVmNYRgfzWenpCBpzZuGCBthkbUI', '2021-07-10 08:59:53'),
(42, 7, 'ayZ8RppamnuAWDU7vBoIRgF5CfVk2d', '2021-07-10 09:02:41'),
(43, 32, 'cLjbv4UqdjklMpNaKP4SB9M25OSzAN', '2021-07-10 15:51:20'),
(44, 2, '8taRYZikVYAvvTBfUdq1LTX0xKQDoC', '2021-08-12 13:20:44'),
(45, 3, 'FTPllZEGS1WVsFMA5rcUYHCvouLjHi', '2021-08-12 13:30:26'),
(46, 4, '5X6hqkzJaOdptWrRcDvhYwCtHknEH6', '2021-08-12 13:31:50'),
(47, 5, 'rl9B49qICR0pvvNluasLYwrLnWxBMx', '2021-08-12 13:33:03'),
(48, 6, 'I1kmwdE1aWvutlJ4OeZQYXFuw1ZQw2', '2021-08-12 13:37:31'),
(49, 7, 'yt0jDsKDIyKVnKPsYM5EeRgv6gvO4d', '2021-08-12 13:45:44'),
(50, 8, 'my5cQmYOqHG1Kf2EKuySevOwW6dgTG', '2021-08-12 13:49:52'),
(51, 9, 'Ur6VXeQfKpEsCgNeFIDKvQwemWI09M', '2021-08-12 13:58:40'),
(57, 15, '3rZp2iN7Zfk7pgPpcnExfoqgbb9JFtDL', '2021-09-01 07:57:51'),
(58, 16, 'arA0ChLN1qeyQjTY1JuRbkBgmPbHJNJC', '2021-09-01 08:04:03'),
(59, 17, 'wdkRMYjZqxz2RLTRZ40N31dRnyMC2KRx', '2021-09-01 08:05:23'),
(60, 18, 'RcqSeGHTaXtopT7GnqvbovHqyhvu3hnG', '2021-09-01 08:05:58'),
(61, 20, '7B6TpQh3c3vfJERDtPGtPjk8zqq17l', '2021-09-01 08:23:02'),
(62, 21, 'QckXF0viN5V6hTk5XcCSWgLORhhwTy', '2021-09-01 08:39:02'),
(63, 22, '6zCtszqM5zKuuw0jihaoh3unYxEKVD', '2021-09-01 08:48:13'),
(64, 23, 'hPVk0780sO6HNUerL69ZEOBr74jXSpr9', '2021-09-01 09:53:25'),
(65, 24, 'EjAl2pgHYRPpI5dWubRBT4ut3nsv1PJL', '2021-09-01 10:16:54'),
(66, 25, 'RrtCh9u59w6XJF2PobBNwfA0bctjGF3K', '2021-09-01 10:18:20'),
(67, 26, 'lvaHvNWKwd9eciQMSrevV8buVgJkEBe4', '2021-09-01 10:20:33'),
(68, 27, 'AZQBo15own2OdyEe88khZ3SCgj31t4ly', '2021-09-01 10:21:50'),
(69, 28, 'sQCbvQVXl72Hsiu0ssevkUxI8vnQxrQZ', '2021-09-01 10:25:29'),
(70, 29, 'gXhmzj6KvNuopB09IbLAcz3UMEQIYE2G', '2021-09-01 10:27:59'),
(71, 30, 'o9C46BzdqA2dqpYO9fuAvtMybtIVORbv', '2021-09-01 10:29:32'),
(72, 31, 'fSemSOFt4iCmOyb9oHpi7J4uIrloMzAB', '2021-09-01 10:37:40'),
(73, 32, 't2llKDdAl5ersQbHQbgi7VQm3xZkT2l2', '2021-09-01 10:48:58'),
(74, 33, 'ALtPn0iPaf1ZIfnb0bESeK2NyGhycG1J', '2021-09-01 11:00:22'),
(75, 34, 'pK6tTLWXTR1Gsx4byrbVxy49ZQv6Y35s', '2021-09-01 11:26:08'),
(76, 35, 'tivPx9rtUnSBCSfbY4885zxoRFVNBz1f', '2021-09-01 11:30:07'),
(77, 36, 'ksUbjN9swHPOcsRbA9NpFIr5sbGdXY3O', '2021-09-01 11:30:43'),
(78, 37, 'ZqFsEPujTFwQ4nqOgbA9ePpGNKzmOgKG', '2021-09-01 11:33:05'),
(79, 38, 'Bx2LX7NPn799EFA9Ysw3NlhZ5jP9Kj', '2021-09-01 11:41:40'),
(80, 39, 'q1NRHdQ1xsrcmU2KTXZyeYMzSqKOE5RV', '2021-09-04 09:32:57'),
(83, 42, 'gm316ecXrciO8ehcKfJu1T07X58LnLgB', '2021-09-07 13:18:27'),
(85, 44, 'uEOUVRNwlpVQXiKh4h9yBZp9qxo4aL1g', '2021-09-10 22:17:00'),
(86, 45, 'SWJIYMhNshqAzklOY7Hp1Sdz1jZk37Qh', '2021-09-15 14:25:23'),
(87, 46, 'R96jkEDgqFnsE0losGPLlSpCzex75fbB', '2021-09-16 07:42:01'),
(88, 47, 'wIcqJi61cx9FV9eZmgqoLFChzk9iVc3i', '2021-09-18 04:22:16'),
(89, 48, 'CGb0s1JVEfmU1PfZALop0Cw96bJDDSJy', '2021-09-18 04:23:04'),
(90, 50, 'HgWve1AHRAE4dVXnn14jaeyva9LIyehN', '2021-09-18 04:24:04'),
(91, 51, 'AvjqlwvbbzbowjmbDySEDim04Zt0hlW7', '2021-09-18 04:31:09'),
(92, 52, 'vUbSFxfDWKEGYIzvyRKKxPDl4dxEHOpg', '2021-09-18 04:35:51'),
(93, 53, 'yCc5cUKpAFpH1wgh7yPsAXCcVbXj9q6q', '2021-09-18 04:38:39'),
(94, 54, '2eY1szvz2ElbbVBevehVdNIn2OK192Xc', '2021-09-18 04:39:38'),
(97, 57, '2ZK1vPHkKqxwQAwFjlENhlbFB0y3eCLC', '2021-09-18 05:12:58'),
(98, 58, 'qIOtt5uViGKAl6kehCPbg0ssUG0MosnV', '2021-09-18 05:23:02'),
(106, 66, 'HhETgswsXzsSJm1MgwhEPjCSVx9EcfOj', '2021-10-14 21:15:52'),
(108, 68, 'bqRgXTT2ir6pv3knvbMJBFZyDSOcJLhd', '2021-10-15 08:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `chapterId` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `courseId`, `chapterId`, `name`, `url`, `image`, `created_at`, `updated_at`) VALUES
(8, 20, 8, 'تجربة رقم 1', 'https://youtu.be/5SfmB8xZ4FM', NULL, '2021-10-17 20:07:22', '2021-10-17 20:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  `total` float DEFAULT '0',
  `waitingValue` float DEFAULT '0',
  `approvValue` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `userId`, `studentId`, `total`, `waitingValue`, `approvValue`) VALUES
(138, 31, NULL, 0, 0, 0),
(139, 32, NULL, 0, 0, 0),
(140, 1, NULL, 0, 0, 0),
(141, 2, NULL, 0, 0, 0),
(142, 3, NULL, 0, 0, 0),
(143, 4, NULL, 0, 0, 0),
(144, 5, NULL, 0, 0, 0),
(145, 6, NULL, 0, 0, 0),
(146, 7, NULL, 0, 0, 0),
(147, 8, NULL, 0, 0, 0),
(148, 9, NULL, 0, 0, 0),
(149, 10, NULL, 0, 0, 0),
(150, 11, NULL, 0, 0, 0),
(151, 12, NULL, 0, 0, 0),
(152, 13, NULL, 0, 0, 0),
(153, 14, NULL, 0, 0, 0),
(154, 19, NULL, 0, 0, 0),
(155, 20, NULL, 0, 0, 0),
(156, 21, NULL, 0, 0, 0),
(157, 22, NULL, 0, 0, 0),
(158, 38, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_courseid_foreign` (`courseId`),
  ADD KEY `answers_questionid_foreign` (`questionId`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banks_userid_foreign` (`userId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_bookid_foreign` (`bookId`),
  ADD KEY `carts_userid_foreign` (`userId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapters_courseid_foreign` (`courseId`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_categories_categoryid_foreign` (`categoryId`),
  ADD KEY `child_categories_subcategoryid_foreign` (`subCategoryId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_userid_foreign` (`userId`);

--
-- Indexes for table `courses_joined`
--
ALTER TABLE `courses_joined`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degrees_courseid_foreign` (`courseId`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_email_unique` (`email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languagess`
--
ALTER TABLE `languagess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lives`
--
ALTER TABLE `lives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`(191),`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_courseid_foreign` (`courseId`),
  ADD KEY `orders_userid_foreign` (`userId`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_courseid_foreign` (`courseId`),
  ADD KEY `payments_userid_foreign` (`userId`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_courseid_foreign` (`courseId`),
  ADD KEY `questions_userid_foreign` (`userId`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_courseid_foreign` (`courseId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `socials_userid_foreign` (`userId`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_categoryid_foreign` (`categoryId`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_courseid_foreign` (`courseId`),
  ADD KEY `topics_questionid_foreign` (`questionId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activations_id_user_foreign` (`id_user`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_courseid_foreign` (`courseId`),
  ADD KEY `videos_chapterid_foreign` (`chapterId`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_courseid_foreign` (`courseId`),
  ADD KEY `wishlists_userid_foreign` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `courses_joined`
--
ALTER TABLE `courses_joined`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languagess`
--
ALTER TABLE `languagess`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lives`
--
ALTER TABLE `lives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_questionid_foreign` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banks`
--
ALTER TABLE `banks`
  ADD CONSTRAINT `banks_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_bookid_foreign` FOREIGN KEY (`bookId`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD CONSTRAINT `child_categories_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `child_categories_subcategoryid_foreign` FOREIGN KEY (`subCategoryId`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `degrees`
--
ALTER TABLE `degrees`
  ADD CONSTRAINT `degrees_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `socials`
--
ALTER TABLE `socials`
  ADD CONSTRAINT `socials_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `topics_questionid_foreign` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_chapterid_foreign` FOREIGN KEY (`chapterId`) REFERENCES `chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `videos_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_courseid_foreign` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
