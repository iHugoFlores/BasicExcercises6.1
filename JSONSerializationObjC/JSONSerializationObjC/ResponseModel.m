//
//  ResponseModel.m
//  JSONSerializationObjC
//
//  Created by Field Employee on 3/31/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ResponseModel.h"

@implementation ResponseModel

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)JSONDictionary
{
    self = [super init];
    if (self) {

        NSError *error = nil;

        if (!error && JSONDictionary) {

            //Loop method
            for (NSString* key in JSONDictionary) {
                [self setValue:[JSONDictionary valueForKey:key] forKey:key];
            }
            // Instead of Loop method you can also use:
            // thanks @sapi for good catch and warning.
            // [self setValuesForKeysWithDictionary:JSONDictionary];
        }
    }
    return self;
}

@end
