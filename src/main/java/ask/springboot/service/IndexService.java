package ask.springboot.service;


import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.DateTools;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.SimpleFSDirectory;
import org.apache.lucene.util.Version;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;



@Service("indexService")
public class IndexService  {
    
    public void createIndex(String docPath,String indexPath ) throws IOException {
      
       
        //创建Directory对象
        Directory dir = new SimpleFSDirectory(new File(indexPath));

      
        Analyzer analyzer = new StandardAnalyzer(Version.LUCENE_46);
        IndexWriterConfig indexWriterConfig = new IndexWriterConfig(Version.LUCENE_46, analyzer);

        //创建IndexWriter对象
        IndexWriter indexWriter = new IndexWriter(dir, indexWriterConfig);

        //清除IndexWriter中原有的内容
        indexWriter.deleteAll();

        //将索引内容写入indexWriter
        File[] files = new File(docPath).listFiles();

        for (int i = 0; i < files.length; i++) {
            //读取Word文档中的内容
            InputStream in = new FileInputStream(files[i]);
            WordExtractor extractor = new WordExtractor(in);

           //创建Field对象，并放入Document对象中
            Document document = new Document();
            document.add(new Field("contents", extractor.getText(), Field.Store.YES, Field.Index.ANALYZED));
            document.add(new Field("filename", files[i].getName(),
                    Field.Store.YES, Field.Index.NOT_ANALYZED));
            document.add(new Field("indexDate", DateTools.dateToString(new Date(), DateTools.Resolution.DAY), Field.Store.YES, Field.Index.NOT_ANALYZED));

            //写入IndexWriter
            indexWriter.addDocument(document);
        }

        indexWriter.close();
    }
}
