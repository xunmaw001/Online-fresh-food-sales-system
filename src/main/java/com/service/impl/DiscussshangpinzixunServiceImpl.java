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


import com.dao.DiscussshangpinzixunDao;
import com.entity.DiscussshangpinzixunEntity;
import com.service.DiscussshangpinzixunService;
import com.entity.vo.DiscussshangpinzixunVO;
import com.entity.view.DiscussshangpinzixunView;

@Service("discussshangpinzixunService")
public class DiscussshangpinzixunServiceImpl extends ServiceImpl<DiscussshangpinzixunDao, DiscussshangpinzixunEntity> implements DiscussshangpinzixunService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussshangpinzixunEntity> page = this.selectPage(
                new Query<DiscussshangpinzixunEntity>(params).getPage(),
                new EntityWrapper<DiscussshangpinzixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussshangpinzixunEntity> wrapper) {
		  Page<DiscussshangpinzixunView> page =new Query<DiscussshangpinzixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussshangpinzixunVO> selectListVO(Wrapper<DiscussshangpinzixunEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussshangpinzixunVO selectVO(Wrapper<DiscussshangpinzixunEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussshangpinzixunView> selectListView(Wrapper<DiscussshangpinzixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussshangpinzixunView selectView(Wrapper<DiscussshangpinzixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
