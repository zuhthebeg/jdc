package com.jdc.bean;

public class Image {
	private int 	idx;
	private int 	product_tree_idx;
	private String filename;
	private int 	image_order;
	private String thumbnail;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getProduct_tree_idx() {
		return product_tree_idx;
	}
	public void setProduct_tree_idx(int product_tree_idx) {
		this.product_tree_idx = product_tree_idx;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getImage_order() {
		return image_order;
	}
	public void setImage_order(int image_order) {
		this.image_order = image_order;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	
}
