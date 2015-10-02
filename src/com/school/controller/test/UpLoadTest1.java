package com.school.controller.test;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UpLoadTest1 {

	@RequestMapping("UpLoadTest1.htm")
	public void UpLoadTest1(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException 
	{
		System.out.println("~~~");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pout = response.getWriter();
		try {
			// 得到存放上传文件的真实路径
			String storePath =request.getSession().getServletContext()
					.getRealPath("/");

			// 设置环境
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//factory.setRepository(new File(getServletContext().getRealPath("/temp")));//设置临时存放目录
			// 判断一下form是否是enctype=multipart/form-data类型的
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if (!isMultipart) {
				System.out.println("大傻鸟");
				return;
			}
			// ServletFileUpload核心类
			System.out.println("核心类设置");
			ServletFileUpload upload = new ServletFileUpload(factory);
//			upload.setProgressListener(new ProgressListener() {
//				//pBytesRead：当前以读取到的字节数
//				//pContentLength：文件的长度
//				//pItems:第几项
//				public void update(long pBytesRead, long pContentLength,
//						int pItems) {
//					System.out.println("已读取："+pBytesRead+",文件大小："+pContentLength+",第几项："+pItems);
//				}
//				
//			});
//			upload.setFileSizeMax(4 * 1024 * 1024);// 设置单个上传文件的大小
//			upload.setSizeMax(6 * 1024 * 1024);// 设置总文件大小
			// 解析
			System.out.println("获取流");
			List<FileItem> items = upload.parseRequest(request);
			System.out.println(items);
			System.out.println("获取成功");
			for (FileItem item : items) {
				if (item.isFormField()) {
					// 普通字段
					System.out.println("检验");
					String fieldName = item.getFieldName();
					String fieldValue = item.getString("UTF-8");
					System.out.println(fieldName + "=" + fieldValue);
				} else {
					// 得到MIME类型
					String mimeType = item.getContentType();
					// 只允许上传图片
					 if(mimeType.startsWith("image")){
						// 上传字段
						InputStream in = item.getInputStream();
						// 上传的文件名
						String fileName = item.getName();// C:\Documents and
						if(fileName==null||"".equals(fileName.trim())){
							continue;
						}
						// Settings\wzhting\妗岄潰\a.txt
						// a.txt
						fileName = fileName
								.substring(fileName.lastIndexOf("\\") + 1);// a.txt
						fileName = UUID.randomUUID() + "_" + fileName;
						System.out.println(request.getRemoteAddr()+"=============="+fileName);
						// 构建输出流
						// 打散存储目录
						String newStorePath = makeStorePath(storePath, fileName);// 根据
						// /WEB-INF/files和文件名，创建一个新的存储路径
						// /WEB-INF/files/1/12
						String storeFile = newStorePath + "\\" + fileName;// WEB-INF/files/1/2/sldfdslf.txt
	
						OutputStream out = new FileOutputStream(storeFile);
	
						byte b[] = new byte[1024];
						int len = -1;
						while ((len = in.read(b)) != -1) {
							out.write(b, 0, len);
						}
						out.close();
						in.close();
						item.delete();//删除临时文件
					}
				 }
			}
		} catch (org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException e) {
			// 单个文件超出大小时的异常
			pout.write("单个文件大小不能超出4M");
		} catch (org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException e) {
			// 总文件超出大小时的异常
			pout.write("总文件大小不能超出6M");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 根据 /WEB-INF/files和文件名，创建一个新的存储路径 /WEB-INF/files/1/12

		
		//
	
		private String makeStorePath(String storePath, String fileName) {
		int hashCode = fileName.hashCode();
		int dir1 = hashCode & 0xf;// 0000~1111：整数0~15共16个
		int dir2 = (hashCode & 0xf0) >> 4;// 0000~1111：整数0~15共16个
	
		String path = storePath + "\\" + dir1 + "\\" + dir2; // WEB-INF/files/1/12
		File file = new File(path);
		if (!file.exists())
			file.mkdirs();
	
		return path;
	}
}
