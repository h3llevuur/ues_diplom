-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 16 2022 г., 18:03
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ues`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `img`, `description`, `created_at`, `updated_at`) VALUES
(1, 'О компании', 'images/about/first.jpg', 'Основные направления деятельности:\r\n\r\nПроектирование и адаптация проектов;\r\nЭлектромонтажные работы на коммерческих и промышленных объектах, в индивидуальных жилых домах и комплексах;\r\nУслуги по эксплуатации, техническому обслуживанию, текущему и аварийному ремонту;\r\nПроведение пусконаладочных работ и сдача объектов в эксплуатацию.\r\nНаши приоритеты:\r\nКачественное и профессиональное выполнение принятых на себя обязательств.', NULL, NULL),
(2, 'Почему мы?', 'images/about/second.jpg', 'Компания ООО «УЭС» основана в 2014 году, несмотря на это наш коллектив сплоченно трудится с 2011 года. За это время мы принимали участие в строительстве  и реконструкции многих промышленных и гражданских объектов. С каждым годом ООО «УЭС» расширяет спектр предоставляемых услуг и является динамично развивающейся компанией в сфере энергетики.', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `applications`
--

CREATE TABLE `applications` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `img`) VALUES
(1, 'ПАО «Вымпелком»', 'images/clients/vimpel.jpg'),
(2, 'ООО «ЗапСибНефтеХим»', 'images/clients/ZapSibNeft.jpg'),
(3, 'ООО «ЧЗЭО»', 'images/clients/ChZEO.jpg'),
(4, 'Российский филиал ООО «Китайская национальная химико-инженерная строительная компания №7»', 'images/clients/china.png');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_work` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `number`, `address`, `time_work`, `created_at`, `updated_at`) VALUES
(1, '+7(351)272-04-57', 'г. Челябинск,\r\nул. Энгельса, д. 44', 'Пн-Пт 08.00 - 17.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_22_104128_create_vacancies_table', 2),
(6, '2022_03_22_113818_add_columns_to_vacancies', 3),
(7, '2022_03_23_091827_create_contacts_table', 4),
(8, '2022_03_26_091951_create_teams_table', 5),
(9, '2022_03_30_131638_add_columns_to_teams', 6),
(10, '2022_04_01_045059_create_projects_table', 7),
(11, '2022_04_04_044101_create_applications_table', 8),
(12, '2022_04_05_172433_create_news_table', 9),
(13, '2022_04_07_092835_create_abouts_table', 10),
(14, '2022_04_07_094540_add_colums_to_users', 10),
(15, '2022_05_30_173622_create_clients_table', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Компания ООО «УЭС» переезжает в новый офис', '2022-04-05 17:32:02', '2022-04-05 17:32:14', 'В феврале 2020 года компания ООО «УЭС» переезжает в новый офис, расположенный по адресу: г. Челябинск, Центральный район, ул. Энгельса, д. 44.'),
(2, 'Компания вступает в СРО проектировщиков', '2022-04-05 17:33:23', '2022-04-05 17:33:23', 'В январе 2020 года наша компания вступила в СРО проектировщиков.'),
(3, 'Ввод в эксплуатацию наружного освещения ОЗХ на площадке строительства «ЗАПСИБНЕФТЕХИМ»', '2022-04-05 17:33:37', '2022-04-05 17:33:37', 'В ноябре 2019 г года произведен ввод в эксплуатацию наружного освещения ОЗХ на площадке строительства «ЗапСибНефтехим».'),
(4, 'Открытие Амурского подразделения ООО «УЭС»', '2022-04-05 17:33:37', '2022-04-05 17:33:37', 'В августе 2019 года состоялось открытие обособленного подразделения ООО «УЭС», расположенного в г. Свободный, Амурская область.');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('gert0240@gmail.com', '$2y$10$2sa.z9QomKnVCP3N5kZyYua3pbTgNqMdrIX6LLo4fhJQOuxre1UUG', '2022-04-28 03:35:26');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Работы по прокладке КЛ-0,4КВ для ООО «ЗАПСИБНЕФТЕХИМ»', 'Комплекс строительно-монтажных работ по прокладке КЛ-0,4кВ, устройству заземления и фундаментов под опоры освещения, установке осветительного оборудования на объекте: «Западно-Сибирский комплекс глубокой переработки углеводородного сырья (УВС) в полиолефины мощностью 2,0 млн. тонн в год с соответствующими объектами общезаводского хозяйства (ОЗХ). Вертикальная планировка и благоустройство объектов подсобного и обслуживающего назначения», расположенном по адресу: Россия, Тюменская область, г. Тобольск, Промзона-Восточный промышленный район, квартал 9. Заказчик ООО «ЗапСибНефтехим».', '../images/projects/project1.jpg', NULL, '2022-04-07 09:09:40'),
(2, 'Монтаж системы электроснабжения в трубосварочном цехе для АК «ЯМАТА ЭНДЮСТРИЙЕЛ»', 'Проектирование и монтаж системы электроснабжения, электроосвещения и вентиляции на объекте «Трубосварочный цех», расположенного по адресу: Россия, Тюменская область, г. Тобольск, Промзона-Восточный промышленный район, квартал 9. Заказчик АК «Ямата Эндюстриел Прожелер Иншаат Тааххют ве Тиджарет Аноним Ширкети».', 'images/projects/project2.jpg', NULL, NULL),
(3, 'Наружное освещение ОЗХ для ООО «ЗАПСИБНЕФТЕХИМ»', 'Комплекс строительно-монтажных работ по  установке опор освещения, прокладке ВЛ-0,4кВ, устройству заземления на объекте: «Западно-Сибирский комплекс глубокой переработки углеводородного сырья (УВС) в полиолефины мощностью 2,0 млн. тонн в год с соответствующими объектами общезаводского хозяйства (ОЗХ). Наружное освещение ОЗХ. Участки 1,2,3,4» расположенном по адресу: Россия, Тюменская область, г. Тобольск, Промзона-Восточный промышленный район, квартал 9. Заказчик ООО «ЗапСибНефтехим».', 'images/projects/project3.jpg', NULL, NULL),
(4, 'Наружное освещение объездной дороги для «ТРЕСТ ЗАПСИБГИДРОСТРОЙ»', 'Работы по монтажу наружного освещения объездной дороги возле станции Денисовка, устройство периметрального освещения факельного хозяйства, устройство сетей электроснабжения КНС на объекте: «Западно-Сибирский комплекс глубокой переработки углеводородного сырья (УВС) в полиолефины мощностью 2,0 млн. тонн в год с соответствующими объектами общезаводского хозяйства (ОЗХ)» по адресу Тюменская область, г. Тобольск. Заказчик «Трест Запсибгидрострой».', 'images/projects/project4.jpg', NULL, NULL),
(5, 'Монтаж ЦРП 6/0,4/1250 аглофабрики для АО «САТКИНСКИЙ ЧУГУНОПЛАВИЛЬНЫЙ ЗАВОД»', 'Реконструкция РУ 6кВ п/ст «Шахтная» и существующих ВЛ-6кВ. Разработка проектно-сметной и рабочей документации. Монтаж сетей внешнего электроснабжения 6кВ (ВЛ, КЛ), монтаж ЦРП 6/0,4/1250, монтаж сетей внутреннего электроснабжения и электроосвещения аглофабрики. Заказчик АО «Саткинский чугуноплавильный завод».', 'images/projects/project5.jpg', NULL, NULL),
(6, 'Электромонтажные работы на ЗапСибНефтеХим для АК «ЯМАТА ЭНДЮСТРИЕЛ»', 'Комплекс электромонтажных работ по установке КИПиА, допроектирование вторичных кабельных трасс, кабелей КИПиА и питания светильников, разработка ППРК, ППР и технологических карт, предпусковые наладочные работы на объекте «Западно-Сибирский комплекс глубокой переработки углеводородного сырья (УВС) в полиолефины мощностью 2,0 млн. тонн в год с соответствующими объектами общезаводского хозяйства (ОЗХ). Установка пиролиза ЭП-1500», расположенном по адресу: Россия, Тюменская область, г. Тобольск, Промзона-Восточный промышленный район, квартал 9. Заказчик АК «Ямата Эндюстриел Прожелер Иншаат Тааххют ве Тиджарет Аноним Ширкети».', 'images/projects/project6.jpg', NULL, NULL),
(7, 'Электромонтажные работы на газоперерабатывающем заводе для ООО «РЕНЕЙССАНС ХЭВИ ИНДАСТРИС»', 'Комплекс электромонтажных и КИПиА работ, допроектирование вторичных кабельных трасс, кабелей КИПиА и питания светильников, разработка ППРК, ППР и технологических карт, предпусковые наладочные работы на объекте: «Амурский газоперерабатывающий завод. Этап 4. Газоперерабатывающий завод. ФАЗА 1. Технологическая линия №1. Объекты общезаводского хозяйства. Товарно-сырьевая база. Межпарковые эстакады ТСБ». Заказчик ООО «Ренейссанс Хэви Индастрис».', 'images/projects/project7.jpg', NULL, NULL),
(8, 'Международный аэропорт Челябинск (Баландино) для ООО «ЧЗЭО»', 'Комплекс строительно-монтажных работ по установке ЦРТП, устройству внеплощадочных сетей электроснабжения 10кВ на объекте: «Новый аэровокзальный комплекс внутренних/международных воздушных линий Международного аэропорта Челябинск (Баландино). 1-я очередь, терминал внутренних воздушных линий». Заказчик ООО «ЧЗЭО».', 'images/projects/project8.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `position`, `name`, `email`, `created_at`, `updated_at`, `img`) VALUES
(1, 'Директор', 'Петухов Олег Викторович', 'petukhov@ues-energo.ru', NULL, NULL, 'images/team/director.svg'),
(2, 'Заместитель Директора', 'Горбунов Алексей Геннадьевич', 'gorbunov@ues-energo.ru', NULL, '2022-04-07 15:16:02', '../images/team/deputy_director.svg'),
(3, 'Заместитель Директора по качеству\r\n', 'Евчев Максим Сергеевич', 'evchev@ues-energo.ru', NULL, NULL, 'images/team/quality_director.svg'),
(4, 'Главный бухгалтер', 'Рогожникова Елена Вячеславовна', 'rogozhnikova@ues-energo.ru\r\n', NULL, NULL, 'images/team/accountant.svg'),
(5, 'Начальник ЭТЛ', 'Асватов Виталий Альбертович', 'asvatov@ues-energo.ru', NULL, NULL, 'images/team/director_etl.svg'),
(6, 'Начальник ПТО', 'Ничушкин Илья Иванович', 'nichushkin@ues-energo.ru', NULL, NULL, 'images/team/director_etl.svg'),
(7, 'Начальник сметно-договорного отдела', 'Холодилина Мария Михайловна', 'holodilina@ues-energo.ru', NULL, NULL, 'images/team/agreement.svg'),
(8, 'Инспектор по кадрам', 'Замащикова Полина Олеговна', 'zamashchikova@ues-energo.ru', NULL, NULL, 'images/team/human_department.svg'),
(9, 'Бухгалтер', 'Кадырова Нэля Наилевна', 'kadyrova@ues-energo.ru', NULL, NULL, 'images/team/accountant.svg'),
(10, 'Заместитель Директора по производству (Амурское подразделение)', 'Яровенко Антон Анатольевич', 'yarovenko@ues-energo.ru', NULL, NULL, 'images/team/deloproiz.svg'),
(11, 'Руководитель проекта (Амурское подразделение)', 'Нафиков Равиль Вафыевич', 'nafikov@ues-energo.ru', NULL, NULL, 'images/team/project_manager.svg'),
(12, 'Начальник службы контроля качества (Амурское подразделение)', 'Луненко Евгений Александрович', 'lunenkoea@ues-energo.ru', NULL, NULL, 'images/team/quality_director.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'admin', 'gert0240@gmail.com', NULL, '$2y$10$2reJ5a1OrKDzMyCvobHZ...LAlScMu8ZWRfJOXvojoXgdi2B.rY6.', 'GD94I67BpfWJdQpSSgfBGTgSFpyEZeyJ6NEyxTTZ2aTd1LMPWuAuiQ0jFrAK', '2022-04-07 05:24:42', '2022-04-07 05:24:42', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `vacancies`
--

CREATE TABLE `vacancies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `practice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `vacancies`
--

INSERT INTO `vacancies` (`id`, `name`, `practice`, `duties`, `request`, `terms`, `created_at`, `updated_at`, `img`) VALUES
(1, 'ИНЖЕНЕР-ПРОЕКТИРОВЩИК', 'Требуемый опыт работы: 1–3 года\r\nПолная занятость, полный день', 'Проектирование внутренних сетей электроснабжения 0,4 кВ, наружных сетей электроснабжения 0,4 - 10,0 кВ, наружного освещения (разработка проектной документации по разделам ЭС,ЭМ,ЭО, ЭН, АК);\r\nрасчеты нагрузок ;\r\nпроработка технических решений при разработке реконструкции объектов;\r\nподготовка заданий смежным разделам;\r\nВыполняет задания по проектированию\r\nУчаствует в разработке проектной документации\r\nУчаствует в сборе исходных данных\r\nОбеспечивает соответствие разрабатываемых проектов и технической документации стандартам, техническим условиям и другим нормативным документам по проектированию и строительству, а также заданию на их разработку.', 'Высшее образование, «Электроснабжение».\r\nЗнания методов проектирования и проведения расчетов, принципов работы, технологии монтажа оборудования и конструкций, видов и свойства материалов, технических средств проектирования и строительства.\r\nУверенный пользователь программных комплексов Автокад,', 'Заработная плата состоит из окладной части и премии. Окладная часть по результатам собеседования;\r\nЕжегодный оплачиваемый отпуск;\r\nОфициальное трудоустройство (все гарантии по ТК РФ)\r\nПеречисление зарплаты на карту сбербанка, своевременная заработная плата 2 раза в месяц', NULL, NULL, 'images/vacancies/engineer.png'),
(2, 'ЭЛЕКТРОМОНТАЖНИК', 'от 60 000 руб. на руки\r\nТребуемый опыт работы: 1–3 года\r\nПолная занятость, Вахтовый метод', 'Выполнение работ средней сложности по монтажу вторичных цепей.\r\nСоединение, оконцевание и присоединение проводов,жил кабелей всех марок сечением до 240 мм 2 всеми способами.\r\nУстановка муфт соединительных и промежуточных.\r\nПрипайка или опрессовка наконечников к жилам кабелей и проводов.\r\nПрокладка кабельных лотков и перфорированных монтажных профилей.', 'Опыт работы от 1 года (желательно строительство подстанций)\r\nНаличие документа, подтверждающего квалификацию электромонтажника (по силовым сетям, по освещению и осветительным сетям, по распределительным устройствам, по кабельным сетям)\r\nЗнание основ устройства монтируемого электрооборудования, способы измерения сопротивления изоляции.\r\nЗнание способов соединения, оконцевания и присоединения жил кабелей всех марок сечением до 240 мм2, способов маркировки кабелей.', 'Вахтовый метод или переезд в Амурскую область г. Свободный.\r\nРабота на объектах ПАО \"Газпром\" и \"СИБУР Холдинг\".\r\nОфициальное трудоустройство (все гарантии по ТК РФ)\r\nКорпоративная связь.\r\nТрехразовое питание.\r\nПеречисление зарплаты на карту сбербанка,своевременная заработная плата 2 раза в месяц.\r\nПроезд и проживание за счет организации.', NULL, NULL, 'images/vacancies/electromontage.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
