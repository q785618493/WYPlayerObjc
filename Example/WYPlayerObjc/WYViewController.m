//
//  WYViewController.m
//  WYPlayerObjc
//
//  Created by 785618493@qq.com on 07/27/2022.
//  Copyright (c) 2022 785618493@qq.com. All rights reserved.
//

#import "WYViewController.h"

#import "WYPlayerViewObjc.h"

@interface WYViewController ()

@property (strong, nonatomic) WYPlayerViewObjc *playerView;

@end

@implementation WYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self createView];
}

- (void)createView {
    self.title = @"title";
    
    /* 直播源，自己慢慢试哪个能用
     [
         {
           "address" : "http://hwrr.jx.chinamobile.com:8080/PLTV/88888888/224/3221225618/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/1.jpg",
           "title" : "CCTV1综合"
         },
         {
           "address" : "http://hwrr.jx.chinamobile.com:8080/PLTV/88888888/224/3221225619/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/2.jpg",
           "title" : "CCTV2财经"
         },
         {
           "address" : "http://hwrr.jx.chinamobile.com:8080/PLTV/88888888/224/3221225647/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/3.jpg",
           "title" : "cctv3综艺"
         },
         {
           "address" : "http://39.135.138.60:18890/PLTV/88888910/224/3221225621/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/4.jpg",
           "title" : "CCTV4国际"
         },
         {
           "address" : "https://pull-l3-cny.douyincdn.com/live/6c96718e1544173e6f6f3041ccaf1e6d.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/5.jpg",
           "title" : "CCTV5体育"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225649/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/5p.jpg",
           "title" : "CCTV5+体育"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225632/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/6.jpg",
           "title" : "CCTV6电影"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225624/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/7.jpg",
           "title" : "CCTV7军农"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225631/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/8.jpg",
           "title" : "CCTV8电视剧"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225626/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/9.jpg",
           "title" : "CCTV9纪录"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225627/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/10.jpg",
           "title" : "CCTV10科技"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225628/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/11.jpg",
           "title" : "CCTV11戏曲"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225629/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/12.jpg",
           "title" : "CCTV12社会与法"
         },
         {
           "address" : "http://ncyd.jilu8.cn:80/PLTV/88888910/224/3221225638/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/13.jpg",
           "title" : "CCTV13新闻"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225639/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/14.jpg",
           "title" : "CCTV14少儿"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225641/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/15.jpg",
           "title" : "CCTV15音乐"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225908/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/17.jpg",
           "title" : "CCTV17农村"
         },
         {
           "address" : "http://hw-m-l.cztv.com/channels/lantian/channel01/1080p.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/zj.jpg",
           "title" : "浙江卫视"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225658/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/df.jpg",
           "title" : "东方卫视"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225704/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/hn.jpg",
           "title" : "湖南卫视"
         },
         {
           "address" : "http://39.135.138.58:18890/PLTV/88888888/224/3221225702/index.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/js.jpg",
           "title" : "江苏卫视"
         },
         {
           "address" : "http://live.xmcdn.com/live/1040/64.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/dt.png",
           "title" : "环球资讯广播"
         },
         {
           "address" : "http://live.xmcdn.com/live/1043/64.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/dt.png",
           "title" : "中文环球广播"
         },
         {
           "address" : "http://ls.qingting.fm/live/386.m3u8",
           "img" : "http://cdn.youlxodxka.live/img/dt.png",
           "title" : "中国之声"
         }
       ]
     **/
    
    _playerView = [[WYPlayerViewObjc alloc] initWithFrame:self.view.bounds urlString:@"http://39.135.138.58:18890/PLTV/88888888/224/3221225632/index.m3u8"];
    [self.view addSubview:_playerView];
    
    /* 准备播放 **/
    [_playerView prepareToPlay];
}

/* 界面消失，一定要记得停止关闭播放 **/ 
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [_playerView pauseStopShutdown];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
