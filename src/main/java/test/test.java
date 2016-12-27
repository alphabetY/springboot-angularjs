package test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Set;

public class test {

	
	 public static void main(String[] args)
	 {
		 
		 
		 String zhuanjia=" 张虹,袁行思,谢剑平,王元英,王金亮,毛多斌,卢安宁,安德荣,朱茂祥,刘百战,刘国顺,刘建利,刘昌宝,许国旺,牟定荣,李丹,李涛,李天飞,李永平,"
		 		+ "李进平,李志宏,李淑君,李德成,李继新,何宽信,吴元华,吴殿信,张克勤,张建勋,张悠金,陈顺辉,杨占平,杨铁钊,武怡,罗登山,侯杰华,袁庆钊,高一军"
		 		+ ",郭兆奎,董建江,路铁刚,王丰,田仕林,陆宴辉,陈超英,黄艳";

		 String[] zz=zhuanjia.split(",");
		 
		 Set<String> ss= new HashSet<String>();
		 
		 
		 for(String z : zz)
		 {
			 ss.add(z);
			 
			 
			 
		 }
		 
		  try {
              String encoding="GBK";
              File file=new File("D:/查.txt");
              if(file.isFile() && file.exists()){ //判断文件是否存在
                  InputStreamReader read = new InputStreamReader(
                  new FileInputStream(file),encoding);//考虑到编码格式
                  BufferedReader bufferedReader = new BufferedReader(read);
                  String lineTxt = null;
                  int i=2;
                  while((lineTxt = bufferedReader.readLine()) != null){
                     
                	i++;
                      
                      String[] aa=lineTxt.split(",");
                      
                      
                      for(String a : aa)
                      {
                    	  
                    	if ( ss.contains(a))
                    		
                    	{     System.out.println(lineTxt);
                    	      System.out.println(i);
                    		  System.out.println("重复专家"+a);
                    		 
                    		  
                    	}
                    	  
                      }
                      
                      
                      
                      
                      
                      
                      
                      
                  }
                  read.close();
      }else{
          System.out.println("找不到指定的文件");
      }
      } catch (Exception e) {
          System.out.println("读取文件内容出错");
          e.printStackTrace();
      }	
		 
		 
		 
		 
		 
		 
		 
		 
		 
	 }
	
	
	
	
}
