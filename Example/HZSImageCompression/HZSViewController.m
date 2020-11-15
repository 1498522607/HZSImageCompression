//
//  HZSViewController.m
//  HZSImageCompression
//
//  Created by 1498522607@qq.com on 11/15/2020.
//  Copyright (c) 2020 1498522607@qq.com. All rights reserved.
//

#import "HZSViewController.h"
#import "UIImage+HZSCompress.h"


@interface HZSViewController ()

@end

@implementation HZSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
    UIImage * image = [UIImage imageNamed:@"sun"];
    NSLog(@"压缩后 = %ld", [image dataWithCompressMaxLength:0.5 * Megabytes].length);
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
