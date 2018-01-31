package com.jdc.util;
public abstract class Security {
	
	public static final String EUC_KR = "EUC-KR"; 
	public static final String UTF8 = "UTF8"; 
	public static final String PBE_WITH_MD5_AND_DES = "PBEWithMD5AndDES";

	private static final String DEFAULT_ENCODING = UTF8;
	private static final String DEFAULT_CRYPTO_KEY = "jwlee03";
	
	abstract public String decrypt(String password, String cryptoKey, String encoding);
	abstract public String encrypt(String password, String cryptoKey, String encoding);
	
	/**
	 * 
	 * @param password
	 * @return
	 */
	public String encrypt( String password ){ return encrypt(password, DEFAULT_CRYPTO_KEY, DEFAULT_ENCODING); }
	public String encrypt( String password, String cryptoKey ){ return encrypt(password,cryptoKey,DEFAULT_ENCODING); }
	/**
	 * 
	 * @param password
	 * @return String
	 */
	public String decrypt( String password ){ return decrypt(password, DEFAULT_CRYPTO_KEY, DEFAULT_ENCODING); }
	public String decrypt( String password,String cryptoKey ){ return decrypt(password, cryptoKey, DEFAULT_ENCODING); }
	
	
	public void exception(Exception e){
		//ExceptionSupport.exception(e);
	}
}
