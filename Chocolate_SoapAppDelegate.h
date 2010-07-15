//
//  Chocolate_SoapAppDelegate.h
//  Chocolate Soap
//
//  Created by Josh McDonald on 24/06/10.
//  Copyright 2010 Expantra Pty. Ltd. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Chocolate_SoapAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow			*window;
	NSTextField			*urlTextField;
	NSProgressIndicator	*progressIndicator;
	NSTextView			*mainTextView;
}

@property (assign) IBOutlet NSWindow			*window;
@property (assign) IBOutlet NSTextField			*urlTextField;
@property (assign) IBOutlet NSProgressIndicator	*progressIndicator;
@property (assign) IBOutlet NSTextView			*mainTextView;

-(IBAction) downloadClicked:(id) sender;

@end
