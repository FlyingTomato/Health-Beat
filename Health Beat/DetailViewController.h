//
//  DetailViewController.h
//  Health Beat
//
//  Created by Harly on 14/12/22.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WeightHistory;
@interface DetailViewController : UITableViewController
@property (nonatomic,strong) WeightHistory* weightHistory;
@property (nonatomic,assign) NSUInteger selectedIndex;
@end
