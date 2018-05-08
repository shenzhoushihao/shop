package com.corp.project.util;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.jgroups.util.UUID;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 * 多文件上传功能
 * 
 * @author 马鹏飞
 * @version V2.0
 * @Time 2017-9-6 17:07:15
 * @ClassName：多文件上传
 * @author（修改人） @Modify Time（修改时间）
 **/

/**
 * 使用：此类用于多文件上传和单文件上传，根据Map<字段名，图片路径>来操作； 注意事项：按照顺序来存取文件
 */
public class MultiFileUpload {
    // 加载资源文件aos.properties
    private static final ResourceBundle bundle = java.util.ResourceBundle.getBundle("aos");

    private MultiFileUpload() {}

    // 得到文件的绝对路径
    public static String getfilePath() {
        return bundle.getString("filepath");
    }

    // 得到web应用的绝对路径
    public static String getWebPath(HttpServletRequest request) {
        String webpath = request.getScheme() + "://" + request.getLocalAddr() + ":"
                + request.getServerPort();
        System.out.println(webpath);
        return "http://localhost:10020";
    }

    public static Map<String, Object> fileUpLoad(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>();
        // 从request中获取文件
        try {
            MultipartHttpServletRequest multipartRequest = null;
            if (request instanceof MultipartHttpServletRequest) {
                try {
                    multipartRequest = (MultipartHttpServletRequest) request;
                } catch (Exception ex) {
                    ex.getMessage();
                }
            }
            // 开始上传文件
            if (multipartRequest != null) {
                Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
                String newName = "";
                String url = "";
                String paths = getWebPath(request);
                String newNameSub = "";
                for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
                    MultipartFile myfile = entity.getValue();
                    if (!myfile.isEmpty()) {
                        newName = getFileName(request, myfile);
                        newNameSub = newName.substring(newName.length() - 3, newName.length());
                        if (newNameSub.equals("gif") || newNameSub.equals("png")
                                || newNameSub.equals("jpg")) {
                            url = paths + "/shop/images/" + newName;
                        } else if (newNameSub.equals("mp4")) {
                            url = paths + "/shop/video/" + newName;
                        } else {
                            url = paths + "/shop/pdf/" + newName;
                        }
                        System.out.println(url);
                        map.put("status", true);
                        map.put(entity.getKey(), newName);
                    }
                }
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return map;
    }

    public static String getFileName(HttpServletRequest request, MultipartFile file)
            throws Exception {
        // 转存文件
        String name = file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."),
                file.getOriginalFilename().length());// 获取文件后缀
        String newName = UUID.randomUUID().toString() + name;
        String path = request.getSession().getServletContext().getRealPath("/"); // 项目存放路径
        // 截取字符串取后三位并转小写
        String nameSub = name.substring(name.length() - 3, name.length()).toLowerCase();
        if (nameSub.equals("gif") || nameSub.equals("png") || nameSub.equals("jpg")) {
            path = path + "/images";
        } else if (nameSub.equals("mp4")) {
            path = path + "/video";
        } else {
            path = path + "/pdf";
        }

        // 创建文件路径
        File targetFile = new File(path, newName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        try {
            file.transferTo(targetFile);// 上传
        } catch (Exception e) {
            e.getMessage();
        }
        return newName;
    }

    /**
     * 删除图片
     * 
     * @param filename
     * @return
     */
    public static boolean deleteFile(String filename) {
        String filepath = getfilePath();
        filepath = filepath + "/" + filename;

        File file = new File(filepath);
        // 如果文件路径所对应的文件存在，并且是一个文件，则直接删除
        if (file.exists() && file.isFile()) {
            return file.delete() ? true : false;
        } else {
            return false;
        }
    }
}
