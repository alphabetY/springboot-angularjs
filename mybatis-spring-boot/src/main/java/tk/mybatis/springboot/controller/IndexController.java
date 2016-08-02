package tk.mybatis.springboot.controller;


import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tk.mybatis.springboot.model.DocEntity;
import tk.mybatis.springboot.service.IndexService;
import tk.mybatis.springboot.service.QueryService;

import java.io.File;
import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping(value = "/search")
public class IndexController {
    
	
	@Autowired
    private IndexService indexService;
	@Autowired
	private QueryService QueryService;
   

	
	@RequestMapping
    public ModelAndView search() throws Exception{
       
    	 ModelAndView result = new ModelAndView("search");
    	
    	 
        
          
         return result;
      
    }
	
	
	
	

    @RequestMapping(value = "/index")
    public ModelAndView index(String docPath,String indexPath ) throws Exception{
       
    	 ModelAndView result = new ModelAndView("search");
    	 docPath="D:/files";
    	 indexPath="D:/indexs";
    	 
          indexService.createIndex(docPath, indexPath);
          result.addObject("msg", "success");
         return result;
      
    }
 
    @RequestMapping(value = "/query")
    public ModelAndView query(String queryWord) throws Exception{
    	 ModelAndView result = new ModelAndView("in2");
    	try {
            //计时器开始
            long startTime = System.currentTimeMillis();

            //搜索
            List<DocEntity> docList = QueryService.search(queryWord);

            //计时器结束
            long endTime = System.currentTimeMillis();

            //输出关键词
           // model.addAttribute("queryWord", queryWord);
            result.addObject("queryWord", queryWord);
            //输出结果数量
            //model.addAttribute("num", docList.size());
            
            //输出搜索结果
            //model.addAttribute("docList", docList);
            result.addObject("docList", docList);
            //输出耗时
            
           // model.addAttribute("time", (endTime - startTime));
            result.addObject("time", (endTime - startTime));
            result.addObject("num", docList.size());
            
            return result;
        } catch (Exception e) {
           
            return result;
        }
    }

   
    
}