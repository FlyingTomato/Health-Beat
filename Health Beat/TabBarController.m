//
//  TabBarController.m
//  Health Beat
//
//  Created by Harly on 14/12/23.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import "TabBarController.h"
#import "WeightHistory.h"

@implementation TabBarController

@synthesize weightHistory=_weightHistory;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.weightHistory = [[WeightHistory alloc]init];
    NSMutableArray* stack = [NSMutableArray arrayWithArray:self.viewControllers];
    while ([stack count]>0) {
        id controller = [stack lastObject];
        [stack removeLastObject];
        
        if([controller respondsToSelector:@selector(viewControllers)])
        {
            [stack addObjectsFromArray:[controller viewControllers]];
        }
        if([controller respondsToSelector:@selector(setWeightHistory:)])
        { 
            [controller setWeightHistory:self.weightHistory];
        }
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
