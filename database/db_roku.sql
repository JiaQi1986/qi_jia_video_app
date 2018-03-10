-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 10, 2018 at 04:41 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `genre_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'action'),
(2, 'crime'),
(3, 'war'),
(4, 'family');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `mov_id` int(10) UNSIGNED NOT NULL,
  `mov_name` text NOT NULL,
  `mov_pic` text NOT NULL,
  `mov_desc` text NOT NULL,
  `mov_trailer` text NOT NULL,
  `mov_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`mov_id`, `mov_name`, `mov_pic`, `mov_desc`, `mov_trailer`, `mov_genre`) VALUES
(1, 'Captain America', 'images/captain_america.jpg', 'After the cataclysmic events in New York with The Avengers, Marvel\'s \"Captain America: The Winter Soldier\" finds Steve Rogers, aka Captain America, living quietly in Washington, D.C. and trying to adjust to the modern world. But when a S.H.I.E.L.D. colleague comes under attack, Steve becomes embroiled in a web of intrigue that threatens to put the world at risk. Joining forces with the Black Widow, Captain America struggles to expose the ever-widening conspiracy while fighting off professional assassins sent to silence him at every turn. When the full scope of the villainous plot is revealed, Captain America and the Black Widow enlist the help of a new ally, the Falcon. However, they soon find themselves up against an unexpected and formidable enemy—the Winter Soldier.', 'videos/captain_america_trailer.mp4', 1),
(2, 'Logan', 'images/logan.jpg', 'In the near future, a weary Logan cares for an ailing Professor X in a hide out on the Mexican border. But Logan\'s attempts to hide from the world and his legacy are up-ended when a young mutant arrives, being pursued by dark forces.', 'videos/logan_trailer.mp4', 1),
(3, 'Ironclad', 'images/ironclad.jpg', 'In 13th-century England, a small group of Knights Templar fight to defend Rochester Castle against the tyrannical King John. © 2010 Film & Entertainment VIP Medienfonds 4 GmbH & Co. KG All Rights Reserved. Distributed exclusively in Canada by Alliance Films. All Rights Reserved.', 'videos/ironclad_trailer.mp4', 1),
(4, 'Parker', 'images/parker.jpg', 'Parker (Jason Statham, The Expendables 2 ) is a professional thief who lives by a personal code of ethics: don\'t steal from people who can\'t afford it and don\'t hurt people who don\'t deserve it. But on his latest heist, his crew double crosses him, steals his stash, and leaves him for dead. Determined to make sure they regret it, Parker takes on an unlikely partner, Leslie (Jennifer Lopez, Out of Sight), a savvy insider, who\'s short on cash, but big on looks, smarts and ambition. Together, they devise a plan to hijack the score, take everyone down and get away clean. 2012 INCENTIVE FILM PRODUCTIONS, LLC ALL RIGHTS RESERVED.', 'videos/parker_trailer.mp4', 2),
(5, 'Sin City', 'images/sin_city.jpg', 'A film noir infused with fantasy, Hartigan is a cop who oversees a city filled with demons, players, and criminals along with angels, strippers, and vixens. This Robert Rodriguez-directed film is loaded with style and grit. © 2005 Miramax Film Corp. All Rights Reserved. Distributed Exclusively in Canada by Alliance Films. All Rights Reserved.', 'videos/sin_city_trailer.mp4', 2),
(6, 'S.W.A.T', 'images/swat.jpg', 'An arrested drug kingpin is transported by a Los Angeles Police Department SWAT team led by Jackson\'s character out of the city and into federal custody. Plans go awry when the kingpin offers $100 million to anyone who can free him. (Original Title - S.W.A.T. (2003)) © 2003 Columbia Pictures Industries, Inc.  All Rights Reserved.', 'videos/swat_trailer.mp4', 2),
(7, 'Dunkirk', 'images/dunkirk.jpg', '“Dunkirk” opens as hundreds of thousands of British and Allied troops are surrounded by enemy forces. Trapped on the beach with their backs to the sea they face an impossible situation as the enemy closes in.', 'videos/dunkirk_trailer.mp4', 3),
(8, 'Saving Private Ryan ', 'images/saving_private_ryan.jpg', 'Based on a World War II drama. US soldiers try to save their comrade, paratrooper Private Ryan, who\'s stationed behind enemy lines.', 'videos/saving_private_ryan_trailer.mp4', 3),
(9, 'The Longest Day', 'images/the_longest_day.jpg', 'This is a spectacular account of the events leading up to and through the Allied Forces\' invasion of Normandy, France on D-Day (June 6), 1944 to fight the occupying Germans.    The film is particularly interesting because it looks at D-Day through the eyes of all of the participants, including the Germans, who are overwhelmed by the forces brought against them.  It is in fact a German officer who gives the story its title -- when he views the approaching Allied armada, he says, \"This will be the longest day.\"', 'videos/the_longset_day_trailer.mp4', 3),
(10, 'We Are Family', 'images/we_are_family.jpg', 'Starring  Monique Coleman, Christian Keyes,  Chyna Layne, Lew Temple, Rey Valentin, Serein Wu, Omarosa Manigaul-Stallworth, RonReaco Lee, Shoneji Loraine, Frenchie Davis, D. Woods, Karlie Lewis, Leslie Jones, Datari Turner, June Kyoto Lu    Dir: Trey Haley  Prod: ND Brown, Veronica  Nichols, Jeff Lam  Writer: Anderson Family  Prod. Co: Tri Destined Independent', 'videos/we_are_family_trailer.mp4', 4),
(11, 'We Bought a Zoo', 'images/we_bought_a_zoo.jpg', 'Oscar® Winner Matt Damon gives a heartfelt performance in this delightful film that\'s based on a true story. When his teenage son gets into trouble, Benjamin Mee (Damon) gives up a lucrative newspaper job to move his family to the most unlikely of places: a zoo! With help from an eclectic staff, and with many misadventures along the way, Benjamin embarks on a fresh beginning to restore the dilapidated zoo to its former glory, while uniting his family. From the director of Jerry Maguire, We Bought a Zoo is a wonderful, warm and witty celebration of the human spirit.', 'videos/we_bought_a_zoo_trailer.mp4', 4),
(12, 'Modern Family', 'images/modern_family.jpg', 'Modern Family is an American television mockumentary family sitcom that premiered on ABC on September 23, 2009, which follows the lives of Jay Pritchett and his family, all of whom live in suburban Los Angeles. Pritchett\'s family includes his second wife, their son and his stepson, as well as his two adult children and their spouses and children.', 'videos/modern_family_trailer.mp4', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`mov_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `mov_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
