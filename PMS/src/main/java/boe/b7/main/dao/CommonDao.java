package boe.b7.main.dao;

import java.util.HashMap;
import java.util.List;

public interface CommonDao {

	public List<HashMap<String, Object>> checkLogIn(String userId, String password);

}
