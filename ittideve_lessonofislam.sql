-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2023 at 04:45 PM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ittideve_lessonofislam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `ID` int(250) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Password` text NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`ID`, `Name`, `Email`, `Password`, `Date`) VALUES
(1, 'Muhammad Irtaza Ghaffar', 'irtazaghaffar@gmail.com', 'test', '2023-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `ID` int(250) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `UID` int(250) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Image` text NOT NULL,
  `Descr` text NOT NULL,
  `Detail` text NOT NULL,
  `TID` int(250) NOT NULL,
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`ID`, `Date`, `UID`, `Title`, `Image`, `Descr`, `Detail`, `TID`, `Edit`) VALUES
(19, '2023-10-13', 1, 'How much time Israel and Palestine war will continue?', 'http://res.cloudinary.com/dibebrlfw/image/upload/v1697232598/iikcluwmrtpoeullshef.jpg', 'The duration of the conflict between Israel and Palestine is uncertain and has been a longstanding issue. The conflict has been ongoing for decades, marked by periods of tension, violence, and intermittent ceasefires!', '<p>Assalam o Alikum!</p><p>&nbsp;</p><p>I\'m Muhammad Irtaza Ghaffar from Muslim Community in Pakistan talking about the war which is between in Israel and Palestine from the last many decades. Let\'s say someone is entering into your home with your permission and then saying that is his house now not yours. My opinion about this war is totally clear that the Land of Masjid Al Aqsa is the property of Palestine and will always be remain for them even. Here\'s the explanation why I\'m asking this!</p><p>&nbsp;</p><h2>Quran\'s Behavior &amp; Allah Almighty\'s reaction!</h2><p>Jews were the favorite people of Allah Almighty in their era but after that they begin to make troubles and begin to fire the rules of even their own book. Allah Almighty says in Quran about Jews:</p><blockquote><p>The people of Moses took to them, after him, of their ornaments a Calf — a mere body that lowed. Did they not see it spoke not to them, neither guided them upon any way? Yet they took it to them and were evildoers. (7:145-146)</p><p>&nbsp;</p><p>So, for their breaking the compact, and disbelieving in the signs of God, and slaying the Prophets without right, and for their saying, “Our hearts are uncircumcised” — nay, but God sealed them for their unbelief, so they believe not, except a few.… (4:154-155)</p><p>And We decreed for the Children of Israel in the Book: “You shall do corruption in the earth twice.…”</p><p>So, when the promise of the first of these came to pass, We sent against you servants of Ours, men of great might, and they went through the habitations, and it was a promise performed.</p><p>Then We gave back to you the turn to prevail over them.…</p><p>Then, when the promise of the second came to pass, We sent against you Our servants to discountenance you, and to enter the Temple, as they entered it the first time. (17:4-7)</p><p>&nbsp;</p><p>People of the Book, now there has come to you Our Messenger, making clear to you many things you have been concealing of the Book, and effacing many things.… (5:19)</p><p>The Jews say, “Ezra is the Son of God”; the Christians say, “The Messiah is the Son of God.”</p><p>…God assail them! How they are perverted!</p><p>They have taken their rabbis and their monks as Lords apart from God. (9:30-31)</p><p>&nbsp;</p><p>Thou wilt surely find the most hostile of men to the believers are the Jews and the idolaters. (5:85)</p><p>&nbsp;</p><p>Say: “People of the Book, do you blame us for any other cause than that we believe in God, and what has been sent down to us, and what was sent down before, and that most of you are ungodly?…”</p><p>Whomsoever God has cursed, and with whom He is wroth, and made some of them apes and swine, and worshippers of idols — they are worse situated, and have gone further astray from the right way. (5:64-65)</p><p>&nbsp;</p><p>And He brought down those of the People of the Book who supported them from their fortresses and cast terror in their hearts; some you slew, some you made captive. And He bequeathed upon you their lands, their habitations, and their possessions, and a land you never trod. God is powerful over everything. (33:26)</p><p>&nbsp;</p><p>If God had willed, He would have made you one nation; but that He may try you in what has come to you. So be you forward in good works; unto God shall you return.… (5:54)</p><p>&nbsp;</p><p>No compulsion is there in religion. Rectitude has become clear from error. So whosoever disbelieves in idols and believes in God, has laid hold of the most firm handle, unbreaking…. (2:257)</p></blockquote><p>We can see that after all of their sins Jews became the worst of the on the Earth by Allah Almighty.</p><p>&nbsp;</p><h2>What was the history of Israel?</h2><p>Israel was made under a tehreek (Political Movement) named as Zionism and after that Jews started to enter there in 1882. The History of Zionism is very harsh. There was already an indigenous Jewish population in Palestine during the Ottoman Empire and before. Its members were concentrated principally in the holy cities of Jerusalem, Safed, Tiberias and Hebron. Nonetheless, the Jewish presence in Palestine, prior to the establishment of the State of Israel, had fluctuated through time, with various communities appearing and disappearing. Regardless, in 1880, before immigration began, Palestine’s Jewish population numbered about 25,000, and had been deeply rooted there for several generations. The beginning of Zionism and immigration: The beginning of modern, national-minded Jewish immigration coincides with the foundation of the modern Zionist movement. Zionism as a political movement is conventionally dated to 1882. Small groups of Jews dispersed through Europe began to cooperate to establish agricultural colonies in historical Palestine. These groups met officially for the first time in 1897, for the first Zionist conference, in Basel, Switzerland. The first two waves of immigration took place under the Ottoman Empire. The first aliya, between 1882 and 1903, brought 20,000 to 30,000 Russians fleeing Czarist Russia’s pogroms. Between 1903 and 1914, during the second aliya, 35,000-40,000 more Russians, most of them socialists, established themselves in Palestine. The newcomers were very active in the building of Tel-Aviv and also founded kibbutzim (collective villages). Marginal immigration: This immigration remained small relative to both the total Palestinian population and the other destinations of the migrants. In fact, on the eve of WWI, the 80,000 Jews of Palestine constituted only a tenth of the country’s total population. Moreover, Jewish immigration to Palestine constituted only 3 percent of the transoceanic Jewish migration during that period. By way of comparison, of the 2,367,000 Jews who left Europe then, 2,022,000 established themselves in the US. With WWI and the subsequent famine, Palestine’s total population dropped. Its Jewish community now numbered only 60,000.</p><p>&nbsp;</p><h2>Why did Jewish immigration increase again after WWI?</h2><p>At the end of WWI, the Ottoman Empire was dismantled, and Palestine came under the British mandate. Great Britain was in favor of establishing a Jewish national homeland in Palestine. In a letter written in 1917, Lord Balfour expressed this agreement, with the proviso that “… nothing shall be done which may prejudice the civil and religious rights of existing non-Jewish communities in Palestine ...”. The Balfour Declaration gave a legal basis for Jewish immigration, thus encouraging it. The rise of anti-Semitism and Nazism: The increase in anti-Semitism in Europe led many Jews again to leave their countries. At the same time, the US Immigration Act of 1924 would greatly slow immigration from Europe by setting strict quotas per country. Diverse limitations on immigration were also implemented in Europe. This also explains in part Jewish migrants’ choice of Palestine. From 1932 on, with the Nazi victory in Germany and the intensification of persecution in Austria and Czechoslovakia, Jewish immigration to Palestine increased dramatically. Between 1932 and 1939, Palestine absorbed 247,000 newcomers, 46 percent of Jewish emigration from Europe. In the European political context, this fifth aliya constituted a flight rather than a “Zionist choice.”</p><p>&nbsp;</p><h2>What was the British policy on Jewish immigration?</h2><p>British policy regarding Jewish immigration into Palestine evolved during the mandate period, as did the Jewish European response to it. A policy favoring it from 1919 to 1930: The British were in favour of the establishment of a Jewish national home in Palestine. The first Zionists, under the Ottoman Empire, had been able to establish themselves in the country under the protection of foreign consulates, notably British ones. Nonetheless, in the wake of the increase in immigration during the 20th century’s first decades, Arab Palestinians began pressuring Great Britain, which found itself in the political crossfire. From the 1930s on, the British authority began providing fewer immigration certificates than there was a demand for. But the real change in policy took place in 1939. Restrictions and criminalization of Jewish immigration to Palestine from 1939 on: In an attempt to mollify the Arab Palestinian population, Great Britain emitted in 1939 a “white paper” restricting Jewish immigration to Palestine to 75,000 people over five years and limiting the purchase of land by Jews. The creation of an independent Arab state within 10 years was also intended. However, the policy did not really slow Jewish immigration, because it opened the door to illegal immigration at a moment when the persecution of Jews in Europe was only intensifying. Until WWII began, and even after, tens of thousands of Jewish immigrants arrived in Palestine. Despite the interception of some ships by the British, many immigrants were able to establish themselves in Palestine. The immigrants also found out how to establish themselves in Palestine thanks to gaps in the British system of regulation. For example, given that students were not obliged to have an immigration certificate to study in Palestine, many people enrolled at the Hebrew University in Jerusalem then remained in the country. Some young women entered the country declaring fictitious marriages to Palestinians. Still others arrived as tourists and never left. In the end, between 1939 and 1948, 118,228 Jews reached Palestine, despite the British restrictions. After the war, Great Britain jailed thousands of the illegal immigrants in detention camps in Cyprus. This attempt to staunch immigration failed, and Britain was reproached for it in the post-Holocaust context.</p><p>&nbsp;</p><h2>Holy Prophet (PBUH)\'s point of view about this War!</h2><p>Our Holy Prophet (PBUH) says about Ghazawie Hind:</p><blockquote><p>Narrated Um Qais bint Mihsan: I heard the Prophet saying, Treat with the Indian incense, for it has healing for seven diseases; it is to be sniffed by one having throat trouble, and to be put into one side of the mouth of one suffering from pleurisy. (Sahih Bukhari Hadith No. 5692)</p><p>&nbsp;</p><p>It was narrated that Abu Hurairah said: The Messenger of Allah (ﷺ) promised that we would invade India. If I live to see that I will sacrifice myself and my wealth. If I am killed, I will be one of the best of the martyrs, and if I come back, I will be Abu Hurairah Al-Muharrar. (Sunan An Nasai Hadith No. 3176)</p><p>&nbsp;</p><p>It was narrated that Thawban, the freed slave of the Messenger of Allah (ﷺ), said: The Messenger of Allah (ﷺ) said: \'There are two groups of my Ummah whom Allah will free from the Fire: The group that invades India, and the group that will be with \'Isa bin Maryam, peace be upon him.\' &nbsp;(Sunan An Nasai Hadith No. 3177)</p></blockquote><p>And there are more then 10+ Ahadis on this point of view.</p><p>&nbsp;</p><h2>Dr. Isar Ahmed (R.A) sayings!</h2><p>Dr. Isar Ahmed is a Popular personality who was a surgeon doctor from King Edwad college and after that he wrote the tafseer of Quran. Many of his Quranic explanation can be found on internet even. He says that this war will be potentially tried over the Muslims and then the Muslims will make a war against Dajjal and his jews. Imam Mehdi and Hazart Essa (A.S) will lead the Muslim community which will raise from Khurasaan (i.e. Afghanistan, Pakistan, Iran, India) which will then conquer the whole World after it. He also said that Holy Prophet said that when you see Black Flags, then take admission in them and fight along with them, id a father has 1000 sons then only his 1 son will leave and all of the remaining 999 will be killed in the war. This war will never end until Islam and Peace can occur. Even though he said that Palestine is not Jews place to live. Dr. Isar continued to say that the WW-III will have to happen because of this conflict. Even though by his words Iran, Egypt, Lebonan, Iraq, Turkey AND half of the Middle East except the Madina and Makkah will be the great Israel. Dajjal would not enter into Makkah and Madina because of Farishtas standing on the border on these places. Even the Mosque Al Asqa will be destroyed to make the 3rd Temple for Jews Massiah named Dajjal.</p><p>&nbsp;</p><p>My all of these proofs prove that who is wrong and who is right! The possibility is that once if this war occurs then we know the predication. Also, that the time will go very fast as according to Ahadis. Now, we are able to know the main purpose of Ghaza and Israel war now! My every world is not said by me but as an evidence for the community and is predicted by scholars and other famous personalities.</p><p>&nbsp;</p><p>Jazakallah u Khairan Kaseera!</p>', 10, '2023-10-13 22:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(250) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Message` text NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `Name`, `Email`, `Message`, `Date`) VALUES
(28, '12345', 'test@test.test', '12345', '2023-09-24'),
(29, 'Maaz Ahmed', 'bcs213001@cust.pk', 'Hey there Irtaza. Nice to meet you.', '2023-09-27'),
(30, 'Humayun Sikander', 'Humayunsikander@zbc.com', 'Love you', '2023-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `duas`
--

CREATE TABLE `duas` (
  `ID` int(250) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Title` varchar(250) NOT NULL,
  `Descr` varchar(250) NOT NULL,
  `Detail` text NOT NULL,
  `AID` int(250) NOT NULL,
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duas`
--

INSERT INTO `duas` (`ID`, `Date`, `Title`, `Descr`, `Detail`, `AID`, `Edit`) VALUES
(1, '2023-09-10', 'Angry', 'What Islam says about angry people and their characters.', 'Any detail here.', 1, '2023-09-10 08:33:22'),
(2, '2023-09-10', 'Bored', 'What Islam says about being Bored.', 'any detail here.', 1, '2023-09-10 08:40:13'),
(3, '2023-09-13', 'Anxious', 'Desc for anxious', 'a detail for anxious', 1, '2023-09-13 12:00:24'),
(4, '2023-10-05', 'Friendship', 'any desc', 'any detail', 1, '2023-10-05 09:52:39'),
(5, '2023-10-16', 'Parents', 'Dua for Parents', 'Detail to Dua for Parents', 1, '2023-10-16 19:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `duaspoints`
--

CREATE TABLE `duaspoints` (
  `ID` int(250) NOT NULL,
  `Arabic` text NOT NULL,
  `Translitration` text NOT NULL,
  `Translation` text NOT NULL,
  `Detail` text NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DID` int(250) NOT NULL,
  `Quotation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duaspoints`
--

INSERT INTO `duaspoints` (`ID`, `Arabic`, `Translitration`, `Translation`, `Detail`, `Date`, `Edit`, `DID`, `Quotation`) VALUES
(1, 'أَعُوْذُ بِاللهِ مِنَ الشَّيْطَانِ الرَّجِيْمِ', 'Aʿūdhu bi-llāhi mina-sh-Shayṭāni-r-rajīm.', 'I seek protection in Allah from the rejected Shayṭān.', 'Allah says: “When you recite the Quran, seek refuge with Allah from rejected Shayṭān.”.', '2023-09-10', '2023-09-10 08:35:40', 1, 'Quran 16:98'),
(2, 'رَبِّ أَعُوْذُ بِكَ مِنْ هَمَزَاتِ الشَّيَاطِيْنِ ، وَأَعُوذُ بِكَ رَبِّ أَنْ يَّحْضُرُوْنِ', 'Rabbi aʿūdhu bika min hamazāti-sh-shayāṭīn. Wa aʿūdhu bika Rabbi ay-yaḥḍurūn.', 'My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me.', 'Allah says: \"My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me.\"', '2023-09-10', '2023-09-10 09:01:05', 1, 'Quran 23:97-98'),
(4, 'اَللّٰهُمَّ رَبَّ مُحَمَّدٍ اغْفِرْ لِيْ ذَنْبِيْ ، وَأَذْهِبْ غَيْظَ قَلْبِيْ ، وَأَعِذْنِيْ مِنْ مُضِلَّاتِ الْفِتَنِ', 'Allāhumma Rabba Muḥammad, ighfir lī dhambī, wa adh-hib ghayẓa qalbī, wa aʿidhnī min muḍillāti-l-fitan.', '”O Allah, Lord of Muḥammad forgive my sins, remove the anger of my heart and protect me from misleading trials.”', 'Muhammad b. Abī Bakr (raḥimahullāh) narrates that when ʿĀ’isha (raḍiy Allāhu ‘anhā) would become angry, the Messenger of Allah ﷺ would stroke her nose and then say (to her): “O ʿUwaysh! Say: [the above].”', '2023-09-15', '2023-10-12 15:33:00', 1, 'Ibn al-Sunnī 456');

-- --------------------------------------------------------

--
-- Table structure for table `namesofallah`
--

CREATE TABLE `namesofallah` (
  `ID` int(250) NOT NULL,
  `Arabic` text NOT NULL,
  `Translitration` text NOT NULL,
  `Translation` text NOT NULL,
  `Explaination` text NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `AID` int(250) NOT NULL,
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `namesofallah`
--

INSERT INTO `namesofallah` (`ID`, `Arabic`, `Translitration`, `Translation`, `Explaination`, `Date`, `AID`, `Edit`) VALUES
(1, 'ٱلْصَّبُورُ', 'As-Sabur', 'The Forbearing, The Patient', 'He is the one who does not delay nor become impatient.', '2023-09-10', 1, '2023-09-10 12:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `ID` int(250) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `AID` int(250) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Descr` varchar(250) NOT NULL,
  `Detail` text NOT NULL,
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `ID` int(250) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `AID` int(250) NOT NULL DEFAULT current_timestamp(),
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Title` varchar(250) NOT NULL,
  `Image` text NOT NULL,
  `Descr` varchar(250) NOT NULL,
  `Detail` text NOT NULL,
  `TID` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `ID` int(250) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `AID` int(250) NOT NULL,
  `Keyword` varchar(250) NOT NULL,
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`ID`, `Date`, `AID`, `Keyword`, `Edit`) VALUES
(1, '0000-00-00 00:00:00', 1, 'Test', '2023-09-10 09:16:35'),
(2, '2023-09-22 19:55:40', 1, 'Revertness', '2023-09-22 19:55:40'),
(3, '2023-09-22 19:55:40', 1, 'Prophets', '2023-09-22 19:55:40'),
(6, '2023-09-22 19:56:34', 1, 'Sahabas', '2023-09-22 19:56:34'),
(7, '2023-09-22 19:56:34', 1, 'Technology', '2023-09-22 19:56:34'),
(8, '2023-09-22 19:57:13', 1, 'Expense', '2023-09-22 19:57:13'),
(9, '2023-09-22 19:57:13', 1, 'Politics', '2023-09-22 19:57:13'),
(10, '2023-10-13 17:34:11', 1, 'War', '2023-10-13 17:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(250) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Email` varchar(250) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Date`, `Email`, `Password`) VALUES
(1, 'M-IrtazaGhaffar', '2023-09-10', 'irtazaghaffar@gmail.com', '$2b$10$J4v.TjH5RLH9ucHpDDwA2uI6jtZtXFGAE9RS0sM0n.HPVQhYyYpqG'),
(2, 'MUHAMMAD IRTAZA GHAFFAR ', '2023-09-22', 'admin@ittidevelops.com', 'justatestingcasepass'),
(6, 'Info', '2023-10-14', 'info@ittidevelops.com', '$2b$10$oSA60eb1UfGS4rtB0b/Cu.53saDlNBGH73O2ehycuREHx/Lr183nu');

-- --------------------------------------------------------

--
-- Table structure for table `user_fav_blogs`
--

CREATE TABLE `user_fav_blogs` (
  `ID` int(250) NOT NULL,
  `UID` int(250) NOT NULL,
  `BID` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_fav_duas`
--

CREATE TABLE `user_fav_duas` (
  `ID` int(250) NOT NULL,
  `UID` int(250) NOT NULL,
  `DID` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_fav_stories`
--

CREATE TABLE `user_fav_stories` (
  `ID` int(250) NOT NULL,
  `UID` int(250) NOT NULL,
  `SID` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `ID` int(250) NOT NULL,
  `UID` int(250) NOT NULL,
  `AID` int(250) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Approval` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`ID`, `UID`, `AID`, `Date`, `Approval`) VALUES
(1, 1, 1, '2023-09-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zikr`
--

CREATE TABLE `zikr` (
  `ID` int(250) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Descr` text NOT NULL,
  `Detail` text NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `AID` int(250) NOT NULL,
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zikr`
--

INSERT INTO `zikr` (`ID`, `Title`, `Descr`, `Detail`, `Date`, `AID`, `Edit`) VALUES
(2, 'Morning Dhikr', 'What Islam says about the Morning Dhikr and its importance.', 'What Islam says about the Morning Dhikr and its importance in detail.', '2023-09-10', 1, '2023-09-10 12:08:54'),
(3, 'Evening Dhikr', 'What Islam says about Evening Dhikr?', 'A brief detail on Evening Dhikr according to Islamic Laws.', '2023-09-17', 1, '2023-09-17 08:20:20'),
(4, 'Before Sleep Dhikr', 'What Islam says about Before Sleep Dhikr?', 'A brief detail on Before Sleep Dhikr according to Islamic Laws.', '2023-09-17', 1, '2023-09-17 08:25:52'),
(5, 'Salah Dhikr', 'What Islam says about Salah Dhikr?', 'A brief detail on Salah Dhikr.', '2023-09-17', 1, '2023-09-17 08:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `zikrpoints`
--

CREATE TABLE `zikrpoints` (
  `ID` int(250) NOT NULL,
  `Arabic` text NOT NULL,
  `Translitration` text NOT NULL,
  `Translation` text NOT NULL,
  `Detail` text NOT NULL DEFAULT current_timestamp(),
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ZID` int(250) NOT NULL,
  `Quotation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zikrpoints`
--

INSERT INTO `zikrpoints` (`ID`, `Arabic`, `Translitration`, `Translation`, `Detail`, `Date`, `Edit`, `ZID`, `Quotation`) VALUES
(1, 'ٱللَّهُ لَآ إِلَـٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌۭ وَلَا نَوْمٌۭ ۚ لَّهُۥ مَا فِى ٱلسَّمَـٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍۢ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَ ۚ وَسِعَ كُرْسِيُّهُ ٱلسَّمَـٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيمُ', 'Allāhu lā ilāha illā Huwa-l-Ḥayyu-l-Qayyūm, lā ta’khudhuhū sinatuw-wa lā nawm, lahū mā fi-s-samāwāti wa mā fi-l-arḍ, man dhā’lladhī yashfaʿu ʿindahū illā bi-idhnih, yaʿlamu mā bayna aydīhim wa mā khalfahum, wa lā yuḥīṭūna bi-shay’im-min ʿilmihī illā bi-mā shā’, wasiʿa kursiyyuhu-s-samāwāti wa-l-arḍ, wa lā ya’ūduhū ḥifẓuhumā wa Huwa-l-ʿAlliyu-l-ʿAẓīm.', 'Allah, there is no god but He, the Ever Living, the One Who sustains and protects all that exists. Neither drowsiness overtakes Him nor sleep. To Him Alone belongs whatever is in the heavens and whatever is on the earth.  Who is it that can intercede with Him except with His permission? He knows what is before them and what will be after them, and they encompass not a thing of His knowledge except for what He wills. His Kursī extends over the heavens and the earth, and their preservation tires Him not. And He is the Most High, the Most Great. ', 'Ubayy ibn Ka‘b (raḍiy Allāhu ‘anhu) reported that he had a vessel in which he kept dates. He found that its quantity was decreasing. So he kept guard on it one night and saw a creature that resembled an adolescent boy. Ubayy greeted him and he returned his greeting. Ubayy then asked him: “What are you, a jinnī or a human?” He replied: “A jinnī.” So he said to him: “Show me your hand.” So he showed him his hand, and it looked like a dog’s paw with dog’s fur. He said: “This is how the jinn are created. The jinn know that there is no one amongst them who is stronger than me.” Ubayy asked him: “What made you come here?” He replied: “We heard that you are a man who loves charity, and we came to take our share from your food.’” Ubayy asked him: “What will protect us from you?” He replied: “Reading Āyah al-Kursī from Sūrah al-Baqarah [i.e. the verse above]. If you read it in the morning, you will be protected from us till the evening. And if you read it in the evening, you will be protected from us till the morning.” Ubayy said: “The following morning, Ubayy went to the Messenger of Allah ﷺ and told him about what had happened. The Messenger of Allah g said: “The evil one spoke the truth.”.', '2023-09-10', '2023-09-10 12:11:47', 2, 'Ṭabarānī in Mu’jam al-Kabir 1/201'),
(2, 'ٱللَّهُ لَآ إِلَـٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌۭ وَلَا نَوْمٌۭ ۚ لَّهُۥ مَا فِى ٱلسَّمَـٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍۢ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَ ۚ وَسِعَ كُرْسِيُّهُ ٱلسَّمَـٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيمُ', 'Allāhu lā ilāha illā Huwa-l-Ḥayyu-l-Qayyūm, lā ta’khudhuhū sinatuw-wa lā nawm, lahū mā fi-s-samāwāti wa mā fi-l-arḍ, man dhā’lladhī yashfaʿu ʿindahū illā bi-idhnih, yaʿlamu mā bayna aydīhim wa mā khalfahum, wa lā yuḥīṭūna bi-shay’im-min ʿilmihī illā bi-mā shā’, wasiʿa kursiyyuhu-s-samāwāti wa-l-arḍ, wa lā ya’ūduhū ḥifẓuhumā wa Huwa-l-ʿAlliyu-l-ʿAẓīm.', 'Allah, there is no god but He, the Ever Living, the One Who sustains and protects all that exists. Neither drowsiness overtakes Him nor sleep. To Him Alone belongs whatever is in the heavens and whatever is on the earth.  Who is it that can intercede with Him except with His permission? He knows what is before them and what will be after them, and they encompass not a thing of His knowledge except for what He wills. His Kursī extends over the heavens and the earth, and their preservation tires Him not. And He is the Most High, the Most Great.', 'Ubayy ibn Ka‘b (raḍiy Allāhu ‘anhu) reported that he had a vessel in which he kept dates. He found that its quantity was decreasing. So he kept guard on it one night and saw a creature that resembled an adolescent boy. Ubayy greeted him and he returned his greeting. Ubayy then asked him: “What are you, a jinnī or a human?” He replied: “A jinnī.” So he said to him: “Show me your hand.” So he showed him his hand, and it looked like a dog’s paw with dog’s fur. He said: “This is how the jinn are created. The jinn know that there is no one amongst them who is stronger than me.” Ubayy asked him: “What made you come here?” He replied: “We heard that you are a man who loves charity, and we came to take our share from your food.’” Ubayy asked him: “What will protect us from you?” He replied: “Reading Āyah al-Kursī from Sūrah al-Baqarah [i.e. the verse above]. If you read it in the morning, you will be protected from us till the evening. And if you read it in the evening, you will be protected from us till the morning.” Ubayy said: “The following morning, Ubayy went to the Messenger of Allah ﷺ and told him about what had happened. The Messenger of Allah g said: “The evil one spoke the truth.”', '2023-09-17', '2023-09-17 08:23:32', 3, 'Ṭabarānī in Mu’jam al-Kabir 1/201'),
(3, 'ٱللَّهُ لَآ إِلَـٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌۭ وَلَا نَوْمٌۭ ۚ لَّهُۥ مَا فِى ٱلسَّمَـٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍۢ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَ ۚ وَسِعَ كُرْسِيُّهُ ٱلسَّمَـٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيمُ', 'Allāhu lā ilāha illā Huwa-l-Ḥayyu-l-Qayyūm, lā ta’khudhuhū sinatuw-wa lā nawm, lahū mā fi-s-samāwāti wa mā fi-l-arḍ, man dhā’lladhī yashfaʿu ʿindahū illā bi-idhnih, yaʿlamu mā bayna aydīhim wa mā khalfahum, wa lā yuḥīṭūna bi-shay’im-min ʿilmihī illā bi-mā shā’, wasiʿa kursiyyuhu-s-samāwāti wa-l-arḍ, wa lā ya’ūduhū ḥifẓuhumā wa Huwa-l-ʿAlliyu-l-ʿAẓīm.', 'Allah, there is no god but He, the Ever Living, the One Who sustains and protects all that exists. Neither drowsiness overtakes Him nor sleep. To Him Alone belongs whatever is in the heavens and whatever is on the earth.  Who is it that can intercede with Him except with His permission? He knows what is before them and what will be after them, and they encompass not a thing of His knowledge except for what He wills. His Kursī extends over the heavens and the earth, and their preservation tires Him not. And He is the Most High, the Most Great.', 'Ubayy ibn Ka‘b (raḍiy Allāhu ‘anhu) reported that he had a vessel in which he kept dates. He found that its quantity was decreasing. So he kept guard on it one night and saw a creature that resembled an adolescent boy. Ubayy greeted him and he returned his greeting. Ubayy then asked him: “What are you, a jinnī or a human?” He replied: “A jinnī.” So he said to him: “Show me your hand.” So he showed him his hand, and it looked like a dog’s paw with dog’s fur. He said: “This is how the jinn are created. The jinn know that there is no one amongst them who is stronger than me.” Ubayy asked him: “What made you come here?” He replied: “We heard that you are a man who loves charity, and we came to take our share from your food.’” Ubayy asked him: “What will protect us from you?” He replied: “Reading Āyah al-Kursī from Sūrah al-Baqarah [i.e. the verse above]. If you read it in the morning, you will be protected from us till the evening. And if you read it in the evening, you will be protected from us till the morning.” Ubayy said: “The following morning, Ubayy went to the Messenger of Allah ﷺ and told him about what had happened. The Messenger of Allah g said: “The evil one spoke the truth.”', '2023-09-17', '2023-09-17 08:32:27', 4, 'Ṭabarānī in Mu’jam al-Kabir 1/201'),
(4, 'سُبْحَانَكَ اللّٰهُمَّ وَبِحَمْدِكَ ، وَتَبَارَكَ اسْمُكَ ، وَتَعَالَىٰ جَدُّكَ ، وَلاَ إِلٰهَ غَيْرُكَ', 'Subḥānaka Allāhumma wa bi-ḥamdika wa tabāraka-smuka wa taʿālā jadduka wa lā ilāha ghayruk.', 'How Perfect are You O Allah, and all praise is Yours. Your Name is most blessed, Your majesty is exalted and there is no god worthy of worship except You.', 'Abū Sa’īd al-Khudrī (raḍiy Allāhu ‘anhu) narrated that when the Messenger of Allah ﷺ got up to pray at night (for tahajjud prayer) he uttered the takbīr and then said [the above].\r\n\r\nHe then said: لاَ إِلَهَ إِلاَّ اللَّهُ (There is no god but Allah) three times.\r\n\r\nHe then said: اللَّهُ أَكْبَرُ كَبِيرًا (Allah is altogether great) three times.\r\n\r\ne then said: أَعُوْذُ بِاللّهِ السَّمِيْعِ الْعَلِيْمِ مِنَ الشَّيْطَانِ الرَّجِيْمِ، مِنْ هَمْزِهِ وَنَفْخِهِ وَنَفْثِهِ (I seek protection in Allah, the All-Hearing and All-Knowing from the rejected Shaytān; from him inciting madness, pride and reprehensible poetry.)', '2023-09-17', '2023-09-17 08:35:46', 5, 'Abū Dāwūd 775');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogTagID` (`TID`),
  ADD KEY `BlogUserID` (`UID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `duas`
--
ALTER TABLE `duas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DuaAdminID` (`AID`);

--
-- Indexes for table `duaspoints`
--
ALTER TABLE `duaspoints`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DuaPointsDuaID` (`DID`);

--
-- Indexes for table `namesofallah`
--
ALTER TABLE `namesofallah`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NamesAdminID` (`AID`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `QuoteAdminID` (`AID`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `StoriesAdminID` (`AID`),
  ADD KEY `StoriesTagID` (`TID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdminTagID` (`AID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `user_fav_blogs`
--
ALTER TABLE `user_fav_blogs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FavUserID` (`UID`),
  ADD KEY `FavBlogID` (`BID`);

--
-- Indexes for table `user_fav_duas`
--
ALTER TABLE `user_fav_duas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FavUsersID` (`UID`),
  ADD KEY `FavDuaID` (`DID`);

--
-- Indexes for table `user_fav_stories`
--
ALTER TABLE `user_fav_stories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FavsUserID` (`UID`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdminID` (`AID`),
  ADD KEY `UserID` (`UID`);

--
-- Indexes for table `zikr`
--
ALTER TABLE `zikr`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ZikrAdminID` (`AID`);

--
-- Indexes for table `zikrpoints`
--
ALTER TABLE `zikrpoints`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PointsZikrID` (`ZID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `duas`
--
ALTER TABLE `duas`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `duaspoints`
--
ALTER TABLE `duaspoints`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `namesofallah`
--
ALTER TABLE `namesofallah`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_fav_blogs`
--
ALTER TABLE `user_fav_blogs`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_fav_duas`
--
ALTER TABLE `user_fav_duas`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_fav_stories`
--
ALTER TABLE `user_fav_stories`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zikr`
--
ALTER TABLE `zikr`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zikrpoints`
--
ALTER TABLE `zikrpoints`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `BlogTagID` FOREIGN KEY (`TID`) REFERENCES `tags` (`ID`),
  ADD CONSTRAINT `BlogUserID` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `duas`
--
ALTER TABLE `duas`
  ADD CONSTRAINT `DuaAdminID` FOREIGN KEY (`AID`) REFERENCES `admins` (`ID`);

--
-- Constraints for table `duaspoints`
--
ALTER TABLE `duaspoints`
  ADD CONSTRAINT `DuaPointsDuaID` FOREIGN KEY (`DID`) REFERENCES `duas` (`ID`);

--
-- Constraints for table `namesofallah`
--
ALTER TABLE `namesofallah`
  ADD CONSTRAINT `NamesAdminID` FOREIGN KEY (`AID`) REFERENCES `admins` (`ID`);

--
-- Constraints for table `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `QuoteAdminID` FOREIGN KEY (`AID`) REFERENCES `admins` (`ID`);

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `StoriesAdminID` FOREIGN KEY (`AID`) REFERENCES `admins` (`ID`),
  ADD CONSTRAINT `StoriesTagID` FOREIGN KEY (`TID`) REFERENCES `tags` (`ID`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `AdminTagID` FOREIGN KEY (`AID`) REFERENCES `admins` (`ID`);

--
-- Constraints for table `user_fav_blogs`
--
ALTER TABLE `user_fav_blogs`
  ADD CONSTRAINT `FavBlogID` FOREIGN KEY (`BID`) REFERENCES `blogs` (`ID`),
  ADD CONSTRAINT `FavUserID` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `user_fav_duas`
--
ALTER TABLE `user_fav_duas`
  ADD CONSTRAINT `FavDuaID` FOREIGN KEY (`DID`) REFERENCES `duas` (`ID`),
  ADD CONSTRAINT `FavUsersID` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `user_fav_stories`
--
ALTER TABLE `user_fav_stories`
  ADD CONSTRAINT `FavsUserID` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `writers`
--
ALTER TABLE `writers`
  ADD CONSTRAINT `AdminID` FOREIGN KEY (`AID`) REFERENCES `admins` (`ID`),
  ADD CONSTRAINT `UserID` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `zikr`
--
ALTER TABLE `zikr`
  ADD CONSTRAINT `ZikrAdminID` FOREIGN KEY (`AID`) REFERENCES `admins` (`ID`);

--
-- Constraints for table `zikrpoints`
--
ALTER TABLE `zikrpoints`
  ADD CONSTRAINT `PointsZikrID` FOREIGN KEY (`ZID`) REFERENCES `zikr` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
