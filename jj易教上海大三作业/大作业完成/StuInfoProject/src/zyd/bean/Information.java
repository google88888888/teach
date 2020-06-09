package zyd.bean;
public class Information
{
	private String id;
    private String name;
    private String sex;
    private int age ;
    private String major;
    private String grade;
    public Information(String id, String name, String sex, int age, String grade,String major)
	{
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.major=major;
		this.grade = grade;
	}
	public Information()
	{
		super();
	}
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getSex()
	{
		return sex;
	}
	public void setSex(String sex)
	{
		this.sex = sex;
	}
	public int getAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public String getmajor()
	{
		return major;
	}
	public void setmajor(String major)
	{
		this.major = major;
	}
	public String getGrade()
	{
		return grade;
	}
	public void setGrade(String grade)
	{
		this.grade = grade;
	}
	


}
