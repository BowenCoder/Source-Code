//
//  main.m
//  DebugObjc
//
//  Created by Bowen on 2020/5/25.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        [Person run];
        
        // xcrun -sdk iphoneos clang -arch arm64 -rewrite-objc -fobjc-arc -fobjc-runtime=ios-13.2 main.m
        // objc_initWeak
        Person *p = [[Person alloc] init];
        __weak Person *pp = p;
        NSLog(@"%@--%p", pp, &pp);
    }
    return 0;
}
