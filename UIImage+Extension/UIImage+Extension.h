//
//  UIImage+Extension.h
//  UIImage扩展
//
//  Created by Apple on 16/3/15.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
/**
 *  返回一张可以随意拉伸不变形的图片
 *
 *  @param name 图片名字
 */
+ (UIImage *)resizableImage:(NSString *)name;
/**
 * 返回透明背景的圆形图片
 */
- (UIImage *)circleImage;
@end