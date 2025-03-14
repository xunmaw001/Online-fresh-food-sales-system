package com.dao;

import com.entity.ShangpinzixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangpinzixunVO;
import com.entity.view.ShangpinzixunView;


/**
 * 商品资讯
 * 
 * @author 
 * @email 
 * @date 2021-03-20 16:02:10
 */
public interface ShangpinzixunDao extends BaseMapper<ShangpinzixunEntity> {
	
	List<ShangpinzixunVO> selectListVO(@Param("ew") Wrapper<ShangpinzixunEntity> wrapper);
	
	ShangpinzixunVO selectVO(@Param("ew") Wrapper<ShangpinzixunEntity> wrapper);
	
	List<ShangpinzixunView> selectListView(@Param("ew") Wrapper<ShangpinzixunEntity> wrapper);

	List<ShangpinzixunView> selectListView(Pagination page,@Param("ew") Wrapper<ShangpinzixunEntity> wrapper);
	
	ShangpinzixunView selectView(@Param("ew") Wrapper<ShangpinzixunEntity> wrapper);
	
}
