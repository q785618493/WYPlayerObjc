//
//  WYPlayerViewObjc.m
//  ailiaili
//
//  Created by macWangYuan on 2022/7/27.
//

#import "WYPlayerViewObjc.h"

#import <IJKMediaFramework/IJKMediaFramework.h>

@interface WYPlayerViewObjc ()

/* 直播播放器 **/
@property (strong, nonatomic) IJKFFMoviePlayerController *player;

@end

@implementation WYPlayerViewObjc

- (instancetype)initWithFrame:(CGRect)frame
                    urlString:(NSString *)urlString {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = UIColor.blackColor;
        [self createCommonUrlString:urlString];
    }
    return self;
}

- (void)createCommonUrlString:(NSString *)urlString {
    [IJKFFMoviePlayerController checkIfFFmpegVersionMatch:true];
    
    /*
     IJKFFOptions *options = [IJKFFOptions optionsByDefault];
     // Set param

     [options setFormatOptionIntValue:1024 * 16 forKey:@"probsize"]; // 概率的大小
     
     [options setFormatOptionIntValue:50000 forKey:@"analyzeduration"]; //分析时间
     
     [options setPlayerOptionIntValue:0 forKey:@"videotoolbox"];
     
     [options setCodecOptionIntValue:IJK_AVDISCARD_DEFAULT forKey:@"skip_loop_filter"]; //跳过循环过滤
     
     [options setCodecOptionIntValue:IJK_AVDISCARD_DEFAULT forKey:@"skip_frame"]; //跳过框架
     
     if (YES) {
     // Param for living
     [options setPlayerOptionIntValue:3000 forKey:@"max_cached_duration"];   // 最大缓存大小是3秒，可以依据自己的需求修改
     
     [options setPlayerOptionIntValue:1 forKey:@"infbuf"];  // 无限读
     
     [options setPlayerOptionIntValue:0 forKey:@"packet-buffering"];  //  关闭播放器缓冲
     }
     else {
     // Param for playback
     [options setPlayerOptionIntValue:0 forKey:@"max_cached_duration"]; 最大缓存时间
     
     [options setPlayerOptionIntValue:0 forKey:@"infbuf"]; //正缓冲区
     
     [options setPlayerOptionIntValue:1 forKey:@"packet-buffering"]; //包缓冲
     
     }
     **/
    
    /** 视频源的设置 音频，视频，解码方式 **/
    IJKFFOptions *options = [IJKFFOptions optionsByDefault];
    
    // 设置只播放视频, 不播放声音
//    [options setPlayerOptionValue:@"1" forKey:@"an"];
    // 开启硬解码
    [options setPlayerOptionValue:@"1" forKey:@"videotoolbox"];
    
    // 帧速率(fps) （可以改，确认非标准桢率会导致音画不同步，所以只能设定为15或者29.97）
    [options setPlayerOptionIntValue:29.97 forKey:@"r"];
    
    // -vol——设置音量大小，256为标准音量。（要设置成两倍音量时则输入512，依此类推
    [options setPlayerOptionIntValue:512 forKey:@"vol"];
    
    // 最大fps
    [options setPlayerOptionIntValue:60 forKey:@"max-fps"];
    
    // 跳帧开关
    [options setPlayerOptionIntValue:0 forKey:@"framedrop"];
    
    // 指定最大宽度
    [options setPlayerOptionIntValue:UIScreen.mainScreen.bounds.size.width forKey:@"videotoolbox-max-frame-width"];
    
    // 自动转屏开关
    [options setFormatOptionIntValue:0 forKey:@"auto_convert"];
    
    // 重连次数
    [options setFormatOptionIntValue:1 forKey:@"reconnect"];
    
    // 超时时间，timeout参数只对http设置有效，若果你用rtmp设置timeout，ijkplayer内部会忽略timeout参数。rtmp的timeout参数含义和http的不一样。
    [options setFormatOptionIntValue:30 * 1000 * 1000 forKey:@"timeout"];
    
    // 创建IJKFFMoviePlayerController：专门用来直播，传入拉流地址就好了
//    _player = [[IJKFFMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:self.liveURLString] withOptions:options];
    self.player = [[IJKFFMoviePlayerController alloc] initWithContentURLString:urlString withOptions:options];
    [self.player.view setBackgroundColor:[UIColor blackColor]];
    [self.player.view setAutoresizingMask:UIViewAutoresizingFlexibleWidth & UIViewAutoresizingFlexibleHeight];
//    [self.player.view setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
    [self.player.view setFrame:self.bounds];
    [self.player setScalingMode:(IJKMPMovieScalingModeAspectFit)];
    [self.player setShouldAutoplay:true];
    [self setAutoresizesSubviews:true];
    [self addSubview:self.player.view];
    
}

/// 准备播放
- (void)prepareToPlay {
    
    [self.player prepareToPlay];
}

/// 界面消失，一定要记得停止关闭播放
- (void)pauseStopShutdown {
    
    [_player pause];
    [_player stop];
    [_player shutdown];
    [_player.view removeFromSuperview];
    _player = nil;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
