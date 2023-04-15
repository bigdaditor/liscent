enum loginPlatform {
  kakao("kakao", "yellow"),
  naver("naver", "green"),
  google("google", "white");

  final String name;
  final String color;

  const loginPlatform(
    this.name,
    this.color
  );
}