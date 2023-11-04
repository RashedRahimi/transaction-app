class Item{
    String title;
    String category;
    String image;
    String location;
    double price;

    Item(this.title,this.category,this.location,this.price,this.image,);

    static List<Item> recommendition = [
        Item("Modern House", "House", "Herat", 20,"assets/images/item1.jpg"),
        Item("Modern House", "House", "Herat", 20,"assets/images/item1.jpg"),
        Item("Modern House", "House", "Herat", 20,"assets/images/item1.jpg"),
        Item("Modern House", "House", "Herat", 20,"assets/images/item1.jpg"),
    ];
    static List<Item> nearby = [
        Item("Modern House", "House", "Herat", 20,"assets/images/item.jpg"),
        Item("Modern House", "House", "Herat", 20,"assets/images/item.jpg"),
        Item("Modern House", "House", "Herat", 20,"assets/images/item.jpg"),
        Item("Modern House", "House", "Herat", 20,"assets/images/item.jpg"),
    ];
}