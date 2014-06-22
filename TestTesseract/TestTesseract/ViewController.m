//
//  ViewController.m
//  TestTesseract
//
//  Created by Ankur Jain on 3/21/14.
//  Copyright (c) 2014 Ankur Jain. All rights reserved.
//

#import "ViewController.h"
#import "tesseract.h"

@interface ViewController ()

@property (nonatomic, retain) NSString * someData;

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Tesseract* tesseract = [[Tesseract alloc] initWithDataPath:@"tessdata" language:@"eng"];
    [tesseract setImage:[UIImage imageNamed:@"photos2.jpg"]];
    [tesseract recognize];
    
    _someData = (@"%@", [tesseract recognizedText]);
    NSLog(@"%@", _someData);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
