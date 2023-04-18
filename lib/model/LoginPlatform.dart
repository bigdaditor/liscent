enum LoginSite {
  kakao("kakao", "yellow"),
  naver("naver", "green"),
  google("google", "white");

  final String name;
  final String color;

  const LoginSite(
    this.name,
    this.color
  );
}