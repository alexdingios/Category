//
//  CALayer+PauseAimate.h
//  核心动画暂停与恢复
//
//  Created by apple on 16/3/24.
//  Copyright (c) 2016年 Apple. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (PauseAimate)

/**
 *  暂停动画
 */
- (void)pauseAnimate;
/**
 *  恢复动画
 */
- (void)resumeAnimate;

@end
