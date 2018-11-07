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
	public int removeSample(int sampleNo) {
		int success = sampleMapper.deleteSample(sampleNo);
		if(success == 1) {
			System.out.println("삭제성공");
		}else {
			System.out.println("삭제실패");
		}
		return success;
	}
}