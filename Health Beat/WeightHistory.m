
//
//  WeightHistory.m
//  Health Beat
//
//  Created by Harly on 14/12/22.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import "WeightHistory.h"

@implementation WeightHistory

@synthesize weightHistory=_weightHistory;
@synthesize defaultUnit=_defaultUnit;

+(NSSet *)keyPathsForValuesAffectingWeights
{
    return [NSSet setWithObjects:@"weightHistory",nil];
}

-(id)init
{
    self = [super init];
    if(self)
    {
        _defaultUnit = LBS;
        _weightHistory = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)setDefaultUnit:(WeightUnit)defaultUnit
{
    if(_defaultUnit == defaultUnit)
        return;
    _defaultUnit = defaultUnit;
    [[NSNotificationCenter defaultCenter] postNotificationName:WeightPropertyChange object:self];
}

-(NSArray*) weights
{
    return self.weightHistory;
}

-(void)addWeight:(WeightEntry *)weight
{
    [self willChange:NSKeyValueChangeInsertion valuesAtIndexes:[NSIndexSet indexSetWithIndex:0] forKey:@"weightHistory"];
    [self.weightHistory insertObject:weight atIndex:0];
    [self didChange:NSKeyValueChangeInsertion valuesAtIndexes:[NSIndexSet indexSetWithIndex:0] forKey:@"weightHistory"];
}

-(void)removeWeightAtIndex:(NSInteger)index
{
    [self.weightHistory removeObjectAtIndex:index];
}


@end
