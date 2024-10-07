-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 08:56 AM
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
-- Database: `zoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `description` text NOT NULL,
  `habitat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `name`, `type`, `age`, `description`, `habitat`) VALUES
(1, 'Simba', 'Lion', 13, 'The Jungle Lion in the zoo is a magnificent sight, with its golden fur and powerful presence captivating visitors. Despite being in captivity, it retains its regal demeanor, prowling its enclosure with grace and agility. Its piercing amber eyes reflect both intelligence and ferocity, while its distinctive roar echoes through the zoo, showcasing its dominance. Educational signage informs visitors about conservation efforts aimed at protecting wild lion populations. As an ambassador for its species, the Jungle Lion inspires guests to cherish and protect Africa\'s wildlife.', 'Jungle'),
(2, 'Aladdin', 'camel', 20, 'The Desert Camel in the zoo is a captivating creature, embodying resilience and adaptability with its humped back and sturdy legs. Visitors are drawn to its gentle demeanor as it traverses its enclosure, its long eyelashes and expressive eyes reflecting a sense of calmness. Despite its captivity, it retains its natural grace, often seen resting or munching on hay. Educational displays highlight the camel\'s role in desert ecosystems and the importance of conserving their habitats. As an emblem of survival in harsh environments, the Desert Camel serves as a reminder of the need to protect vulnerable species and their habitats.', 'Desert'),
(3, 'longy', 'giraffe', 25, 'The Giraffe in the zoo is a captivating sight, towering above visitors with its long neck and distinctive spotted coat. Its gentle nature and graceful movements enchant guests as it elegantly navigates its enclosure. With its large, expressive eyes and unique appearance, the giraffe exudes an air of curiosity and tranquility. Despite being in captivity, it maintains its natural behaviors, often seen stretching its neck to reach for leaves or engaging in playful interactions. Educational displays educate visitors about the importance of giraffe conservation and the threats they face in the wild. As an iconic symbol of Africa\'s savannas, the giraffe serves as a powerful ambassador for wildlife preservation, inspiring guests to cherish and protect these majestic creatures.', 'Forest'),
(4, 'bagira', 'tiger', 15, 'The Tiger in the zoo is a mesmerizing sight, with its striking orange coat and piercing gaze captivating visitors. Despite its captive environment, it exudes an aura of wildness, pacing its enclosure with powerful strides. Guests are drawn to its majestic presence, often stopping to admire its sleek physique and distinctive black stripes. Its deep, rumbling growl echoes through the zoo, reminding observers of its primal nature. Educational exhibits provide insight into tiger conservation efforts and the importance of protecting their natural habitats. As an emblem of strength and beauty, the tiger symbolizes the need for conservation and serves as a reminder of the threats facing these magnificent creatures in the wild.', 'Jungle'),
(5, 'aussie', 'kangaroo', 10, 'The Kangaroo in the zoo is a fascinating creature, known for its distinctive hopping gait and powerful hind legs. Visitors are captivated by its unique appearance, with its long tail and large ears adding to its charm. Despite being in captivity, it retains its natural agility, often seen bounding around its enclosure with boundless energy. Its curious nature and friendly demeanor make it a favorite among guests, who delight in observing its antics. Educational displays inform visitors about the kangaroo\'s habitat and behavior in the wild, highlighting the importance of conservation efforts. As an iconic symbol of Australia\'s wildlife, the kangaroo serves as a reminder of the need to protect and preserve diverse ecosystems for future generations to enjoy.', 'Desert'),
(6, 'dolly', 'dolphin', 8, 'The Dolphin in the zoo is an enchanting creature, celebrated for its playful nature and remarkable intelligence. Visitors are enthralled by its sleek body and playful demeanor as it gracefully glides through the water in its expansive habitat. With its expressive eyes and endearing smile, the dolphin exudes a sense of joy and curiosity, captivating audiences of all ages. Despite being in captivity, it engages in a variety of behaviors that showcase its natural abilities, from acrobatic flips to synchronized swimming with its pod members. Educational presentations offer insights into dolphin behavior, communication, and the importance of ocean conservation. As ambassadors for marine life, dolphins inspire guests to appreciate and protect the oceans and the diverse creatures that call them home.', 'Ocean'),
(7, 'ballu', 'grizzy bear', 16, 'The Grizzly Bear in the zoo is a magnificent sight, with its powerful build and distinctive hump on its shoulders. Visitors are captivated by its massive size and imposing presence as it explores its habitat. Despite being in captivity, it retains its wild instincts, often seen foraging for food or taking refreshing dips in the pool. Its thick fur and intense gaze add to its rugged charm, inspiring both awe and respect. Educational displays offer insights into grizzly bear behavior and the importance of preserving their natural habitats. As an emblem of North America\'s wilderness, the grizzly bear serves as a reminder of the need to protect and conserve these iconic species for future generations.', 'Forest'),
(8, 'tom', 'lynx', 4, 'The Lynx in the zoo is a captivating feline, known for its tufted ears and striking appearance. Visitors are entranced by its elusive nature and keen senses as it prowls its enclosure with silent grace. Despite being in captivity, it retains its wild instincts, often seen perched atop rocks or hidden within dense foliage, observing its surroundings with sharp eyes. Its thick fur and agile movements reflect its adaptation to cold climates, adding to its allure. Educational exhibits provide insights into lynx behavior and the importance of preserving their forest habitats. As a symbol of wilderness and resilience, the lynx serves as a reminder of the delicate balance of ecosystems and the need for conservation efforts to protect these majestic creatures.', 'Arctic'),
(9, 'mira', 'meerkat', 5, 'The Meerkat in the zoo is a delightful and social creature, known for its curious nature and cooperative behavior within its group, called a \"mob\" or \"clan.\" Visitors are charmed by its small size, alert posture, and endearing mannerisms as it forages for food and keeps watch over its surroundings. Despite being in captivity, it exhibits natural behaviors such as digging burrows and grooming one another. Its expressive faces and playful antics make it a favorite among guests of all ages. Educational displays offer insights into meerkat ecology and the importance of conserving their native habitats in Africa. As an emblem of cooperation and community, the meerkat serves as a reminder of the interconnectedness of life and the value of protecting biodiversity.', 'Desert'),
(11, 'pintu', 'panda', 12, 'The Panda in the zoo is an iconic and beloved species, cherished for its distinctive black and white fur and gentle demeanor. Visitors are enamored by its round face, expressive eyes, and endearing waddling gait as it navigates its habitat. Despite being in captivity, it retains its natural bamboo-rich diet, often seen munching on bamboo shoots or lounging in its favorite spots. Its playful behavior, such as rolling and tumbling, never fails to delight observers of all ages. Educational displays offer insights into panda conservation efforts and the importance of preserving their forest habitats in China. As a symbol of conservation success and international cooperation, the panda serves as a reminder of the collective efforts needed to protect endangered species and their habitats for future generations.', 'Forest'),
(12, 'bhaagi', 'black panther', 21, 'The Black Panther in the zoo is a sleek and powerful big cat, revered for its mysterious allure and striking melanistic coat. Visitors are entranced by its lithe form, keen yellow eyes, and stealthy movements as it prowls its enclosure with grace and confidence. Despite being in captivity, it exudes an air of wildness, often seen perched atop high vantage points or stalking imaginary prey. Its enigmatic presence and solitary nature evoke a sense of reverence among onlookers. Educational displays provide insights into black panther ecology and the importance of preserving their forest habitats in various parts of the world. As a symbol of strength, elegance, and adaptability, the black panther serves as a reminder of the beauty and diversity of Earth\'s wildlife and the need for conservation efforts to ensure their survival.', 'Jungle'),
(13, 'sayee', 'penguin', 9, 'The Penguin in the zoo is a charming and charismatic seabird, known for its distinctive black and white plumage and comical waddling gait. Visitors are delighted by its playful antics, from sliding on ice to diving gracefully into the water. Despite being in captivity, it exhibits natural behaviors such as grooming, preening, and socializing with other members of its colony. Its endearing appearance and curious nature make it a favorite among guests of all ages. Educational displays offer insights into penguin biology, ecology, and the challenges they face in the wild, such as climate change and habitat loss. As ambassadors for the Antarctic and its surrounding regions, penguins serve as a reminder of the importance of preserving fragile marine ecosystems and the need for global conservation efforts to protect these beloved birds and their habitats.', 'Arctic'),
(14, 'polly', 'polar bear', 21, 'The Polar Bear in the zoo is a magnificent apex predator, celebrated for its immense size, thick white fur, and expert swimming abilities. Visitors are captivated by its powerful presence and graceful movements as it navigates its icy habitat. Despite being in captivity, it exhibits natural behaviors such as hunting, swimming, and playing with enrichment toys. Its curious nature and intelligence shine through as it explores its surroundings and interacts with zookeepers. Educational displays provide insights into polar bear biology, ecology, and the urgent need to address climate change and protect their rapidly melting Arctic habitats. As ambassadors for the Arctic ecosystem, polar bears serve as a poignant reminder of the impacts of climate change and the importance of conservation efforts to ensure their survival and the health of the planet.', 'Arctic'),
(15, 'caviar', 'wolf', 15, 'The Wolf in the zoo is a captivating and enigmatic carnivore, known for its intelligence, social structure, and haunting howls. Visitors are drawn to its wild beauty, with its sleek fur, pointed ears, and piercing eyes exuding an aura of primal power. Despite being in captivity, it retains its pack instincts, often seen interacting with fellow pack members in a complex social hierarchy. Its agile movements and keen senses make it a formidable predator, even within the confines of its enclosure. Educational displays offer insights into wolf behavior, ecology, and the importance of conserving their habitats. As symbols of wilderness and resilience, wolves serve as ambassadors for ecosystem health and the need for conservation efforts to protect these iconic predators and their ecosystems.', 'Arctic'),
(16, 'nemo', 'gold fish', 1, 'In the zoo, Nemo isn\'t a typical exhibit, as zoos primarily focus on terrestrial and avian species. However, if you\'re referring to a clownfish like the character Nemo from the movie \"Finding Nemo,\" it\'s essential to note that clownfish are marine fish found in coral reefs, not typically housed in zoos but rather in aquariums or marine parks.\r\n\r\nClownfish, including the iconic orange-and-white species like Nemo, are renowned for their symbiotic relationship with sea anemones and their vibrant colors. In aquarium settings, they captivate visitors with their energetic behavior and striking appearance. Educational exhibits in aquariums often highlight the importance of coral reef conservation and the threats faced by marine life, including clownfish, due to climate change, habitat destruction, and overfishing.\r\n\r\nAs ambassadors for coral reef ecosystems, clownfish symbolize the beauty and diversity of marine life and serve as a reminder of the need to protect ocean habitats for the survival of all its inhabitants, including Nemo and his friends.', 'Ocean'),
(17, 'pops', 'octopus', 1, 'The octopus in the aquarium is a mesmerizing creature, known for its intelligence and adaptability. With its eight arms and remarkable color-changing abilities, it captivates visitors with its graceful movements and enigmatic behavior. Despite being in captivity, it displays natural behaviors such as hunting and exploration. As ambassadors for marine life, octopuses remind us of the beauty and diversity of the ocean and the importance of conservation efforts to protect their habitat.', 'Ocean'),
(18, 'bunty', 'seal', 45, 'The seal in the zoo or aquarium is a charismatic marine mammal, beloved for its playful nature and sleek, streamlined body. Visitors are enchanted by its agility both in water and on land, as it gracefully glides through the water and basks lazily in the sun. Its expressive eyes and endearing vocalizations captivate audiences of all ages. Educational exhibits provide insights into seal biology, ecology, and the importance of marine conservation. As ambassadors for ocean ecosystems, seals remind us of the interconnectedness of all marine life and the need to protect their habitats for future generations.', 'Arctic'),
(20, 'cam', 'camel', 8, 'fggfgf', 'Desert'),
(21, 'hanvika', 'camel', 6, 'ehwgyqdy,gkq', 'Ocean'),
(22, 'bnj', 'grizzy bear', 88, 'uibk', 'Ocean');

