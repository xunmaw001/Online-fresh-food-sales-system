package com.entity.view;

import com.entity.ShangpinzixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品资讯
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-20 16:02:10
 */
@TableName("shangpinzixun")
public class ShangpinzixunView  extends ShangpinzixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangpinzixunView(){
	}
 
 	public ShangpinzixunView(ShangpinzixunEntity shangpinzixunEntity){
 	try {
			BeanUtils.copyProperties(this, shangpinzixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
