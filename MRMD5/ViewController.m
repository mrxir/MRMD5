//
//  ViewController.m
//  MRMD5
//
//  Created by MrXir on 2017/7/19.
//  Copyright © 2017年 MrXir. All rights reserved.
//

#import "ViewController.h"

#import "NSString+MD5.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *value1 = @"123456";
    NSString *result1 = [value1 md5Hash];
    NSLog(@"%@ md5 is %@", value1, result1);
    
    NSString *value2 = @"Hello world";
    NSString *result2 = [value2 md5Hash];
    NSLog(@"%@ md5 is %@", value2, result2);

    NSString *value3 = @"你好";
    NSString *result3 = [value3 md5Hash];
    NSLog(@"%@ md5 is %@", value3, result3);
    
    NSString *value4 = @"🍎";
    NSString *result4 = [value4 md5Hash];
    NSLog(@"%@ md5 is %@", value4, result4);
    
    NSLog(@" %@ You can go there and validate", @"http://tool.chinaz.com/Tools/MD5.aspx");
    
    NSLog(@"The image 1, 2, 3, 4 are result screenshots.");
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
