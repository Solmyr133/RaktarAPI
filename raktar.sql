-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 11:08 AM
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
-- Database: `raktar`
--
CREATE DATABASE IF NOT EXISTS `raktar` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `raktar`;

-- --------------------------------------------------------

--
-- Table structure for table `beszallitok`
--

CREATE TABLE `beszallitok` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `beszallitok`
--

INSERT INTO `beszallitok` (`id`, `name`) VALUES
('03c4843e-0bd2-43ab-ba01-c0d07cc78a8e', 'Renner-Durgan'),
('046602b4-62ae-4d83-9c8b-400144053474', 'Bartell Group'),
('066ba1ac-6415-4674-b38e-e41d07bfe454', 'Fritsch and Sons'),
('067f3d29-ab19-48c9-b35d-b505bd06b3f5', 'Hammes-Glover'),
('07eb1006-1edc-4ebf-b595-e7da10eff8bf', 'VonRueden, Gerhold and Barrows'),
('0a06840e-d299-4105-8f69-c4df7b7469e2', 'Becker-Hermiston'),
('0d61debe-416a-4fba-8349-ac8fac28175b', 'Boyle, Hammes and Schimmel'),
('0ea94ec0-19db-4f04-b0d5-748f9e8467f4', 'Braun Inc'),
('0ebb760b-07f9-4eb8-9b87-14518f2d6c69', 'Dare LLC'),
('0f8b3622-822c-482e-beb3-435eba9bffc6', 'Bauch, Schmidt and Lesch'),
('11b7a526-c53c-4009-b73a-4b04b7728b59', 'Kling, Upton and Carter'),
('12cd89c1-cca5-4ad8-8b3e-c30fce2b2198', 'Goyette-Wiegand'),
('13e8c60f-8523-44a7-a6d6-5968f08c1984', 'Moen, Langworth and Hoeger'),
('17b01eb4-1cf6-427c-a259-1d238aa30be3', 'Gutmann-Ritchie'),
('17d4bbd2-52d5-4b17-b64a-b1327df15fe1', 'Huels LLC'),
('1a634dd1-71ca-4548-bc94-b7b07ec462f7', 'Hane-Gislason'),
('223185a9-e327-4629-afb0-671ae0effe35', 'Cummings, Crona and Miller'),
('29c00fe2-e760-4cc9-8a7a-9923cb201f78', 'Gottlieb, Nader and Schimmel'),
('2b0d1159-d491-4f5e-9290-5aff6b2b5649', 'Hansen-Tillman'),
('2b629347-a5e5-4438-87c7-6310533c4745', 'Emard and Sons'),
('2d638e3f-2af8-4c13-8b51-6e73625f6bf5', 'Kassulke Inc'),
('309e74b2-1086-4c49-b0df-54dacdb0f56d', 'Muller, Pouros and Cummings'),
('30a0a42d-d33d-419f-bdb7-f88dac4e88f3', 'Kunze, Beer and Veum'),
('32d7beb5-a819-44d0-b455-459d2c9e6caa', 'Kiehn-Jerde'),
('336f5073-6cb7-4f2d-9255-c1f801ee5d32', 'Waelchi-Schinner'),
('33c35c65-abd2-43e6-a183-26b713585bba', 'Cummings-Frami'),
('4002c541-3ba5-4656-8b06-2c64898054be', 'Wisoky-Conn'),
('447a9e33-ae37-4708-8549-018b4935f45f', 'Kihn-Nader'),
('455e1081-b632-4955-b3d6-fbef8efdb731', 'Witting-Herzog'),
('45d20f70-dbe3-4baf-a99d-5edf9ce28e6b', 'Keeling, Will and Kuhlman'),
('47552cd3-a5ae-4349-a48a-f3336b01c734', 'Volkman, Harvey and Jacobson'),
('48a9b886-1629-4e48-8fed-82345f49b197', 'Corkery-Kertzmann'),
('4a20f8db-3c0a-40de-8f51-c70a8cdb8efa', 'Kris Group'),
('4a26f2a0-be57-4465-9e76-eceed75ed8a5', 'Champlin LLC'),
('4bcb5bcc-d43b-42d7-9847-6be1d26f3514', 'Greenfelder-Nitzsche'),
('4c984f28-7f15-4fb2-9baf-72fc98ccdbc8', 'Upton-Cronin'),
('4de4f048-6cd2-4607-8f88-77c6c790902d', 'Doyle Group'),
('50275db0-ad7a-4a06-9334-c1255f44f7e3', 'Cruickshank, Ortiz and Feeney'),
('50bb295f-9402-4756-97eb-2894745a1c4a', 'Zboncak, O\'Hara and Nolan'),
('51b65906-ae7a-4547-9689-ec7702951c42', 'Cremin-Johns'),
('5dc3b3c0-4ffa-4d46-95db-15b12104ddad', 'Lindgren and Sons'),
('5fe83e02-ed6c-4263-b0ff-15b2e3d8bb85', 'Lang, Parisian and Jacobson'),
('61eb4741-b007-409e-abd4-7921398a6dce', 'Veum, Robel and Wolff'),
('639d2ba4-3463-4576-af83-17c78de4821d', 'Price and Sons'),
('688618bc-5fab-4a62-8d0b-ba040f68720a', 'Senger, Cruickshank and Crooks'),
('6f57039a-8afc-4193-9090-cf1db162a887', 'Hane-Bechtelar'),
('73e67221-98da-4f9d-8992-f4b14388ea76', 'Pollich-Schultz'),
('7964363b-a75c-4284-bb82-2440018781fd', 'Bernhard, Johnson and Reilly'),
('7b3f9ed2-bee5-4281-9d2a-1796a47363d1', 'Donnelly Inc'),
('7bf4ee5e-31c9-48bd-b3b4-3698aa237899', 'Willms LLC'),
('80b38886-23ae-4eaa-a8ff-a1e030720847', 'Wintheiser and Sons'),
('8267425f-5dda-48ea-a9f0-046e97479847', 'Tremblay, Bins and Schoen'),
('869cd6d7-75e7-4b51-a118-3d8ca851dc96', 'Aufderhar and Sons'),
('87311aae-9393-4134-8081-cb72486ea11a', 'Koss, Kuhlman and Abbott'),
('8780e91e-c856-4365-9d2d-d939b2986f5c', 'Goyette and Sons'),
('894b0848-0a15-478b-8a24-6393f38d56d4', 'Bailey, Price and Pollich'),
('8d171d77-4927-4d92-af8a-ec79be3c8cab', 'Cronin Group'),
('95fde18b-6ff2-46b3-9ba4-285285dcb8ef', 'Waelchi, D\'Amore and Schinner'),
('97b446ad-a40c-41c4-a002-f3957c60f84e', 'Becker-Shanahan'),
('9d647fae-ded1-44f8-acd6-9d3f8b9abbed', 'Morar, Balistreri and Nitzsche'),
('a5a88275-b39e-44dd-bee4-3d693670d1a9', 'Koepp-Glover'),
('a5cc35d6-ae49-40d4-977a-bc28a32d7e19', 'Streich-Swift'),
('a844b89d-bcef-41a0-bebf-2289b81b543c', 'Schuppe LLC'),
('a8ffe721-2e32-499e-8f4b-72e5dbcfaf89', 'Wiegand, Kovacek and Auer'),
('ad11c864-b4b2-4281-bba4-d8a85cd995d9', 'Kohler, Hilpert and Nienow'),
('ada5000a-c861-407f-bee6-e9f4cfd8ddcf', 'Kirlin Inc'),
('af934aa6-9fc7-4fab-af43-c3ccb770cafe', 'Gulgowski LLC'),
('af9660d7-d478-4e11-8558-418c785f9ee1', 'Ernser LLC'),
('afea235e-323a-4557-b15e-482467ba8e80', 'Keebler LLC'),
('b8c858e5-4e9f-47d9-bc34-6ae7fc760122', 'Kuphal, Bins and Lakin'),
('bde878a9-d501-4ac5-b8c9-4176b24e6225', 'Zieme-Kub'),
('bf0499b4-9979-4080-9557-2f153064708b', 'Hoeger, Jacobson and Hermiston'),
('c12275e3-d067-4e9b-ad0f-d2095ec81ca3', 'Bosco LLC'),
('c243536a-dbe1-4b33-87bf-2eb5cae6439f', 'Ritchie LLC'),
('c287c728-4a29-4fd0-b469-5e6f988b29ca', 'Hyatt-Heaney'),
('c3fde840-d142-4b20-8331-8da86b68d05a', 'Stanton and Sons'),
('c99a9941-1730-4ee4-ace3-43a714db0e5e', 'VonRueden, Macejkovic and Kilback'),
('d02efbb8-e1c9-45d2-bbbd-fbf18793f8cb', 'Wilderman-Considine'),
('d6660278-0511-42bc-8c62-9e15a8ceec22', 'Legros and Sons'),
('d6d3da10-8140-47dc-93bd-f294bdcaeb5f', 'Stroman Inc'),
('da923062-f416-4015-9537-f59f93430727', 'Welch Group'),
('dd7ed9b5-9514-4b6c-8ab2-24566cd134ad', 'Nienow-Hagenes'),
('de48bba4-a105-49b0-8ab4-0111d3c035aa', 'Dooley, Cremin and Beatty'),
('df683c14-7687-4afc-9b15-0205edbc39b8', 'Emard-Lang'),
('e1a48c65-43b2-4a1f-b051-189ce20dece4', 'Huel LLC'),
('e49c82da-1614-4fb5-b9f6-27bd4a6d065b', 'Kessler, Bogan and Cartwright'),
('e663e084-f12b-417d-ae96-278f65bc7c6c', 'McGlynn, Harris and Mraz'),
('e8805abe-81bc-4089-84cd-d9a268eb7316', 'Boyle, Klein and Kessler'),
('eaeaaf89-5145-4cc1-b88e-9a025343b530', 'Kulas-Romaguera'),
('eb9088e8-4543-4f69-bae8-cee780b9eec0', 'Yost, Rohan and Halvorson'),
('eb9fd8fc-464e-4696-9e50-c32297148928', 'O\'Keefe-Tromp'),
('eda28047-b7d9-4d5a-b736-ff0372b0eb58', 'Leannon, Doyle and Kozey'),
('ee60b080-4db2-4b88-8c7e-c2120cee6b42', 'Runolfsdottir Inc'),
('ef77adda-c955-4f3d-8cde-360e2d212dc4', 'Effertz-Dach'),
('f0b51d74-def4-43b3-a8a8-de2f02362835', 'Graham, Stroman and Ondricka'),
('f9680c96-a16d-4e85-b220-5b9f6b75998e', 'Bradtke LLC'),
('fc1f4d2a-fc46-4703-af47-fb5dd208ebfa', 'Funk-Marks'),
('fed3e8b2-a1fb-408b-8d84-318afe3c88cb', 'Okuneva Inc'),
('fee5c9b9-3f99-4bf1-8d3e-ca9b9e2ddb3c', 'Lind-Beahan'),
('ffb70db3-8692-422b-ae6b-dfb6a46f9e72', 'Quigley Inc');

