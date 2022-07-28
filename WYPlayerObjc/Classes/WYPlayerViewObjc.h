//
//  WYPlayerViewObjc.h
//  ailiaili
//
//  Created by macWangYuan on 2022/7/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WYPlayerViewObjc : UIView

/* 播放器构造方法 **/
- (instancetype)initWithFrame:(CGRect)frame
                    urlString:(NSString *_Nonnull)urlString;

/* 准备播放 **/
- (void)prepareToPlay;

/* 界面消失，一定要记得停止关闭播放 **/ 
- (void)pauseStopShutdown;

@end

NS_ASSUME_NONNULL_END
