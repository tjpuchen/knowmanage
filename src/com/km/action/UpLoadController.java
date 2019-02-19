package com.km.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.ActionSupport;

public class UpLoadController extends ActionSupport {
	//�ϴ����ļ�,struts2����ļ���װΪFile����
    private File[] picture;
    //�ļ���,struts2����ļ��������õ��ñ���
    private String[] pictureFileName;
    //�ļ�����,struts2����ļ��������õ��ñ���
    private String[] pictureContentType;
    
    public String upLoad() throws IOException{
        //��ȡrequest,������ȡ�ļ���·��
        HttpServletRequest request=ServletActionContext.getRequest();
        String path=request.getRealPath("/datadir/pdfdir");
        String path1 = "d:\\datadir\\pdftxtdir\\";
        for(int i=0;i<picture.length;i++){
            File saved=new File(path,pictureFileName[i]);
            InputStream is=new FileInputStream(picture[i]);
            OutputStream os=new FileOutputStream(saved);
            byte[] b=new byte[1024];
            int len=0;
            while((len=is.read(b))!=-1){
                os.write(b, 0, len);
            }
        
            is.close();
            os.close();
        }
        for(int i=0;i<picture.length;i++){
            File saved=new File(path1,pictureFileName[i]);
            InputStream is=new FileInputStream(picture[i]);
            OutputStream os=new FileOutputStream(saved);
            byte[] b=new byte[1024];
            int len=0;
            while((len=is.read(b))!=-1){
                os.write(b, 0, len);
            }
        
            is.close();
            os.close();
        }
        System.out.println("upLoad success");
        return SUCCESS;
        
    }

    public File[] getPicture() {
        return picture;
    }

    public void setPicture(File[] picture) {
        this.picture = picture;
    }

    public String[] getPictureFileName() {
        return pictureFileName;
    }

    public void setPictureFileName(String[] pictureFileName) {
        this.pictureFileName = pictureFileName;
    }

    public String[] getPictureContentType() {
        return pictureContentType;
    }

    public void setPictureContentType(String[] pictureContentType) {
        this.pictureContentType = pictureContentType;
    }
    
}
