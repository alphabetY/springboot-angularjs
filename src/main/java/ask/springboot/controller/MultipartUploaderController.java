package ask.springboot.controller;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ask.springboot.model.XiangLiao;
import ask.springboot.service.XiangLiaoService;

import javax.servlet.http.HttpServletResponse;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Optional;

@Controller
public class MultipartUploaderController {
    private static final Logger log = LoggerFactory.getLogger(MultipartUploaderController.class);

    //@Value("#{servletContext.getRealPath('/')}")
    
    protected String uploadPath  ="D:/files";;
    @Autowired
    private XiangLiaoService xiangliaoService;
    
    @RequestMapping(value="/countriesupload", method= RequestMethod.POST)
    
    public ModelAndView fileUpload(@RequestParam("description") Optional<String> description, @RequestParam("file") MultipartFile file ,RedirectAttributes ra) throws IOException {
        log.info(description.toString());
        log.info(file.getOriginalFilename());
        log.info(file.getContentType());
        log.info("" + file.getSize());
    
        final File dest = new File(uploadPath, file.getOriginalFilename());
        log.info(dest.getAbsolutePath());

        
        file.transferTo(dest);
        
        if(file.getOriginalFilename().trim().contains("xls"))
        {
        xiangliaoService.deleteAll();

        InputStream ips=new FileInputStream(dest.getAbsolutePath());   
        HSSFWorkbook wb=new HSSFWorkbook(ips);   
        HSSFSheet sheet=wb.getSheetAt(0);   
/*
        for(Iterator ite=sheet.rowIterator();ite.hasNext();){   
            HSSFRow row=(HSSFRow)ite.next();   
            System.out.println();   
            for(Iterator itet=row.cellIterator();itet.hasNext();){   
                HSSFCell cell=(HSSFCell)itet.next();   
                switch(cell.getCellType()){     
                case HSSFCell.CELL_TYPE_BOOLEAN:     
                    //得到Boolean对象的方法     
                    System.out.print(cell.getBooleanCellValue()+"Boolean ");     
                    break;     
                case HSSFCell.CELL_TYPE_NUMERIC:     
                    //先看是否是日期格式     
                    if(HSSFDateUtil.isCellDateFormatted(cell)){     
                        //读取日期格式     
                        System.out.print(cell.getDateCellValue()+"日期格式  ");     
                    }else{     
                        //读取数字     
                        System.out.print(cell.getNumericCellValue()+"数字 ");     
                    }     
                    break;     
                case HSSFCell.CELL_TYPE_FORMULA:     
                    //读取公式     
                    System.out.print(cell.getCellFormula()+" 公式");     
                    break;     
                case HSSFCell.CELL_TYPE_STRING:     
                    //读取String     
                    System.out.print(cell.getRichStringCellValue().toString()+" String");     
                    break;                       
            }     
            }   
        }   
       
     */ 
     int i=0;
        
        for(Iterator ite=sheet.rowIterator();ite.hasNext();)
        {     
        	 i++;
        	 XiangLiao xiangliao =new XiangLiao();
        	 
        	 xiangliao.setId(i);
        	 
            HSSFRow row=(HSSFRow)ite.next();   
 
            Iterator itet=row.cellIterator();
            
           
            
            if(i!=1){
            	
            HSSFCell cell=(HSSFCell)itet.next(); 
        	  
        	System.out.println(cell.getNumericCellValue());
            xiangliao.setXuhao((int)cell.getNumericCellValue());	
       
            HSSFCell cell1=(HSSFCell)itet.next(); 
            xiangliao.setHuahewumingcheng(cell1.getRichStringCellValue().toString());
                
            
            HSSFCell cell2=(HSSFCell)itet.next(); 
            if(cell2.getCellType()==HSSFCell.CELL_TYPE_STRING)
            { xiangliao.setCAS(String.valueOf(cell2.getRichStringCellValue().toString()));}
            else if(cell2.getCellType()==HSSFCell.CELL_TYPE_NUMERIC)
            {xiangliao.setCAS(String.valueOf(cell2.getNumericCellValue()));}
            
            HSSFCell cell3=(HSSFCell)itet.next(); 
            xiangliao.setYingwenmingchen(cell3.getRichStringCellValue().toString());
            
            
            HSSFCell cell4=(HSSFCell)itet.next(); 
            xiangliao.setFenzishi(cell4.getRichStringCellValue().toString());
            
            
            HSSFCell cell5=(HSSFCell)itet.next(); 
            xiangliao.setXiangyunleibie(cell5.getRichStringCellValue().toString());
            
            
            HSSFCell cell6=(HSSFCell)itet.next(); 
            xiangliao.setYuzhifanwei(cell6.getRichStringCellValue().toString());
            
            
            HSSFCell cell7=(HSSFCell)itet.next(); 
            xiangliao.setZuoyongyuzhi(cell7.getRichStringCellValue().toString());
            
            HSSFCell cell8=(HSSFCell)itet.next(); 
            xiangliao.setFenziliang(String.valueOf(cell8.getNumericCellValue()));
        

                 xiangliaoService.save(xiangliao);
               }
        }
            
        }
        ModelAndView result = new ModelAndView("redirect:/xiangliao");
        ra.addFlashAttribute("msg", "上传成功!");
        return result; 
       
    }

    
    
    @RequestMapping(value="/image/{id}",method= RequestMethod.POST)
    public ModelAndView image(@PathVariable("id") Integer id, @RequestParam("file") MultipartFile file,RedirectAttributes ra) throws IllegalStateException, IOException
    { 
    	ModelAndView result = new ModelAndView("redirect:/xiangliao");
    	
    	final File dest = new File(uploadPath, file.getOriginalFilename());
        log.info(dest.getAbsolutePath());
        log.info(file.getOriginalFilename());
        log.info(file.getContentType());
        log.info("" + file.getSize());
        file.transferTo(dest);
    	
        XiangLiao xiangliao =new XiangLiao();
        
        
        xiangliao.setId(id);
        System.out.println("id=="+id);
        xiangliao.setJiegoushi(file.getOriginalFilename());
        
        xiangliaoService.update(xiangliao);

        ra.addFlashAttribute("msg", "上传成功!");
        return result; 
    	
    }
    
    
    
    
    
    
    
    @RequestMapping(value="/countriesfile/{name:.*}", method= RequestMethod.GET)
    
    public void fileDownload(@PathVariable("name") String name, HttpServletResponse response) throws UnsupportedEncodingException {
        final File source = new File("D:/files", name+".jpg");
       

        log.info("downloading " + source.getAbsolutePath());
        
        
        
        
        
        response.setContentType("image/jpeg");  

        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(name+".jpg", "UTF-8"));
        
       
        
        
        
        try {  
     	   

            OutputStream outputStream=response.getOutputStream();  
         
            InputStream in   =  new FileInputStream(source);
            int len=0;  
            byte[]buf=new byte[1024];  
            while((len=in.read(buf,0,1024))!=-1){  
                outputStream.write(buf, 0, len);  
            }  
            outputStream.close();  
        } catch (IOException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        
   
    }
    
    
    
    
    
    
}
