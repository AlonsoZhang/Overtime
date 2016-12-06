//
//  ViewController.h
//  Convert
//
//  Created by Alonso on 16/12/3.
//  Copyright © 2016年 Alonso. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *inputText;
- (IBAction)convert:(NSButton *)sender;
@property (weak) IBOutlet NSButton *convert;
- (IBAction)clean:(NSButton *)sender;
@property (weak) IBOutlet NSButton *post;

@end

