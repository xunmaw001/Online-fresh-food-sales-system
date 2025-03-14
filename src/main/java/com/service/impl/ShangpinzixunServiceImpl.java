package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShangpinzixunDao;
import com.entity.ShangpinzixunEntity;
import com.service.ShangpinzixunService;
import com.entity.vo.ShangpinzixunVO;
import com.entity.view.ShangpinzixunView;

@Service("shangpinzixunService")
public class ShangpinzixunServiceImpl extends ServiceImpl<ShangpinzixunDao, ShangpinzixunEntity> implements ShangpinzixunService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangpinzixunEntity> page = this.selectPage(
                new Query<ShangpinzixunEntity>(params).getPage(),
                new EntityWrapper<ShangpinzixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinzixunEntity> wrapper) {
		  Page<ShangpinzixunView> page =new Query<ShangpinzixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShangpinzixunVO> selectListVO(Wrapper<ShangpinzixunEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShangpinzixunVO selectVO(Wrapper<ShangpinzixunEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShangpinzixunView> selectListView(Wrapper<ShangpinzixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinzixunView selectView(Wrapper<ShangpinzixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
