/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package ask.springboot.service;

import com.github.pagehelper.PageHelper;


import ask.springboot.mapper.XiangLiaoMapper;
import ask.springboot.model.Country;
import ask.springboot.model.XiangLiao;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;
import tk.mybatis.mapper.util.StringUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


@Service
public class XiangLiaoService {

    @Autowired
    private XiangLiaoMapper xiangliaoMapper;

 
    
    public List<XiangLiao> getAll() {
        
        return xiangliaoMapper.selectAll();
    }
    
    
    
   
    public List<XiangLiao> selectByxiangliao(HttpServletRequest request, int page, int rows) {
       
    	
    	String huahewumingcheng=request.getParameter("huahewumingcheng");
    	
    	String cas=request.getParameter("cas");
    	
    	System.out.println("huahewumingcheng=="+huahewumingcheng);
     	System.out.println("cas=="+cas);
     	
    	Example example = new Example(XiangLiao.class);
        Example.Criteria criteria = example.createCriteria();
        
      
        
        if (StringUtil.isNotEmpty(huahewumingcheng)) {
        	
            criteria.andLike("huahewumingcheng", "%" + huahewumingcheng + "%");
        }
        if (StringUtil.isNotEmpty(cas)) {
            criteria.andLike("cas", "%" + cas+ "%");
        }
       // if (xiangliao.getXuhao() != null) {
       //     criteria.andEqualTo("xuhao", xiangliao.getXuhao());
       // }
        //分页查询
        PageHelper.startPage(page, rows);
        
        return xiangliaoMapper.selectByExample(example);
    }
    
    
   
    
    public XiangLiao getById(String str) {
       
    	
        
        XiangLiao xiangliao =new XiangLiao();
    	xiangliao.setXuhao(str);
    	
       return  xiangliaoMapper.selectOne(xiangliao);
    }

    public void deleteById(String str) {
    	
    	System.out.println("=========="+str);
    	//xiangliaoMapper.deleteByPrimaryKey(str);
    	
    	Example example = new Example(XiangLiao.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("xuhao",str);
        
        
    	xiangliaoMapper.deleteByExample(example);
    }

    public void save(XiangLiao xiangliao) {
        if (xiangliao.getXuhao() != null) {
        	
        
        	
        	xiangliaoMapper.updateByPrimaryKey(xiangliao);
        	
        	
        } else {
        	
        	xiangliaoMapper.insert(xiangliao);
        	
        	
        }
    }
    
    
    
    
    
    
}
