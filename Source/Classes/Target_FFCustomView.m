//
//  Target_FFCustomView.m
//  LLNetworking_Example
//
//  Created by DerrickMac on 2024/5/9.
//  Copyright © 2024 fanfang01. All rights reserved.
//

#import "Target_FFCustomView.h"
#import "FFCustomView.h"

@implementation Target_FFCustomView
- (id)Action_CreateCustomView:(NSDictionary *)parameter {
    UIColor *bgColor = parameter[@"bgColor"];
    NSString *rectString = parameter[@"rect"];

    FFCustomView *view = [[FFCustomView alloc] init];
    view.backgroundColor = bgColor;
    view.frame = CGRectFromString(rectString);
    return view;
}

@end
