package com.accp.dao;

import com.accp.entity.Studentinfo;

import java.util.List;

public interface StudentinfoDao {

    List<Studentinfo> queryStudent();

    int addStudentinfo(Studentinfo studentinfo);

    int deleteStudentinfo(Studentinfo studentinfo);

    int updateStudentinfo(Studentinfo studentinfo);

    Studentinfo getByStudentId(Studentinfo studentinfo);

}