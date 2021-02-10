package gfc.dto;

import java.sql.Date;

public class Song {
	private int scode;
	private String stitle;
	private int acode;
	private String swriter;
	private String slyricist;
	private Date sdate;
	private String salbum;
	private String simage;
	private String klyric;
	private String flyric;
	
	public Song() {
	}
	
	public Song(int scode, String stitle, int acode, String swriter, String slyricist, Date sdate, String salbum,
			String simage, String klyric, String flyric) {
		this.scode = scode;
		this.stitle = stitle;
		this.acode = acode;
		this.swriter = swriter;
		this.slyricist = slyricist;
		this.sdate = sdate;
		this.salbum = salbum;
		this.simage = simage;
		this.klyric = klyric;
		this.flyric = flyric;
	}

	public int getScode() {
		return scode;
	}

	public void setScode(int scode) {
		this.scode = scode;
	}

	public String getStitle() {
		return stitle;
	}

	public void setStitle(String stitle) {
		this.stitle = stitle;
	}

	public int getAcode() {
		return acode;
	}

	public void setAcode(int acode) {
		this.acode = acode;
	}

	public String getSwriter() {
		return swriter;
	}

	public void setSwriter(String swriter) {
		this.swriter = swriter;
	}

	public String getSlyricist() {
		return slyricist;
	}

	public void setSlyricist(String slyricist) {
		this.slyricist = slyricist;
	}

	public Date getSdate() {
		return sdate;
	}

	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}

	public String getSalbum() {
		return salbum;
	}

	public void setSalbum(String salbum) {
		this.salbum = salbum;
	}

	public String getSimage() {
		return simage;
	}

	public void setSimage(String simage) {
		this.simage = simage;
	}

	public String getKlyric() {
		return klyric;
	}

	public void setKlyric(String klyric) {
		this.klyric = klyric;
	}

	public String getFlyric() {
		return flyric;
	}

	public void setFlyric(String flyric) {
		this.flyric = flyric;
	}

	@Override
	public String toString() {
		return "Song [scode=" + scode + ", stitle=" + stitle + ", acode=" + acode + ", swriter=" + swriter
				+ ", slyricist=" + slyricist + ", sdate=" + sdate + ", salbum=" + salbum + ", simage=" + simage
				+ ", klyric=" + klyric + ", flyric=" + flyric + "]";
	}

	
	
}
