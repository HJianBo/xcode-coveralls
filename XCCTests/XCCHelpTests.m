/*******************************************************************************
 * The MIT License (MIT)
 * 
 * Copyright (c) 2015 Jean-David Gadina - www-xs-labs.com
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 ******************************************************************************/

#import <Foundation/Foundation.h>
#import "XCC.h"

#ifdef __clang__

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wvariadic-macros"
#pragma clang diagnostic ignored "-Wgnu-statement-expression"
#pragma clang diagnostic ignored "-Wgnu-zero-variadic-macro-arguments"
#pragma clang diagnostic ignored "-Wdocumentation-unknown-command"

#if __clang_major__ >= 7
#pragma clang diagnostic ignored "-Wreserved-id-macro"
#endif

#endif

#import <XCTest/XCTest.h>

@interface XCCHelpTests: XCTestCase

@end

@implementation XCCHelpTests

- ( void )testSharedInstance
{
    XCTAssertNotNil( [ XCCHelp sharedInstance ] );
    XCTAssertEqual( [ XCCHelp sharedInstance ], [ XCCHelp sharedInstance ] );
}

- ( void )testDisplay
{
    XCTAssertNoThrow( [ [ XCCHelp sharedInstance ] display ] );
}

- ( void )testDisplayVersion
{
    XCTAssertNoThrow( [ [ XCCHelp sharedInstance ] displayVersion ] );
}

- ( void )testDisplayWithError
{
    XCTAssertNoThrow( [ [ XCCHelp sharedInstance ] displayWithError: [ NSError errorWithDomain: @"com.xs-labs" code: 0 userInfo: nil ] ] );
}

- ( void )testDisplayWithErrorText
{
    XCTAssertNoThrow( [ [ XCCHelp sharedInstance ] displayWithErrorText: @"test" ] );
}

@end
