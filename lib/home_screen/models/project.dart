class Project {
  const Project({
    required this.title,
    this.description,
    required this.image,
    required this.url,
  });

  final String title;
  final String? description;
  final String image;
  final String url;
}

List<Project> projects = const [
  Project(
    title: "HarrySay",
    description: "A CLI Tool inspired by CowSay",
    image: "assets/images/projects/HarrySay.png",
    url: "https://github.com/ManoVikram/harrysay",
  ),
  Project(
    title: "The Voltz Weather App",
    image: "assets/images/projects/TheVoltzWeatherApp.png",
    url:
        "https://play.google.com/store/apps/details?id=com.manovik18.thevoltzweatherapp",
  ),
  Project(
    title: "The Ping Pong Game",
    description: "A Ping Pong game made with the Turtle module in Python",
    image: "assets/images/projects/PingPongGame.png",
    url: "https://github.com/ManoVikram/ThePingPongGame",
  ),
  Project(
    title: "Job Portal",
    description: "A mobile app built with Flutter",
    image: "assets/images/projects/JobPortalApp.png",
    url: "https://github.com/ManoVikram/The-Voltz-Weather",
  ),
  Project(
    title: "YouTube Downlaoder",
    description: "Simple Python script to download YouTube videos",
    image: "assets/images/projects/YouTubeDownloader.png",
    url: "https://github.com/ManoVikram/YouTube-Downloader",
  ),
  Project(
    title: "Dope News",
    image: "assets/images/projects/DopeNews.png",
    url: "https://github.com/ManoVikram/Dope-News",
  ),
  Project(
    title: "Musik Radio",
    description:
        "An entertainment platform where users can consume audio content",
    image: "assets/images/projects/MusikRadio.png",
    url: "https://github.com/ManoVikram/MusikRadio",
  ),
  Project(
    title: "Squid Game Shop",
    description: "UI concept app built with Flutter",
    image: "assets/images/projects/SquidGameShop.png",
    url: "https://github.com/ManoVikram/Squid-Game-Store",
  ),
  Project(
    title: "Pomodoro Timer",
    description: "Timer to track your focus - Built with Python",
    image: "assets/images/projects/PomodoroTimer.png",
    url: "https://github.com/ManoVikram/PomodoroTimer",
  ),
  Project(
    title: "Infomata App",
    description:
        "Native Android app to help students manage their college works. Built by Palak Jain, Venkat Prasad and Mano Vikram!",
    image: "assets/images/projects/InfomataApp.png",
    url: "https://github.com/palakjain8382/Infomata-App",
  ),
];
