package apkReader.test;

import java.io.File;

public class Renamer {

	public static void main(String[] args) {
		File[] files = (new File("D:\\apksArchieve")).listFiles();
		int count = 0;
		for (File file : files) {
			count++;
//			file.renameTo(new File("D:\\apksArchieve\\"+String.valueOf(count)));
			file.renameTo(new File("D:\\apksArchieve\\"+String.valueOf(count)+"lalalalala"));
		}
	}
}
