//
//  ViewController.m
//  YYJKitDemo
//
//  Created by belltrip on 2020/8/21.
//  Copyright © 2020 yangyingjun. All rights reserved.
//

#import "ViewController.h"
#import "YYJKit.h"

@interface ViewController ()
/** <##> */
@property (nonatomic, retain) NSString *age;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.view
    .yyj_userInteractionEnabled(YES)
    .yyj_tag(10);
    

}


@end
