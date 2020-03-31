//
//  JSONUtil.h
//  JSONSerializationObjC
//
//  Created by Field Employee on 3/31/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ResponseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface JSONUtil : NSObject
+ (NSData *)readRawJSON;
+ (NSDictionary *)readJSONAsStringMap;
@end

NS_ASSUME_NONNULL_END
