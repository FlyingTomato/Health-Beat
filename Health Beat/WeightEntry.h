//
//  WeightEntry.h
//  Health Beat
//
//  Created by Harly on 14/12/22.
//  Copyright (c) 2014年 Harly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum
{
    LBS,KG
} WeightUnit;

@interface WeightEntry : NSObject
@property (nonatomic,assign,readonly) CGFloat weightInLbs;
@property (nonatomic,strong,readonly) NSDate* date;
@end
