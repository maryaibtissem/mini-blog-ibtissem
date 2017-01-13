-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 13 Janvier 2017 à 14:50
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `menai`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `nom_article` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_auteur` int(11) NOT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id_article`, `nom_article`, `id_auteur`) VALUES
(26, ' Une idÃ©e toute simple de cocktail pour le plus grand plaisir de nos enfants. IngrÃ©dients pour 1 personne : 30ml de jus d''ananas30ml d''eau de CoCo30ml de jus de Cranberries1cÃ s de jus de framboise1cÃ c de jus de Citron Vert2 gouttes de Tabasco2-3 framb', 0),
(27, ' Des bananes qui s''abiment dans votre corbeille Ã  fruits? IngrÃ©dients ( pour 6-8 personnes ) 3 bananes285g de farine100g de sucre en poudre100g +1cÃ s de sucre de canne110g de beurre ramolli120ml de lait2 Å“ufs1 sachet de levure chimique1 cÃ c d''extrait', 0),
(28, 'Je ne sais pas vous, mais moi l''hiver j''ai toujours froid : aux pieds, aux doigts et au nez. C''est franchement relou, mais j''ai dÃ©cidÃ© de me battre cette annÃ©e. Oh yeah ! Je me fais plus embÃªter par le froid ! Je sors les armes. Bon pour le nez et les', 0),
(29, 'et voilÃ  ! Nous sommes en 2017. Vous savez ce que Ã§a veut dire ? Les fringues toute pleine de glitter s''en vont des boutiques pour faire place aux nouvelles collections ! Moment de grÃ¢ce, moment intense. J''ai donc fait du shopping. Voici le butin. ', 0),
(92, ' fffgffdx', 81),
(93, ' w<scdsd', 81),
(94, ' dscxw cw', 81),
(95, ' dscxw cw', 81),
(96, ' salut', 96),
(97, ' Mais par-dessus tout il mâ€™apparut quelque chose dâ€™impÃ©rieux en ce qui concerne lâ€™hÃ©ritage des hommes, hÃ©ritage que de gÃ©nÃ©ration en gÃ©nÃ©ration ils se transmettent lâ€™un Ã  lâ€™autre, car si, dans le silence de mon amour, je vais lentement p', 97),
(98, ' Mais par-dessus tout il mâ€™apparut quelque chose dâ€™impÃ©rieux en ce qui concerne lâ€™hÃ©ritage des hommes, hÃ©ritage que de gÃ©nÃ©ration en gÃ©nÃ©ration ils se transmettent lâ€™un Ã  lâ€™autre, car si, dans le silence de mon amour, je vais lentement par la ville et regarde celle-lÃ  qui parle au fiancÃ© et lui sourit avec une crainte tendre, ou celle-ci qui attend le retour du guerrier, ou cette autre qui rÃ©primande sa servante, ou celui-lÃ  qui prÃªche la rÃ©signation ou la justice, ou celui-lÃ  qui divise la foule, se dresse dans sa vengeance et prend la dÃ©fense du faible, ou cet autre simplement qui sculpte son objet dâ€™ivoire et le recommence et pas Ã  pas se rapproche dâ€™une perfection qui est en lui. Si je considÃ¨re ma ville quand elle sâ€™endort et fait ce bruit qui va mourant comme celui dâ€™une cymbale que lâ€™on a frappÃ©e et qui rÃ©sonne encore et qui sâ€™apaise comme si le soleil lâ€™avait agitÃ©e, de mÃªme quâ€™il agite un essaim dâ€™abeilles, puis vient le soir qui lasse leurs ailes et rentre le parfum des fleurs, et il nâ€™est plus pour les guider de sillages dans le lit des vents. Quand je vois sâ€™Ã©teindre ces lumiÃ¨res et tous ces feux sâ€™endormir sous la cendre, chacun ayant rentrÃ© son bien, qui sa moisson au fond des granges, qui ses enfants qui jouaient sur le seuil, qui son chien ou son Ã¢ne, qui son tabouret de vieillard, quand enfin ma ville repose rangÃ©e comme un feu sous la cendre, et que toutes les rÃ©flexions, toutes les priÃ¨res, tous les projets, tous les Ã©lans, toutes les craintes, tous les mouvements du cÅ“ur pour saisir ou pour rejeter, tous les problÃ¨mes non rÃ©solus qui attendent leurs solutions, toutes les haines qui ne tueront point avant le jour, toutes les ambitions qui ne dÃ©couvriront rien avant lâ€™aube, toutes les priÃ¨res qui liaient lâ€™homme Ã  Dieu rÃ©servÃ©es, inutiles comme des Ã©chelles dans le magasin, sont en sursis et comme morts mais non Ã©teints puisque ce gigantesque patrimoine, qui ne sert de rien dans lâ€™instant, nâ€™est point perdu, mais rÃ©servÃ© et reportÃ©, et que le soleil dÃ¨s quâ€™il agitera lâ€™essaim le rendra comme un hÃ©ritage, et que chacun reprendra sa recherche, sa joie, sa peine, sa haine ou son ambition, et que ma colonie dâ€™abeilles retournera Ã  ses chardons et Ã  ses lis, alors je me demande : quâ€™est-il de ces greniers dâ€™images ?â€¦\r\n\r\nEt il me paraÃ®t bien Ã©vident que, si je disposais dâ€™une humanitÃ© encore inanimÃ©e et si je voulais lâ€™Ã©duquer et lâ€™instruire et la remplir des mÃªmes mille mouvements divers, le pont du langage nâ€™y suffirait point.\r\n\r\nCar certes nous communiquons, cependant les mots de nos livres ne contiennent point le patrimoine. Et si je prends des enfants, et si je les brasse et si je les enseigne chacun dans une direction arbitraire, alors jâ€™aurai perdu une partie de lâ€™hÃ©ritage. Ainsi de mon armÃ©e si ne sâ€™Ã©tablit point de lâ€™un Ã  lâ€™autre la continuitÃ© du contact qui fait de cette armÃ©e une dynastie sans rupture. Et certes, ils recevront les enseignements de leurs caporaux. Et, certes, ils subiront lâ€™autoritÃ© de leurs capitaines. Mais les mots dont disposent et caporaux et capitaines ne sont que rÃ©servoirs infiniment insuffisants pour transmettre de lâ€™un Ã  lâ€™autre un acquis qui ne peut pas se dÃ©nombrer et ne sâ€™exprime point en formules. Et quâ€™il nâ€™est point possible de faire charrier par la parole ou par le livre. Car il sâ€™agit dâ€™attitudes intÃ©rieures, et de points de vue particuliers, et de rÃ©sistances, et dâ€™Ã©lans, et de systÃ¨mes de liaison entre les pensÃ©es et entre les chosesâ€¦ Et si je veux les expliquer ou les exposer je les dÃ©monte en leurs parties et il nâ€™en reste rien. Ainsi du domaine qui appelle lâ€™amour et dont je nâ€™aurai rien dit si jâ€™ai parlÃ© des chÃ¨vres, des moutons, des demeures et des montagnes, et dont le trÃ©sor intÃ©rieur ne se transmet point par la parole mais par la filiation de lâ€™amour. Et dâ€™amour en amour ils se lÃ¨guent cet hÃ©ritage. Mais si vous rompez le contact une seule fois de gÃ©nÃ©ration en gÃ©nÃ©ration, alors meurt cet amour. Et si vous rompez une fois le contact entre les aÃ®nÃ©s et les cadets dans votre armÃ©e, alors votre armÃ©e nâ€™est plus que faÃ§ade dâ€™une maison vide et sâ€™Ã©boulera au premier coup, et si vous rompez le contact entre le meunier et son fils, alors vous y perdrez le plus prÃ©cieux du moulin et sa morale et sa ferveur et les mille coups de mains qui ne sâ€™expriment pas et les mille attitudes qui se justifient mal par la raison mais qui sont â€” car il est plus dâ€™intelligence enfouie dans les choses telles quâ€™elles sont que dans les mots â€” mais vous leur demandez de rebÃ¢tir le monde par la seule lecture du petit livre qui nâ€™est quâ€™images et reflets inefficaces et vides devant la somme des expÃ©riences. Et vous faites de lâ€™homme une bÃªte primitive et nue, ayant oubliÃ© que lâ€™humanitÃ© dans sa dÃ©marche est celle dâ€™un arbre qui croÃ®t et se continue de lâ€™un Ã  travers lâ€™autre, comme la puissance de lâ€™arbre dure Ã  travers ses nÅ“uds et ses torsades et la division de ses branches. Et jâ€™ai affaire Ã  un grand corps et jâ€™ignore, moi, ce que câ€™est que mourir quand je regarde du haut de ma citÃ©, car ici et lÃ  tombent des feuilles, ici et lÃ  naissent des bourgeons et cependant dure le tronc solide Ã  travers. Mais par ces maux particuliers rien dâ€™essentiel nâ€™est lÃ©sÃ© et tu le vois, ce temple, continuer de se bÃ¢tir et ce grenier continuer de se dÃ©verser et de se remplir, et ce poÃ¨me dâ€™embellir, et de se lustrer lâ€™Ã©paulement courbe de la fontaine. Mais si tu sÃ©pares les gÃ©nÃ©rations câ€™est comme si tu voulais recommencer lâ€™homme lui-mÃªme dans le milieu de sa vie et, ayant effacÃ© de lui tout ce quâ€™il savait, sentait, comprenait, dÃ©sirait et craignait, remplacer cette somme de connaissances devenues chair par les maigres formules tirÃ©es dâ€™un livre, ayant supprimÃ© toute la sÃ¨ve qui montait Ã  travers le tronc et ne transmettant plus rien aux hommes que ce qui est susceptible de se codifier. Et comme la parole fausse pour saisir, et simplifie pour enseigner, et tue pour comprendre, ils cessent dâ€™Ãªtre alimentÃ©s par la vie.\r\n\r\nMais moi je dis : il est bon de favoriser dans la citÃ© la genÃ¨se des dynasties. Et si dâ€™un petit groupe sont seuls tirÃ©s mes guÃ©risseurs, mais disposant dâ€™un hÃ©ritage complet et non seulement de quelques mots, je disposerai en fin de compte de guÃ©risseurs de plus de gÃ©nie que si jâ€™Ã©tends ma sÃ©lection Ã  tout mon peuple et engage les fils de soldats et de meuniers. Et ce nâ€™est point que je brime les vocations, car ce tronc formera un noyau assez dur pour que jâ€™y puisse greffer des branches Ã©trangÃ¨res. Et ma dynastie absorbera et transformera en soi-mÃªme les aliments nouveaux que les vocations lui fourniront.\r\n\r\nCar une fois de plus il me fut enseignÃ© que la logique tue la vie. Et quâ€™elle ne contient rien par elle-mÃªmeâ€¦\r\n\r\nMais ils se sont trompÃ©s sur lâ€™homme les faiseurs de formules. Et ils ont confondu la formule qui est ombre plate du cÃ¨dre avec le cÃ¨dre dans son volume, son poids, sa couleur, sa charge dâ€™oiseaux et son feuillage, lesquels ne sauraient sâ€™exprimer et tenir dans le faible vent des parolesâ€¦\r\n\r\n\r\nCar ceux-lÃ  confondent la formule qui dÃ©signe et lâ€™objet dÃ©signÃ©.\r\n\r\n\r\nAinsi mâ€™apparut-il quâ€™il Ã©tait vain et dangereux dâ€™interdire les contradictions. Ainsi rÃ©pondais-je Ã  mes gÃ©nÃ©raux qui me venaient parler de lâ€™ordre mais confondaient lâ€™ordre qui est puissance avec lâ€™arrangement des musÃ©es.\r\n\r\nCar moi je dis que lâ€™arbre est ordre. Mais ordre ici câ€™est unitÃ© qui domine le disparate. Car cette branche-ci porte son nid dâ€™oiseaux et cette autre ne le porte point. Car celle-ci porte son fruit et cette autre ne le porte point. Car celle-ci monte vers le ciel et cette autre penche vers le sol. Mais ils sont soumis, mes gÃ©nÃ©raux, Ã  lâ€™image des revues militaires et ils disent que sont en ordre les objets seuls qui ne diffÃ¨rent plus les uns des autres. Ainsi, si je les laissais faire, ils perfectionneraient les livres saints qui montrent un ordre lequel est sagesse de Dieu, en mettant en ordre les caractÃ¨res dont le premier enfant venu verrait bien quâ€™ils sont tous mÃªlÃ©s. Ainsi, les A ensemble, les B ensemble, les C ensembleâ€¦, et ainsi disposeraient-ils dâ€™un livre bien en ordre. Un livre pour gÃ©nÃ©raux.\r\n\r\nEt comment supporteraient-ils ce qui ne peut se formuler ou nâ€™a pas abouti encore, ou entre en contradiction avec une autre vÃ©ritÃ© ? Comment sauraient-ils que, dans un langage qui formule mais ne saisit point, deux vÃ©ritÃ©s peuvent sâ€™opposer ? Et que je puis parler sans me contredire de la forÃªt ou du domaine, malgrÃ© que ma forÃªt empiÃ¨te sur plusieurs domaines sans peut-Ãªtre en couvrir un seul en totalitÃ©, et mon domaine sur plusieurs forÃªts sans quâ€™aucune peut-Ãªtre y soit entiÃ¨rement contenue ? Et lâ€™un ne nie point lâ€™autre. Mais voici que mes gÃ©nÃ©raux, sâ€™ils cÃ©lÃ¨brent les domaines, font trancher la tÃªte des poÃ¨tes qui chanteraient la forÃªt.\r\n\r\nCar autre chose est de sâ€™opposer et autre chose de se contredire et je ne connais quâ€™une vÃ©ritÃ© qui est la vie et je ne reconnais quâ€™un seul ordre qui est lâ€™unitÃ© quand elle domine les matÃ©riaux. Et peu mâ€™importe si les matÃ©riaux sont disparates. Mon ordre câ€™est lâ€™universelle collaboration de tous Ã  travers lâ€™un, et cet ordre mâ€™oblige Ã  crÃ©ation permanente. Car il mâ€™oblige Ã  fonder ce langage qui absorbera les contradictions. Et qui lui-mÃªme est vie. Il ne sâ€™agit jamais de refuser pour crÃ©er lâ€™ordre. Car si dâ€™abord je refuse la vie et aligne ceux de ma tribu comme des poteaux le long dâ€™une route, est parfait lâ€™ordre que jâ€™ai atteint. Ã‰galement, si je rÃ©duis mes hommes Ã  nâ€™Ãªtre plus quâ€™une colonie de termites. Mais en quoi les termites me sÃ©duiraient-ils ? Car jâ€™aime lâ€™homme dÃ©livrÃ© par sa religion et vivifiÃ© par les dieux que je fonde en lui : maison, domaine, empire, royaume de Dieu, afin quâ€™il se puisse Ã©changer toujours contre plus vaste que soi. Et pourquoi donc ne les laisserais-je point disputer entre eux, sachant que le geste qui rÃ©ussit est fait de tous ceux qui manquent leur but, et sachant que pour se grandir lâ€™homme doit crÃ©er et non rÃ©pÃ©ter. Car alors il ne sâ€™agit plus pour lui que de consommer des provisions faites. Sachant enfin que tout, mÃªme la forme de la carÃ¨ne, doit sâ€™accroÃ®tre et vivre et se transformer sinon elle nâ€™est plus que mort, objet de musÃ©e, ou routine. Et je distingue dâ€™abord la continuitÃ©, de la routine. Et je distingue la stabilitÃ©, de la mort. Ni la stabilitÃ© du cÃ¨dre ni la stabilitÃ© de lâ€™empire ne se fondent sur leur dÃ©crÃ©pitude. Â« Ceci est bien, disent mes gÃ©nÃ©raux, et ne changera donc plus ! Â» Mais moi je hais les sÃ©dentaires et dis mortes les villes achevÃ©es. ', 97),
(99, ' jiooooooooooooooooooooooooooooooo', 98),
(100, ' salut', 94);

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE IF NOT EXISTS `auteur` (
  `id_auteur` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `pseudo`, `mdp`) VALUES
