package technical.blog.com.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class DeleteAndSaveFile {
	
	public static void deleteFile(String path)
	{
		try {
			File file=new File(path);
			file.delete();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static boolean  saveFile(InputStream is,String path)
	{
		boolean f=false;
		try {
			byte[] b=new byte[is.available()];
			is.read(b);
			
			FileOutputStream fos=new FileOutputStream(path);
			fos.write(b);
			fos.flush();
			fos.close();
			f=true;
			
			
			
		}catch(Exception e)
		{
			
		}
		return f;
	}

}
