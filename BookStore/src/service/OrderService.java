package service;

/**
 * 
 * @author maXpross
 *
 * Create 2018年5月8日
 *
 * Content
 */
public interface OrderService {

	/**
	 * 添加订单信息
	 * @return
	 */
	int addOrderInfo(double sale);
	
	/**
	 * 查询订单数量
	 * @return
	 */
	int selectOrderNum();
	
	/**
	 * 查询总的销售额
	 * @return
	 */
	double selectAllSale();
	
	/**
	 *  用户数量
	 * @return
	 */
	public int getAllUser();
	
	/**
	 *  书籍数量
	 * @return
	 */
	public int getAllBook();
	

}
