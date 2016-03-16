//
//  UIBarButtonItem+Extension.m
//  UIBarButtonItem扩展
//
//  Created by Apple on 16/3/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
/**
 *  @param image     普通状态的图片
 *  @param highImage 高亮状态的图片
 *  @param target    target
 *  @param action    方法名
 *
 *  @return 返回用UIbutton创建的UIBarButtonItem
 */
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    CGRect frame=button.frame;
    frame.size = button.currentBackgroundImage.size;
    button.frame=frame;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}
@end
