//
//  CSWSDL.m
//  Chocolate Soap
//
//  Created by Josh McDonald on 14/07/10.
//  Copyright 2010 Expantra Pty. Ltd. All rights reserved.
//

#import "CSWSDL.h"


NSString *nameOfNodeKind(NSXMLNodeKind kind) {
	
	if (kind == NSXMLInvalidKind)
		return @"NSXMLInvalidKind";
	if (kind == NSXMLDocumentKind)
		return @"NSXMLDocumentKind";
	if (kind == NSXMLElementKind)
		return @"NSXMLElementKind";
	if (kind == NSXMLAttributeKind)
		return @"NSXMLAttributeKind";
	if (kind == NSXMLNamespaceKind)
		return @"NSXMLNamespaceKind";
	if (kind == NSXMLProcessingInstructionKind)
		return @"NSXMLProcessingInstructionKind";
	if (kind == NSXMLCommentKind)
		return @"NSXMLCommentKind";
	if (kind == NSXMLTextKind)
		return @"NSXMLTextKind";
	if (kind == NSXMLDTDKind)
		return @"NSXMLDTDKind";
	if (kind == NSXMLEntityDeclarationKind)
		return @"NSXMLEntityDeclarationKind";
	if (kind == NSXMLAttributeDeclarationKind)
		return @"NSXMLAttributeDeclarationKind";
	if (kind == NSXMLElementDeclarationKind)
		return @"NSXMLElementDeclarationKind";
	if (kind == NSXMLNotationDeclarationKind)
		return @"NSXMLNotationDeclarationKind";
	
	return @"Unknown NSXMLNodeKind";
}

void logXMLElement(NSXMLElement *element) {

	NSLog(@"     name: %@", [element name]);
	NSLog(@"localName: %@", [element localName]);
	NSLog(@"      uri: %@", [element URI]);
	NSLog(@"   prefix: %@", [element prefix]);
	NSLog(@"     kind: %@", nameOfNodeKind([element kind]));
	NSLog(@" children: %i", [element childCount]);
}

@implementation CSWSDL

+(CSWSDL *) withXMLDocument:(NSXMLDocument *)source {
	
	NSXMLElement *rootElement = [source rootElement];
	
	logXMLElement(rootElement);
	
	return nil;
}


@end
