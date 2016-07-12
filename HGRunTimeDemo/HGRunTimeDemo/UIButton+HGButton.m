//
//  UIButton+HGButton.m
//  HGRunTimeDemo
//
//  Created by  易述宏 on 16/7/5.
//  Copyright © 2016年 湖南同禾. All rights reserved.
//

#import "UIButton+HGButton.h"
#import <objc/runtime.h>

@interface UIButton ()

@property(strong,nonatomic)void(^callbackBlock)(UIButton * button);

@end

@implementation UIButton (HGButton)

-(void(^)(UIButton *))callbackBlock{

    return objc_getAssociatedObject(self, @selector(callbackBlock));
}

-(void)setCallbackBlock:(void (^)(UIButton *))callbackBlock{

    return objc_setAssociatedObject(self, @selector(callbackBlock), callbackBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(instancetype)initWithFrame:(CGRect)frame callback:(void (^)(UIButton *button))callbackBlock{

    if (self =[super initWithFrame:frame]) {
        self.callbackBlock =callbackBlock;
        [self addTarget:self action:@selector(didClickAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)didClickAction:(UIButton *)sender{

    self.callbackBlock(sender);

}

@end
