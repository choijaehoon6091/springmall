package com.example.springmall.sample.service;

import java.util.ArrayList;
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
	//1
	private SampleMapper sampleMapper;
	
	public List<Sample> getSampleAll(){
		// 페이징 관련 코드
		List<Sample> list = new ArrayList<Sample>();
		
		
		return list;
		// return sampleMapper.selectSampleAll();
	}
	//2
	public int removeSample(int sampleNo) {
		// return sampleMapper.deleteSample(sampleNo);
		return 1;
	}
}