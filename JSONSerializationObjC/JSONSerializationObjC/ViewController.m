//
//  ViewController.m
//  JSONSerializationObjC
//
//  Created by Field Employee on 3/31/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ViewController.h"
#import "JSONUtil.h"
#import "ResponseModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDictionary *jsonDict = [JSONUtil readJSONAsStringMap];
}


@end
