package cn.edu.zust.bean.jsp;
public class SimpleBean {
    private String name;
    private int age;

    public SimpleBean() {
        this.name = "未命名";
        this.age = 0;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}