package com.accp.service.impl;

import com.accp.dao.StudentinfoDao;
import com.accp.entity.Studentinfo;
import com.accp.service.StudentinfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentinfoServiceImpl implements StudentinfoService {

    @Resource
    private StudentinfoDao studentinfoDao;

    public List<Studentinfo> queryStudent() {
        return studentinfoDao.queryStudent();
    }

    public int addStudentinfo(Studentinfo studentinfo) {
        return studentinfoDao.addStudentinfo(studentinfo);
    }

    public int deleteStudentinfo(Studentinfo studentinfo) {
        return studentinfoDao.deleteStudentinfo(studentinfo);
    }

    public int updateStudentinfo(Studentinfo studentinfo) {
        return studentinfoDao.updateStudentinfo(studentinfo);
    }

    public Studentinfo getByStudentId(Studentinfo studentinfo) {
        return studentinfoDao.getByStudentId(studentinfo);
    }
}