package com.example.springmall.sample.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.springmall.sample.vo.Sample;

@RestController
public class RestSampleController { // REST API
	@RequestMapping(value="/sample/getRestSample")
	public Sample getRestSample() {
		return new Sample(1,"id001","pw001"); //{"sampleNo:1"
	}
}
