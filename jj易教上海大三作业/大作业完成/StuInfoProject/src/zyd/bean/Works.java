package zyd.bean;

public class Works {
    private int id;
    private String company;
    private String position;
    private String salary;
    private String phone;
    private String description;


    public void setId(int id) {
        this.id = id;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public String getCompany() {
        return company;
    }

    public String getPosition() {
        return position;
    }

    public String getSalary() {
        return salary;
    }
    
    public String getPhone() {
        return phone;
    }

    public String getDescription() {
        return description;
    }
}
