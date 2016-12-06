//
//  ViewController.m
//  Convert
//
//  Created by Alonso on 16/12/3.
//  Copyright © 2016年 Alonso. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.post setHidden:YES];
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)convert:(NSButton *)sender {
    NSString *inputString = self.inputText.stringValue;
    if ([inputString rangeOfString:@"\n"].location != NSNotFound)
    {
        NSMutableArray *inputArray = [NSMutableArray arrayWithArray:[inputString componentsSeparatedByString:@"\n"]];
        NSString * bodyString = [[NSString alloc]init];
        for (int i = 0; i < [inputArray count]; i++)
        {
            //NSLog(@"%@", inputArray[i]);
            NSMutableArray *infoArray = [NSMutableArray arrayWithArray:[inputArray[i] componentsSeparatedByString:@":"]];
            if ([infoArray count] == 1)
            {
                bodyString = [bodyString stringByAppendingString:infoArray[0]];
            }
            else if ([infoArray count] == 2)
            {
                if ([bodyString isEqualToString: @""]) {
                    bodyString = [NSString stringWithFormat:@"%@=%@",infoArray[0],infoArray[1]];
                }
                else
                {
                    bodyString = [bodyString stringByAppendingFormat:@"&%@=%@",infoArray[0],infoArray[1]];
                }
            }
            else if ([infoArray count] == 3)
            {
                bodyString = [bodyString stringByAppendingFormat:@"&%@=%@:%@",infoArray[0],infoArray[1],infoArray[2]];
            }
            else
            {
                bodyString = @"";
                self.inputText.stringValue = @"";
                self.inputText.placeholderString = @"Please input correct information";
                return;
            }
        }
        [self.post setHidden:NO];
        self.convert.enabled = NO;
        self.inputText.stringValue = bodyString;
        [[NSUserDefaults standardUserDefaults] setObject:self.inputText.stringValue forKey:@"body"];
    }else{
        self.inputText.stringValue = @"";
        [self.post setHidden:YES];
        self.inputText.placeholderString = @"Please input correct information";
    }
}
- (IBAction)clean:(NSButton *)sender {
    self.inputText.stringValue = @"";
    [self.post setHidden:YES];
    self.convert.enabled = YES;
}

@end
