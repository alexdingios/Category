//
//  UIBarButtonItem+Extension.h
//  UIBarButtonItem扩展
//
//  Created by Apple on 16/3/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
/**
 *  @param image     普通状态的图片
 *  @param highImage 高亮状态的图片
 *  @param target    target 
 *  @param action    方法名
 *
 *  @return 返回用UIbutton创建的UIBarButtonItem
 */
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
