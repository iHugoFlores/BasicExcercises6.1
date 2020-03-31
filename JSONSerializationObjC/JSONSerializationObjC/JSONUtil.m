//
//  JSONUtil.m
//  JSONSerializationObjC
//
//  Created by Field Employee on 3/31/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "JSONUtil.h"
#import "ResponseModel.h"

@implementation JSONUtil
NSString *jsonName = @"weather";

+ (NSData *)readRawJSON {
    NSURL *url = [[NSBundle mainBundle] URLForResource:jsonName withExtension:@"json"];
    
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    return data;
}

+ (NSDictionary *)readJSONAsStringMap {
    NSData *data = [self readRawJSON];
    
    NSDictionary *res = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    for(NSString *key in [res allKeys]) {
        NSLog(@"%@ : %@", key, [res objectForKey:key]);
    }

    return res;
}

@end
