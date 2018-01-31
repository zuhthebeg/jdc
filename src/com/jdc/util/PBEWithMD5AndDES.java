package com.jdc.util;

import java.net.URLEncoder;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class PBEWithMD5AndDES extends Security{

	public static PBEWithMD5AndDES newInstance(){ return new PBEWithMD5AndDES(); }
	
	private final int DEFAULT_ITERATION = 9;
	private final byte[] DEFAULT_SALT = { 
		(byte)0x24, (byte)0x85, (byte)0x62, (byte)0x79, 
		(byte)0xFE, (byte)0x10, (byte)0xA6, (byte)0xB2 
	};
	
	private PBEWithMD5AndDES(){};
	
	/**
	 * 
	 * @param cipherMode
	 * @param password
	 * @param cryptoKey
	 * @return Cipher
	 * @throws Exception
	 */
	private Cipher initialize(int cipherMode, String password, String cryptoKey) throws Exception{
		
		// generate a secret key 
		PBEKeySpec keySpec = new PBEKeySpec(cryptoKey.toCharArray()); 
		SecretKey key = SecretKeyFactory.getInstance(PBE_WITH_MD5_AND_DES).generateSecret(keySpec); 
		   
		// set a parameter for PBE 
		PBEParameterSpec parameterSpec = new PBEParameterSpec(DEFAULT_SALT, DEFAULT_ITERATION); 
		   
		Cipher cipher = Cipher.getInstance(PBE_WITH_MD5_AND_DES); 
		cipher.init(cipherMode, key, parameterSpec);
		
		parameterSpec = null;
		key = null;
		keySpec = null;
		
		
		return cipher;
		
	}
	
	@Override
	public String encrypt(String password, String cryptoKey, String encoding) {
		String returnPassword = null;
		try {
			Cipher cipher = initialize(Cipher.ENCRYPT_MODE,password,URLEncoder.encode(cryptoKey,encoding));
			byte[] cipherText = cipher.doFinal(password.getBytes(encoding));
			returnPassword = new BASE64Encoder().encode(cipherText);
			
			cipherText = null;
			cipher = null;
		} catch (Exception e) { 
			returnPassword = null;
			exception(e); 
		}
		
		return returnPassword;
	}

	
	@Override
	public String decrypt(String password, String cryptoKey, String encoding) {
		String returnPassword = null;
		try {
			Cipher cipher = initialize(Cipher.DECRYPT_MODE,password,URLEncoder.encode(cryptoKey,encoding));
			byte[] cipherText = new BASE64Decoder().decodeBuffer(password);
			cipherText = cipher.doFinal( cipherText );
			returnPassword = new String(cipherText, encoding);
			
			cipherText = null;
			cipher = null;
		} catch (Exception e){ 
			returnPassword = null;
			exception(e); 
		}
		
		return returnPassword;
	}

	
}
