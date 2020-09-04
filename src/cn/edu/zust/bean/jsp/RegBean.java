package cn.edu.zust.bean.jsp;

public class RegBean {
    private String name;
    private String password;
    private String tel;
    public RegBean(){
        this.name=null;
        this.password=null;
        this.tel=null;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getTel() {
        return tel;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
}
