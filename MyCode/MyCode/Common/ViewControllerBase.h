//
//  ViewControllerBase.h
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerBase : UIViewController

- (void)setNavigationBarTranslucent:(BOOL)translucent;

- (void)createLeftBarBtn:(NSString *)leftStr;

- (void)createRightBarBtn:(NSString *)rightStr;

@end
