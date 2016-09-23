//
//  ViewController.m
//  MyCode
//
//  Created by JiangJiahao on 16/9/9.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
    
    UIView *superView = [UIView new];
    [superView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:superView];
    [self.view setBackgroundColor:[UIColor yellowColor]];
    [superView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
//        make.size.mas_equalTo(CGSizeMake(400, 400));
        make.left.equalTo(self.view).offset(10);
        make.top.equalTo(self.view).offset(10);
        make.bottom.equalTo(self.view).offset(-10);
        make.right.equalTo(self.view).offset(-10);
    }];
    
    UIButton *testBtn = [[UIButton alloc] init];
    [testBtn setBackgroundColor:[UIColor blackColor]];
    [superView addSubview:testBtn];
     [testBtn mas_makeConstraints:^(MASConstraintMaker *make){
//         make.edges.equalTo(superView).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
         make.left.equalTo(superView).offset(10);
         make.top.equalTo(superView).offset(10);
         make.bottom.equalTo(superView).offset(-10);
         make.right.equalTo(superView).offset(-10);
     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
