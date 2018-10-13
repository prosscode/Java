/**
 * @author pross shawn
 *
 *         create time：2018年3月23日
 *
 *         content：定义构造函数初始化...
 */
public class Time2 {
	// 定义三个成员变量
	private int hour;
	private int minute;
	private int second;

	//定义构造方法，无参和有参
	public Time2() {
		super();
	}

	public Time2(int hour, int minute, int second) {
		super();
		this.hour = hour;
		this.minute = minute;
		this.second = second;
	}
	//重写toString方法
	@Override
	public String toString() {
		return hour + "点" + minute + "分" + second + "秒";
	}

	public static void main(String[] args) {
		//实例化对象 并初始化
		Time2 time=new Time2(8,30,59);
		System.out.println(time.toString());
//		System.out.println("现在时间："+time.hour+"点"+time.minute+"分"+time.second+"秒");
	}

}