-- --------------------------------------------------------

--
-- Table structure for table `termekek`
--

CREATE TABLE `termekek` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `termekek`
--

INSERT INTO `termekek` (`id`, `name`) VALUES
('01761771-6fe4-459d-9518-a62f16075aac', 'Pork - Bacon,back Peameal'),
('01e31b38-2b65-4a62-afb5-b2e8f26f8542', 'Bread - Rye'),
('037764bb-4743-4575-ba8a-e97302c6b649', 'Quail - Eggs, Fresh'),
('06fac3e1-45a1-4bce-97f1-432f2af4c066', 'Papadam'),
('095bedb1-cd89-4e36-992b-ed39f908111a', 'Pork - Sausage Casing'),
('0a8e780c-ef94-4410-980b-cb5e22f46e88', 'Soup - Boston Clam Chowder'),
('1404301b-f039-48a2-a79f-3d34d7404662', 'Nut - Pecan, Halves'),
('154d6ac0-1cd6-4715-ad5f-ef83af60787b', 'Arctic Char - Fillets'),
('15ad01a9-e301-41f2-a973-909ba307b431', 'Nut - Walnut, Chopped'),
('17d89f03-79d6-4c1b-8a97-3207d48ca410', 'Soup - Campbells Bean Medley'),
('1c2ce646-f582-4698-a2c0-e4ec14bd955b', 'Monkfish Fresh - Skin Off'),
('1e6a816e-f3ae-49a1-a8b6-1829e5ba1e88', 'Blackberries'),
('1fe79b7c-4f39-4512-9a72-815505bed451', 'Bar Mix - Lemon'),
('239c6d50-4bfd-471d-8a70-bd1f9fb2569c', 'Artichoke - Hearts, Canned'),
('25035ca7-2aab-45f0-a1ce-6f2894c583d2', 'Artichoke - Bottom, Canned'),
('251b7fb2-4665-4b29-8a0c-bc85203887ce', 'Tomatoes - Cherry, Yellow'),
('32281d1e-cbe1-489c-a6fe-29dc11e6a93a', 'Juice - Clam, 46 Oz'),
('3434cf09-f49a-4088-a86a-5a545693c906', 'Lobster - Live'),
('36ac1ae1-f1c1-4d60-a6dd-8903858ec984', 'Beer - Paulaner Hefeweisse'),
('3847879c-7a68-4bea-ab30-4f129f8273a3', 'Juice - V8, Tomato'),
('3a0f9b6d-9ee7-4af7-910b-788c07dacc39', 'Versatainer Nc - 8288'),
('3cea6ac0-d6bc-42ed-8b41-8da30fd72ab3', 'Wine - Red, Harrow Estates, Cab'),
('3e2bb1cf-e167-439a-b821-5a14383ec3b4', 'Carbonated Water - Blackcherry'),
('3fd14005-fbf9-428d-830f-3f5540ddb980', 'Wine - Remy Pannier Rose'),
('4491ee6e-d5d5-4a3f-8813-dc8678bb0dc3', 'Cheese - Cream Cheese'),
('44b7dff2-b512-4ea6-9185-43cfb5fd2ce0', 'Wine - Pinot Noir Stoneleigh'),
('4921f0af-676a-4f3c-b58e-c4518c787585', 'Cumin - Ground'),
('49aea2a4-9aa1-48d8-98d6-24e5c3dfc264', 'Mix - Cocktail Strawberry Daiquiri'),
('4a0bf425-6dae-4bdd-bbdc-64866902b9d6', 'Chicken Giblets'),
('4b8d77b7-13bd-4d8f-b9ee-2ba34658707a', 'Pasta - Penne Primavera, Single'),
('50bb6cd3-9428-494f-8233-5a9ba5bb5abc', 'Wine - Beringer Founders Estate'),
('52bd3823-50c4-4e39-8276-2b6f35c1546b', 'Longos - Grilled Veg Sandwiches'),
('53875a19-13f2-40c1-ae05-57fef7a96f11', 'Cake - Pancake'),
('5387d933-eee8-4bf6-b8cb-d64d9fa9556f', 'Beans - Fava Fresh'),
('57436e1b-6793-48db-92ea-7e3c22e1d6a1', 'Cake - Night And Day Choclate'),
('5984871b-711b-4d01-959b-d647793e8d38', 'Longos - Cheese Tortellini'),
('599c51d8-6ed0-48a6-b3c5-083c4c214b88', 'Beer - Creemore'),
('5f4a9f19-5f17-448f-932f-38e270c7f1df', 'V8 Splash Strawberry Banana'),
('61578fa0-237f-4b91-85d7-74ad6d62ab7c', 'Pork - Backfat'),
('634a5594-1efa-4d4b-adec-d117d14c3676', 'Carbonated Water - Strawberry'),
('64eca240-92fc-449f-8412-a943fe22b36d', 'Mace'),
('657306a2-62e9-4bda-b82a-43f0e0938ca0', 'Bag Stand'),
('67dd5a32-e8b7-4670-93fe-62fa2fd87760', 'Bread - Hamburger Buns'),
('68871580-53d0-42a3-8ed7-354094195cee', 'Flour - Whole Wheat'),
('6ba86547-efd1-404e-8f5a-eebb81198150', 'Pasta - Tortellini, Fresh'),
('6cb4bcbb-b313-4bb2-8809-711156d7366d', 'Glass - Wine, Plastic, Clear 5 Oz'),
('70f36c01-1530-4ab0-8a54-fc56cd6f372e', 'Sea Bass - Fillets'),
('72747590-4b3c-4239-92e3-252ac153496f', 'Lettuce - Romaine, Heart'),
('76899de9-3248-490c-b866-7942b12e33c0', 'Soup - Campbells, Butternut'),
('7a8dcb53-bb6f-4079-b3b0-178cb9af0520', 'Lettuce - Boston Bib - Organic'),
('7aa7d005-166f-4e46-802a-877011ed81f2', 'Bacardi Raspberry'),
('7b262f67-71fa-41ae-b023-b04563871bff', 'Iced Tea Concentrate'),
('7c66da7e-beb8-43b6-b12b-f31c619d1627', 'Pork - Smoked Back Bacon'),
('7de9e966-252c-4d42-b3ca-9d990deb4a89', 'Juice - Tomato, 10 Oz'),
('7f6f743d-b13d-422c-9a93-5cca7e6b45de', 'Oil - Hazelnut'),
('81106339-e621-470e-a7c5-c31791a18087', 'Pan Grease'),
('8e99017e-b4db-48dd-a07c-a5db1be2f38e', 'Ginger - Fresh'),
('8f578007-fd5a-41c5-bac2-43bc74cfd5b9', 'Bagels Poppyseed'),
('8ff0a83a-9273-4c72-88ce-6284f3f59b83', 'Beer - Labatt Blue'),
('8ff84266-3a0b-4585-8f9b-6a9cbe01ce50', 'Flower - Potmums'),
('93d25dbd-5878-4941-b32e-50bf80a08cb5', 'Pepper - Cayenne'),
('9571c81c-4880-46e1-a6c7-1cf23e954850', 'Mustard - Dry, Powder'),
('978c63dd-5a5c-4651-81df-798e7f73f258', 'Pie Shell - 9'),
('99da1e4d-77ea-4db5-b54e-0b9ce287ec8b', 'Lady Fingers'),
('9abb8c43-0d15-4a01-90b6-4d421e7a45fb', 'Artichokes - Jerusalem'),
('9bc38139-0725-46ab-8026-9b72ec2a76c1', 'Red Snapper - Fresh, Whole'),
('9db6a417-a793-43bb-bf1a-3594c63a2eb7', 'Vinegar - Champagne'),
('a3258e7d-4e4a-4df3-ae9e-063c5a4ba86d', 'Glove - Cutting'),
('a41319f5-581f-48f9-b3be-eb27790d3d22', 'Water - Spring Water 500ml'),
('a45c48d9-7a64-4c28-9347-223203f6b5cc', 'Rice - Brown'),
('a588cb38-011a-4bc9-b93a-167c83efa3a4', 'Cheese - Shred Cheddar / Mozza'),
('a64eabf8-add9-4ded-bc8e-30d0d0bfaa2c', 'Oil - Macadamia'),
('ad5ffe69-d9a0-4bdb-aeba-1ec6788a2451', 'Beets'),
('b073b66f-0bc8-4203-b2e4-87073a654eff', 'Sour Cream'),
('b0bc9e0c-c96a-447b-84a6-6ace3ef64880', 'Blackberries'),
('b59941fd-bbe4-4174-8c81-3204712bba4f', 'Bread - White Mini Epi'),
('b98f2777-73b0-4401-a271-7575f4d9fe95', 'Veal - Chops, Split, Frenched'),
('b9d3e2b2-ca20-458c-9a71-7fe09cf922e4', 'Rabbit - Whole'),
('ba8ddd0f-676c-4a90-a5f9-955d089b01a3', 'Mushroom Morel Fresh'),
('bc28ec34-84a2-4e9e-ae5e-fdc2e18fb636', 'Eggroll'),
('bc85e228-fde1-4cbb-9bd9-c8bb118c2ba9', 'Nut - Almond, Blanched, Ground'),
('bf58e122-d7fe-4359-9da6-d92949aaa811', 'Hog / Sausage Casing - Pork'),
('c10baa91-dae2-4236-a4f4-7c77748f712c', 'Rice - Brown'),
('c528aab2-0798-4de8-ae18-552063d8f713', 'Marsala - Sperone, Fine, D.o.c.'),
('c6eda07a-7301-4f1e-902c-f0092cb6bcae', 'Ginger - Ground'),
('c77bfb99-407c-4cc4-acd9-e361df3a8f70', 'Oil - Truffle, Black'),
('cb83f783-0977-497f-b4a0-173cd362dbc1', 'Pineapple - Golden'),
('cbd72a1e-1a53-4c6a-bae7-d358f66d64c6', 'Pepper - Cubanelle'),
('cc7e7fad-fee7-42f3-b138-ddaddb3f71a1', 'Soup - Campbells Chili Veg'),
('ccc96467-3cd1-43cd-ac7c-0dbd15e464d8', 'Ham Black Forest'),
('d13364f9-33b8-4766-8aea-162e06044095', 'Syrup - Monin - Passion Fruit'),
('d2ca79cd-2945-4356-9903-61c75f8d4a28', 'Cookie - Oreo 100x2'),
('d4518ac0-693d-4032-8f64-72fa38b03e7e', 'Sobe - Orange Carrot'),
('e080e04b-8b58-4e11-9288-fb457b39ee24', 'Artichoke - Fresh'),
('e411aa77-5e3b-4cac-b393-e20ba3599ee1', 'Seaweed Green Sheets'),
('eafb77f1-72b2-4ccc-9c31-dc3c31ed0a12', 'Seedlings - Clamshell'),
('ec5a13e6-fcb1-42c2-94e8-60e2d9cdb848', 'Nut - Peanut, Roasted'),
('f350419e-a6c5-4855-81d7-ecca31116bdc', 'Quail - Jumbo Boneless'),
('f49d581a-6b06-4757-9bac-38c603ec220f', 'Water - Spring Water, 355 Ml'),
('f52a73cc-79d2-450c-87cb-0409ee14deed', 'Trout - Hot Smkd, Dbl Fillet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beszallitok`
--
ALTER TABLE `beszallitok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
