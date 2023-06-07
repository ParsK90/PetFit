// ignore_for_file: file_names

class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Merve Arabacı",
    lastMessage: "Umarım iyisindir.",
    image: "assets/demo/profile2.jpg",
    time: "3s önce",
    isActive: false,
  ),
  Chat(
    name: "Esen Türk",
    lastMessage: "Merhaba Esen. Ürün hala...",
    image: "assets/demo/profile3.jpg",
    time: "8dk önce",
    isActive: true,
  ),
  Chat(
    name: "Can Uçar",
    lastMessage: "Ürün hakkında daha fazla...",
    image: "assets/demo/profile1.jpg",
    time: "5g önce",
    isActive: false,
  ),
];
