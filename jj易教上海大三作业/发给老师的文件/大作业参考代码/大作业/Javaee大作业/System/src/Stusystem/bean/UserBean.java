package Stusystem.bean;

public class UserBean {
    private int id;
    private String usr;
    private String pwd;
    private String email;
    private String tel;

    public UserBean(int id, String usr, String pwd, String email, String tel) {
        this.id = id;
        this.usr = usr;
        this.pwd = pwd;
        this.email = email;
        this.tel = tel;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUsr(String usr) {
        this.usr = usr;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getId() {
        return id;
    }

    public String getUsr() {
        return usr;
    }

    public String getPwd() {
        return pwd;
    }

    public String getEmail() {
        return email;
    }

    public String getTel() {
        return tel;
    }
}
