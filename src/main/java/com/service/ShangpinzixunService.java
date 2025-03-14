package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinzixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangpinzixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinzixunView;


/**
 * 商品资讯
 *
 * @author 
 * @email 
 * @date 2021-03-20 16:02:10
 */
public interface ShangpinzixunService extends IService<ShangpinzixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinzixunVO> selectListVO(Wrapper<ShangpinzixunEntity> wrapper);
   	
   	ShangpinzixunVO selectVO(@Param("ew") Wrapper<ShangpinzixunEntity> wrapper);
   	
   	List<ShangpinzixunView> selectListView(Wrapper<ShangpinzixunEntity> wrapper);
   	
   	ShangpinzixunView selectView(@Param("ew") Wrapper<ShangpinzixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinzixunEntity> wrapper);
   	
}

