//
//  CTMediator+FFCustomView.m
//  LLNetworking_Example
//
//  Created by DerrickMac on 2024/5/21.
//  Copyright © 2024 fanfang01. All rights reserved.
//

#import "CTMediator+FFCustomView.h"
/*------------------ 自定义View模块 -------------*/
NSString *const kTGMediatorTargetCustomView = @"FFCustomView";

// ActionName -- 执行的方法名称
NSString *const kPortfolioActionCustomeView = @"CreateCustomView";

@implementation CTMediator (FFCustomView)
- (UIView *)createViewWithColor:(UIColor *)bgColor rect:(CGRect)rect SuccessBlock:(SuccessBlock)successBlock failedBlock:(FailedBlock)failedBlock {
    NSMutableDictionary *parameter = [NSMutableDictionary dictionary];
    parameter[@"successB"] = successBlock;
    parameter[@"failB"] = failedBlock;
    parameter[@"bgColor"] = bgColor;
    parameter[@"rect"] = NSStringFromCGRect(rect);
    
    UIView *view = [self performTarget:kTGMediatorTargetCustomView action:kPortfolioActionCustomeView params:parameter shouldCacheTarget:NO];
    return view;
}
@end
