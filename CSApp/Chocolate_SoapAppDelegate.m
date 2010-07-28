//
//  Chocolate_SoapAppDelegate.m
//  Chocolate Soap
//
//  Created by Josh McDonald on 24/06/10.
//  Copyright 2010 Expantra Pty. Ltd. All rights reserved.
//

#import "Chocolate_SoapAppDelegate.h"

#import "CSWSDL.h"

@implementation Chocolate_SoapAppDelegate

@synthesize window;
@synthesize urlTextField;
@synthesize progressIndicator;
@synthesize mainTextView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
	[urlTextField setStringValue:@"http://s3.amazonaws.com/ec2-downloads/ec2.wsdl"];
}

-(IBAction) downloadClicked:(id) sender {
	
	NSError *error;
	[progressIndicator startAnimation:self];
	NSXMLDocument *wsdlXml = [[NSXMLDocument alloc] initWithContentsOfURL:[NSURL URLWithString:[urlTextField stringValue]]
																  options:NSXMLNodePreserveWhitespace
																	error:&error];
	
	[mainTextView setString:[wsdlXml XMLStringWithOptions:NSXMLNodePrettyPrint]];
	
	if (error) {
		
		NSLog(@"Error: %@", error);
	
	} else {
		
		[CSWSDL	withXMLDocument:wsdlXml];
	}


	[progressIndicator stopAnimation:self];

	[wsdlXml release];
}

@end
