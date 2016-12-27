package test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;

public class test1 {

	
	
	 public static void main(String[] args)
	 {
			
		
		File file = new File("D:/查.txt");  
		   FileReader reader = null;  
	        try{  
	            reader = new FileReader(file);  
	            int temp ;  
	            while((temp = reader.read()) != -1){  
	                if (((char) temp) != '\r') {  
	                    System.out.print((char) temp);  
	                }  
	            }  
	        }catch(IOException e){  
	            e.getStackTrace();  
	        }finally{  
	            if (reader != null){  
	                try {  
	                    reader.close();  
	                } catch (IOException e) {  
	                    e.printStackTrace();  
	                }  
	            }  
	        }  
	 
	
	
	
	
}}
