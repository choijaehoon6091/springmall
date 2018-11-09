package com.example.springmall.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.springmall.sample.mapper.SampleMapper;
import com.example.springmall.sample.vo.Sample;

@Service
@Transactional
public class SampleService {
	@Autowired
	private SampleMapper sampleMapper;
	int startRow = 0;
	int rowPerPage = 10;
	int totalCount;
	// 1
	public int getTotalCount() {
		return totalCount = sampleMapper.selectCountSample();
	}

	public List<Sample> getSampleAll(int startRow){
	
	return sampleMapper.selectSampleAll(startRow,rowPerPage);
	}
	// 2
	public int removeSample(int sampleNo) {
		int deleteSuccess = sampleMapper.deleteSample(sampleNo);
		if(deleteSuccess == 1) {
			System.out.println("삭제성공");
		}else {
			System.out.println("삭제실패");
		}
		return deleteSuccess;
	}		
	// 3
	public int addSample(Sample sample) {
		System.out.println("SampleService.java.addSample()");
        int insertSuccess = sampleMapper.insertSample(sample);
        if(insertSuccess == 1) {
            System.out.println("가입성공");
        }else {
            System.out.println("가입실패");
        }
        return insertSuccess;
	    }

	// 4
	public Sample getSample(int sampleNo) {
		 System.out.println("SampleService.java.getSample()");
	     return sampleMapper.selectOne(sampleNo);
	}
	
	// 5
	public int modifySample(Sample sample) {
        System.out.println("SampleService.java.modifySample()");
        int modifySuccess = sampleMapper.updateSample(sample);;
        if(modifySuccess == 1) {
            System.out.println("수정성공");
        }else {
            System.out.println("수정실패");
        }
        return modifySuccess;
	 }
}
