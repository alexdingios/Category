//
//  UITextField+Verify.m
//  Master
//
//  Created by usera on 16/3/19.
//  Copyright © 2016年 Qin Yuan. All rights reserved.
//

#import "UITextField+Verify.h"

@implementation UITextField (Verify)

//数字验证
- (BOOL)validateNumber {
    NSString *regex = @"^[0-9]*$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self.text];
}

//手机验证
- (BOOL)validatePhone{
    NSString *regex = @"^((13[0-9])|(147)|(15[^4,\\D])|(18[0,0-9])|(17[0,0-9]))\\d{8}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self.text];
}

//邮箱验证
- (BOOL)validateEmail {
    NSString *regex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self.text];
}

//密码
- (BOOL)validatePassword {
    NSString *regex = @"^[a-zA-Z0-9]{6,20}+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self.text];
}

//昵称
- (BOOL)validateNickname {
    NSString *regex = @"^[\u4e00-\u9fa5]{4,8}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self.text];
}

//用户名
- (BOOL)validateUserName {
    NSString *regex = @"^[A-Za-z0-9]{6,20}+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self.text];
}

//车牌号验证
- (BOOL)validateCarNo {
    NSString *regex = @"^[\u4e00-\u9fa5]{1}[a-zA-Z]{1}[a-zA-Z_0-9]{4}[a-zA-Z_0-9_\u4e00-\u9fa5]$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self.text];
}

//车型
- (BOOL)validateCarType {
    NSString *regex = @"^[\u4E00-\u9FFF]+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self.text];
}

//身份证号
- (BOOL)validateIdentityCard {
    if (self.text.length <= 0) {
        return NO;
    }
    else {
        NSString *regex = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
        return [predicate evaluateWithObject:self.text];
    }
}


@end
