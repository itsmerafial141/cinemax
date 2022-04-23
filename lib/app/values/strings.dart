// ignore_for_file: non_constant_identifier_names

import 'package:cinemax/app/values/icons.dart';
import 'package:flutter/material.dart';

class MyStrings {
  // Onboarding
  static List<String> onbListImage = [
    "assets/images/onboardingv11.png",
    "assets/images/onboardingv12.png",
    "assets/images/onboardingv13.png",
  ];

  static List<String> onbListTittle = [
    "The biggest international and local film streaming",
    "Offers ad-free viewing of high quality",
    "Our service brings together your favorite series",
  ];

  static List<String> onbListContentTittle = [
    "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient. ",
    "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient. ",
    "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient. ",
  ];

  // Login Signup
  static List<String> loginSignListToolTipMessage = [
    "Google",
    "Ios",
    "Facebook",
  ];

  static List<String> loginSignListImageButton = [
    MyIcons.logo_google,
    MyIcons.logo_apple,
    MyIcons.logo_facebook,
  ];

  // Home
  static List<String> listCarouselTittle = [
    "Black Panther: Wakanda Forever",
    "Spider-Man No Way Home",
    "Life of PI",
  ];

  static List<String> listCarouselDate = [
    "On March 2, 2022",
    "On June 5, 2022",
    "On May 20, 2022",
  ];

  static List<String> listCarouselImage = [
    "assets/images/blackpanther.jpg",
    "assets/images/spidermannowayhome.png",
    "assets/images/lifeofpi.jpg",
  ];

  static final List listKategoriHomePage = [
    "All",
    "Comedy",
    "Animation",
    "Dokumentation",
  ];

  static List<String> listMostPopularImage = [
    "assets/images/blackpanther.jpg",
    "assets/images/spidermannowayhome.png",
    "assets/images/lifeofpi.jpg",
  ];
  static List<String> listMostPopularTittle = [
    "Black Panther: Wakanda Forever",
    "Spider-Man No Way Home",
    "Life of PI",
  ];
  static List<String> listMostPopularKategori = [
    "Action",
    "Action",
    "Drama",
  ];

  // Navigation
  static List<String> listIconNavigation = [
    "assets/icons/home.png",
    "assets/icons/search.png",
    "assets/icons/download(1).png",
    "assets/icons/person.png",
  ];
  static List<String> listIconNavigationLabel = [
    "Home",
    "Search",
    "Download",
    "Profile",
  ];

  // Detail Movie
  static List<String> shareListImageButton = [
    MyIcons.logo_facebook,
    MyIcons.logo_instagram,
    MyIcons.logo_messenger,
    MyIcons.logo_send,
  ];
  static List<String> shareListToolTipMessage = [
    "Facebook",
    "Instagram",
    "Messenger",
    "Send",
  ];

  // Genre
  static List<String> genreListTittle = [
    "Action",
    "Horror",
    "Fantasy",
    "Anime",
    "Romance",
    "Sci-fi",
    "Comedy",
    "Adventures",
  ];
  static List<String> genreListImage = [
    "assets/images/blackpanther.jpg",
    "assets/images/spidermannowayhome.png",
    "assets/images/lifeofpi.jpg",
    "assets/images/anime.jpg",
    "assets/images/romance.jpg",
    "assets/images/Iron-Man-3-Poster-Watermark-550x8151.jpg.jpg",
    "assets/images/comedy.jpg",
    "assets/images/THE-CHRONICLES-OF-NARNIA-Film-Film-Seni-Cetak-Sutra-Poster-Home-Dinding-Dekorasi-24x36inch.png_.jpg",
  ];

  // Profile
  static List<String> listSubMenuProfileAccountTittle = [
    "Member",
    "Change Password",
  ];
  static List<String> listSubMenuProfileAccountImage = [
    MyIcons.profile,
    MyIcons.padlock,
  ];
  static List<String> listSubMenuProfileGeneraltTittle = [
    "Notification",
    "Language",
    "Country",
    "Clear Cache",
  ];
  static List<String> listSubMenuProfileGeneralImage = [
    MyIcons.notification,
    MyIcons.globe,
    MyIcons.finish,
    MyIcons.trash,
  ];
  static List<String> listSubMenuProfileMoreTittle = [
    "Legal and Policies",
    "Help and Feedback",
    "About Us",
  ];
  static List<String> listSubMenuProfileMoreImage = [
    MyIcons.shield,
    MyIcons.question,
    MyIcons.alert,
  ];

