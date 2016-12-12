package ask.springboot.model;

import javax.persistence.Column;

public class XiangLiao extends BaseEntity {

	private String xuhao;
	private String huahewumingcheng;
	private String cas;
	private String yingwenmingcheng;
	private String fenzishi;
	private String xiangyunleibie;
	private String yuzhifanwei;
	private String zuoyongyuzhi;
	private String fenziliang;
	 @Column(name = "jiegoushi")
	private Object jiegoushi;
	
	public  String getXuhao() {
		return xuhao;
	}
	public void setXuhao(String xuhao) {
		this.xuhao = xuhao;
	}
	public String getHuahewumingcheng() {
		return huahewumingcheng;
	}
	public void setHuahewumingcheng(String huahewumingcheng) {
		this.huahewumingcheng = huahewumingcheng;
	}
	public String getcas() {
		return cas;
	}
	public void setCAS(String cas) {
		this.cas = cas;
	}
	public String getYingwenmingcheng() {
		return yingwenmingcheng;
	}
	public void setYingwenmingchen(String yingwenmingcheng) {
		this.yingwenmingcheng = yingwenmingcheng;
	}
	public String getFenzishi() {
		return fenzishi;
	}
	public void setFenzishi(String fenzishi) {
		this.fenzishi = fenzishi;
	}
	public String getXiangyunleibie() {
		return xiangyunleibie;
	}
	public void setXiangyunleibie(String xiangyunleibie) {
		this.xiangyunleibie = xiangyunleibie;
	}
	public String getYuzhifanwei() {
		return yuzhifanwei;
	}
	public void setYuzhifanwei(String yuzhifanwei) {
		this.yuzhifanwei = yuzhifanwei;
	}
	public String getZuoyongyuzhi() {
		return zuoyongyuzhi;
	}
	public void setZuoyongyuzhi(String zuoyongyuzhi) {
		this.zuoyongyuzhi = zuoyongyuzhi;
	}
	public String getFenziliang() {
		return fenziliang;
	}
	public void setFenziliang(String fenziliang) {
		this.fenziliang = fenziliang;
	}
	public Object getJiegoushi() {
		return jiegoushi;
	}
	public void setJiegoushi(Object jiegoushi) {
		this.jiegoushi = jiegoushi;
	}
	
	
	
	
	
	
	
	
	
	
	
}
