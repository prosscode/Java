package mapper;



/**
 * 
 * @author maXpross
 *
 * Create 2018年5月8日
 *
 * Content 订单信息
 */
public interface OrderMapper {
	
	/**
	 *	添加订单信息
	 * @return
	 */
	public int addOrderInfo(double sale);
	
	/**
	 *  查询订单数量
	 * @return
	 */
	public int selectOrderNum();
	
	/**
	 *  查询总的销售额
	 * @return
	 */
	public double selectAllSale();
	
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
