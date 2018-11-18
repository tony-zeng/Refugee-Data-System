package helpers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/FileUploadHandler")
public class FileUploadHandler extends HttpServlet {
	private static final long serialVersionUID = 1;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String file_name = null;
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
		if (!isMultipartContent) {
			return;
		}
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List<FileItem> fields = upload.parseRequest(request);
			Iterator<FileItem> it = fields.iterator();
			if (!it.hasNext()) {
				return;
			}
			while (it.hasNext()) {
				FileItem fileItem = it.next();
				//fileItem.getString() returns file content
				String[] allLines = fileItem.getString().split("[\\r\\n]+");
				for (String row:allLines) {
					System.out.println(row);
					for (String element:row.split(",")) {
						System.out.println(element);
					}
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			out.println("<script type='text/javascript'>");
			out.println("window.location.href='import.jsp?filename=" + file_name + "'");
			out.println("</script>");
			out.close();
		}
	}
}
