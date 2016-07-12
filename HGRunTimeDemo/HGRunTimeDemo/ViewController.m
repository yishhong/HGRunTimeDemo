//
//  ViewController.m
//  HGRunTimeDemo
//
//  Created by  易述宏 on 16/6/29.
//  Copyright © 2016年 湖南同禾. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "UIButton+HGButton.h"

@interface ViewController ()

@property(copy,nonatomic)NSString * string;

@property(strong,nonatomic)UIButton *hgButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * hgButton =[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40) callback:^(UIButton *button) {
        
    }];
    hgButton.backgroundColor =[UIColor redColor];
    [hgButton setTitle:@"hello" forState:UIControlStateNormal];
    [self.view addSubview:hgButton];
    self.hgButton =hgButton;
    [self writeValue];
    
}

-(void)writeValue{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
