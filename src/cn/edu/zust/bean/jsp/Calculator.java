package cn.edu.zust.bean.jsp;

public class Calculator {
    private String firstNum;
    private String secondNum;
    private char operator;
    private String result;

    public Calculator(){
        this.firstNum = "0";
        this.secondNum = "0";
        this.operator = '+';
        this.result = "0";
    }

    public String getFirstNum() {
        return firstNum;
    }

    public void setFirstNum(String firstNum) {
        this.firstNum = firstNum;
    }

    public String getSecondNum() {
        return secondNum;
    }

    public void setSecondNum(String secondNum) {
        this.secondNum = secondNum;
    }

    public char getOperator() {
        return operator;
    }

    public void setOperator(char operator) {
        this.operator = operator;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public void calculate(){
        switch (this.operator){
            case '+':
                this.result = String.valueOf(Integer.parseInt(this.firstNum)+Integer.parseInt(this.secondNum));
                break;
            case '-':
                this.result = String.valueOf(Integer.parseInt(this.firstNum)-Integer.parseInt(this.secondNum));
                break;
            case '*':
                this.result = String.valueOf(Integer.parseInt(this.firstNum)*Integer.parseInt(this.secondNum));
                break;
            case '/':
                this.result = String.valueOf(Integer.parseInt(this.firstNum)/Integer.parseInt(this.secondNum));
                break;
        }
    }
}