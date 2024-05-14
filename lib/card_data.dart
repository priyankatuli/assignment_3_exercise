class CardData {
  final String dressName, dressColor, dressSize, dressImage;
  int dressPrice, quantity;

  CardData({
    required this.dressName,
    required this.dressColor,
    required this.dressSize,
    required this.dressPrice,
    required this.dressImage,
    required this.quantity,
  });
}

List<CardData> data = [
  CardData(
    dressName: "Pullover",
    dressColor: "Black",
    dressSize: "L",
    dressPrice: 51,
    dressImage: "https://s3-alpha-sig.figma.com/img/6e2a/6075/d2aebb9b52db31deea621f309362bab4?Expires=1716163200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=g56LRANcTKnqj2EF8wBDcJWCNQnmv4kXtTH-tjg7diUp7dJTP~rJsLHycZuHJhGkFX7JwZPyA8l8ff8Ql5ankjgGuwiQ1VeZdOt8GDX3c~iLF1P1a6Odvv3ikCbCwLZf9S6D-XK~JSDX844TgxsM0p9W4j~RCE1LyjzruBAiv2mYs7UmPQOlPdZrHA-RfdHgQ3OJPxvicUhM2HXVRSvQ2lRCuJsEeiBPHCgYA9N9YKwSWFCqITWQozlm~VxF2H~yrwr-rZZeK3GLkh4n65WbSXQkJve-mcSnhztkM92kpyC9UOQikzi5evTUwaMPjzEdXz~u-kWawlEo~Bgx2KJ6Og__",
    quantity: 1,
  ),
  CardData(
    dressName: "T-Shirt",
    dressColor: "Grey",
    dressSize: "L",
    dressPrice: 30,
    dressImage: "https://s3-alpha-sig.figma.com/img/5e93/8ec8/ffc8353c2e4119cf43ecf6db7e381d9d?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AOW41X2lZLKhWJbYWBA~lsERRXbNpPH~z8OVng-N8F1OK9gyL1PgwEUz5WBua2uuj7rW4Z92kLtSGMxgLWtkky0RpRctYr5mMHZFPTl7Tm4C8xvK51CeRgn5Nzv3kPSp1lnonfMGBFPvjWMkjONpQEo-XkRvnG9CzKA6R9~IEsx4lkPrFRlnMGsKVoWowoE0jX~mVsr~sQcINviFql2PkaWvpFXm1AjCZPRUPK8UzjtILEi7ACkdBCyJrN9cZKAApiqUDWAP~9GVERsYTqSJ6kIrlElJbsx2qtPGekHLFOf4VNyZijDLIP~l2wsjtcD35zTLMOlFpD4xeGL~j8R6IQ__",
    quantity: 1,
  ),
  CardData(
    dressName: "Sport Dress",
    dressColor: "Black",
    dressSize: "M",
    dressPrice: 43,
    dressImage: "https://s3-alpha-sig.figma.com/img/1821/5f62/e259b4c9081785e2fb7f4b553d1a8023?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V2cNFYhw-GsKjP2xFh73rGAH7UQqjpryJ3n4C0A~lLqd1g8CBzjsdCHBLaEokxbgN8r5xvY74yBlit8e1oVcynIuI0IDZy0RW8WmMuL4mUqMIOFVs~QcWd9C721fHMHjKasXvTtDfnHNxDzNvF24kQ3LXdgJfa8BLGizFI-dOA1gifHxmeUFpI~iDn7KFc4zmZ2TEFxmYZk1Bq4ZiOb8xGgsOb0tcT2z7SgCrQO683uneLCqzJ3F6eyk7PGP5tux9r4oueAX4954RpYTAs5~8q13e3vDoNR83LbffgHe5gQ9~gvosnUdmmsyMX~AnY-D5ZBlIzjjHhlYUDznJ4pLWw__",
    quantity: 1,
  )
];