package com.accp.service;

import com.accp.entity.Studentinfo;

import java.util.List;

public interface StudentinfoService {

    List<Studentinfo> queryStudent();

    int addStudentinfo(Studentinfo studentinfo);

    int deleteStudentinfo(Studentinfo studentinfo);

    int updateStudentinfo(Studentinfo studentinfo);

    Studentinfo getByStudentId(Studentinfo studentinfo);

}