package boe.b7.common;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class CommonUtil {

	private static PBEKeySpec keySpec;
	private static SecretKey key;
	private static SecretKeyFactory keyFactory;
	private static PBEParameterSpec parameterSpec;
	private static Cipher cipher;
	private static String password = "IDM";
	private static byte[] salt = { (byte) 0x24, (byte) 0x85, (byte) 0x62, (byte) 0x79, (byte) 0xFE, (byte) 0x10, (byte) 0xA6, (byte) 0xB2
								 };
	private static int iterationCount = 9;

	static 
	{
		try 
		{
			// gain a KeyFactory
			keyFactory = SecretKeyFactory.getInstance("PBEWithMD5AndDES");

			// generate a secret key
			keySpec = new PBEKeySpec(password.toCharArray());
			key = keyFactory.generateSecret(keySpec);

			// set a parameter for PBE
			parameterSpec = new PBEParameterSpec(salt, iterationCount);

			cipher = Cipher.getInstance("PBEWithMD5AndDES");
		} 
		catch (Exception e) 
		{
			System.out.println("Encrypt library initialize fail, " + e);
		}
	}

	public static String encrypt(String text) throws Exception {
		try 
		{
			cipher.init(Cipher.ENCRYPT_MODE, key, parameterSpec);
			byte[] encrypted = cipher.doFinal(text.getBytes());
			return new BASE64Encoder().encode(encrypted);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return text;
	}

	public static String decrypt(String text) throws Exception {
		try 
		{
			cipher.init(Cipher.DECRYPT_MODE, key, parameterSpec);
			byte[] decrypted = cipher.doFinal(new BASE64Decoder().decodeBuffer(text));
			return new String(decrypted);
		} catch (Exception e) 
		{
			System.out.println("EncryptException, " + e + " ," + new Object[] { text });
		}
		return text;
	}

}
