package ask.springboot.model;

import javax.persistence.Column;

public class XiangLiao extends BaseEntity {

	private int xuhao;
	private String huahewumingcheng;
	private String cas;
	private String yingwenmingcheng;
	private String fenzishi;
	private String xiangyunleibie;
	private String yuzhifanwei;
	private String zuoyongyuzhi;
	private String fenziliang;
	
	private String jiegoushi;
	
	public  int getXuhao() {
		return xuhao;
	}
	public void setXuhao(int xuhao) {
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
	public String getJiegoushi() {
		return jiegoushi;
	}
	public void setJiegoushi(String jiegoushi) {
		this.jiegoushi = jiegoushi;
	}
	
	
	
	
	
	
	
	
	
	
	
}
