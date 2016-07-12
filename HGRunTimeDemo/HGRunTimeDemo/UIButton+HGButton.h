//
//  UIButton+HGButton.h
//  HGRunTimeDemo
//
//  Created by  易述宏 on 16/7/5.
//  Copyright © 2016年 湖南同禾. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (HGButton)

-(instancetype)initWithFrame:(CGRect)frame callback:(void (^)(UIButton *button))callbackBlock;

@end
