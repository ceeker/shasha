package com.xinguan.shasha.dao.jdbc;

import java.util.List;

import com.xinguan.shasha.domain.Page;
import com.xinguan.shasha.domain.UpFile;

public interface IUpFileDao {
	public void save(UpFile upfile);//上传文件
	
	public int selectCount();//查询所有文件的数量
	
	public List findAll();//查询所有文件
	
	public UpFile find(int id);//根据名字查询某个文件
	
	public void delete(int id);//删除某个文件
	
	public int getTotalRecord();//获得总记录数
	
	public List getPageUpFile(int startindex,int pagesize);	//分页展示
}
