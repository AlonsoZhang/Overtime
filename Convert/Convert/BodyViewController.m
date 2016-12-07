//
//  BodyViewController.m
//  Convert
//
//  Created by Alonso on 16/12/3.
//  Copyright © 2016年 Alonso. All rights reserved.
//

#import "BodyViewController.h"

@interface BodyViewController ()

@end

@implementation BodyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.bodyText.stringValue = [[NSUserDefaults standardUserDefaults] objectForKey:@"body"];
}

- (IBAction)send:(NSButton *)sender
{
    NSString *myrequestString = self.bodyText.stringValue;
    NSData *myrequestData = [NSData dataWithBytes:[myrequestString UTF8String] length:[myrequestString length]];
    NSURL *newURL = [NSURL URLWithString :self.urlText.stringValue];
    NSMutableURLRequest *myrequest=[[NSMutableURLRequest alloc]initWithURL:newURL];
    [myrequest setHTTPMethod:@"POST"];
    [myrequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"content-type"];
    [myrequest setValue:self.cookieText.stringValue forHTTPHeaderField:@"Cookie"];
    [myrequest setHTTPBody:myrequestData];
    [NSURLConnection sendSynchronousRequest:myrequest returningResponse:nil error:nil];
    
    [[NSApplication sharedApplication] terminate:self];
}
@end
