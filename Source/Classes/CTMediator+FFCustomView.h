//
//  CTMediator+FFCustomView.h
//  LLNetworking_Example
//
//  Created by DerrickMac on 2024/5/21.
//  Copyright © 2024 fanfang01. All rights reserved.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^SuccessBlock)(void);
typedef void(^FailedBlock)(void);

@interface CTMediator (FFCustomView)
- (UIView *)createViewWithColor:(UIColor *)bgColor rect:(CGRect)rect SuccessBlock:(SuccessBlock)successBlock failedBlock:(FailedBlock)failedBlock;

@end

NS_ASSUME_NONNULL_END