-- --------------------------------------------------------

--
-- Table structure for table `animal_habitat`
--

CREATE TABLE `animal_habitat` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `taxonomy` text NOT NULL,
  `locations` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animal_habitat`
--

INSERT INTO `animal_habitat` (`id`, `name`, `taxonomy`, `locations`) VALUES
(1, 'Cheetah', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Felidae\",\"genus\":\"Acinonyx\",\"scientific_name\":\"Acinonyx jubatus\"}', '[\"Africa\",\"Asia\",\"Eurasia\"]'),
(2, 'Cape Lion', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Felidae\",\"genus\":\"Panthera\",\"scientific_name\":\"Panthera leo melanochaitus\"}', '[\"Africa\"]'),
(3, 'Asiatic Black Bear', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Ursidae\",\"genus\":\"Ursus\",\"scientific_name\":\"Ursus tibetanus\"}', '[\"Asia\",\"Eurasia\"]'),
(4, 'Giraffe', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Artiodactyla\",\"family\":\"Giraffidae\",\"genus\":\"Giraffa\",\"scientific_name\":\"Giraffa camelopardalis\"}', '[\"Africa\"]'),
(5, 'Bengal Tiger', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Felidae\",\"genus\":\"Panthera\",\"scientific_name\":\"Panthera Tigris Tigris\"}', '[\"Asia\"]'),
(6, 'Howler Monkey', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Primates\",\"family\":\"Atelidae\",\"genus\":\"Alouatta\",\"scientific_name\":\"Alouatta\"}', '[\"Central-America\",\"South-America\"]'),
(7, 'Deer', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Artiodactyla\",\"family\":\"Cervidae\",\"scientific_name\":\"Odocoileus virginiana\"}', '[\"Asia\",\"Eurasia\",\"Europe\",\"North-America\"]'),
(8, 'Zebra', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Perissodactyla\",\"family\":\"Equidae\",\"genus\":\"Equus\",\"scientific_name\":\"Equus zebra, Equus quagga, Equus grevyi\"}', '[\"Africa\"]'),
(9, 'African Bush Elephant', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Proboscidea\",\"family\":\"Elephantidae\",\"genus\":\"Loxodonta\",\"scientific_name\":\"Loxodonta africana africana\"}', '[\"Africa\"]'),
(10, 'Sloth', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Pilosa\",\"family\":\"Bradypodidae\",\"genus\":\"Bradypus\",\"scientific_name\":\"Choloepus Hoffmani\"}', '[\"Central-America\",\"South-America\"]'),
(11, 'Florida Panther', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Felidae\",\"genus\":\"Puma\",\"scientific_name\":\"Puma concolor couguar\"}', '[\"North-America\"]'),
(12, 'Brown Hyena', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Hyaenidae\",\"genus\":\"Hyaena\",\"scientific_name\":\"Hyaena brunnea\"}', '[\"Africa\"]'),
(13, 'Crocodile', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Reptilia\",\"order\":\"Crocodilia\",\"family\":\"Crocodylidae\",\"genus\":\"Crocodylus\",\"scientific_name\":\"Crocodylus acutus\"}', '[\"Africa\",\"Asia\",\"Central-America\",\"North-America\",\"Oceania\",\"South-America\"]'),
(14, 'Hippopotamus', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Artiodactyla\",\"family\":\"Hippopotamidae\",\"genus\":\"Hippopotamus\",\"scientific_name\":\"Hippopotamus amphibius\"}', '[\"Africa\"]'),
(15, 'American Foxhound', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Canidae\",\"genus\":\"Canis\",\"scientific_name\":\"Canis lupus\"}', '[\"North-America\"]'),
(16, 'Aardwolf', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Hyaenidae\",\"genus\":\"Proteles\",\"scientific_name\":\"Proteles cristata\"}', '[\"Africa\"]'),
(17, 'Ball Python', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Reptilia\",\"order\":\"Squamata\",\"family\":\"Pythonidae\",\"genus\":\"Python\",\"scientific_name\":\"P. regius\"}', '[\"Africa\"]'),
(18, 'Giant Panda Bear', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Carnivora\",\"family\":\"Ursidae\",\"genus\":\"Ailuropoda\",\"scientific_name\":\"Ailuropoda melanoleuca\"}', '[\"Asia\"]'),
(19, 'Aesculapian snake', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Reptilia\",\"order\":\"Squamata\",\"family\":\"Colubridae\",\"genus\":\"Zamenis\",\"scientific_name\":\"Zamenis longissimus\"}', '[\"Asia\",\"Europe\"]'),
(20, 'Chimpanzee', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Primates\",\"family\":\"Hominidae\",\"genus\":\"Pan\",\"scientific_name\":\"Pan troglodytes\"}', '[\"Africa\"]'),
(21, 'Blue Whale', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Cetacea\",\"family\":\"Balaenopteridae\",\"genus\":\"Balaenoptera\",\"scientific_name\":\"Balsenoptera musculus\"}', '[\"Ocean\"]'),
(22, 'Bactrian Camel', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Artiodactyla\",\"family\":\"Camelidae\",\"genus\":\"Camelus\",\"scientific_name\":\"Camelus Bactrianus\"}', '[\"Asia\"]'),
(25, 'African Grey Parrot', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Aves\",\"order\":\"Psittaciformes\",\"family\":\"Psittacidae\",\"genus\":\"Psittacus\",\"scientific_name\":\"Psittacus erithacus\"}', '[\"Africa\"]'),
(26, 'Ostrich', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Aves\",\"order\":\"Struthioniformes\",\"family\":\"Struthionidae\",\"genus\":\"Struthio\",\"scientific_name\":\"Struthio camelus\"}', '[\"Africa\"]'),
(27, 'Peacock', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Aves\",\"order\":\"Galliformes\",\"family\":\"Phasianidae\",\"genus\":\"Pavo\"}', '[\"Africa\",\"Asia\"]'),
(28, 'Kangaroo', '{\"kingdom\":\"Animalia\",\"phylum\":\"Chordata\",\"class\":\"Mammalia\",\"order\":\"Diprotodontia\",\"family\":\"Macropodidae\"}', '[\"Oceania\"]');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `animal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `animal_id`) VALUES
(13, './../images/festive.png', 29),
(14, './../images/main.png', 29),
(15, './../images/festive.png', 30),
(16, './../images/main.png', 30),
(17, './../images/nature_fantasy.png', 31),
(18, './../images/space_creature.png', 31),
(19, './../images/nature_fantasy.png', 32),
(20, './../images/wallpaper_cliff.png', 32),
(21, './../images/3.png', 1),
(22, './../images/aladin1.png', 2),
(23, './../images/aladin2.jpg', 2),
(24, './../images/giraffe1.png', 3),
(25, './../images/tiger1.png', 4),
(26, './../images/tiger2.jpg', 4),
(27, './../images/kang2.jpg', 5),
(28, './../images/kang1.png', 5),
(29, './../images/dolphin1.png', 6),
(30, './../images/dolphin2.png', 6),
(31, './../images/grizzy.jpg', 7),
(32, './../images/grizzy1.jpg', 7),
(33, './../images/lynx1.jpg', 8),
(34, './../images/lynx2.jpg', 8),
(35, './../images/lynx3.jpg', 8),
(36, './../images/meerkat1.jpg', 9),
(37, './../images/meerkat2.png', 9),
(38, './../images/meerkat3.jpg', 9),
(41, './../images/panda1.png', 11),
(42, './../images/panda2.jpg', 11),
(43, './../images/panth1.jpg', 12),
(44, './../images/panth2.jpg', 12),
(45, './../images/penguin2.jpg', 13),
(46, './../images/penguin1.jpeg', 13),
(47, './../images/pingu1.jpg', 13),
(48, './../images/pingu2.png', 13),
(49, './../images/polar1.jpg', 14),
(50, './../images/polar2.png', 14),
(51, './../images/polar3.png', 14),
(52, './../images/wolf2.jpg', 15),
(53, './../images/nemo2.jpg', 16),
(54, './../images/nemo.png', 16),
(55, './../images/octa.jpg', 17),
(56, './../images/seal1.png', 18),
(57, './../images/seal2.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` int(20) NOT NULL,
  `vet_help` int(20) NOT NULL,
  `food_time` datetime NOT NULL,
  `water_time` datetime NOT NULL,
  `clean_time` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `user_id` int(20) NOT NULL,
  `adults` int(3) NOT NULL DEFAULT 1,
  `children` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`user_id`, `adults`, `children`) VALUES
