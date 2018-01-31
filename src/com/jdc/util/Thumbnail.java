package com.jdc.util;

import java.io.File;
import java.io.IOException;
import java.awt.image.BufferedImage;
import java.awt.Graphics2D;
import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;

public class Thumbnail {
	public Thumbnail() {
	}

	public static void createImage(String loadFile, String saveFile, int zoom)
			throws IOException {
		File save = new File(saveFile); // 썸네일 이미지 파일
		RenderedOp rOp = JAI.create("fileload", loadFile); // 원본이미지파일로 객체생성
		BufferedImage im = rOp.getAsBufferedImage(); // 버퍼드이미지 객체를 얻어옴
		if (zoom <= 0)
			zoom = 1;
		int width = im.getWidth() / zoom;
		int height = im.getHeight() / zoom;
		// 메모리에 이미지 공간을 생성
		BufferedImage thumb = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		Graphics2D g2 = thumb.createGraphics(); // 버퍼드이미지객체로 부터 그래픽2D객체를 얻어옴
		g2.drawImage(im, 0, 0, width, height, null); // 메모리의 이미지 공간에 원본 이미지를
														// 지정한크기로 그린다.
		ImageIO.write(thumb, "jpg", save); // 그린 이미지를 파일로 저장한다.
	}
}