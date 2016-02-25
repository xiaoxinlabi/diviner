package info.puton.product.common.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;

public class ActionResult {
    /** 成功标志 */
    private boolean success;
    /** 数据数量 */
    private int total;
    /** 返回信息 */
    private Map message;
    /** 数据 */
    private Object data;

    private final static String KEY_SUCCESS="success" ;
    private final static String KEY_ERROR="error" ;

    public ActionResult() {
        this(true, 0, null, null);
    }

    public ActionResult(boolean success) {
        this(success, 0, null, null);
    }
    public ActionResult(boolean success,String message) {
        if (success)
            this.putMessage(KEY_SUCCESS, message);
        else
            this.putMessage(KEY_ERROR, message);
    }

    public ActionResult(Object data) {
        this(true, 0, data, null);
        if (data instanceof Map) {
            this.total = 1;
        } else if (data instanceof List) {
            this.total = ((List) data).size();
        } else {
            this.total = 1;
        }
    }

    public ActionResult(Object data, int total) {
        this(true, total, data, null);
    }

    public ActionResult(boolean success, int total, Object data, Map message) {
        this.success = success;
        this.total = total;
        this.data = data;
        this.message = message;
    }

    public String toJson() {
        Gson gson = new Gson();
        return gson.toJson(this);
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }


    public Map getMessage() {
        return message;
    }

    public void setMessage(Map message) {
        this.message = message;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void putMessage(String key,Object message){
        if (this.message==null){
            this.message=new HashMap();
        }
        this.message.put(key, message);
    }
}