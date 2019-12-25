//
//  Person.h
//  SynProject
//
//  Created by 胡碧涛 on 2019/12/25.
//  Copyright © 2019 Synjones. All rights reserved.
//  KVC

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic, copy)NSString *name;
@property(nonatomic, strong)Person *spouse;
@end

NS_ASSUME_NONNULL_END
