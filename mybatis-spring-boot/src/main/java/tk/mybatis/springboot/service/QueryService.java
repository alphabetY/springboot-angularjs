package tk.mybatis.springboot.service;



import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.core.SimpleAnalyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.*;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.springframework.stereotype.Service;

import tk.mybatis.springboot.model.DocEntity;

import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

/**
 * SearchService
 *
 * @author: peng
 * @time: 
 */
@Service("QueryService")
public class QueryService {

    public List<DocEntity> search(String queryWord) throws IOException, ParseException, InvalidTokenOffsetsException {
    	
    	List<DocEntity> docEntityList = new ArrayList<DocEntity>();

        //设置索引文件存放位置
        String indexPath =  "D:/indexs";

        //索引读取类
        IndexReader indexReader = DirectoryReader.open(FSDirectory.open(new File(indexPath)));

        //搜索入口工具类
        IndexSearcher indexSearcher = new IndexSearcher(indexReader);

        //创建QueryParser对象
        QueryParser queryParser = new QueryParser(Version.LUCENE_46, "contents",new StandardAnalyzer(Version.LUCENE_46)); 

        //创建Query对象
        Query query = queryParser.parse(queryWord);

        //搜索相似度最高的30条记录
        TopDocs topDocs = indexSearcher.search(query, 30);

        //获取所有搜索结果
        ScoreDoc scores[] = topDocs.scoreDocs;

        //设置高亮的HTML格式
        Formatter formatter = new SimpleHTMLFormatter("<font color='red'>", "</font>");
        //检索评分
        Scorer scorer = new QueryScorer(query);
        //创建高亮显示对象
        Highlighter highlighter = new Highlighter(formatter, scorer);

   
		//循环读出scores数组中的数据
        for (int i = 0; i < scores.length; i++) {
            //获取文档编号
            int num = scores[i].doc;

            //用indexSearch.doc方法读出Document对象
            Document document = indexSearcher.doc(num);

            //获取文档内容
            String content = document.get("contents");

            //将文档内容进行高亮、裁剪处理，形成搜索摘要
            TokenStream tokenStream =  new StandardAnalyzer(Version.LUCENE_46).tokenStream("contents", new StringReader(content));
            String searchAbstract = highlighter.getBestFragment(tokenStream, content) + "...";

            //将文档名、文档内容、搜索摘要存入DocEntity实体
            DocEntity docEntity = new DocEntity();
            docEntity.setDocName(document.get("filename"));
            docEntity.setDocContent(content);
            docEntity.setSearchAbstract(searchAbstract);

            //将DocEntity实体存入docEntityList
            docEntityList.add(docEntity);
        }
        return docEntityList;
    }
}
