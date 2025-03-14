package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshangpinzixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshangpinzixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshangpinzixunView;


/**
 * 商品资讯评论表
 *
 * @author 
 * @email 
 * @date 2021-03-20 16:02:10
 */
public interface DiscussshangpinzixunService extends IService<DiscussshangpinzixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshangpinzixunVO> selectListVO(Wrapper<DiscussshangpinzixunEntity> wrapper);
   	
   	DiscussshangpinzixunVO selectVO(@Param("ew") Wrapper<DiscussshangpinzixunEntity> wrapper);
   	
   	List<DiscussshangpinzixunView> selectListView(Wrapper<DiscussshangpinzixunEntity> wrapper);
   	
   	DiscussshangpinzixunView selectView(@Param("ew") Wrapper<DiscussshangpinzixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshangpinzixunEntity> wrapper);
   	
}

