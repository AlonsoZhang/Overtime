//
//  BodyViewController.h
//  Convert
//
//  Created by Alonso on 16/12/3.
//  Copyright © 2016年 Alonso. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BodyViewController : NSViewController
@property (weak) IBOutlet NSTextField *urlText;
@property (weak) IBOutlet NSTextField *bodyText;
@property (weak) IBOutlet NSTextField *cookieText;
- (IBAction)send:(NSButton *)sender;
@end
