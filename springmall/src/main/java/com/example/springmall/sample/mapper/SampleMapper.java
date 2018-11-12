package com.example.springmall.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.springmall.sample.vo.Sample;
import com.example.springmall.sample.vo.SampleRequest;

@Mapper
public interface SampleMapper {
	// 1.select all
	List<Sample> selectSampleAll(int startRow,int rowPerPage);
	int selectCountSample();
	// 2.insert
	int insertSample(SampleRequest sampleRequest);
	// 3.delete
	int deleteSample(int sampleNo);
	// 4.update
	int updateSample(Sample sample);
	// 5.select one
	public abstract Sample selectOne(int sampleNo);
	
	public abstract Sample loginSample(Sample sample);
}