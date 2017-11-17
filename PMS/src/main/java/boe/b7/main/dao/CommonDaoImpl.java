package boe.b7.main.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommonDaoImpl implements CommonDao {
	private final Logger logger = Logger.getLogger(CommonDaoImpl.class.getName());
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<HashMap<String, Object>> checkLogIn(String userId, String password) {
		logger.info("Dao CheckLogIn");
		HashMap<String, Object> hMap = new HashMap<String, Object>();
		hMap.put("userId", userId);
		hMap.put("password", password);

		List<HashMap<String, Object>> resultMap = new ArrayList<HashMap<String, Object>>();
		resultMap = sqlSession.selectList("b7.pms.dao.Mapper.checkLogIn", hMap);

		return resultMap;
	}

}
