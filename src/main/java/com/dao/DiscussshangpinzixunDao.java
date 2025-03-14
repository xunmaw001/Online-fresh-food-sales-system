package com.dao;

import com.entity.DiscussshangpinzixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussshangpinzixunVO;
import com.entity.view.DiscussshangpinzixunView;


/**
 * 商品资讯评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-20 16:02:10
 */
public interface DiscussshangpinzixunDao extends BaseMapper<DiscussshangpinzixunEntity> {
	
	List<DiscussshangpinzixunVO> selectListVO(@Param("ew") Wrapper<DiscussshangpinzixunEntity> wrapper);
	
	DiscussshangpinzixunVO selectVO(@Param("ew") Wrapper<DiscussshangpinzixunEntity> wrapper);
	
	List<DiscussshangpinzixunView> selectListView(@Param("ew") Wrapper<DiscussshangpinzixunEntity> wrapper);

	List<DiscussshangpinzixunView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussshangpinzixunEntity> wrapper);
	
	DiscussshangpinzixunView selectView(@Param("ew") Wrapper<DiscussshangpinzixunEntity> wrapper);
	
}
