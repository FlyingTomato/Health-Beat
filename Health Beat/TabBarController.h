//
//  TabBarController.h
//  Health Beat
//
//  Created by Harly on 14/12/23.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WeightHistory;
@interface TabBarController : UITabBarController
@property (nonatomic,strong) WeightHistory* weightHistory;
@end
