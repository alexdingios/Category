//
//  UITextField+Verify.h
//  Master
//
//  Created by usera on 16/3/19.
//  Copyright © 2016年 Qin Yuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Verify)

/**
 *  数字验证
 *
 *  @return 返回是否是数字
 */
- (BOOL)validateNumber;

/**
 *  手机验证
 *
 *  @return 是否手机号
 */
- (BOOL)validatePhone;

/**
 *  邮箱验证
 *
 *  @return 是否邮箱号
 */
- (BOOL)validateEmail;

/**
 *  密码验证
 *
 *  @return 是否密码格式
 */
- (BOOL)validatePassword;

/**
 *  昵称验证
 *
 *  @return 是否昵称格式
 */
- (BOOL)validateNickname;

/**
 *  用户名验证
 *
 *  @return 是否用户名格式
 */
- (BOOL)validateUserName;

/**
 *  车牌号验证
 *
 *  @return 是否车牌号格式
 */
- (BOOL)validateCarNo;

/**
 *  车牌号验证
 *
 *  @return 是否车牌号格式
 */
- (BOOL)validateCarType;

/**
 *  身份证号验证
 *
 *  @return 是否身份证号
 */
- (BOOL)validateIdentityCard;


@end
