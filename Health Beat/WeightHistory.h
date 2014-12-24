//
//  WeightHistory.h
//  Health Beat
//
//  Created by Harly on 14/12/22.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeightEntry.h"
static NSString* const WeightPropertyChange = @"WeightHistoryChanged";
static NSString* const CollectionChange = @"WeightHistoryHarlyChanged";
@interface WeightHistory : NSObject

@property (nonatomic,readonly) NSArray* weights;
@property (nonatomic,assign,readwrite) WeightUnit defaultUnit;
@property (nonatomic,strong) NSMutableArray* weightHistory;
-(void)addWeight:(WeightEntry *)weight;
-(void)removeWeightAtIndex:(NSInteger) index;

@end
