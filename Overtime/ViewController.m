//
//  ViewController.m
//  Overtime
//
//  Created by Alonso on 16/12/2.
//  Copyright © 2016年 Alonso. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)send:(NSButton *)sender {
    
    NSString *myrequestString=[NSString stringWithFormat:@"ApplyObject=Self&ApplicantID=K1303P84&ApplicantName=&ApplicantDept=&ApplicantType=&ShiftCode=0025&OTFromDate=2016/12/01&OTFromTime=17:00&OTToDate=2016/12/01&OTToTime=21:30&OTReason=Verify new station.&UniqueID=&FormSerialID=P35F00120161202132922K1303P84&SecManagerID=&ShiftName=&ShiftStart=07:30&ShiftEnd=16:30&MealHours=0&OTDate=2016/12/01&OTType=7B&OTTypeName=&SecMgrDateTime=&IsAssistant=&OTYear=2016&OTMonth=12&ErrorCode=&ErrorName=&NextURL=OTFill_TerminateCheck&OTHours=4.5&AuthorID=K1303P84&AuthorName=&SubmitDateTime=&FormID=P35F001&Cutoff=25&DeptManagerID=&SecManagerName=&SecMgrComments=&DeptManagerName=&DeptMgrComments=&DeptMgrRejectDT=&IsClose=N&CreateDateTime=&_AUTOWEB_PROJECT_=P35&_AUTOWEB_USER_ID_=eWKS Up&_AUTOWEB_CODE_PAGE_=UTF-8&_AUTOWEB_LANGUAGE_=zh-cn&_AUTOWEB_PREV_PAGE_=http=//wkslot.wistron.com/P35/FM_OTSingle_FillForm.aspx&_AUTOWEB_COM_FILE_=ZDpcTlRXRUJcQXV0b1dlYjNcRGF0YWJhc2VcUHJvamVjdFxlV0tTIFVwXFAzNVxDb21wb25lbnRcRk1fRmlsbF9QMzVGMDAxLmNvbXAueG1m&_AUTOWEB_COM_ID_=7&_AUTOWEB_MAIN_SUCC_URL_=FM_OTSingle_FillForm&_AUTOWEB_MAIN_FAIL_URL_="];
    NSData *myrequestData=[NSData dataWithBytes:[myrequestString UTF8String] length:[myrequestString length]];
    NSURL *newURL =[NSURL URLWithString :@"http://wkslot.wistron.com/nImgSys/FormWrite.aspx"];
    NSMutableURLRequest *myrequest=[[NSMutableURLRequest alloc]initWithURL:newURL];
    [myrequest setHTTPMethod:@"POST"];
    [myrequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"content-type"];
    [myrequest setValue:@"ASP.NET_SessionId=12hnxr45byiqdo45vlkchr55; _nAutoWebCookie_eWKS Up_=AFUser=1&AutoFlow_AccountID=K1303P84&AFTitle=540&DeptID=51SK20&Degree=0&UserLang=ZH-CN&Site=WKS&Assistant=N&TimeOffset=&ServerTimeOffset=8; _nAutoWebCookie_IFR_=AFUser=1&AutoFlow_AccountID=K1303P84&AFTitle=540&DeptID=51SK20&Degree=0&UserLang=ZH-CN&Site=WKS&Assistant=N; _nAutoWebCookie_NFC_=AFUser=1&AutoFlow_AccountID=K1303P84&AFTitle=540&DeptID=51SK20&Degree=0&UserLang=ZH-CN&Site=WKS&Assistant=N; _nAutoWebCookie_DNT_=AFUser=1&AutoFlow_AccountID=K1303P84&AFTitle=540&DeptID=51SK20&Degree=0&UserLang=ZH-CN&Site=WKS&Assistant=N" forHTTPHeaderField:@"Cookie"];
    [myrequest setHTTPBody:myrequestData];
    [myrequest setTimeoutInterval:30];
    NSData *myreturnData=[NSURLConnection sendSynchronousRequest:myrequest returningResponse:nil error:nil];
    NSString *Data=[[NSString alloc]initWithData:myreturnData encoding:NSASCIIStringEncoding];
    NSLog(@"%@",Data);
}
@end
