package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.OrderMapper;
import service.OrderService;

@Service
public class OrderServerImpl implements OrderService {

	@Autowired
	OrderMapper order;
	
	@Override
	public int addOrderInfo(double sale) {
		return order.addOrderInfo(sale);
	}

	@Override
	public int selectOrderNum() {
		int num = order.selectOrderNum();
		return num;
	}

	@Override
	public double selectAllSale() {
		double sale = order.selectAllSale();
		return sale;
	}

	@Override
	public int getAllUser() {
		int allUser = order.getAllUser();
		return allUser;
	}

	@Override
	public int getAllBook() {
		int allBook = order.getAllBook();
		return allBook;
	}

}
