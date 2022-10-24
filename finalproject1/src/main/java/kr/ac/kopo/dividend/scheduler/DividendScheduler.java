package kr.ac.kopo.dividend.scheduler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import kr.ac.kopo.dividend.service.DividenService;

@Component
public class DividendScheduler {
	
	@Autowired
	private DividenService dividenService;
	
	@Async
	@Scheduled(cron = "0 30 9 29W * * ")
	public void giveDividen27() {
		dividenService.dividenProcess27();
	}
	
	@Async
	@Scheduled(cron = "0 30 9 29W * * ")
	public void giveDividen1() {
		dividenService.dividenProcess1();
	}
	
//	@Async
//	@Scheduled(cron = "0/5 * * * * * ")
//	public void giveDividen1() {
//		dividenService.dividenProcess1();
//	}
//	
//	@Async
//	@Scheduled(cron = "0/5 * * * * * ")
//	public void giveDividen27() {
//		dividenService.dividenProcess27();
//	}
//	
	

}
