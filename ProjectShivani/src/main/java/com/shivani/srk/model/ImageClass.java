package com.shivani.srk.model;

import java.io.InputStream;

public class ImageClass {
	
	InputStream img;

	public InputStream getImg() {
		return img;
	}

	public void setImg(InputStream img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "ImageClass [img=" + img + "]";
	}
	

}
