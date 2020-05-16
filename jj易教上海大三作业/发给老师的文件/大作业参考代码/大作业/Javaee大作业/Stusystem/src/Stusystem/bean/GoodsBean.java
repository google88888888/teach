package Stusystem.bean;
public class GoodsBean {
    private int id;
    private String name;
    private String info;
    private String imgpath;
    private int category;
    private double price;
    private int num;

    public GoodsBean(int id, String name, String info, String imgpath,
                     int category, double price, int num) {
        super();
        this.id = id;
        this.name = name;
        this.info = info;
        this.imgpath = imgpath;
        this.category = category;
        this.price = price;
        this.num = num;
    }
    public void setId(int id){
        this.id = id;
    }
    public int getId(){
        return id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getInfo() {
        return info;
    }
    public void setInfo(String info) {
        this.info = info;
    }
    public String getImgpath() {
        return imgpath;
    }
    public void setImgpath(String imgpath) {
        this.imgpath = imgpath;
    }
    public int getCategory() {
        return category;
    }
    public void setCategory(int category) {
        this.category = category;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public int getNum() {
        return num;
    }
    public void setNum(int num) {
        this.num = num;
    }

}
