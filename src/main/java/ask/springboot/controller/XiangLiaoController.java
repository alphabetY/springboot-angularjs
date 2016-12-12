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
import com.mysql.jdbc.Blob;

import ask.springboot.model.Country;
import ask.springboot.model.XiangLiao;
import ask.springboot.service.CountryService;
import ask.springboot.service.XiangLiaoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



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
        XiangLiao xiangliao = xiangliaoService.getById(id);
        
      
        result.addObject("xiangliao", xiangliao);
        return result;
    }

    
    @RequestMapping(value = "/delete/{id}")
    public ModelAndView delete(@PathVariable Integer id, RedirectAttributes ra) {
        ModelAndView result = new ModelAndView("redirect:/xiangliao");
       
        System.out.println("id"+id);
        
        xiangliaoService.deleteById(id);

        ra.addFlashAttribute("msg", "删除成功!");
        return result;
    }

    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(XiangLiao xiangliao) {
        ModelAndView result = new ModelAndView("view");
        //String msg = xiangliao.getXuhao() == null ? "新增成功!" : "更新成功!";
        xiangliaoService.update(xiangliao);
        result.addObject("xiangliao", xiangliao);
        //result.addObject("msg", msg);
        return result;
    }
    
    @RequestMapping(value = "/tubiao")
    public ModelAndView tubiao1(XiangLiao xiangliao) {
        ModelAndView result = new ModelAndView("tubiao");
        
        return result;
    }
    @RequestMapping(value = "/tubiao1")
    @ResponseBody  
    public  List<String> zhanshi(XiangLiao xiangliao) {
       
        
        List<XiangLiao> xiangliaoList = xiangliaoService.getAll();
        
       
        
        List<String> lis = new ArrayList<String>(); 
        List<String> lisresult = new ArrayList<String>(); 
        
       lis.add("（清）青香");
       lis.add("豆香");
       lis.add("膏香");
       lis.add("果香");
       
       lis.add("花香");
       lis.add("坚果香");
       lis.add("焦甜香");
       lis.add("木香");
       lis.add("奶香韵");
       
       lis.add("酸香");
       lis.add("甜香");
       lis.add("药香");
       lis.add("辛香");
       lis.add("脂蜡香");
        
       System.out.println(lis);
        
        
        for(String str : lis)
        { 	
            double sum=0.0;
            
           for(XiangLiao xiangliao1 : xiangliaoList)
           {
               
        	 if(xiangliao1.getXiangyunleibie().equals(str))
        	 {
		        
        		 String a1=xiangliao1.getZuoyongyuzhi();
        		
        		
        		 
        		String  a12=a1.substring(0, a1.indexOf("*"));
            	System.out.println("a12="+a12);	
            	
            	String  a11=a1.substring(a1.indexOf("-")+1, a1.length());
        		System.out.println("a11="+a11);	
        	 		
        	      String a2=xiangliao1.getFenziliang();		
        	 		
        	 		
        	 	double sum1=	Double.valueOf(a12)*Math.pow(10,(-1)*Double.valueOf(a11));
        		System.out.println("Math.pow(10,(-1)*Double.valueOf(a11)="+Math.pow(10,(-1)*Double.valueOf(a11)));	
        	 	System.out.println("sum1="+sum1);	
        		
        	 	double sum2=	Double.valueOf(a2);
        	 	System.out.println("sum2="+sum2);	
        	 	
        		sum=sum+sum2/sum1;
 
        	 	
        	 }
        	
   
        	
           }
           double summ = Math.log10(sum);
           lisresult.add(String.valueOf(summ));
        }
       
        
       
        System.out.println("lisresult="+lisresult);
        System.out.println("lisresult.size="+lisresult.size());
          
        return lisresult;
    }
    
    /*
    @RequestMapping(value="/image/{id}",method = RequestMethod.GET)  
    public void lookImage(@PathVariable int id,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {  
    	  
    	XiangLiao xiangliao = xiangliaoService.getById(id);

    	response.setContentType("image/jpeg");  

       // response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(xiangliao.getHuahewumingcheng()+".jpg", "UTF-8"));

       try {  
    	   
    	   Blob content = (Blob)xiangliao.getJiegoushi(); 
           OutputStream outputStream=response.getOutputStream();  
           InputStream in=null;  
           in=content.getBinaryStream();
          // InputStream in   =  new FileInputStream("D:/files/甲基环戊烯酮醇.jpg");
           int len=0;  
           byte[]buf=new byte[1024];  
           while((len=in.read(buf,0,1024))!=-1){  
               outputStream.write(buf, 0, len);  
           }  
           outputStream.close();  
       } catch (IOException | SQLException e) {  
           // TODO Auto-generated catch block  
           e.printStackTrace();  
       }  
         
    } 
    
    */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