  // Genre
  static List<String> listGenreMovie = [
    "Movie",
    "Serial",
  ];

  // Rating
  static List<String> listRatingPG = [
    "G",
    "PG",
    "PG-13",
    "R",
    "NC-17",
  ];

  // Access
  static List<String> listAccess = [
    "Premium",
    "Free",
  ];

  // List data movie
  static var listDataMovie = [
    {
      "id": "MV00",
      "access_id": "ACC1",
      "cast_crew": "CC00",
      "rating": "RT1",
      "tittle": "Black Panther: Wakanda Forever",
      "image": "assets/images/blackpanther.jpg",
      "release": "2021",
      "duration": "148 Minutes",
      "genre": "Action",
      "category": "Movie",
      "rate": "4.8",
      "storyline":
          "Originally a story from Archie Comics which started in 1941, Riverdale centres around a group of high school students who are shocked by the death of classmate, Jason Blossom. Together theyunravel the secrets of Riverdale and who",
    },
    {
      "id": "MV01",
      "access_id": "ACC0",
      "cast_crew": "CC01",
      "rating": "RT2",
      "tittle": "Spider-Man No Way Home",
      "image": "assets/images/spidermannowayhome.png",
      "release": "2021",
      "duration": "162 Minutes",
      "genre": "Action",
      "category": "Movie",
      "rate": "4.9",
      "storyline":
          "Originally a story from Archie Comics which started in 1941, Riverdale centres around a group of high school students who are shocked by the death of classmate, Jason Blossom. Together theyunravel the secrets of Riverdale and who",
    },
    {
      "id": "MV02",
      "access_id": "ACC1",
      "cast_crew": "CC02",
      "rating": "RT3",
      "tittle": "Life Of Pi",
      "image": "assets/images/lifeofpi.jpg",
      "release": "2021",
      "duration": "185 Minutes",
      "genre": "Drama",
      "category": "Movie",
      "rate": "4.2",
      "storyline":
          "Originally a story from Archie Comics which started in 1941, Riverdale centres around a group of high school students who are shocked by the death of classmate, Jason Blossom. Together theyunravel the secrets of Riverdale and who",
    },
    {
      "id": "MV03",
      "access_id": "ACC1",
      "cast_crew": "CC02",
      "rating": "RT5",
      "tittle": "Loki",
      "image": "assets/images/loki2021.jpg",
      "release": "2021",
      "duration": "185 Minutes",
      "genre": "Drama",
      "category": "Serial",
      "rate": "4.1",
      "storyline":
          "The mercurial villain Loki resumes his role as the God of Mischief in a new series that takes place after the events of “Avengers: Endgame”.",
    },
  ];

  static var listAcess = [
    {
      "id": "ACC0",
      "access": "Premium",
    },
    {
      "id": "ACC1",
      "access": "Free",
    },
  ];

  static var listCastAndCrew = [
    {
      "id": "CC000",
      "id_movie": "MV00",
      "image": "assets/images/castcrew.jpg",
      "name": "Jon Watts",
      "position": "Directors",
    },
    {
      "id": "CC01",
      "id_movie": "MV00",
      "image": "assets/images/castcrew.jpg",
      "name": "Chris McKenna",
      "position": "Writers",
    },
    {
      "id": "CC02",
      "id_movie": "MV00",
      "image": "assets/images/castcrew.jpg",
      "name": "Erik Sommers",
      "position": "Writers",
    },
    {
      "id": "CC03",
      "id_movie": "MV01",
      "image": "assets/images/castcrew.jpg",
      "name": "Erik Sommerwwwws",
      "position": "Writers",
    },
    {
      "id": "CC04",
      "id_movie": "MV03",
      "image": "assets/images/michael_waldron.jpg",
      "name": "Michael Waldron",
      "position": "Creator",
    },
    {
      "id": "CC05",
      "id_movie": "MV03",
      "image": "assets/images/tom hiddleston.jpg",
      "name": "Tom Hiddleston",
      "position": "Actor",
    },
    {
      "id": "CC06",
      "id_movie": "MV03",
      "image": "assets/images/Owen Wilson.jpg",
      "name": "Owen Wilson",
      "position": "Actor",
    },
    {
      "id": "CC07",
      "id_movie": "MV03",
      "image": "assets/images/Gugu Mbatha-Raw.jpg",
      "name": "Gugu Mbatha-Raw",
      "position": "Actor",
    },
  ];

