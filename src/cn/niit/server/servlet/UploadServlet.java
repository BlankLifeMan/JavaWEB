package cn.niit.server.servlet;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.User;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
 		String name1 = (String) session.getAttribute("testname");
 		
		 try {
//	          request.getParameter("");                   //创建磁盘文件工厂
	            DiskFileItemFactory fileItemFactory =  new DiskFileItemFactory();
	            //创建磁盘文件项
	            ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
//	          fileUpload.setHeaderEncoding("utf-8");
	            fileUpload.setHeaderEncoding("UTF-8");// 解决中文文件名上传乱码.
	            //解析上传项
	            List<FileItem> list = fileUpload.parseRequest(request);
	            Map<String,String> map = new HashMap<String,String>();
	            String fileName = null;
	            for (FileItem fileItem : list) {
	                if(fileItem.isFormField()){
	                    //如果是表单项
	                    String name = fileItem.getFieldName();
	                    String string = fileItem.getString("utf-8");
	                    //表单项的集合
	                    map.put(name, string);
	                }else{
	                    //上传项
	                    fileName = fileItem.getName();
	                    fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
	                    fileName = UUID.randomUUID().toString() + "_" + fileName;
	                    InputStream is = fileItem.getInputStream();
	                    
	                    // 获得文件要上传的路径（后面的路径可以自定义）:
	                    String path = request.getServletContext().getRealPath("\\img");
	                    //String path = ("D:\\apache-tomcat-9.0.11\\img");//这里改路径
	                    String dizhi = path+"/"+fileName;
	                    OutputStream os = new FileOutputStream(path+"/"+fileName);//cs.jpg
	                   
	                    
	                   
	                    User user = new User();
	                    user.setImg(dizhi);
	            	  UsersDao dao = new UsersDao();
	                    dao.updatePicture(user,name1);
	                    
	              
	                    byte[] byts = new byte[1024];
	                    int len = 0;
	                    while ( (len = is.read(byts)) != -1 ) {
	                        os.write(byts, 0, len);
	                        os.flush();
	                    }
//	                  IOUtils.copy(is, os);
	                    is.close();
	                    os.close();
	                }
	            }
	           
//	          BeanUtils.populate();   //将实体对应的属性赋给实体（收集数据）
	            if (!fileName.equals(null)&&!fileName.equals("")) {
	                //将图片路径赋给实体的某个属性     
	            	
	            }
	            
	        //将实体的数据写入到数据库
		} catch (FileUploadException e) {
		e.printStackTrace();
	     } 
		 response.setHeader("Refresh", "0;URL=/ServletJdbcDemo/information.jsp");
	}
}
