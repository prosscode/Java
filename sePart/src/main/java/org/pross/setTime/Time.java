/**
 * @author pross shawn
 *
 * create time：2018年3月23日
 *
 * content：表示时间的类Time ...
 */
public class Time {
	//定义三个成员变量
	private int hour;
	private int minute;
	private int second;
	
	//设置时间的方法
	public void setTime(int hour, int minute, int second){
		this.hour=hour;
		this.minute=minute;
		this.second=second;
	}
	//获得时间和显示的方法
	public void getTime(){
		System.out.println("现在时间："+this.hour+"点"+this.minute+"分"+this.second+"秒");
	}
	public static void main(String[] args) {
		//实例化
		Time time=new Time();
		//设置时间自动值
		time.setTime(8, 30, 59);
		time.getTime();
	}

}
