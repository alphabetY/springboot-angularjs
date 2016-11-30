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

package ask.springboot.controller;

import com.github.pagehelper.PageInfo;

import ask.springboot.model.Country;
import ask.springboot.model.XiangLiao;
import ask.springboot.service.CountryService;
import ask.springboot.service.XiangLiaoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/xiangliao")
public class XiangLiaoController {

    @Autowired
    private XiangLiaoService xiangliaoService;
 
    /*
    @RequestMapping
    public ModelAndView getAll(Country country) {
        ModelAndView result = new ModelAndView("index");
        List<Country> countryList = countryService.getAll(country);
        result.addObject("pageInfo", new PageInfo<Country>(countryList));
        result.addObject("queryParam", country);
        result.addObject("page", country.getPage());
        result.addObject("rows", country.getRows());
        return result;
    }
*/
    
    @RequestMapping
    public ModelAndView getList( HttpServletRequest request,
                                @RequestParam(required = false, defaultValue = "1") int page,
                                @RequestParam(required = false, defaultValue = "10") int rows) {
        ModelAndView result = new ModelAndView("index");
        List<XiangLiao> xiangliaoList = xiangliaoService.selectByxiangliao(request, page, rows);
        result.addObject("pageInfo", new PageInfo<XiangLiao>(xiangliaoList));
       
        result.addObject("page", page);
        result.addObject("rows", rows);
        return result;
    }
    
  

    @RequestMapping(value = "/view/{id}")
    public ModelAndView view(@PathVariable Integer id) {
        ModelAndView result = new ModelAndView("view");
        XiangLiao xiaoliao = xiangliaoService.getById(String.valueOf(id));
        result.addObject("xiaoliao", xiaoliao);
        return result;
    }

    
    @RequestMapping(value = "/delete/{id}")
    public ModelAndView delete(@PathVariable Integer id, RedirectAttributes ra) {
        ModelAndView result = new ModelAndView("redirect:/xiangliao");
        xiangliaoService.deleteById(String.valueOf(id));
        ra.addFlashAttribute("msg", "删除成功!");
        return result;
    }

    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(XiangLiao xiangliao) {
        ModelAndView result = new ModelAndView("view");
        String msg = xiangliao.getXuhao() == null ? "新增成功!" : "更新成功!";
        xiangliaoService.save(xiangliao);
        result.addObject("xiangliao", xiangliao);
        result.addObject("msg", msg);
        return result;
    }
    
    @RequestMapping(value = "/tubiao")
    public ModelAndView zhanshi(XiangLiao xiangliao) {
        ModelAndView result = new ModelAndView("tubiao");
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        return result;
    }
    
    
    
    
    
    
}