  static var listSessionsMovie = [
    {
      "id": "SSMV30",
      "name": "Season 1",
      "id_movie": "MV04",
    },
    {
      "id": "SSMV31",
      "name": "Season 2",
      "id_movie": "MV04",
    },
    {
      "id": "SSMV32",
      "name": "Season 3",
      "id_movie": "MV04",
    },
    {
      "id": "SSMV33",
      "name": "Season 4",
      "id_movie": "MV04",
    },
    {
      "id": "SSMV34",
      "name": "Season 5",
      "id_movie": "MV04",
    },
    {
      "id": "SSMV35",
      "name": "Season 6",
      "id_movie": "MV04",
    },
    {
      "id": "SSMV36",
      "name": "Season 7",
      "id_movie": "MV04",
    },
    {
      "id": "SSMV37",
      "name": "Season 1",
      "id_movie": "MV03",
    },
  ];

  static var listEpisodeMovie = [
    {
      "id": "EPS00",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h30m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS01",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS02",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS03",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS04",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS05",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS06",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS07",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS08",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS09",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS010",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS011",
      "id_session": "SSMV30",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS012",
      "id_session": "SSMV31",
      "image": "assets/images/episode",
      "duration": "1h25m",
      "synopsis":
          "Football player who longs to write his own music. It’s not all smiles for this hunk though after he gets involved with his music teacher.",
    },
    {
      "id": "EPS013",
      "id_session": "SSMV37",
      "image": "assets/images/Glorious Purpose.jpg",
      "duration": "51m",
      "tittle": "Glorious Purpose",
      "synopsis":
          "Loki, the God of Mischief, finds himself out of time and in an unusual place and forced - against his godly disposition - to cooperate with others.",
    },
    {
      "id": "EPS014",
      "id_session": "SSMV37",
      "image": "assets/images/The Variant.jpg",
      "duration": "53m",
      "tittle": "The Variant",
      "synopsis":
          "Mobius puts Loki to work, but not everyone at TVA is thrilled about the God of Mischief's presence.",
    },
    {
      "id": "EPS015",
      "id_session": "SSMV37",
      "image": "assets/images/Lamentis.jpg",
      "duration": "42m",
      "tittle": "Lamentis",
      "synopsis":
          "Loki finds out The Variant's plan, but he has his own that will forever alter both their destinies.",
    },
    {
      "id": "EPS016",
      "id_session": "SSMV37",
      "image": "assets/images/The Nexus Event.jpg",
      "duration": "48m",
      "tittle": "The Nexus Event",
      "synopsis":
          "Frayed nerves and paranoia infiltrate the TVA as Mobius and Hunter B-15 search for Loki and Sylvie.",
    },
    {
      "id": "EPS017",
      "id_session": "SSMV37",
      "image": "assets/images/Journey Into Mystery.jpg",
      "duration": "48m",
      "tittle": "Journey Into Mystery",
      "synopsis":
          "Loki tries to escape The Void, a desolate purgatory where he meets variant versions of himself.",
    },
    {
      "id": "EPS018",
      "id_session": "SSMV37",
      "image": "assets/images/For All Time. Always..jpg",
      "duration": "45m",
      "tittle": "For All Time. Always.",
      "synopsis":
          "The clock is ticking in the season finale which finds Loki and Sylvie on a date with destiny.",
    },
  ];

  static var listRatingMovie = [
    {
      "id": "RT0",
      "name": "G",
    },
    {
      "id": "RT1",
      "name": "PG",
    },
    {
      "id": "RT2",
      "name": "PG-13",
    },
    {
      "id": "RT3",
      "name": "R",
    },
    {
      "id": "RT4",
      "name": "NC-17",
    },
    {
      "id": "RT5",
      "name": "TV-14",
    },
  ];

  // Premium Account
  static List<String> listFitureTittle = [
    "Streaming in high quality",
    "Ad-free viewing experience",
    "Download to watch later",
    "Text of different languages",
    "Stream on multiple devices",
    "With the best audio quality",
  ];
  static List<IconData> listFitureIcon = [
    Icons.hd,
    Icons.remove_circle,
    Icons.download_for_offline,
    Icons.closed_caption_off_rounded,
    Icons.computer_rounded,
    Icons.volume_up_rounded,
  ];

  // Payment Method
  static List<String> listPaymentMethodNoRek = [
    "•••• •••• •••• 87652",
    "•••• •••• •••• 87652",
  ];

  static List<String> listPaymentMethodImage = [
    "assets/images/VISA.png",
    "assets/images/MASTER CARD.png",
  ];
}
