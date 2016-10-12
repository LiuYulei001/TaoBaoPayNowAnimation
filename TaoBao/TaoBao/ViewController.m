//
//  ViewController.m
//  TaoBao
//
//  Created by Rainy on 16/10/12.
//  Copyright © 2016年 Rainy. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView * popView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height *2/3)];
    UIImageView *imgV = [[UIImageView alloc]initWithFrame:popView.bounds];
    imgV.image = [UIImage imageNamed:@"WechatIMG3.png"];
    
    [popView addSubview:imgV];
    
    popView.backgroundColor = [UIColor clearColor];
    
    //加个阴影
    popView.layer.shadowColor = [UIColor blackColor].CGColor;
    popView.layer.shadowOffset = CGSizeMake(0.5, 0.5);
    popView.layer.shadowOpacity = 0.8;
    popView.layer.shadowRadius = 5;
    
    //导航栏一定要加载ROOTVC上面
    RootViewController * root = [[RootViewController alloc]init];
    root.title = @"卡通午睡头枕详情";
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:root];
    
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(show)];
    root.view.userInteractionEnabled = YES;
    [root.view addGestureRecognizer:tap];
    
    
    UITapGestureRecognizer *tap_close = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(close)];
    popView.userInteractionEnabled = YES;
    [popView addGestureRecognizer:tap_close];
    
    
    [self createPopVCWithRootVC:nav andPopView:popView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