(81, 'marya', '123'),
(93, '', ''),
(94, 'esteban71', 'ibtissem'),
(95, 'alex', '456'),
(96, 'Florian', 'aze'),
(97, 'Boris', '123456'),
(98, 'olivier', '1234');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id_cat` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cat` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `nom_cat`) VALUES
(1, 'cuisine'),
(3, 'mode'),
(4, 'astuce_beaute');

-- --------------------------------------------------------

--
-- Structure de la table `join_articles_categories`
--

CREATE TABLE IF NOT EXISTS `join_articles_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_article` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Contenu de la table `join_articles_categories`
--

INSERT INTO `join_articles_categories` (`id`, `id_article`, `id_cat`) VALUES
(11, 26, 1),
(12, 27, 1),
(13, 28, 4),
(14, 29, 4),
(15, 30, 1),
(16, 31, 3),
(17, 32, 3),
(18, 33, 3),
(19, 34, 3),
(20, 35, 1),
(21, 36, 1),
(22, 37, 1),
(23, 38, 1),
(24, 39, 1),
(25, 40, 1),
(26, 41, 1),
(27, 42, 1),
(28, 43, 1),
(29, 44, 1),
(30, 45, 1),
(31, 46, 1),
(32, 47, 1),
(33, 48, 1),
(34, 49, 1),
(35, 50, 1),
(36, 51, 1),
(37, 52, 1),
(38, 53, 1),
(39, 54, 1),
(40, 55, 1),
(41, 56, 1),
(42, 57, 1),
(43, 58, 1),
(44, 59, 1),
(45, 60, 1),
(46, 61, 1),
(47, 62, 1),
(48, 63, 1),
(49, 64, 1),
(50, 65, 1),
(51, 66, 1),
(52, 67, 1),
(53, 68, 1),
(54, 69, 1),
(55, 70, 1),
(56, 71, 1),
(57, 72, 3),
(58, 73, 3),
(59, 74, 4),
(60, 75, 3),
(61, 76, 3),
(62, 77, 3),
(63, 78, 3),
(64, 79, 3),
(65, 80, 1),
(66, 81, 1),
(67, 82, 1),
(68, 83, 1),
(69, 84, 1),
(70, 85, 3),
(71, 86, 3),
(72, 87, 3),
(73, 88, 3),
(74, 89, 3),
(75, 90, 3),
(76, 91, 1),
(77, 92, 1),
(78, 93, 1),
(79, 94, 3),
(80, 95, 3),
(81, 96, 1),
(82, 97, 1),
(83, 98, 1),
(84, 99, 3),
(85, 100, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
