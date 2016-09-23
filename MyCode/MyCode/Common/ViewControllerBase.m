//
//  ViewControllerBase.m
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "ViewControllerBase.h"

@interface ViewControllerBase ()

@end

@implementation ViewControllerBase

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setNavigationBarTranslucent:(BOOL)translucent{
//    有两种方法解决这个问题：
//    
//    1、设置edgesForExtendedLayout
//    
//    self.edgesForExtendedLayout = UIRectEdgeNone; //view不需要拓展到整个屏幕
// 
//    2、设置导航条的透明度
//    
//    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.translucent = translucent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
