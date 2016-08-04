package ask.springboot.model;




public class DocEntity {
    //文档名
    private String docName;
    //文档内容
    private String docContent;
    //搜索摘要
    private String searchAbstract;

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getDocContent() {
        return docContent;
    }

    public void setDocContent(String docContent) {
        this.docContent = docContent;
    }

    public String getSearchAbstract() {
        return searchAbstract;
    }

    public void setSearchAbstract(String searchAbstract) {
        this.searchAbstract = searchAbstract;
    }
}
