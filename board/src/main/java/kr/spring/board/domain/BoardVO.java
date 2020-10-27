package kr.spring.board.domain;

import java.io.IOException;
import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private int num;
	@NotEmpty
	private String title;
	@NotEmpty
	private String content;
	@NotEmpty
	private String name;
	private int hit;
	private Date reg_date;
	private Date modify_date;
	private MultipartFile upload;
	private byte[] uploadfile;
	private String filename;
	
	//MultipartFile -> byte[] 변환
	//파일명 추출
	public void setUpload(MultipartFile upload) throws IOException {
		this.upload = upload;
		
		//byte[]로 변환
		setUploadfile(upload.getBytes());
		//파일명 구하기
		setFilename(upload.getOriginalFilename());
		
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getModify_date() {
		return modify_date;
	}
	public void setModify_date(Date modify_date) {
		this.modify_date = modify_date;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public byte[] getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(byte[] uploadfile) {
		this.uploadfile = uploadfile;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	//주의)toString을 재정의할 때 byte[] 타입의 필드 uploadfile은 제외 
	
	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", title=" + title + ", content=" + content + ", name=" + name + ", hit=" + hit
				+ ", reg_date=" + reg_date + ", modify_date=" + modify_date + ", upload=" + upload + ", filename="
				+ filename + "]";
	}
	
	
	
	
	
}