(28, 1, 0),
(40, 1, 0),
(64, 1, 2),
(65, 1, 0),
(67, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `fname` varchar(12) NOT NULL,
  `lname` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `power` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `pass`, `power`) VALUES
(1, 'test', '123', 'test@a', '321', 'User'),
(25, 'Arbnor', 'Rama', 'arama@york.citycollege.eu', 'berravo', 'User'),
(26, 'Arbnor', 'Ramabaja', 'rama@york', '123', 'User'),
(27, 'Ilber', 'Galika', 'galica.ylber@gmail.com', 'majmun', 'User'),
(28, 'Jake', 'Blake', 'jake@gmail.com', 'jaketheking', 'User'),
(29, 'Mathew', 'Anastasias', 'math@gmail.com', 'athens123', 'User'),
(40, 'admin', 'admin', 'admin@admin', 'admin', 'Admin'),
(44, 'Edon', 'Ramdi', 'ramdi@gamil', '123', 'User'),
(46, 'Matilda', 'Bonski', 'matski@gmail.com', 'bonski123', 'Helper'),
(48, 'Tringa ', 'Rexhepaj', 'trina@enail', 'tringa', 'Helper'),
(49, 'Arita', 'Ismajli', 'arita@gmail.com', 'aritamaemira', 'Admin'),
(50, 'Daniel', 'Mickins', 'daniel@hotmail.com', '123', 'Helper'),
(59, '123', '123', '21!@1', '123', 'Admin'),
(60, '123', '123', '123@123', '123', 'Helper'),
(64, 'jasu', 'jasu', 'jasu@gmail.com', '123', 'User'),
(65, 'Jashwanth ', 'M S', 'jashubharath216@gmail.com', '123', 'User'),
(66, 'rohith ', 'gowda', 'rohithraj1223334444@gmail', '1234', 'User'),
(67, 'rohith ', 'gowda', 'vivek91138@gmail.com', '1234', 'User'),
(68, 'Jashwanth ', 'M S', 'jashwanthms0@gmail.com', '123', 'User'),
(69, 'rohith ', 'gowda', 'rvit21bis056.rvitm@rvei.e', '123', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `user_id` int(12) NOT NULL,
  `animal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`user_id`, `animal_id`) VALUES
(65, 1),
(65, 4),
(65, 12),
(65, 11),
(65, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal_habitat`
--
ALTER TABLE `animal_habitat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `animal_habitat`
--
ALTER TABLE `animal_habitat`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
