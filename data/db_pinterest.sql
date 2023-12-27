/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `binh_luan`;
CREATE TABLE `binh_luan` (
  `binh_luan_id` int NOT NULL AUTO_INCREMENT,
  `nguoi_dung_id` int DEFAULT NULL,
  `hinh_id` int DEFAULT NULL,
  `ngay_binh_luan` date DEFAULT NULL,
  `noi_dung` varchar(255) DEFAULT NULL,
  `anh_dinh_kem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`binh_luan_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  KEY `hinh_id` (`hinh_id`),
  CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`),
  CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`hinh_id`) REFERENCES `hinh_anh` (`hinh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `hinh_anh`;
CREATE TABLE `hinh_anh` (
  `hinh_id` int NOT NULL AUTO_INCREMENT,
  `ten_hinh` varchar(255) DEFAULT NULL,
  `duong_dan` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `nguoi_dung_id` int DEFAULT NULL,
  PRIMARY KEY (`hinh_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  CONSTRAINT `hinh_anh_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `luu_anh`;
CREATE TABLE `luu_anh` (
  `hinh_id` int NOT NULL,
  `nguoi_dung_id` int NOT NULL,
  `ngay_luu` date DEFAULT NULL,
  PRIMARY KEY (`hinh_id`,`nguoi_dung_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  CONSTRAINT `luu_anh_ibfk_1` FOREIGN KEY (`hinh_id`) REFERENCES `hinh_anh` (`hinh_id`),
  CONSTRAINT `luu_anh_ibfk_2` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `nguoi_dung`;
CREATE TABLE `nguoi_dung` (
  `nguoi_dung_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `tuoi` int DEFAULT NULL,
  `anh_dai_dien` varchar(255) DEFAULT NULL,
  `refresh_token` text,
  PRIMARY KEY (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`, `anh_dinh_kem`) VALUES
(1, 13, 4, '2023-12-27', 'Stunning shot! 🌟', '1703662730246_bed.jpg');
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`, `anh_dinh_kem`) VALUES
(2, 11, 4, '2023-12-27', 'Your photography skills are on point!', NULL);
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`, `anh_dinh_kem`) VALUES
(3, 11, 2, '2023-12-27', '\"So much emotion captured in one frame!\"', NULL);
INSERT INTO `binh_luan` (`binh_luan_id`, `nguoi_dung_id`, `hinh_id`, `ngay_binh_luan`, `noi_dung`, `anh_dinh_kem`) VALUES
(4, 11, 2, '2023-12-27', 'What a breathtaking view!', NULL),
(5, 11, 3, '2023-12-27', 'What a breathtaking view!', NULL),
(6, 11, 2, '2023-12-27', 'Absolutely mesmerizing!', NULL),
(7, 11, 6, '2023-12-27', 'Absolutely mesmerizing!', NULL),
(8, 6, 6, '2023-12-27', 'The colors are so vibrant—love it!', NULL),
(9, 7, 1, '2023-12-27', 'The colors are so vibrant—love it!', '1703663250148_livingroom.jpg');

INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(1, 'Santa Claus', '1703653818355_santaclause.jpg', 'Santa Claus, the beloved and iconic figure associated with the joyous holiday of Christmas', 13);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(2, 'Couple', '1703654020035_datingcouple.jpg', 'A dating couple is a romantic pair engaged in a mutual relationship, exploring shared interests and emotions as they navigate the journey of building a connection.', 13);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(3, 'White Fancy Apartment', '1703654135765_apartment.jpg', 'An apartment is a self-contained living space within a larger building, typically divided into multiple units, where individuals or families reside, each enjoying their private living quarters.', 1);
INSERT INTO `hinh_anh` (`hinh_id`, `ten_hinh`, `duong_dan`, `mo_ta`, `nguoi_dung_id`) VALUES
(4, 'My loved Cat', '1703654236293_cat.jpg', 'A love cat is a term commonly used to describe a feline companion cherished for its affectionate and loving nature, bringing joy and companionship to its owner.', 12),
(5, 'Black Cat', '1703654284644_hi.jpg', 'A black cat is a feline companion characterized by its sleek black fur, often associated with superstitions and folklore, while being beloved as a unique and elegant pet.', 12),
(6, 'Drinking Neet', '1703654318631_drinkingcat.jpg', 'Drinking refers to the act of consuming beverages, typically referring to the ingestion of liquids, often including social or recreational aspects, such as drinking water, tea, coffee, or alcoholic beverages.', 12);

INSERT INTO `luu_anh` (`hinh_id`, `nguoi_dung_id`, `ngay_luu`) VALUES
(1, 13, '2023-12-27');
INSERT INTO `luu_anh` (`hinh_id`, `nguoi_dung_id`, `ngay_luu`) VALUES
(2, 13, '2023-12-27');
INSERT INTO `luu_anh` (`hinh_id`, `nguoi_dung_id`, `ngay_luu`) VALUES
(3, 1, '2023-12-27');
INSERT INTO `luu_anh` (`hinh_id`, `nguoi_dung_id`, `ngay_luu`) VALUES
(3, 5, '2022-02-12'),
(4, 6, '2023-11-24'),
(4, 12, '2023-12-27'),
(5, 12, '2023-12-27'),
(6, 12, '2023-12-27');

INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`, `refresh_token`) VALUES
(1, 'user1@example.com', '$2b$10$q4R4iqbkddYxxYPOW25Ftu1sXdRCAMeNP4rhjR1La801b/41zN51G', 'John Doe', 30, '1703655127529_cat.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjoxLCJrZXkiOjE3MDM2NTUwOTY1MjMsImlhdCI6MTcwMzY1NTA5NiwiZXhwIjoxNzA1MzgzMDk2fQ.vMlHqlLKYwaB8GJm3JNG1vY3ooP9kE1jXXqgkPjr_B8');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`, `refresh_token`) VALUES
(2, 'user2@example.com', '$2b$10$PhEHOA9PocXQjDZHFrTYSeqaGkFmaQhv5NyrP91cQ53/1NkWV27K6', 'Jane Smith', 28, '1703655181230_drinkingcat.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjoyLCJrZXkiOjE3MDM2NTUxNjI2NDMsImlhdCI6MTcwMzY1NTE2MiwiZXhwIjoxNzA1MzgzMTYyfQ.tNV2HGzCjvameBBUtfP0t2z-yocqm_2nwykoejyhYO8');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`, `refresh_token`) VALUES
(3, 'user3@example.com', '$2b$10$lKKyJqpXvA1Ly9IY3C7O0OYTJ44LbcKGkq/rQYvmfbtdThNUeHfqK', 'Alex Johnson', 35, '1703655214721_datingcouple.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjozLCJrZXkiOjE3MDM2NTUxOTI2OTIsImlhdCI6MTcwMzY1NTE5MiwiZXhwIjoxNzA1MzgzMTkyfQ.iK2gu2RJO3IJa3khHlPWOghLtKZOfBNjeVZyCOfUX8w');
INSERT INTO `nguoi_dung` (`nguoi_dung_id`, `email`, `mat_khau`, `ho_ten`, `tuoi`, `anh_dai_dien`, `refresh_token`) VALUES
(4, 'user4@example.com', '$2b$10$IkUfcxm5Dp0XzOKswc4pFeXUepEKyaYugnHqgbm2j3OdDbM4ZYnAW', 'Emily White', 22, '1703655274495_santaclause.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjo0LCJrZXkiOjE3MDM2NTUyNTgxMzAsImlhdCI6MTcwMzY1NTI1OCwiZXhwIjoxNzA1MzgzMjU4fQ.HTaephA1dOT0QTJQhyRkMX5tD3F3jdw9EXMQTHM2TkQ'),
(5, 'user5@example.com', '$2b$10$vkE1hN9nV/eN6rIsaO6h.ueWBRS9zQpJzfJtLL2pRL66z3omNte8y', 'Michael Brown', 32, '1703655637800_bokho.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjo1LCJrZXkiOjE3MDM2NTU2MTU5MTcsImlhdCI6MTcwMzY1NTYxNSwiZXhwIjoxNzA1MzgzNjE1fQ.eaD0LOgcPCHd0C4mhsATyf_GAX7LjwGCVoU6bILMdJQ'),
(6, 'user6@example.com', '$2b$10$CYhbh.U6kmpWA61XzAapyeQhZ4KQ7jRtx92PVikSd94TVTdcoeJE2', 'Sophia Lee', 27, '1703655327692_lostbaby.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjo2LCJrZXkiOjE3MDM2NjMxMDYwMzMsImlhdCI6MTcwMzY2MzEwNiwiZXhwIjoxNzA1MzkxMTA2fQ.lnkugSn3uh2nZT8CkbKiw7irrOIQRfZH9GOD-w9fSpw'),
(7, 'user7@example.com', '$2b$10$tj0sYRer1Vvxns6rAFAQ.ecWnXtWv.fkSy3p/IqIGrWHovmh8QcsG', 'William Davis', 31, '1703655360616_hi.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjo3LCJrZXkiOjE3MDM2NjMyMTkyMTEsImlhdCI6MTcwMzY2MzIxOSwiZXhwIjoxNzA1MzkxMjE5fQ.3CyTYpqzesZFKoSY62RohPpnMwH2U39_SERGsGZ8BHw'),
(8, 'user8@example.com', '$2b$10$iVD8zAY370dGX73/Sb4NZuc.PVqNrnc9dOayKjPMeb21oC5hk97Ni', 'Olivia Johnson', 29, '1703655397681_oldage.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjo4LCJrZXkiOjE3MDM2NTUzNzgzMjUsImlhdCI6MTcwMzY1NTM3OCwiZXhwIjoxNzA1MzgzMzc4fQ.rB3MRDaTNY48ucnIdw6RV3stfy_zzu61CVypcwjZpeM'),
(9, 'user9@example.com', '$2b$10$1NqfrdnsV7ghcL3xsoLTbefLIAuFFkNFPQzjk18.DLkMKovFe2TLe', 'Daniel Smith', 26, '1703655432118_duck banner.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjo5LCJrZXkiOjE3MDM2NTU0MTU5MTIsImlhdCI6MTcwMzY1NTQxNSwiZXhwIjoxNzA1MzgzNDE1fQ.nf4ho8aj3QKrlbWE0jZfSeZC4ySehUedUv3yDMS9uV8'),
(10, 'user10@example.com', '$2b$10$2JizHBtaGG2H2U.niyBj4uvX9f3PLLyJBODVtK5B5k.vNd7Gv/VyC', 'Emma Wilson', 34, '1703655457897_bed.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjoxMCwia2V5IjoxNzAzNjU1NDQzMDcwLCJpYXQiOjE3MDM2NTU0NDMsImV4cCI6MTcwNTM4MzQ0M30.Ka8I_FCH0DUyBy2ZT1Jumf-CvdvCnUCgDBjRJB7tzrs'),
(11, 'user11@example.com', '$2b$10$dRl1BmTurRicYryHWQXAUu0DmdNU8sjno7/Q5dDtd9DmbNv6Ffo9u', 'Liam Harris', 23, '1703655488197_stairs.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjoxMSwia2V5IjoxNzAzNjYyNzcyMDgyLCJpYXQiOjE3MDM2NjI3NzIsImV4cCI6MTcwNTM5MDc3Mn0.RAxYFM5gFnCRK1r2zF5CeIGRsi-aWbk8QmPwxNYnhs0'),
(12, 'user12@example.com', '$2b$10$e7yGKgP2.i1xWlioMUgNd.FJ8XFsSD34QJvh8o1C1tMwxJ3PryPPe', 'Noah Jones', 28, '1703655525813_2 cat with heart.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjoxMiwia2V5IjoxNzAzNjU1NTA1Mzg1LCJpYXQiOjE3MDM2NTU1MDUsImV4cCI6MTcwNTM4MzUwNX0.HAIxnlfxmcfl7YqkzdLTgxe8jhNkcFfhuZizL4Shcgg'),
(13, 'user13@example.com', '$2b$10$ikLNr68x0aKAAvk75LxKluASsx4xa.cNmqfM6DdfkgGnY5mwPgQAa', 'Noah Jones', 28, '1703655762164_oldage.jpg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZ3VvaV9kdW5nX2lkIjoxMywia2V5IjoxNzAzNjYyNzE3NDMzLCJpYXQiOjE3MDM2NjI3MTcsImV4cCI6MTcwNTM5MDcxN30.EwD97_r2urwfYLeXa_bsd5zB_ZmCE9OkidFWwbfcyno');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;