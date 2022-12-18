package kr.go.team.dto;

public class YearDTO {
    private int no;
    private String title;
    private String ydisA;
    private String ydisB;
    private String ydisC;
    private String ydisD;
    private String ydisE;
    private String period;
    private String target;
    private String caution;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getYdisA() {
		return ydisA;
	}
	public void setYdisA(String ydisA) {
		this.ydisA = ydisA;
	}
	public String getYdisB() {
		return ydisB;
	}
	public void setYdisB(String ydisB) {
		this.ydisB = ydisB;
	}
	public String getYdisC() {
		return ydisC;
	}
	public void setYdisC(String ydisC) {
		this.ydisC = ydisC;
	}
	public String getYdisD() {
		return ydisD;
	}
	public void setYdisD(String ydisD) {
		this.ydisD = ydisD;
	}
	public String getYdisE() {
		return ydisE;
	}
	public void setYdisE(String ydisE) {
		this.ydisE = ydisE;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getCaution() {
		return caution;
	}
	public void setCaution(String caution) {
		this.caution = caution;
	}
	@Override
	public String toString() {
		return "yearDTO [no=" + no + ", title=" + title + ", ydisA=" + ydisA
				+ ", ydisB=" + ydisB + ", ydisC=" + ydisC + ", ydisD=" + ydisD
				+ ", ydisE=" + ydisE + ", period=" + period + ", target="
				+ target + ", caution=" + caution + "]";
	}
    
    
}
