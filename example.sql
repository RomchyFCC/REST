-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2018 at 02:50 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `restful`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `created_at`) VALUES
(1, 'Drink up', 'If I stop drinking all at once, I\'m afraid the cumulative hangover would kill me', 'Archer', '2018-09-02 14:12:06'),
(2, 'Bloody Hell', 'Bloody Mary, full of vodka, blessed are you among cocktails. Pray for me now at the hour of my death, which I hope is soon... Amen.', 'Archer', '2018-09-02 14:14:16'),
(3, 'In the Black', 'You killed a black astronaut, Cyril! That\'s like killing a unicorn!', 'Archer', '2018-09-02 14:15:02'),
(4, 'Eye see what you did there', 'Lana, your eyes are amazing. I mean, not compared to your tits, but...', 'Archer', '2018-09-02 14:16:42'),
(5, 'Slurred Lines', 'I\'m not slurring my words, I\'m talking in cursive.', 'Archer', '2018-09-02 14:15:52'),
(6, 'Bad to the Bone', 'WHAT?! I\'m sorry but I can\'t hear you over the sound of my giant, throbbing erection!!!', 'Archer', '2018-09-02 14:17:43'),
(7, 'Sterling on Drinking', '»You drank too much!« Is that even a thing?', 'Archer', '2018-09-02 14:18:39'),
(8, 'Food for thought', 'Don\'t judge me, FOOD', 'Archer', '2018-09-02 14:19:59'),
(9, 'The Long and Short of It', 'RELAX, It\'s North Korea, the nation-state equivalent of the short bus', 'Archer', '2018-09-02 14:22:06'),
(10, 'Ants In Your Pants', 'Do you want ants? Because that\'s how you get ants.', 'Archer', '2018-09-02 14:25:04'),
(11, 'Coke and a Smile', 'People who like you because you have cocaine aren\'t people you want as friends, Pam!', 'Archer', '2018-09-02 14:25:53'),
(12, 'Danger ZONE', 'Something something DANGER ZONE!', 'Archer', '2018-09-02 14:26:30'),
(13, 'Can you hear me now?', 'I can\'t hear you over the deafening sound of my own awesomeness.', 'Archer', '2018-09-02 14:27:12'),
(14, 'Cat got your tongue?', 'You gotta get a tire swing, a tree branch, something. That ocelot is DESPERATE for something to play with. It\'s like meow-schwitz in there.', 'Archer', '2018-09-02 14:28:51'),
(15, 'What a croc', 'No, the swamp\'s too dirty. It\'s full of whatever alligators shit out, which I can only assume is people.', 'Archer', '2018-09-02 14:29:45'),
(16, 'Pop goes the Weasel', 'I hate surprises. I mean, except surprise fellatio. That, I like.', 'Archer', '2018-09-02 14:30:36'),
(17, 'Pain in the nect', 'The tactical turtleneck, Lana. The... tactleneck.', 'Archer', '2018-09-02 14:31:21'),
(18, 'Now we\'re cooking', 'Karate? The Dane Cook of martial arts?', 'Archer', '2018-09-02 14:31:52'),
(19, 'The most interesting spy in the world', 'I don\'t always drink. Wait... Yes I do.', 'Archer', '2018-09-02 14:32:36'),
(20, 'Rhyme or reason', 'Roses are red, violets are blue, I hate rhyming. Penis.', 'Archer', '2018-09-02 14:33:21'),
(21, 'Legends of the fall', 'All moms gave birth to a child. Except mine, she gave birth to a legend.', 'Archer', '2018-09-02 14:34:15'),
(22, 'Less is Whore', 'Sorry, I was picturing whore island.', 'Archer', '2018-09-02 14:34:44'),
(23, 'Drink and Bear it', 'All I\'ve had today is like, six gummy bears and some scotch', 'Archer', '2018-09-02 14:43:36'),
(24, 'Plane and simple', 'Uh, hello, airplanes? It\'s blimps. You win. Bye.', 'Archer', '2018-09-02 14:46:04'),
(25, 'Stranger Danger', 'Call Kenny Loggins, cause you\'re in the DANGER ZONE!', 'Archer', '2018-09-02 14:46:54'),
(26, 'Save the Date', 'Benefits of dating me: You will be dating me. I could go on, but I think I have made my point.', 'Archer', '2018-09-02 14:47:59'),
(27, 'The Hills Have Thighs', 'You are the finest piece of ass I ever had and I don\'t care who knows it. I am so glad I got to roam those hillsides.', 'Archer', '2018-09-02 14:48:49'),
(28, 'Sweet and Sour', 'Sour mix? In a margarita? What is this? Auschwitz?', 'Archer', '2018-09-02 14:49:28'),
(29, '', 'Er, phrasing.', 'Archer', '2018-09-02 14:50:55'),
(30, 'On the importance of friendship', 'Are you kidding? Dude. Bros before apparent threats to national security.', 'Archer', '2018-09-02 14:52:49'),
(31, 'Crocodiles', 'Gee, I don\'t know. Maybe deep down I\'m afraid of any apex predator that lived through the K-T extinction. Physically unchanged for a hundred million years, because it\'s the perfect killing machine. A half ton of cold-blooded fury, the bite force of 20,000 Newtons, and stomach acid so strong it can dissolve bones and hoofs.', 'Archer', '2018-09-02 15:17:36'),
(32, 'Poor Woodhouse', 'Because I told you to buy lemon curd, Woodhouse. Now what am I going to spread on my toast? Your tears?', 'Archer', '2018-09-02 15:19:14'),
(33, '', 'These cannot be your only shoes. What am I saying? It\'s Russia. People probably come from miles around just to get their picture taken in those.', 'Archer', '2018-09-02 15:20:35'),
(34, 'Cyborg revolution', 'Sorry, that\'s just a, uh, sympathy boner.', 'Archer', '2018-09-02 15:21:33'),
(35, 'Something', 'I swear to god I had something for this.', 'Archer', '2018-09-02 15:23:24'),
(36, '', 'Boop.', 'Archer', '2018-09-02 15:23:46'),
(37, '', 'Rampage!', 'Archer', '2018-09-02 15:24:07'),
(38, '', 'Just the tip.', 'Archer', '2018-09-02 15:24:26'),
(39, '', 'Idiots doing idiot things, because they\'re idiots.', 'Archer', '2018-09-02 15:24:51'),
(40, '', 'Can\'t or won\'t?', 'Archer', '2018-09-02 15:25:09'),
(41, '', 'Lana. Lana! LANAAAAAAAAA!!!', 'Archer', '2018-09-02 15:29:53'),
(42, '', 'Hey, proposition: first person to untie me--guy or gal--I will let him or her give me a handy. Come on, let\'s share the milk of human kindness!', 'Archer', '2018-09-02 15:31:37'),
(43, '', 'Oh, I\'m sorry. I guess I skipped the Emily Post chapter on how to introduce your mother to a hooker.', 'Archer', '2018-09-02 15:34:43'),
(44, '', 'He\'s not coming back from that. That chick was, like, the Pele of anal.', 'Archer', '2018-09-02 15:35:35'),
(45, '', 'I\'ve waited my entire life to say this exact phrase: I\'m commandeering this airboat!', 'Archer', '2018-09-02 15:37:02'),
(46, '', 'Does internet porn know you\'re cheating on it?', 'Archer', '2018-09-02 15:37:50'),
(47, '', 'I bet I won\'t even be able to eat spaghetti and meatballs ever again. Oh god, I could eat. Not necessarily spaghetti and meatballs, but not necessarily not spaghetti and meatballs. I mean, I really like spaghetti and meatballs. Man, if I don\'t get some spaghetti and meatballs in me, I might literally die.', 'Archer', '2018-09-02 15:40:26'),
(48, '', 'Big whoop. I\'m spooning a Barrett .50-cal. I could kill a building.', 'Archer', '2018-09-02 15:42:17'),
(49, '', 'Thanks, jungle. Eat a buffet of dicks.', 'Archer', '2018-09-02 15:44:42'),
(50, '', 'Baby, I was emotionally shattered. Which turns out to be kind of a panty dropper.', 'Archer', '2018-09-02 15:45:46'),
(51, '', 'I am literally wet with jealousy.', 'Lana', '2018-09-02 16:18:30'),
(52, '', 'Anxious? About a half-drunk first timer driving a submarine idiot taking me to the bottom of the ocean to face 40 eco-terrorists led by a crazy person who\'s about to bomb the east coast with nerve gas?', 'Lana', '2018-09-02 16:19:34'),
(53, '', 'Uhm, with your looks, maybe bitchy isn\'t the way to go.', 'Lana', '2018-09-02 16:20:42'),
(54, '', 'I\'m sorry. Your words made sense, but your sarcastic tone did not.', 'Lana', '2018-09-02 16:21:15'),
(55, '', 'I don\'t need a baby to validate my existence.', 'Lana', '2018-09-02 16:21:49'),
(56, '', 'My vulva is smoother than a veal cutlet!', 'Lana', '2018-09-02 16:22:21'),
(57, '', 'Yup!', 'Lana', '2018-09-02 16:22:28'),
(58, '', 'Sploosh...', 'Lana', '2018-09-02 16:22:39'),
(59, '', 'Yes, Archer, it is, because everything, everywhere, everywhen is about the paragon of adequacy that is your dick.', 'Lana', '2018-09-02 16:30:15'),
(60, '', 'Aww, what a scary new feeling for you.', 'Lana', '2018-09-02 16:30:42'),
(61, '', 'Yeah, thanks! The memory of your bare ass will bring me comfort and warmth during the coming nuclear winter.', 'Lana', '2018-09-02 16:32:20'),
(62, '', 'It\'s like my heart is being gripped by the icy fingers of some terrifying ghost of honeymoon future.', 'Lana', '2018-09-02 16:33:41'),
(63, '', 'If you want to know why Archer is Archer, you need to go back in time and have a threesome with Oedipus and Sigmund Freud.', 'Lana', '2018-09-02 16:34:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
